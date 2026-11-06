import 'package:flutter/material.dart' show Brightness;
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/providers/theme_provider.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import '../test_helpers/prefs.dart';

void main() {
  setUp(resetSharedPreferencesForTest);
  for (final mode in [
    ThemeMode.lurokaAurora,
    ThemeMode.lurokaMarquee,
    ThemeMode.lurokaElectric,
    ThemeMode.lurokaMidnight,
    ThemeMode.lurokaNocturne,
  ]) {
    test('${mode.name} persists and has readable TV text and controls', () async {
      final settings = await SettingsService.getInstance();
      await settings.write(SettingsService.themeMode, mode);
      expect(settings.read(SettingsService.themeMode), mode);
      expect(ThemeMode.cinemaDark, contains(mode));
      expect(mode.isSupporterPerk, isFalse);
      final palette = ThemeProvider.paletteFor(mode)!;
      final theme = monoTheme(palette);
      double contrast(double a, double b) => ((a > b ? a : b) + .05) / ((a < b ? a : b) + .05);
      expect(contrast(palette.text.computeLuminance(), palette.bg.computeLuminance()), greaterThan(7));
      expect(contrast(palette.textMuted.computeLuminance(), palette.surface.computeLuminance()), greaterThan(4.5));
      expect(
        contrast(theme.colorScheme.onPrimary.computeLuminance(), palette.accent.computeLuminance()),
        greaterThan(4.5),
      );
    });
  }

  for (final mode in [
    ThemeMode.lurokaSunrise,
    ThemeMode.lurokaCoastal,
    ThemeMode.lurokaLatte,
    ThemeMode.lurokaSage,
    ThemeMode.lurokaLavender,
  ]) {
    test('${mode.name} is a free light theme and its selection persists', () async {
      final settings = await SettingsService.getInstance();
      await settings.write(SettingsService.themeMode, mode);
      expect(settings.read(SettingsService.themeMode), mode);
      expect(ThemeMode.cinemaLight, contains(mode));
      expect(mode.isSupporterPerk, isFalse);
      expect(ThemeProvider.paletteFor(mode)!.brightness, Brightness.light);
    });
  }
}
