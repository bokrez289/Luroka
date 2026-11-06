import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_role.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/cast_member_strip.dart';
import 'package:luroka/widgets/video_controls/player_theme.dart';
import 'package:luroka/widgets/video_controls/sheets/info_sheet.dart';

import '../test_helpers/media_items.dart';
import '../test_helpers/prefs.dart';

void main() {
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
