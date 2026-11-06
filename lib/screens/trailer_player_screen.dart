import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:provider/provider.dart';
import '../mpv/mpv.dart';
import '../services/playback_coordinator.dart';
import '../services/screen_time_service.dart';
import '../services/kids_profile_service.dart';
import '../i18n/strings.g.dart';
import '../focus/key_event_utils.dart';
import '../focus/input_mode_tracker.dart';
import '../widgets/overlay_sheet.dart';
import '../utils/app_logger.dart';

/// A short-lived preview session: no server reporting, scrobbling, queue,
/// next-episode automation or parent-title watched-state mutations.
class TrailerPlayerScreen extends StatefulWidget {
  const TrailerPlayerScreen({super.key, required this.url, required this.title, this.playerFactory});
  final String url, title;

  /// Allows lifecycle tests to exercise a real successful preview session.
  final Player Function()? playerFactory;
  @override
  State<TrailerPlayerScreen> createState() => _TrailerPlayerScreenState();
}

class _TrailerPlayerScreenState extends State<TrailerPlayerScreen> with WidgetsBindingObserver {
  Player? _player;
  bool _failed = false;
  bool _ready = false;
  bool _closed = false;
  bool _foreground = true;
  bool _wakelockHeld = false;
  bool _surfaceReady = false;
  bool _embeddedOpen = false;
  final _firstFrame = ValueNotifier(false);
  Future<void>? _retirement;
  final _subscriptions = <StreamSubscription<dynamic>>[];
  Timer? _openTimeout;
  final _playFocus = FocusNode(debugLabel: 'trailer_play');
  ScreenTimeService? _screenTime;
  ScreenTimeLease? _screenTimeLease;
  late final Future<void> Function() _shutdown = _stop;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    PlaybackCoordinator.instance.registerVideoSession(
      shutdown: _shutdown,
      stopAndExit: () async {
        if (mounted) Navigator.of(context).pop();
        await _stop();
        return true;
      },
      pauseForRestriction: () async {
        if (_embeddedOpen) {
          await _stop();
        } else {
          await _player?.pause();
        }
      },
      playerState: () => _player?.state,
    );
    unawaited(_start());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenTime ??= context.read<ScreenTimeService?>();
  }

  void _updateScreenTime(bool playing) {
    if (playing && !_closed) {
      _screenTimeLease ??= _screenTime?.acquireLease();
    } else {
      final lease = _screenTimeLease;
      _screenTimeLease = null;
      if (lease != null) unawaited(lease.close());
    }
  }

  Future<void> _start() async {
    var stage = 'resolve';
    try {
      await PlaybackCoordinator.instance.claimVideo();
      if (_closed) return;
      var url = widget.url;
      String? audioUrl;
      Map<String, String>? headers;
      final uri = Uri.parse(url);
      final youtube = uri.host == 'youtu.be' || uri.host == 'youtube.com' || uri.host.endsWith('.youtube.com');
      if (youtube) {
        if (!Platform.isAndroid) throw const FormatException('Unsupported preview resolver');
        final key = uri.host == 'youtu.be' ? uri.pathSegments.firstOrNull : uri.queryParameters['v'];
        if (key == null || !RegExp(r'^[\w-]{11}$').hasMatch(key)) throw const FormatException('Invalid preview');
        Map<String, dynamic>? resolved;
        try {
          resolved = await const MethodChannel(
            'com.luroka/trailers',
          ).invokeMapMethod<String, dynamic>('resolve', {'key': key}).timeout(const Duration(seconds: 45));
        } catch (_) {
          if (!mounted || _closed || ModalRoute.of(context)?.isCurrent != true) return;
          stage = 'embedded';
          _embeddedOpen = true;
          _updateScreenTime(true);
          final played = await const MethodChannel('com.luroka/trailers').invokeMethod<bool>('openEmbedded', {
            'key': key,
            'title': widget.title,
            'playLabel': t.common.play,
            'pauseLabel': t.common.pause,
            'closeLabel': t.common.close,
            'accent': Theme.of(context).colorScheme.primary.toARGB32(),
          });
          _embeddedOpen = false;
          _updateScreenTime(false);
          if (_closed || !mounted) return;
          if (played != true) throw StateError('Embedded preview unavailable');
          Navigator.of(context).pop();
          return;
        }
        url = resolved!['url'] as String;
        audioUrl = resolved['audioUrl'] as String?;
        headers = (resolved['headers'] as Map?)?.cast<String, String>();
      }
      if (_closed) return;
      stage = 'initialize';
      final player = widget.playerFactory?.call() ?? Player();
      _player = player;
      _subscriptions.add(player.streams.playing.listen(_updateScreenTime));
      _subscriptions.add(
        player.streams.error.listen((error) {
          appLogger.w('Trailer preview player error: ${error.cause ?? 'native-player'}');
          _fail();
        }),
      );
      _subscriptions.add(
        player.streams.completed.listen((completed) {
          if (completed && mounted && !_closed) Navigator.of(context).pop();
        }),
      );
      _subscriptions.add(
        player.streams.playbackRestart.listen((_) {
          _openTimeout?.cancel();
          if (mounted && !_closed) {
            _firstFrame.value = true;
            setState(() => _ready = true);
          }
        }),
      );
      if (!await player.requestAudioFocus()) throw StateError('Audio focus unavailable');
      if (_closed) return;
      setState(() => _surfaceReady = true);
      await WakelockPlus.enable();
      _wakelockHeld = true;
      if (_closed) {
        await WakelockPlus.disable();
        _wakelockHeld = false;
        return;
      }
      _openTimeout = Timer(const Duration(seconds: 30), _fail);
      stage = 'open';
      if (audioUrl != null) {
        // mpv's audio-files option attaches the extracted audio before loading
        // the video, so the first frame and audio start together.
        await player.setProperty('audio-files', audioUrl);
      }
      if (!_closed) await player.open(Media(url, headers: headers), play: _foreground);
    } catch (error) {
      // No URLs or exception messages: extracted URLs contain signed tokens.
      final code = error is PlatformException ? error.code : error.runtimeType.toString();
      appLogger.w('Trailer preview failed at $stage ($code)');
      _fail();
    }
  }

  void _fail() {
    if (!mounted || _closed) return;
    _openTimeout?.cancel();
    setState(() => _failed = true);
    unawaited(_stop());
  }

  Future<void> _stop() => _retirement ??= () async {
    _closed = true;
    _updateScreenTime(false);
    _openTimeout?.cancel();
    if (_embeddedOpen) {
      _embeddedOpen = false;
      try {
        await const MethodChannel('com.luroka/trailers').invokeMethod<void>('closeEmbedded');
      } catch (_) {}
    }
    for (final subscription in _subscriptions) {
      await subscription.cancel();
    }
    final player = _player;
    try {
      if (player != null) {
        try {
          await player.abandonAudioFocus();
        } finally {
          await player.dispose();
        }
      }
    } catch (_) {
      /* Retiring a preview must not keep its route alive. */
    } finally {
      if (_wakelockHeld) {
        _wakelockHeld = false;
        await WakelockPlus.disable();
      }
    }
  }();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _foreground = state == AppLifecycleState.resumed;
    if (state != AppLifecycleState.resumed && !_closed) unawaited(_player?.pause());
  }

  bool get _externalAllowed {
    final kids = KidsProfileService.instance;
    final id = kids.activeId;
    return !(kids.isActiveKids &&
        id != null &&
        (kids.dailyWatchMinutesFor(id) != null || kids.bedtimeStartFor(id) != null));
  }

  Future<void> _external() async {
    if (!_externalAllowed) return;
    await _stop();
    if (!mounted) return;
    await launchUrl(Uri.parse(widget.url), mode: LaunchMode.externalApplication);
  }

  void _seek(int seconds) {
    final player = _player;
    if (player == null || _closed) return;
    final target = player.state.position + Duration(seconds: seconds);
    unawaited(
      player.seek(
        target < Duration.zero
            ? Duration.zero
            : target > player.state.duration
            ? player.state.duration
            : target,
      ),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    final retirement = _stop();
    PlaybackCoordinator.instance.unregisterVideoSession(_shutdown, retirement: retirement);
    _playFocus.dispose();
    _firstFrame.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => OverlaySheetHost(
    canPop: !InputModeTracker.shouldBlockSystemBack(context),
    onSystemBack: () => Navigator.of(context).pop(),
    child: Scaffold(
      // Native video is composed beneath Flutter on Android and Apple. An
      // opaque Scaffold hides the picture even while audio plays correctly.
      backgroundColor: _surfaceReady && !_failed ? Colors.transparent : Colors.black,
      body: Focus(
        onKeyEvent: (_, event) {
          final back = handleBackKeyNavigation(context, event);
          if (back == KeyEventResult.handled) return back;
          if (event is! KeyDownEvent || _failed) return KeyEventResult.ignored;
          if (event.logicalKey == LogicalKeyboardKey.mediaPlayPause || event.logicalKey == LogicalKeyboardKey.space) {
            unawaited(_player?.playOrPause());
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
            _seek(-10);
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
            _seek(10);
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (_surfaceReady && !_failed) Video(player: _player!, hasFirstFrame: _firstFrame),
            if (!_ready && !_failed) const Center(child: CircularProgressIndicator()),
            if (_failed)
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        t.detailExtras.previewUnavailable,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      if (_externalAllowed)
                        FilledButton(onPressed: _external, autofocus: true, child: Text(t.detailExtras.openExternally)),
                    ],
                  ),
                ),
              ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SafeArea(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  color: Colors.black54,
                  child: Row(
                    children: [
                      BackButton(color: Colors.white),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          widget.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (_surfaceReady && !_failed)
              Positioned(
                bottom: 20,
                left: 24,
                right: 24,
                child: SafeArea(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(16)),
                    child: StreamBuilder<Duration>(
                      stream: _player!.streams.position,
                      builder: (context, snapshot) {
                        final duration = _player!.state.duration.inMilliseconds;
                        final position = (snapshot.data ?? Duration.zero).inMilliseconds.clamp(
                          0,
                          duration > 0 ? duration : 0,
                        );
                        return Row(
                          children: [
                            IconButton(
                              onPressed: () => _seek(-10),
                              icon: const Icon(Icons.replay_10, color: Colors.white),
                            ),
                            StreamBuilder<bool>(
                              stream: _player!.streams.playing,
                              builder: (context, state) => IconButton(
                                autofocus: true,
                                focusNode: _playFocus,
                                onPressed: () => unawaited(_player!.playOrPause()),
                                icon: Icon(
                                  (state.data ?? true) ? Icons.pause_rounded : Icons.play_arrow_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Slider(
                                value: position.toDouble(),
                                max: duration > 0 ? duration.toDouble() : 1,
                                onChanged: duration > 0
                                    ? (value) => unawaited(_player!.seek(Duration(milliseconds: value.round())))
                                    : null,
                              ),
                            ),
                            IconButton(
                              onPressed: () => _seek(10),
                              icon: const Icon(Icons.forward_10, color: Colors.white),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    ),
  );
}
