import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/providers/theme_provider.dart';
import 'package:luroka/screens/settings/appearance_settings_screen.dart';
import 'package:luroka/screens/settings/performance_settings_screen.dart';
import 'package:luroka/screens/settings/theme_settings_screen.dart';
import 'package:luroka/services/settings_service.dart' hide ThemeMode;
import 'package:luroka/services/device_performance.dart';
import 'package:luroka/widgets/focusable_list_tile.dart';
import 'package:luroka/services/settings_service.dart' as settings show ThemeMode;
import 'package:luroka/services/supporter/supporter_mode.dart';
import 'package:luroka/services/supporter/supporter_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:provider/provider.dart';

import '../../test_helpers/prefs.dart';

void main() {
  setUp(() async {
    resetSharedPreferencesForTest(initialAsync: const {'custom_home_design': 'classic'});
    SettingsService.resetForTesting();
    await SettingsService.getInstance();
    DevicePerformance.debugReset();
    await DevicePerformance.getInstance(override: VisualEffectsSetting.auto);
    LocaleSettings.setLocaleSync(AppLocale.en);
  });
  tearDown(DevicePerformance.debugReset);

  testWidgets('appearance screen renders every reorganized group', (tester) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1000, 3000);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);

    final supporter = SupporterService.forTesting(availability: SupporterAvailability.hidden);
    addTearDown(supporter.dispose);
    final theme = ThemeProvider(supporter: supporter);
    addTearDown(theme.dispose);
    await tester.pumpWidget(
      ChangeNotifierProvider<ThemeProvider>.value(
        value: theme,
        child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: const AppearanceSettingsScreen()),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text(t.settings.display), findsOneWidget);
    await tester.tap(find.text(t.settingsRedesign.libraryLayout));
    await tester.pumpAndSettle();
    expect(find.text(t.settings.libraryAndCards), findsOneWidget);
    expect(find.text(t.settingsRedesign.livePreview), findsOneWidget);
    await tester.tap(find.text(t.settings.homeScreen).first);
    await tester.pumpAndSettle();
    expect(find.text(t.settings.homeHeroSize), findsOneWidget);
    expect(find.text(t.settings.homeHeroSizeSmall), findsOneWidget);
    expect(find.text(t.settings.homeHeroSizeMedium), findsOneWidget);
    expect(find.text(t.settings.homeHeroSizeLarge), findsOneWidget);
    await tester.tap(find.text(t.settings.navigation).first);
    await tester.pumpAndSettle();
    final scrollable = find.byType(Scrollable).first;
    await tester.scrollUntilVisible(find.text(t.settings.liveTv), 500, scrollable: scrollable);
    expect(find.text(t.settings.liveTvDefaultFavorites), findsOneWidget);
    expect(find.text(t.settingsRedesign.showLiveTv), findsOneWidget);
    // Moved away: profile prompt and performance overlay no longer live here.
    expect(find.text(t.settings.requireProfileSelectionOnOpen), findsNothing);
    expect(find.text(t.settings.autoHidePerformanceOverlay), findsNothing);
  });

  testWidgets('low-power preset sits with visual effects and defaults off on TV', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    final supporter = SupporterService.forTesting(availability: SupporterAvailability.hidden);
    addTearDown(supporter.dispose);
    final theme = ThemeProvider(supporter: supporter);
    addTearDown(theme.dispose);
    await tester.pumpWidget(
      TranslationProvider(
        child: ChangeNotifierProvider<ThemeProvider>.value(
          value: theme,
          child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: const AppearanceSettingsScreen()),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(SettingsService.instance.read(SettingsService.visualEffects), VisualEffectsSetting.auto);
    expect(SettingsService.instance.read(SettingsService.fireStickMode), isFalse);
    expect(find.text(t.customPerformance.title), findsNothing);
    expect(find.text(t.customPerformance.detailsTitle), findsNothing);
    expect(find.text(t.customPerformance.fireStickMode), findsOneWidget);
    final switchTile = tester.widget<FocusableSwitchListTile>(
      find
          .ancestor(of: find.text(t.customPerformance.fireStickMode), matching: find.byType(FocusableSwitchListTile))
          .first,
    );
    expect(switchTile.value, isFalse);
    expect(find.text(t.settings.visualEffects), findsOneWidget);
    expect(
      tester.getTopLeft(find.text(t.settings.visualEffects)).dy,
      lessThan(tester.getTopLeft(find.text(t.customPerformance.fireStickMode)).dy),
    );
    await tester.tap(find.byType(Switch).first);
    await tester.pumpAndSettle();
    expect(SettingsService.instance.read(SettingsService.fireStickMode), isTrue);
    expect(DevicePerformance.isReduced, isTrue);
  });

  testWidgets('Android mobile exposes the preset by effects and opens the details page', (tester) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(800, 1600);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);
    final supporter = SupporterService.forTesting(availability: SupporterAvailability.hidden);
    addTearDown(supporter.dispose);
    final theme = ThemeProvider(supporter: supporter);
    addTearDown(theme.dispose);
    await tester.pumpWidget(
      TranslationProvider(
        child: ChangeNotifierProvider<ThemeProvider>.value(
          value: theme,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark).copyWith(platform: TargetPlatform.android),
            home: const AppearanceSettingsScreen(),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(SettingsService.instance.read(SettingsService.visualEffects), VisualEffectsSetting.auto);
    expect(SettingsService.instance.read(SettingsService.fireStickMode), isFalse);
    expect(find.text(t.settings.visualEffects), findsOneWidget);
    expect(find.text(t.customPerformance.fireStickMode), findsOneWidget);
    expect(find.text(t.customPerformance.detailsTitle), findsOneWidget);
    await tester.tap(find.text(t.customPerformance.detailsTitle));
    await tester.pumpAndSettle();
    expect(find.byType(PerformanceSettingsScreen), findsOneWidget);
    expect(find.text(t.customPerformance.title), findsOneWidget);
  });

  testWidgets('the Theme entry opens the theme picker and a pick applies live', (tester) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1000, 3000);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);

    final supporter = SupporterService.forTesting(availability: SupporterAvailability.free);
    addTearDown(supporter.dispose);
    final theme = ThemeProvider(supporter: supporter);
    addTearDown(theme.dispose);
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<SupporterService>.value(value: supporter),
          ChangeNotifierProvider<ThemeProvider>.value(value: theme),
        ],
        child: Consumer<ThemeProvider>(
          builder: (_, provider, _) => MaterialApp(
            theme: provider.lightTheme,
            darkTheme: provider.darkTheme,
            themeMode: provider.materialThemeMode,
            home: const AppearanceSettingsScreen(),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text(t.settings.theme));
    await tester.pumpAndSettle();
    expect(find.byType(ThemeSettingsScreen), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('more-themes')));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.settings.velvetHourTheme));
    await tester.pumpAndSettle();

    expect(SettingsService.instance.read(SettingsService.themeMode), settings.ThemeMode.velvetHour);
    expect(theme.themeMode, settings.ThemeMode.velvetHour);
    final screenTheme = Theme.of(tester.element(find.byType(ThemeSettingsScreen)));
    expect(screenTheme.scaffoldBackgroundColor, MonoPalette.velvetHour.bg);
    expect(screenTheme.colorScheme.primary, MonoPalette.velvetHour.accent);

    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.pageBack();
    await tester.pumpAndSettle();
    // Back on Appearance, the entry's subtitle names the active preset.
    expect(
      find.descendant(of: find.byType(AppearanceSettingsScreen), matching: find.text(t.settings.velvetHourTheme)),
      findsOneWidget,
    );
  });

  testWidgets('phone theme cards apply immediately while the live preview stays visible', (tester) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(320, 640);
    addTearDown(tester.view.reset);
    TvDetectionService.debugSetAppleTVOverride(false);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    final supporter = SupporterService.forTesting(availability: SupporterAvailability.hidden);
    addTearDown(supporter.dispose);
    final provider = ThemeProvider(supporter: supporter);
    addTearDown(provider.dispose);
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<SupporterService>.value(value: supporter),
          ChangeNotifierProvider<ThemeProvider>.value(value: provider),
        ],
        child: Consumer<ThemeProvider>(
          builder: (_, theme, _) => MaterialApp(
            theme: theme.lightTheme.copyWith(platform: TargetPlatform.android),
            darkTheme: theme.darkTheme.copyWith(platform: TargetPlatform.android),
            themeMode: theme.materialThemeMode,
            builder: (context, child) => MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.5)),
              child: child!,
            ),
            home: const ThemeSettingsScreen(),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    final preview = find.byKey(const ValueKey('mobile-mini-home-preview'));
    expect(preview, findsOneWidget);
    final sunrise = find.byKey(const ValueKey(settings.ThemeMode.lurokaSunrise));
    await tester.scrollUntilVisible(
      sunrise,
      300,
      scrollable: find
          .descendant(of: find.byKey(const ValueKey('mobile-theme-choices')), matching: find.byType(Scrollable))
          .first,
    );
    await tester.pumpAndSettle();
    expect(tester.getRect(preview).bottom, lessThan(640), reason: '${tester.getRect(preview)}');
    await tester.tap(sunrise);
    await tester.pumpAndSettle();
    expect(provider.themeMode, settings.ThemeMode.lurokaSunrise);
    expect(Theme.of(tester.element(preview)).scaffoldBackgroundColor, MonoPalette.lurokaSunrise.bg);
    expect(tester.getRect(preview).bottom, lessThan(640));
    expect(tester.takeException(), isNull);
  });

  testWidgets('TV exposes the screen-margin fit and an always-on carousel size', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1280, 1800);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);

    final supporter = SupporterService.forTesting(availability: SupporterAvailability.hidden);
    addTearDown(supporter.dispose);
    final theme = ThemeProvider(supporter: supporter);
    addTearDown(theme.dispose);
    await tester.pumpWidget(
      ChangeNotifierProvider<ThemeProvider>.value(
        value: theme,
        child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: const AppearanceSettingsScreen()),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text(t.tvLayout.screenMargins), findsOneWidget);
    expect(find.text(t.tvLayout.screenMarginsDefault), findsOneWidget);
    expect(find.text('8%'), findsNothing, reason: 'TV selectors show the current value rather than every option');
    await tester.tap(find.text(t.settings.homeScreen).first);
    await tester.pumpAndSettle();
    expect(find.text(t.settings.homeHeroSize), findsOneWidget);
    expect(find.text(t.settings.homeHeroSizeMedium), findsOneWidget);
  });
}
