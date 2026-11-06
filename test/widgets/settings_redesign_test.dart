import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/providers/theme_provider.dart';
import 'package:luroka/screens/settings/appearance_settings_screen.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/supporter/supporter_mode.dart';
import 'package:luroka/services/supporter/supporter_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/appearance_workspace.dart';
import 'package:luroka/widgets/setting_tile.dart';
import 'package:luroka/widgets/settings_section.dart';
import 'package:luroka/widgets/tv_settings_hub.dart';
import '../test_helpers/prefs.dart';

void main() {
  setUpAll(() async {
    await initializeDateFormatting('en');
    if (Platform.environment['LUROKA_SETTINGS_SCREENSHOTS'] == '1') {
      for (final (family, path) in [
        ('Inter', 'assets/fonts/Inter-Regular.ttf'),
        ('MaterialIcons', 'fonts/MaterialIcons-Regular.otf'),
        (
          'packages/material_symbols_icons/MaterialSymbolsRounded',
          'packages/material_symbols_icons/lib/fonts/MaterialSymbolsRounded.ttf',
        ),
      ]) {
        await (FontLoader(family)..addFont(rootBundle.load(path))).load();
      }
    }
  });
  setUp(() async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
    LocaleSettings.setLocaleSync(AppLocale.en);
  });
  tearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
  for (final (name, palette) in [
    ('dark', MonoPalette.dark),
    ('forest', MonoPalette.forest),
    ('light', MonoPalette.light),
  ]) {
    testWidgets('TV workspace uses $name theme with a reactive non-focusable preview', (tester) async {
      TvDetectionService.debugSetAppleTVOverride(true);
      tester.view.physicalSize = const Size(1600, 900);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      final first = FocusNode();
      addTearDown(first.dispose);
      final supporter = SupporterService.forTesting(availability: SupporterAvailability.hidden);
      final theme = ThemeProvider(supporter: supporter);
      addTearDown(theme.dispose);
      addTearDown(supporter.dispose);
      final boundary = GlobalKey();
      await tester.pumpWidget(
        ChangeNotifierProvider.value(
          value: theme,
          child: InputModeTracker(
            child: MaterialApp(
              theme: monoTheme(palette),
              home: RepaintBoundary(
                key: boundary,
                child: TvSettingsHub(
                  onExitLeft: () {},
                  categories: [
                    TvSettingsCategory(
                      id: 'video',
                      title: t.settings.videoPlayback,
                      icon: Icons.play_circle_outline,
                      firstFocus: first,
                      builder: (_) => const SizedBox(),
                    ),
                    TvSettingsCategory(
                      id: 'audio',
                      title: t.lurokaWorkspace.audioSubtitles,
                      icon: Icons.subtitles_outlined,
                      firstFocus: first,
                      builder: (_) => const SizedBox(),
                    ),
                    TvSettingsCategory(
                      id: 'appearance',
                      title: t.settings.appearance,
                      description: t.settingsRedesign.appearanceHint,
                      icon: Icons.palette_outlined,
                      firstFocus: first,
                      builder: (_) => const AppearanceSettingsScreen(),
                    ),
                    for (final (id, title, icon) in [
                      ('home', t.lurokaWorkspace.homeDiscovery, Icons.home_outlined),
                      ('accounts', t.lurokaWorkspace.librariesAccounts, Icons.hub_outlined),
                      ('profiles', t.family.title, Icons.group_outlined),
                      ('general', t.settings.general, Icons.settings_outlined),
                      ('about', t.settings.about, Icons.info_outline),
                    ])
                      TvSettingsCategory(
                        id: id,
                        title: title,
                        icon: icon,
                        firstFocus: first,
                        builder: (_) => const SizedBox(),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text(t.settings.appearance));
      await tester.pumpAndSettle();
      await tester.tap(find.text(t.settingsRedesign.libraryLayout));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('library-settings-preview')), findsOneWidget);
      expect(find.text(t.lurokaWorkspace.savedAutomatically), findsNothing);
      final grid = find.descendant(of: find.byType(LibrarySettingsPreview), matching: find.byType(GridView));
      final before = tester.widget<GridView>(grid).gridDelegate as SliverGridDelegateWithFixedCrossAxisCount;
      await SettingsService.instance.write(SettingsService.libraryDensity, 5);
      await tester.pumpAndSettle();
      final after = tester.widget<GridView>(grid).gridDelegate as SliverGridDelegateWithFixedCrossAxisCount;
      expect(after.crossAxisCount, 3);
      expect(after.crossAxisCount, isNot(before.crossAxisCount));
      final previewContext = tester.element(find.byType(LibrarySettingsPreview));
      expect(Theme.of(previewContext).colorScheme.primary, palette.accent);
      expect(tester.takeException(), isNull);
      if (Platform.environment['LUROKA_SETTINGS_SCREENSHOTS'] == '1') {
        await SettingsService.instance.write(SettingsService.libraryDensity, 3);
        await tester.pumpAndSettle();
        await tester.runAsync(() async {
          final image = await (boundary.currentContext!.findRenderObject() as RenderRepaintBoundary).toImage();
          final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
          await File('/tmp/opencode/luroka-settings-$name.png').writeAsBytes(bytes!.buffer.asUint8List());
          image.dispose();
        });
      }
      await tester.pumpWidget(const SizedBox.shrink());
    });
  }
  testWidgets('stepped TV controls persist on Left/Right without losing focus', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    final focus = FocusNode(debugLabel: 'density-stepper');
    addTearDown(focus.dispose);
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: Scaffold(
            body: SettingsGroup(
              children: [
                SettingStepperTile<int>(
                  focusNode: focus,
                  pref: SettingsService.libraryDensity,
                  icon: Icons.grid_view,
                  title: 'Density',
                  values: const [1, 2, 3, 4, 5],
                  label: (v) => '$v',
                ),
              ],
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    focus.requestFocus();
    await tester.pump();
    final before = SettingsService.instance.read(SettingsService.libraryDensity);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    expect(SettingsService.instance.read(SettingsService.libraryDensity), before + 1);
    expect(focus.hasFocus, isTrue);
  });
  testWidgets('mobile opens categories as pages and can hide Live TV persistently', (tester) async {
    tester.view.physicalSize = const Size(320, 700);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final first = FocusNode();
    addTearDown(first.dispose);
    final supporter = SupporterService.forTesting(availability: SupporterAvailability.hidden);
    final theme = ThemeProvider(supporter: supporter);
    addTearDown(theme.dispose);
    addTearDown(supporter.dispose);
    await tester.pumpWidget(
      ChangeNotifierProvider.value(
        value: theme,
        child: MaterialApp(
          theme: monoTheme(MonoPalette.light).copyWith(platform: TargetPlatform.android),
          home: TvSettingsHub(
            onExitLeft: () {},
            searchEntries: [
              TvSettingsSearchEntry(
                categoryId: 'appearance',
                title: t.settingsRedesign.showLiveTv,
                settingId: SettingsService.showLiveTvTab.key,
              ),
            ],
            categories: [
              TvSettingsCategory(
                id: 'appearance',
                title: t.settings.appearance,
                icon: Icons.palette_outlined,
                firstFocus: first,
                builder: (_) => const AppearanceSettingsScreen(),
              ),
            ],
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(AppearanceSettingsScreen), findsNothing);
    await tester.tap(find.byTooltip(t.lurokaWorkspace.searchSettings));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), t.settingsRedesign.showLiveTv);
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.settingsRedesign.showLiveTv).last);
    await tester.pumpAndSettle();
    expect(find.text(t.settingsRedesign.showLiveTv), findsOneWidget, reason: 'Search reveals the Navigation subtab');
    await tester.ensureVisible(find.text(t.settingsRedesign.showLiveTv));
    await tester.tap(find.text(t.settingsRedesign.showLiveTv));
    await tester.pumpAndSettle();
    expect(SettingsService.instance.read(SettingsService.showLiveTvTab), isFalse);
    await tester.pumpWidget(const SizedBox.shrink());
    SettingsService.resetForTesting();
    await SettingsService.getInstance();
    expect(SettingsService.instance.read(SettingsService.showLiveTvTab), isFalse);
    expect(tester.takeException(), isNull);
  });
}
