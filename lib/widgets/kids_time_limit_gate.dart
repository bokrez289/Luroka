import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../database/app_database.dart';
import '../i18n/strings.g.dart';
import '../screens/profile/parent_access.dart';
import '../screens/profile/profile_switch_screen.dart';
import '../services/kids_profile_service.dart';
import '../services/music/music_playback_service.dart';
import '../services/playback_coordinator.dart';
import '../services/screen_time_service.dart';
import '../utils/app_logger.dart';

/// Covers a Kids session at bedtime or once its daily video budget is spent.
/// The override lives only as long as this profile-scoped widget is mounted.
class KidsTimeLimitGate extends StatefulWidget {
  const KidsTimeLimitGate({super.key, required this.profileId, required this.child});
  final String? profileId;
  final Widget child;

  @override
  State<KidsTimeLimitGate> createState() => _KidsTimeLimitGateState();
}

class _KidsTimeLimitGateState extends State<KidsTimeLimitGate> with WidgetsBindingObserver {
  Timer? _timer;
  bool _checking = false;
  bool _loading = true;
  bool _blocked = false;
  bool _bedtime = false;
  bool _override = false;
  bool _pinOpen = false;
  final _unlockFocus = FocusNode(debugLabel: 'KidsTimeLimitUnlock');

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    KidsProfileService.instance.addListener(_policyChanged);
    _timer = Timer.periodic(const Duration(seconds: 5), (_) => unawaited(_check()));
    WidgetsBinding.instance.addPostFrameCallback((_) => unawaited(_check()));
  }

  void _policyChanged() => unawaited(_check());

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) unawaited(_check());
  }

  Future<void> _check() async {
    if (!mounted || _checking) return;
    final id = widget.profileId;
    final kids = KidsProfileService.instance;
    if (id == null || !kids.isKids(id) || _override) {
      if (_loading || _blocked) {
        setState(() {
          _loading = false;
          _blocked = false;
        });
      }
      return;
    }
    _checking = true;
    try {
      final bedtime = kids.isBedtime(id, DateTime.now());
      final limit = kids.dailyWatchMinutesFor(id);
      var exceeded = false;
      if (limit != null) {
        final service = context.read<ScreenTimeService>();
        final database = context.read<AppDatabase>();
        await service.flush();
        final date = localDateKey(DateTime.now());
        final rows = await database.getScreenTimeRange(profileId: id, startLocalDate: date, endLocalDate: date);
        exceeded =
            rows.fold<int>(service.pendingDurationMsForDate(date), (total, row) => total + row.durationMs) >=
            limit * 60000;
      }
      if (!mounted || _override) return;
      final blocked = bedtime || exceeded;
      final newlyBlocked = blocked && !_blocked;
      if (_loading || _blocked != blocked || _bedtime != bedtime) {
        setState(() {
          _loading = false;
          _blocked = blocked;
          _bedtime = bedtime;
        });
      }
      if (blocked) {
        _pausePlayback();
        if (newlyBlocked) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted && _blocked) _unlockFocus.requestFocus();
          });
        }
      }
    } catch (error, stack) {
      appLogger.w('Could not check Kids time limit', error: error, stackTrace: stack);
      if (mounted && !_override) {
        _pausePlayback();
        setState(() {
          _loading = false;
          _blocked = true;
        });
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && _blocked) _unlockFocus.requestFocus();
        });
      }
    } finally {
      _checking = false;
    }
  }

  void _pausePlayback() {
    unawaited(
      PlaybackCoordinator.instance.pauseVideoForRestriction().catchError((Object error, StackTrace stack) {
        appLogger.w('Could not pause video for Kids time limit', error: error, stackTrace: stack);
      }),
    );
    final music = context.read<MusicPlaybackService?>();
    if (music != null) {
      unawaited(
        music.pause().catchError((Object error, StackTrace stack) {
          appLogger.w('Could not pause music for Kids time limit', error: error, stackTrace: stack);
        }),
      );
    }
  }

  Future<void> _unlock() async {
    if (_pinOpen) return;
    _pinOpen = true;
    try {
      final pin = await requestParentPin(context);
      if (!mounted || pin == null || !KidsProfileService.instance.verifyParentPin(pin)) return;
      setState(() {
        _override = true;
        _blocked = false;
        _loading = false;
      });
    } finally {
      _pinOpen = false;
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    KidsProfileService.instance.removeListener(_policyChanged);
    WidgetsBinding.instance.removeObserver(this);
    _unlockFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final limited = widget.profileId != null && KidsProfileService.instance.isKids(widget.profileId);
    final covered = limited && (_loading || _blocked);
    return Stack(
      children: [
        ExcludeSemantics(
          excluding: covered,
          child: ExcludeFocus(excluding: covered, child: widget.child),
        ),
        if (covered)
          Positioned.fill(
            child: PopScope(
              canPop: false,
              child: Material(
                color: Theme.of(context).colorScheme.surface,
                child: SafeArea(
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 520),
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: _loading
                            ? const CircularProgressIndicator()
                            : Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.bedtime_rounded, size: 56),
                                  const SizedBox(height: 20),
                                  Text(
                                    _bedtime ? t.kids.bedtimeReached : t.kids.timeLimitReached,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.headlineSmall,
                                  ),
                                  const SizedBox(height: 12),
                                  Text(t.kids.timeLimitParentHint, textAlign: TextAlign.center),
                                  const SizedBox(height: 24),
                                  FilledButton(
                                    focusNode: _unlockFocus,
                                    onPressed: _unlock,
                                    child: Text(t.kids.parentUnlock),
                                  ),
                                  const SizedBox(height: 8),
                                  TextButton(
                                    onPressed: () => Navigator.of(
                                      context,
                                      rootNavigator: true,
                                    ).push(MaterialPageRoute<void>(builder: (_) => const ProfileSwitchScreen())),
                                    child: Text(t.kids.switchProfile),
                                  ),
                                ],
                              ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
