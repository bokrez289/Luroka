import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:luroka/media/media_source_info.dart';
import 'package:luroka/mpv/mpv.dart';
import 'package:luroka/providers/playback_state_provider.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/video_volume_controller.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/watch_together/providers/watch_together_provider.dart';
import 'package:luroka/widgets/video_controls/desktop_video_controls.dart';
import 'package:luroka/widgets/video_controls/widgets/content_strip.dart';
import 'package:provider/provider.dart';
import '../test_helpers/media_items.dart';
import '../test_helpers/player_streams.dart';
import '../test_helpers/prefs.dart';
import '../test_helpers/theme.dart';

void main() {
  testWidgets('TV edges stay in their row and closing chapters restores the exact last action', (tester) async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    final settings = await SettingsService.getInstance();
    await initializeDateFormatting('en');
    TvDetectionService.debugSetAppleTVOverride(true);
    PlatformDetector.debugSetIsDesktopOSOverride(false);
    addTearDown(() {
      TvDetectionService.debugSetAppleTVOverride(null);
      PlatformDetector.debugSetIsDesktopOSOverride(null);
    });
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final player = _Player();
    final volume = VideoVolumeController(player: player, settings: settings, initialVolume: 100);
    final together = WatchTogetherProvider();
    final playback = PlaybackStateProvider();
    addTearDown(volume.dispose);
    addTearDown(together.dispose);
    addTearDown(playback.dispose);
    final key = GlobalKey<DesktopVideoControlsState>();
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<WatchTogetherProvider>.value(value: together),
          ChangeNotifierProvider<PlaybackStateProvider>.value(value: playback),
        ],
        child: MaterialApp(
          theme: ThemeData(extensions: const [testMonoTokens]),
          home: Scaffold(
            body: DesktopVideoControls(
              key: key,
              player: player,
              volumeController: volume,
              metadata: testMediaItem(),
              onPlayPause: () {},
              chapters: [
                MediaChapter(id: 1, startTimeOffset: 0, title: 'Opening'),
                MediaChapter(id: 2, startTimeOffset: 600000, title: 'Later'),
              ],
              chaptersLoaded: true,
              seekTimeSmall: 10,
              onSeekToPreviousChapter: () {},
              onSeekToNextChapter: () {},
              onSeekBackward: () {},
              onSeekForward: () {},
              onSeek: (_) {},
              onSeekEnd: (_) {},
              getReplayIcon: (_) => Symbols.replay_10_rounded,
              getForwardIcon: (_) => Symbols.forward_10_rounded,
              useDpadNavigation: true,
            ),
          ),
        ),
      ),
    );
    key.currentState!.requestPlayPauseFocus();
    await tester.pumpAndSettle();
    for (var i = 0; i < 6; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
      await tester.pump();
    }
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SkipForward');
    expect(find.byIcon(Symbols.skip_next_rounded), findsNothing, reason: 'unavailable next-item action is omitted');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'TrackControl0');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowLeft);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'TrackControl0');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'TrackControl1');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(find.byType(ContentStrip), findsOneWidget);
    key.currentState!.dismissContentStrip();
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'TrackControl1');
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox.shrink());
  });
}

class _Player implements Player {
  @override
  String get playerType => 'mpv';
  @override
  PlayerState get state => const PlayerState(playing: true, duration: Duration(minutes: 45));
  @override
  PlayerStreams get streams => emptyPlayerStreams();
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
