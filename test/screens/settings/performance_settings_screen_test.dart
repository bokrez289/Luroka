import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/screens/settings/performance_settings_screen.dart';
import 'package:luroka/services/device_performance.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';

import '../../test_helpers/prefs.dart';

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
    DevicePerformance.debugReset();
    await DevicePerformance.getInstance(override: VisualEffectsSetting.full);
    LocaleSettings.setLocaleSync(AppLocale.en);
  });
  tearDown(DevicePerformance.debugReset);

  testWidgets('performance page exposes low-power control and reports the active tier', (
    tester,
  ) async {
    final cache = PaintingBinding.instance.imageCache;
    final previousSize = cache.maximumSize;
    final previousBytes = cache.maximumSizeBytes;
    addTearDown(() {
      cache.maximumSize = previousSize;
      cache.maximumSizeBytes = previousBytes;
    });
    await tester.pumpWidget(
      TranslationProvider(
        child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: const PerformanceSettingsScreen()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(Switch), findsOneWidget);
    expect(SettingsService.instance.read(SettingsService.fireStickMode), isFalse);
    expect(DevicePerformance.isReduced, isFalse);
    expect(SettingsService.instance.read(SettingsService.visualEffects), VisualEffectsSetting.auto);
    expect(find.text(t.customPerformance.effectsTier), findsOneWidget);
    expect(find.text(t.customPerformance.imageCache), findsOneWidget);
    expect(find.text(t.customPerformance.startSample), findsOneWidget);
    expect(cache.maximumSizeBytes, greaterThan(40 << 20));
  });
}
