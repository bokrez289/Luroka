import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/screens/settings/subtitle_styling_screen.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';

import '../../test_helpers/prefs.dart';

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    await SettingsService.getInstance();
    TvDetectionService.debugSetAppleTVOverride(false);
    LocaleSettings.setLocaleSync(AppLocale.en);
  });
  tearDown(() => TvDetectionService.debugSetAppleTVOverride(null));

  for (final size in [const Size(320, 640), const Size(844, 390)]) {
    testWidgets('subtitle sample stays visible and responds to changes at $size', (tester) async {
      tester.view.physicalSize = size;
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      await tester.pumpWidget(MaterialApp(
        theme: monoTheme(MonoPalette.dark).copyWith(platform: TargetPlatform.android),
        home: const SubtitleStylingScreen(),
      ));
      await tester.pumpAndSettle();
      final preview = find.byKey(const ValueKey('subtitle-live-preview'));
      final sample = find.descendant(of: preview, matching: find.text(t.settings.subtitleStyling));
      expect(preview, findsOneWidget);
      final before = tester.widget<Text>(sample).style!.fontSize;
      await SettingsService.instance.write(SettingsService.subtitleFontSize, 40);
      await tester.pumpAndSettle();
      expect(tester.widget<Text>(sample).style!.fontSize, isNot(before));
      await tester.drag(find.byType(ListView).last, const Offset(0, -400));
      await tester.pumpAndSettle();
      expect(tester.getRect(preview).top, lessThan(size.height / 2));
      expect(tester.takeException(), isNull);
    });
  }
}
