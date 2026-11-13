import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_role.dart';
import 'package:luroka/focus/transport_keys.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/cast_member_strip.dart';
import 'package:luroka/widgets/video_controls/player_theme.dart';
import 'package:luroka/widgets/video_controls/sheets/info_sheet.dart';
import 'package:luroka/widgets/video_controls/widgets/track_chapter_controls.dart';
import 'package:luroka/widgets/video_controls/models/track_controls_state.dart';
import 'package:luroka/widgets/overlay_sheet.dart';
import 'package:luroka/i18n/strings.g.dart';

import '../test_helpers/media_items.dart';
import '../test_helpers/prefs.dart';
import '../test_helpers/watch_together_fakes.dart';

void main() {
  testWidgets('phone playback tools open the information sheet', (tester) async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    await SettingsService.getInstance();
    final player = FakeSyncPlayer();
    addTearDown(player.dispose);
    await tester.pumpWidget(
      MaterialApp(
        theme: monoTheme(MonoPalette.dark).copyWith(platform: TargetPlatform.iOS),
        home: PlayerTheme(
          child: OverlaySheetHost(
            child: Scaffold(
              body: TrackChapterControls(
                player: player,
                chapters: const [],
                chaptersLoaded: true,
                showLabels: true,
                trackControlsState: TrackControlsState(metadata: testMediaItem(title: 'Film')),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.videoControls.infoButton));
    await tester.pumpAndSettle();
    expect(find.byType(MediaInfoSheet), findsOneWidget);
  });

  testWidgets('cast navigation cannot override host-only playback controls', (tester) async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    await SettingsService.getInstance();
    final player = FakeSyncPlayer(playing: true);
    addTearDown(player.dispose);
    var opened = false;
    await tester.pumpWidget(
      MaterialApp(
        theme: monoTheme(MonoPalette.dark).copyWith(platform: TargetPlatform.iOS),
        home: PlayerTheme(
          child: Scaffold(
            body: MediaInfoSheet(
              item: testMediaItem(
                serverId: 'server',
                roles: const [MediaRole(id: 'person', tag: 'Actor')],
              ),
              player: player,
              canControl: false,
              openPerson: (_, _, _) async => opened = true,
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Actor'));
    await tester.tap(find.text('Actor'));
    await tester.pumpAndSettle();
    expect(find.text(t.watchTogether.notices.controlRefused), findsOneWidget);
    expect(opened, isFalse);
    expect(player.state.playing, isTrue);
    expect(player.commandLog, isNot(contains('pause')));
  });

  for (final entry in [
    (name: 'phone', size: const Size(390, 844), tv: false),
    (name: 'tablet', size: const Size(1024, 768), tv: false),
    (name: 'TV', size: const Size(960, 540), tv: true),
  ]) {
    testWidgets('${entry.name} player cast opens a person after pausing playback', (tester) async {
      resetSharedPreferencesForTest();
      SettingsService.resetForTesting();
      await SettingsService.getInstance();
      TvDetectionService.debugSetAppleTVOverride(entry.tv);
      addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
      tester.view.physicalSize = entry.size;
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      final player = FakeSyncPlayer(playing: true);
      addTearDown(player.dispose);
      final item = testMediaItem(
        title: 'The Movie',
        serverId: 'server-1',
        roles: const [MediaRole(id: 'person-1', tag: 'Actor Name', role: 'Character')],
      );
      await tester.pumpWidget(
        MaterialApp(
          theme: monoTheme(MonoPalette.dark).copyWith(platform: entry.tv ? TargetPlatform.android : TargetPlatform.iOS),
          home: PlayerTheme(
            child: Scaffold(
              body: Center(
                child: SizedBox(
                  width: entry.tv ? 700 : entry.size.width,
                  height: entry.tv ? 405 : 620,
                  child: MediaInfoSheet(
                    item: item,
                    player: player,
                    onPlayPauseRequested: (command) async {
                      expect(command, TransportCommand.pause);
                      await player.pause();
                    },
                    openPerson: (context, role, source) async {
                      expect(role.id, 'person-1');
                      expect(source.serverId, item.serverId);
                      await Navigator.of(context).push<void>(
                        MaterialPageRoute(
                          builder: (_) => Scaffold(appBar: AppBar(), body: const Text('Person profile')),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.ensureVisible(find.text('Actor Name'));
      await tester.pumpAndSettle();
      final cast = tester.widget<CastMemberStrip>(find.byType(CastMemberStrip));
      expect(cast.circularPortraits, isTrue);
      expect(cast.cardWidth, inInclusiveRange(64, 112));
      if (entry.tv) {
        tester.state<CastMemberStripState>(find.byType(CastMemberStrip)).requestFocus();
        await tester.pump();
        await tester.sendKeyEvent(LogicalKeyboardKey.select);
      } else {
        await tester.tap(find.text('Actor Name'));
      }
      await tester.pumpAndSettle();
      expect(find.text('Person profile'), findsOneWidget);
      expect(player.state.playing, isFalse);
      expect(player.commandLog, contains('pause'));
      await tester.pageBack();
      await tester.pumpAndSettle();
      expect(find.byType(MediaInfoSheet), findsOneWidget);
      expect(player.state.playing, isFalse);
      expect(tester.takeException(), isNull);
    });
  }

  for (final tv in [true, false]) {
    testWidgets('${tv ? 'TV' : 'phone'} Info has inset text, readable cast, and scrollable content', (tester) async {
      resetSharedPreferencesForTest();
      SettingsService.resetForTesting();
      await SettingsService.getInstance();
      TvDetectionService.debugSetAppleTVOverride(tv);
      addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
      tester.view.physicalSize = tv ? const Size(960, 540) : const Size(390, 844);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      final item = testMediaItem(
        title: 'The Movie',
        summary: 'A wonderful cinematic adventure.',
        roles: const [
          MediaRole(tag: 'A Long Actor Name', role: 'An Important Character'),
          MediaRole(tag: 'Another Actor', role: 'A Friend'),
        ],
      );
      await tester.pumpWidget(
        MaterialApp(
          theme: monoTheme(MonoPalette.lurokaCoastal),
          home: PlayerTheme(
            child: Scaffold(
              body: Center(
                child: SizedBox(
                  width: tv ? 700 : 390,
                  height: tv ? 405 : 620,
                  child: MediaInfoSheet(item: item),
                ),
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final panel = tester.getRect(find.byType(MediaInfoSheet));
      final title = tester.getRect(find.byKey(const ValueKey('player_info_title')));
      expect(title.left - panel.left, greaterThanOrEqualTo(tv ? 28 : 20));
      final scroll = find.byKey(const ValueKey('player_info_scroll'));
      await tester.drag(scroll, const Offset(0, -300));
      await tester.pumpAndSettle();
      expect(find.byType(CastMemberStrip), findsOneWidget);
      expect(find.text('A Long Actor Name'), findsOneWidget);
      expect(tester.widget<Text>(find.text('A Long Actor Name')).maxLines, 2);
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('TV remote can browse the cast without leaving the Info panel', (tester) async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    await SettingsService.getInstance();
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final item = testMediaItem(
      title: 'The Movie',
      roles: [for (var i = 0; i < 12; i++) MediaRole(tag: 'Actor $i')],
    );
    await tester.pumpWidget(
      MaterialApp(
        theme: monoTheme(MonoPalette.dark),
        home: PlayerTheme(
          child: Scaffold(
            body: Center(
              child: SizedBox(width: 700, height: 405, child: MediaInfoSheet(item: item)),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    final bodyFocus = tester
        .widgetList<Focus>(find.byType(Focus))
        .firstWhere((focus) => focus.focusNode?.debugLabel == 'player_info_body');
    bodyFocus.focusNode!.requestFocus();
    await tester.pumpAndSettle();
    for (var i = 0; i < 5 && FocusManager.instance.primaryFocus?.debugLabel != 'player_info_cast'; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pumpAndSettle();
    }
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'player_info_cast');
    for (var i = 0; i < 6; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
      await tester.pumpAndSettle();
    }
    final list = tester.widget<ListView>(
      find.descendant(of: find.byType(CastMemberStrip), matching: find.byType(ListView)),
    );
    expect(list.controller!.offset, greaterThan(0));
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'player_info_cast');
    expect(tester.takeException(), isNull);
  });
}
