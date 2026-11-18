import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/widgets/backdrop_scrim.dart';
import 'package:luroka/widgets/rasterized_gradient.dart';

import '../test_helpers/prefs.dart';

void main() {
  testWidgets('brightness updates the shading live and keeps the solid edge', (tester) async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    final settings = await SettingsService.getInstance();
    const gradient = LinearGradient(colors: [Colors.black, Color(0x80000000)]);
    await tester.pumpWidget(const BackdropScrim(gradient: gradient));

    LinearGradient rendered() => tester.widget<RasterizedGradient>(find.byType(RasterizedGradient)).gradient;
    expect(rendered(), gradient);
    await settings.write(SettingsService.backdropBrightness, 150);
    await tester.pump();
    expect(rendered().colors.first, Colors.black);
    expect(rendered().colors.last.a, lessThan(gradient.colors.last.a));
    await settings.write(SettingsService.backdropBrightness, 50);
    await tester.pump();
    expect(rendered().colors.first, Colors.black);
    expect(rendered().colors.last.a, greaterThan(gradient.colors.last.a));
    expect(SettingsService.profileSettingKeys, contains(SettingsService.backdropBrightness.key));
  });
}
