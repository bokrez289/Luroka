import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/providers/theme_provider.dart';
import 'package:luroka/services/settings_service.dart' as settings;
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/theme/mono_tokens.dart';
import 'package:luroka/widgets/video_controls/player_theme.dart';

void main() {
  testWidgets('all built-in themes have readable accents on the shared player surfaces', (tester) async {
    for (final mode in [...settings.ThemeMode.cinemaDark, ...settings.ThemeMode.cinemaLight]) {
      final palette = ThemeProvider.paletteFor(mode)!;
      await tester.pumpWidget(MaterialApp(
        theme: monoTheme(palette),
        home: const PlayerTheme(child: Scaffold(body: Text('Player'))),
      ));
      await tester.pumpAndSettle();
      final context = tester.element(find.text('Player'));
      final theme = Theme.of(context);
      expect(theme.brightness, Brightness.dark, reason: mode.name);
      expect(tokens(context).surface, PlayerTheme.surface, reason: mode.name);
      expect(theme.colorScheme.primary, PlayerTheme.readableAccent(palette.accent), reason: mode.name);
      expect(MonoPalette.contrastRatio(theme.colorScheme.primary, PlayerTheme.surface), greaterThanOrEqualTo(4.5),
          reason: mode.name);
      expect(MonoPalette.contrastRatio(theme.colorScheme.onPrimary, theme.colorScheme.primary), greaterThanOrEqualTo(4.5),
          reason: mode.name);
    }
  });

  test('unreadable custom accents are lifted and already readable accents are preserved', () {
    const lightAccent = Color(0xff003f42);
    const brightAccent = Color(0xffff967e);
    expect(PlayerTheme.readableAccent(brightAccent), brightAccent);
    expect(MonoPalette.contrastRatio(PlayerTheme.readableAccent(lightAccent), PlayerTheme.surface), greaterThanOrEqualTo(4.5));
  });
}
