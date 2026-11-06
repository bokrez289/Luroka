import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/providers/theme_provider.dart';
import 'package:luroka/services/settings_service.dart' as settings;
import 'package:luroka/theme/mono_theme.dart';

void main() {
  for (final mode in [...settings.ThemeMode.cinemaDark, ...settings.ThemeMode.cinemaLight]) {
    test('${mode.name} is available without entitlement and has readable text and accents', () {
      final choice = ThemeProvider.resolve(mode, null, unlocked: false);
      expect(choice.mode, mode);
      final palette = choice.palette!;
      expect(palette.brightness, settings.ThemeMode.cinemaLight.contains(mode) ? Brightness.light : Brightness.dark);
      for (final bg in [palette.bg, palette.surface]) {
        expect(MonoPalette.contrastRatio(palette.text, bg), greaterThanOrEqualTo(7));
        expect(MonoPalette.contrastRatio(palette.textMuted, bg), greaterThanOrEqualTo(4.5));
        expect(MonoPalette.contrastRatio(palette.accent, bg), greaterThanOrEqualTo(4.5));
      }
      expect(monoTheme(palette).colorScheme.primary, palette.accent);
      expect(MonoPalette.contrastRatio(palette.onAccent, palette.accent), greaterThanOrEqualTo(4.5));
      expect(
        ThemeProvider.materialThemeModeFor(palette),
        palette.brightness == Brightness.light ? ThemeMode.light : ThemeMode.dark,
      );
    });
  }
}
