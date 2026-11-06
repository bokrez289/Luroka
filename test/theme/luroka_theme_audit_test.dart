import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/providers/theme_provider.dart';
import 'package:luroka/screens/settings/appearance_settings_screen.dart';
import 'package:luroka/screens/settings/theme_settings_screen.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/supporter/supporter_mode.dart';
import 'package:luroka/services/supporter/supporter_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/setting_tile.dart';
import 'package:provider/provider.dart';

import '../test_helpers/prefs.dart';

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    await SettingsService.getInstance();
  });

  test('retired preset ids still resolve their original saved palettes', () async {
    for (final (mode, palette) in [
      (ThemeMode.ember, MonoPalette.ember),
      (ThemeMode.glacier, MonoPalette.glacier),
      (ThemeMode.forest, MonoPalette.forest),
      (ThemeMode.plum, MonoPalette.plum),
      (ThemeMode.paper, MonoPalette.paper),
    ]) {
      await SettingsService.instance.write(SettingsService.themeMode, mode);
      expect(ThemeProvider.resolveStored(SettingsService.instance, unlocked: true).palette, palette);
      expect(ThemeMode.cinemaDark, isNot(contains(mode)));
      expect(ThemeMode.cinemaLight, isNot(contains(mode)));
    }
  });

  for (final tv in [false, true]) {
    testWidgets('${tv ? 'TV' : 'phone'} applies every available dark and light theme', (tester) async {
      debugDefaultTargetPlatformOverride = material.TargetPlatform.android;
      TvDetectionService.debugSetAppleTVOverride(tv);
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = tv ? const material.Size(1280, 720) : const material.Size(400, 850);
      addTearDown(() {
        debugDefaultTargetPlatformOverride = null;
        TvDetectionService.debugSetAppleTVOverride(null);
        tester.view.reset();
      });
      final supporter = SupporterService.forTesting(availability: SupporterAvailability.hidden);
      final theme = ThemeProvider(supporter: supporter);
      addTearDown(theme.dispose);
      addTearDown(supporter.dispose);
      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider<SupporterService>.value(value: supporter),
            ChangeNotifierProvider<ThemeProvider>.value(value: theme),
          ],
          child: Consumer<ThemeProvider>(
            builder: (_, provider, _) => material.MaterialApp(
              theme: provider.lightTheme,
              darkTheme: provider.darkTheme,
              themeMode: provider.materialThemeMode,
              home: const ThemeSettingsScreen(),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final featured = {...ThemeMode.featuredDark, ...ThemeMode.featuredLight};
      Future<void> choose(ThemeMode mode) async {
        final tile = find.byKey(material.ValueKey(mode));
        await tester.ensureVisible(tile);
        await tester.pumpAndSettle();
        await tester.tap(tile);
        await tester.pumpAndSettle();
        final palette = ThemeProvider.paletteFor(mode)!;
        expect(SettingsService.instance.read(SettingsService.themeMode), mode);
        expect(theme.activePalette, palette);
        expect(material.Theme.of(tester.element(find.byType(ThemeSettingsScreen))).scaffoldBackgroundColor, palette.bg);
      }

      for (final mode in featured) {
        await choose(mode);
      }
      final more = find.byKey(const material.ValueKey('more-themes'));
      await tester.ensureVisible(more);
      await tester.pumpAndSettle();
      await tester.tap(more);
      await tester.pumpAndSettle();
      for (final mode in [
        ...ThemeMode.cinemaDark,
        ...ThemeMode.cinemaLight,
      ].where((mode) => !featured.contains(mode))) {
        await choose(mode);
      }
      expect(tester.takeException(), isNull);
      debugDefaultTargetPlatformOverride = null;
    });
  }

  testWidgets('TV everyday appearance opens a direct picker and supports remote selection', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    tester.view.physicalSize = const material.Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(() {
      TvDetectionService.debugSetAppleTVOverride(null);
      tester.view.reset();
    });
    final supporter = SupporterService.forTesting(availability: SupporterAvailability.hidden);
    final theme = ThemeProvider(supporter: supporter);
    addTearDown(theme.dispose);
    addTearDown(supporter.dispose);
    await tester.pumpWidget(
      InputModeTracker(
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<SupporterService>.value(value: supporter),
            ChangeNotifierProvider<ThemeProvider>.value(value: theme),
          ],
          child: Consumer<ThemeProvider>(
            builder: (_, provider, _) => material.MaterialApp(
              theme: provider.lightTheme,
              darkTheme: provider.darkTheme,
              themeMode: provider.materialThemeMode,
              home: const AppearanceSettingsScreen(section: AppearanceSettingsSection.appearance),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(SettingStepperTile<ThemeMode>), findsNothing);
    final row = find.byType(SettingNavigationTile).first;
    await tester.tap(row);
    await tester.pumpAndSettle();
    expect(find.byType(ThemeSettingsScreen), findsOneWidget);
    final target = find.byKey(const material.ValueKey(ThemeMode.lurokaNocturne));
    await tester.ensureVisible(target);
    await tester.pumpAndSettle();
    final node = tester
        .widget<material.ListTile>(find.descendant(of: target, matching: find.byType(material.ListTile)).first)
        .focusNode!;
    node.requestFocus();
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    expect(theme.themeMode, ThemeMode.lurokaNocturne);
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    expect(find.byType(ThemeSettingsScreen), findsNothing);
    expect(theme.themeMode, ThemeMode.lurokaNocturne);
  });
}
