import 'dart:async';
import 'package:flutter/foundation.dart';
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
  bool _embeddedAttempted = false;
  bool _switchingToEmbedded = false;
  String? _youtubeKey;
  Future<void>? _nativeRetirement;
  final _firstFrame = ValueNotifier(false);
  Future<void>? _retirement;
  final _subscriptions = <StreamSubscription<dynamic>>[];
  Timer? _openTimeout;
  Timer? _controlsTimer;
  bool _controlsVisible = true;
  bool _playing = false;
  LogicalKeyboardKey? _wakeKey;
  final _keyboardFocus = FocusNode(debugLabel: 'trailer_keyboard');
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
        if (defaultTargetPlatform != TargetPlatform.android) {
          throw const FormatException('Unsupported preview resolver');
        }
        final key = uri.host == 'youtu.be' ? uri.pathSegments.firstOrNull : uri.queryParameters['v'];
        if (key == null || !RegExp(r'^[\w-]{11}$').hasMatch(key)) throw const FormatException('Invalid preview');
        _youtubeKey = key;
        final resolved = await const MethodChannel(
          'com.luroka/trailers',
        ).invokeMapMethod<String, dynamic>('resolve', {'key': key}).timeout(const Duration(seconds: 45));
        url = resolved!['url'] as String;
        audioUrl = resolved['audioUrl'] as String?;
        headers = (resolved['headers'] as Map?)?.cast<String, String>();
      }
      if (_closed) return;
      stage = 'initialize';
      final player = widget.playerFactory?.call() ?? Player();
      _player = player;
      _subscriptions.add(
        player.streams.playing.listen((playing) {
          if (_closed || _switchingToEmbedded) return;
          _updateScreenTime(playing);
          _playing = playing;
          if (playing) {
            _scheduleControlsHide();
          } else {
            _showControls();
          }
        }),
      );
      _subscriptions.add(
        player.streams.error.listen((error) {
          appLogger.w('Trailer preview player error: ${error.cause ?? 'native-player'}');
          _handlePlaybackFailure();
        }),
      );
      _subscriptions.add(
        player.streams.completed.listen((completed) {
          if (completed && mounted && !_closed && !_switchingToEmbedded) Navigator.of(context).pop();
        }),
      );
      _subscriptions.add(
        player.streams.playbackRestart.listen((_) {
          _openTimeout?.cancel();
          if (mounted && !_closed && !_switchingToEmbedded) {
            _firstFrame.value = true;
            setState(() => _ready = true);
            _playing = player.state.playing;
            _scheduleControlsHide();
          }
        }),
      );
      if (!await player.requestAudioFocus()) throw StateError('Audio focus unavailable');
      if (_closed || _switchingToEmbedded) return;
      setState(() => _surfaceReady = true);
      await WakelockPlus.enable();
      _wakelockHeld = true;
      if (_closed || _switchingToEmbedded) {
        await WakelockPlus.disable();
        _wakelockHeld = false;
        return;
      }
      _openTimeout = Timer(const Duration(seconds: 30), _handlePlaybackFailure);
      stage = 'open';
      if (audioUrl != null) {
        // mpv's audio-files option attaches the extracted audio before loading
        // the video, so the first frame and audio start together.
        await player.setProperty('audio-files', audioUrl);
      }
      if (!_closed && !_switchingToEmbedded) await player.open(Media(url, headers: headers), play: _foreground);
    } catch (error) {
      // No URLs or exception messages: extracted URLs contain signed tokens.
      final code = error is PlatformException ? error.code : error.runtimeType.toString();
      appLogger.w('Trailer preview failed at $stage ($code)');
      _handlePlaybackFailure();
    }
  }

  void _handlePlaybackFailure() {
    if (!mounted || _closed || _switchingToEmbedded) return;
    if (_youtubeKey != null && !_embeddedAttempted) {
      unawaited(_openEmbedded());
    } else {
      _fail();
    }
  }

  Future<void> _openEmbedded() async {
    _embeddedAttempted = true;
    _switchingToEmbedded = true;
    _openTimeout?.cancel();
    _controlsTimer?.cancel();
    _updateScreenTime(false);
    setState(() {
      _surfaceReady = false;
      _ready = false;
      _playing = false;
      _controlsVisible = true;
    });
    try {
      // The native core must release audio focus and its video surface before
      // the WebView takes ownership. Duplicate errors share this retirement.
      await _retireNative();
      if (!mounted || _closed || ModalRoute.of(context)?.isCurrent != true) return;
      appLogger.i('Trailer preview switching to embedded playback');
      _embeddedOpen = true;
      _updateScreenTime(true);
      final played = await const MethodChannel('com.luroka/trailers').invokeMethod<bool>('openEmbedded', {
        'key': _youtubeKey,
        'title': widget.title,
        'playLabel': t.common.play,
        'pauseLabel': t.common.pause,
        'closeLabel': t.common.close,
        'accent': Theme.of(context).colorScheme.primary.toARGB32(),
      });
      _embeddedOpen = false;
      _updateScreenTime(false);
      if (!mounted || _closed) return;
      if (played == true) {
        Navigator.of(context).pop();
      } else {
        _fail();
      }
    } catch (error) {
      final code = error is PlatformException ? error.code : error.runtimeType.toString();
      appLogger.w('Trailer embedded playback failed ($code)');
      _fail();
    } finally {
      _switchingToEmbedded = false;
    }
  }

  void _fail() {
    if (!mounted || _closed) return;
    _openTimeout?.cancel();
    _controlsTimer?.cancel();
    setState(() => _failed = true);
    unawaited(_stop());
  }

  Future<void> _stop() => _retirement ??= () async {
    _closed = true;
    _updateScreenTime(false);
    _openTimeout?.cancel();
    _controlsTimer?.cancel();
    if (_embeddedOpen) {
      _embeddedOpen = false;
      try {
        await const MethodChannel('com.luroka/trailers').invokeMethod<void>('closeEmbedded');
      } catch (_) {}
    }
    await _retireNative();
  }();

  Future<void> _retireNative() => _nativeRetirement ??= () async {
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
    if (state != AppLifecycleState.resumed && !_closed && !_switchingToEmbedded) {
      unawaited(_player?.pause());
    }
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
    _showControls();
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

  void _scheduleControlsHide() {
    _controlsTimer?.cancel();
    if (!_ready || !_playing || _failed || _closed || !_foreground) return;
    _controlsTimer = Timer(const Duration(seconds: 4), () {
      if (!mounted || !_playing || _failed || _closed) return;
      setState(() => _controlsVisible = false);
      _keyboardFocus.requestFocus();
    });
  }

  void _showControls({bool focusPlay = false}) {
    if (!mounted || _closed) return;
    if (!_controlsVisible) setState(() => _controlsVisible = true);
    if (focusPlay && _surfaceReady && !_failed) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && _controlsVisible && !_failed) _playFocus.requestFocus();
      });
    }
    _scheduleControlsHide();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    final retirement = _stop();
    PlaybackCoordinator.instance.unregisterVideoSession(_shutdown, retirement: retirement);
    _playFocus.dispose();
    _keyboardFocus.dispose();
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
        focusNode: _keyboardFocus,
        onKeyEvent: (_, event) {
          final back = handleBackKeyNavigation(context, event);
          if (back == KeyEventResult.handled) return back;
          if (_wakeKey == event.logicalKey) {
            if (event is KeyUpEvent) {
              _wakeKey = null;
              _showControls(focusPlay: true);
            }
            return KeyEventResult.handled;
          }
          if (event is! KeyDownEvent || _failed) return KeyEventResult.ignored;
          if (!_controlsVisible && event.logicalKey != LogicalKeyboardKey.mediaPlayPause) {
            _wakeKey = event.logicalKey;
            _showControls();
            return KeyEventResult.handled;
          }
          _showControls();
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
        child: Listener(
          behavior: HitTestBehavior.translucent,
          onPointerDown: (_) => _showControls(),
          child: MouseRegion(
            onHover: (_) => _showControls(),
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
                            FilledButton(
                              onPressed: _external,
                              autofocus: true,
                              child: Text(t.detailExtras.openExternally),
                            ),
                        ],
                      ),
                    ),
                  ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: AnimatedOpacity(
                    key: const ValueKey('trailer-header'),
                    opacity: _controlsVisible || _failed || !_ready ? 1 : 0,
                    duration: const Duration(milliseconds: 250),
                    child: IgnorePointer(
                      ignoring: !_controlsVisible && !_failed && _ready,
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
                  ),
                ),
                if (_surfaceReady && !_failed)
                  Positioned(
                    bottom: 20,
                    left: 24,
                    right: 24,
                    child: AnimatedOpacity(
                      key: const ValueKey('trailer-controls'),
                      opacity: _controlsVisible ? 1 : 0,
                      duration: const Duration(milliseconds: 250),
                      child: IgnorePointer(
                        ignoring: !_controlsVisible,
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
                                            ? (value) {
                                                _showControls();
                                                unawaited(_player!.seek(Duration(milliseconds: value.round())));
                                              }
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
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
