import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import 'package:luroka/database/app_database.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/mpv/mpv.dart';
import 'package:luroka/media/media_source_info.dart';
import 'package:luroka/providers/playback_state_provider.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/video_volume_controller.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/watch_together/providers/watch_together_provider.dart';
import 'package:luroka/widgets/video_controls/desktop_video_controls.dart';
import 'package:luroka/widgets/overlay_sheet.dart';
import 'package:luroka/widgets/video_controls/mobile_video_controls.dart';
import 'package:luroka/widgets/video_controls/player_chrome_controller.dart';
import 'package:luroka/widgets/video_controls/video_control_button.dart';
import 'package:luroka/widgets/video_controls/video_controls.dart';
import 'package:luroka/widgets/video_controls/widgets/player_toast_indicator.dart';
import 'package:luroka/widgets/video_controls/widgets/track_chapter_controls.dart';
import 'package:luroka/widgets/video_controls/widgets/video_timeline_bar.dart';
import 'package:luroka/widgets/video_controls/models/track_controls_state.dart';
import 'package:luroka/widgets/video_controls/sheets/version_quality_sheet.dart';
import 'package:luroka/widgets/video_controls/sheets/video_settings_sheet.dart';
import 'package:luroka/widgets/video_controls/painters/buffer_range_painter.dart';

import '../test_helpers/media_items.dart';
import '../test_helpers/player_streams.dart';
import '../test_helpers/prefs.dart';
import '../test_helpers/theme.dart';

void main() {
  late AppDatabase database;
  late PlaybackStateProvider playback;
  late WatchTogetherProvider together;
  late VideoVolumeController volume;
  late PlayerChromeController chrome;
  late PlayerToastController toast;
  late ValueNotifier<bool> firstFrame;
  late _Player player;

  setUp(() async {
    LocaleSettings.setLocaleSync(AppLocale.en);
    await initializeDateFormatting('en');
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    PlatformDetector.debugSetIsDesktopOSOverride(false);
    database = AppDatabase.forTesting(NativeDatabase.memory());
    playback = PlaybackStateProvider();
    together = WatchTogetherProvider();
    player = _Player();
    volume = VideoVolumeController(player: player, settings: await SettingsService.getInstance(), initialVolume: 100);
    chrome = PlayerChromeController(initiallyVisible: true);
    toast = PlayerToastController();
    firstFrame = ValueNotifier(true);
  });

  tearDown(() async {
    TvDetectionService.debugSetAppleTVOverride(null);
    PlatformDetector.debugSetIsDesktopOSOverride(null);
    firstFrame.dispose();
    volume.dispose();
    playback.dispose();
    together.dispose();
    chrome.dispose();
    toast.dispose();
    await database.close();
  });

  Future<void> pump(
    WidgetTester tester,
    Size size, {
    required bool tv,
    double textScale = 1,
    List<MediaChapter>? chapters,
    EdgeInsets viewPadding = EdgeInsets.zero,
  }) async {
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    TvDetectionService.debugSetAppleTVOverride(tv);
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          Provider<AppDatabase>.value(value: database),
          ChangeNotifierProvider<PlaybackStateProvider>.value(value: playback),
          ChangeNotifierProvider<WatchTogetherProvider>.value(value: together),
        ],
        child: MaterialApp(
          theme: ThemeData(platform: TargetPlatform.android, extensions: const [testMonoTokens]),
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(
              context,
            ).copyWith(textScaler: TextScaler.linear(textScale), viewPadding: viewPadding, padding: viewPadding),
            child: child!,
          ),
          home: Scaffold(
            body: OverlaySheetHost(
              bottomInset: tv ? 0 : 16 + viewPadding.bottom,
              child: PlexVideoControls(
                player: player,
                volumeController: volume,
                metadata: testMediaItem(title: 'A very long movie title to exercise the responsive playback header'),
                toastController: toast,
                chromeController: chrome,
                hasFirstFrame: firstFrame,
                canNavigateMediaItems: false,
                initialChapters: chapters,
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    chrome.cancelAutoHide();
  }

  testWidgets('tap outside the chapter panel returns to playback controls', (tester) async {
    await pump(
      tester,
      const Size(844, 390),
      tv: false,
      chapters: [MediaChapter(id: 1, startTimeOffset: 0, title: 'Opening')],
    );
    await tester.tap(find.byKey(const ValueKey('mobile_chapters_toggle')));
    await tester.pumpAndSettle();
    expect(find.text('Opening'), findsOneWidget);
    await tester.tapAt(const Offset(12, 100));
    await tester.pumpAndSettle();
    expect(find.byType(VideoTimelineBar), findsOneWidget);
    chrome.cancelAutoHide();
    await tester.pumpWidget(const SizedBox.shrink());
  });

  for (final size in [const Size(768, 1024), const Size(1024, 768)]) {
    testWidgets('tablet bottom player controls clear the safe area at $size', (tester) async {
      await pump(tester, size, tv: false, viewPadding: const EdgeInsets.only(bottom: 20));
      final tools = tester.getRect(find.byKey(const ValueKey('mobile_playback_tools_toggle')));
      expect(tools.bottom, lessThanOrEqualTo(size.height - 42));
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
    });
  }

  for (final size in [const Size(390, 844), const Size(844, 390), const Size(768, 1024), const Size(1024, 768)]) {
    testWidgets('expanded playback options clear the bottom edge at $size', (tester) async {
      await pump(tester, size, tv: false, viewPadding: const EdgeInsets.only(bottom: 20));
      await tester.tap(find.byKey(const ValueKey('mobile_playback_tools_toggle')));
      await tester.pumpAndSettle();
      final panel = tester.getRect(find.byKey(const ValueKey('mobile_playback_tools_panel')));
      expect(panel.bottom, lessThanOrEqualTo(size.height - 42));
      expect(find.text(t.videoControls.settingsButton).hitTestable(), findsOneWidget);
      await tester.tap(find.byIcon(Symbols.tune_rounded));
      await tester.pumpAndSettle();
      expect(tester.getRect(find.byType(VideoSettingsSheet)).bottom, lessThanOrEqualTo(size.height - 36));
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
    });
  }

  testWidgets('mobile playback tools and Browse labels use readable text sizes', (tester) async {
    await pump(
      tester,
      const Size(390, 844),
      tv: false,
      chapters: [MediaChapter(id: 1, startTimeOffset: 0, title: 'Opening')],
    );

    expect(tester.widget<Text>(find.text(t.mobileUi.playbackTools)).style?.fontSize, 14);
    expect(tester.widget<Text>(find.text(t.playerChrome.browse)).style?.fontSize, 14);

    await tester.tap(find.byKey(const ValueKey('mobile_chapters_toggle')));
    await tester.pumpAndSettle();
    expect(tester.widget<Text>(find.text(t.videoControls.chapters)).style?.fontSize, 15);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  for (final size in [const Size(960, 540), const Size(1280, 720), const Size(1920, 1080)]) {
    testWidgets('TV ${size.width.toInt()} keeps timeline, transport, and options in bounds', (tester) async {
      await pump(tester, size, tv: true);
      expect(tester.takeException(), isNull);
      final timeline = tester.getRect(find.byType(VideoTimelineBar));
      final transport = tester.getRect(find.widgetWithIcon(VideoControlButton, Symbols.pause_rounded));
      final options = tester.getRect(find.byType(TrackChapterControls));
      expect(timeline.bottom, lessThanOrEqualTo(transport.top));
      expect(transport.bottom, lessThan(options.top));
      expect(transport.center.dx, closeTo(size.width / 2, 1));
      expect(options.bottom, lessThan(size.height));
      expect(options.left, greaterThanOrEqualTo(32));
      await tester.pumpWidget(const SizedBox.shrink());
    });
  }

  testWidgets('remote moves from playback to options and back to the seek timeline', (tester) async {
    await pump(tester, const Size(960, 540), tv: true);
    tester.state<DesktopVideoControlsState>(find.byType(DesktopVideoControls)).requestPlayPauseFocus();
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'PlayPause');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'TrackControl0');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'TrackControl1');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'PlayPause');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'Timeline');
    chrome.cancelAutoHide();
    await tester.pumpWidget(const SizedBox.shrink());
  });

  for (final size in [const Size(320, 568), const Size(568, 320), const Size(844, 390)]) {
    testWidgets('phone ${size.width.toInt()}x${size.height.toInt()} gives the title and options their own space', (
      tester,
    ) async {
      await pump(tester, size, tv: false);
      expect(find.byType(MobileVideoControls), findsOneWidget);
      final header = tester.getRect(find.byKey(const ValueKey('luroka_player_header')));
      final timeline = tester.getRect(find.byType(VideoTimelineBar));
      expect(find.byType(TrackChapterControls), findsNothing, reason: 'tools start collapsed');
      expect(tester.getRect(find.byIcon(Symbols.pause_rounded)).center.dx, closeTo(size.width / 2, 1));
      expect(tester.getRect(find.byIcon(Symbols.pause_rounded)).center.dy, closeTo(size.height / 2, 1));
      expect(header.height, lessThanOrEqualTo(48));
      expect(timeline.height, lessThan(80));
      expect(
        tester.getRect(find.byKey(const ValueKey('mobile_elapsed_time'))).left,
        lessThan(tester.getRect(find.byKey(const ValueKey('mobile_remaining_time'))).left),
      );
      expect(tester.widget<VideoTimelineBar>(find.byType(VideoTimelineBar)).showFinishTime, isFalse);
      final track = tester
          .widgetList<CustomPaint>(find.byType(CustomPaint))
          .map((paint) => paint.painter)
          .whereType<BufferRangePainter>()
          .single;
      expect(track.trackHeight, 3);
      expect(track.continuous, isTrue);
      expect(tester.getRect(find.byKey(const ValueKey('mobile_remaining_time'))).right, closeTo(timeline.right, 1));
      await tester.tap(find.byKey(const ValueKey('mobile_playback_tools_toggle')));
      await tester.pumpAndSettle();
      expect(chrome.isHeld(PlayerChromeHold.mobileTools), isTrue);
      await tester.pump(const Duration(seconds: 5));
      expect(chrome.controlsVisible, isTrue, reason: 'tools remain visible while choosing a track');
      expect(header.bottom, lessThan(timeline.top));
      expect(
        find.byType(VideoTimelineBar),
        findsNothing,
        reason: 'expanded options replace the timeline to fit landscape',
      );
      expect(find.text(t.videoControls.tracksButton).hitTestable(), findsOneWidget);
      expect(find.text(t.videoControls.settingsButton).hitTestable(), findsOneWidget);
      await tester.tapAt(Offset(10, size.height / 2));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('mobile_playback_tools_panel')), findsNothing);
      expect(chrome.isHeld(PlayerChromeHold.mobileTools), isFalse);
      await tester.tap(find.byKey(const ValueKey('mobile_playback_tools_toggle')));
      await tester.pumpAndSettle();
      // A previously header-mounted utility stays tappable in the new dock.
      await tester.tap(find.byIcon(Symbols.tune_rounded));
      await tester.pumpAndSettle();
      expect(find.text(t.videoSettings.playbackSpeed), findsWidgets);
      chrome.cancelAutoHide();
      await tester.pumpWidget(const SizedBox.shrink());
    });
  }

  testWidgets('Luroka mobile transport seeks in both directions and keeps playback and track actions', (tester) async {
    tester.view.physicalSize = const Size(640, 360);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    TvDetectionService.debugSetAppleTVOverride(false);
    Duration? sought;
    var toggled = false;
    var previous = false;
    var pip = false;
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(platform: TargetPlatform.android, extensions: const [testMonoTokens]),
        home: Scaffold(
          body: MobileVideoControls(
            player: player,
            metadata: testMediaItem(title: 'A mobile movie'),
            chapters: const [],
            chaptersLoaded: true,
            seekTimeSmall: 10,
            hasFirstFrame: firstFrame,
            trackChapterControls: const Text('Audio and subtitles', style: TextStyle(color: Colors.white)),
            onSeek: (_) {},
            onSeekEnd: (position) => sought = position,
            onPlayPause: () => toggled = true,
            onPrevious: () => previous = true,
            onPictureInPicture: () => pip = true,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('mobile_player_pip')));
    expect(pip, isTrue);
    expect(find.byIcon(Icons.arrow_back_rounded), findsOneWidget);
    expect(
      tester.getRect(find.byIcon(Symbols.pause_rounded)).center.dx,
      closeTo(320, 1),
      reason: 'a previous-only action cannot offset the primary transport',
    );
    expect(find.byIcon(Symbols.skip_previous_rounded), findsNothing);
    await tester.tap(find.byIcon(Symbols.replay_rounded));
    await tester.pumpAndSettle();
    expect(sought, const Duration(minutes: 4, seconds: 50));
    await tester.tap(find.byIcon(Symbols.forward_rounded));
    await tester.pumpAndSettle();
    expect(sought, const Duration(minutes: 5, seconds: 10));
    await tester.tap(find.byIcon(Symbols.pause_rounded));
    expect(toggled, isTrue);
    expect(find.text('Audio and subtitles'), findsNothing);
    expect(find.byKey(const ValueKey('mobile_player_pip')), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('mobile_playback_tools_toggle')));
    await tester.pumpAndSettle();
    expect(find.text('Audio and subtitles'), findsOneWidget);
    await tester.tap(find.byIcon(Symbols.skip_previous_rounded));
    expect(previous, isTrue);
    await tester.tap(find.byKey(const ValueKey('mobile_playback_tools_toggle')));
    await tester.pumpAndSettle();
    expect(find.text('Audio and subtitles'), findsNothing);
    expect(find.byIcon(Symbols.pause_rounded), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('mobile options put streaming quality directly beside tracks when transcoding is supported', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(844, 390);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    TvDetectionService.debugSetAppleTVOverride(false);
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(platform: TargetPlatform.android, extensions: const [testMonoTokens]),
        home: Scaffold(
          body: TrackChapterControls(
            player: player,
            chapters: const [],
            chaptersLoaded: true,
            showLabels: true,
            trackControlsState: TrackControlsState(
              canControl: true,
              serverSupportsTranscoding: true,
              onSwitchQualityPreset: (_) {},
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text(t.videoControls.tracksButton), findsOneWidget);
    expect(find.text(t.mobileUi.streamingQuality), findsOneWidget);
    expect(find.text(t.videoControls.settingsButton), findsOneWidget);
    expect(versionQualityPickerTitle(showVersions: false, showQuality: true), t.mobileUi.streamingQuality);
    expect(versionQualityPickerTitle(showVersions: true, showQuality: false), t.mobileUi.fileVersions);
    expect(versionQualityPickerTitle(showVersions: true, showQuality: true), t.mobileUi.qualityAndVersions);
    expect(tester.takeException(), isNull);
  });

  testWidgets('mobile Back collapses playback tools before exiting the video', (tester) async {
    await pump(tester, const Size(844, 390), tv: false);
    var exited = false;
    final coordinator = PlayerNavigationCoordinator(
      chromeController: chrome,
      isPromptOpen: () => false,
      dismissPrompt: () {},
      isChromePresented: () => true,
      exitFullscreenIfActive: () async => false,
      exitPlayerBeforeChrome: () => true,
      exitPlayer: () => exited = true,
      navigateHome: () {},
    );
    await tester.tap(find.byKey(const ValueKey('mobile_playback_tools_toggle')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('mobile_playback_tools_panel')), findsOneWidget);
    await tester.tap(find.byTooltip(t.common.back));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('mobile_playback_tools_panel')), findsNothing);
    await tester.tap(find.byKey(const ValueKey('mobile_playback_tools_toggle')));
    await tester.pumpAndSettle();
    coordinator.handle(PlayerNavigationKey.back);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('mobile_playback_tools_panel')), findsNothing);
    expect(exited, isFalse);
    expect(chrome.isHeld(PlayerChromeHold.mobileTools), isFalse);
    coordinator.handle(PlayerNavigationKey.back);
    expect(exited, isTrue);
    chrome.cancelAutoHide();
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('compact landscape player tools fit enlarged text without covering the title header', (tester) async {
    await pump(tester, const Size(568, 320), tv: false, textScale: 1.5);
    expect(tester.takeException(), isNull);
    await tester.tap(find.byKey(const ValueKey('mobile_playback_tools_toggle')));
    await tester.pumpAndSettle();
    expect(find.byType(TrackChapterControls), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.tap(find.byKey(const ValueKey('mobile_playback_tools_toggle')));
    await tester.pumpAndSettle();
    expect(find.byType(TrackChapterControls), findsNothing);
    expect(chrome.isHeld(PlayerChromeHold.mobileTools), isFalse);
    chrome.cancelAutoHide();
    await tester.pumpWidget(const SizedBox.shrink());
  });
}

class _Player implements Player {
  @override
  Future<bool> isHdrOutputSupported() async => false;
  @override
  String get playerType => 'mpv';
  @override
  PlayerState get state => PlayerState(
    playing: true,
    position: const Duration(minutes: 5),
    duration: const Duration(minutes: 45),
    seekable: true,
  );
  @override
  PlayerStreams get streams => emptyPlayerStreams();
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
