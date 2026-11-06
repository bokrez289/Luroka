import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/screens/settings/subtitle_styling_screen.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/settings_service.dart' as settings;
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/widgets/appearance_workspace.dart';
import 'package:luroka/widgets/settings_workspace_scope.dart';
import 'package:luroka/widgets/tv_settings_preview.dart';
import 'package:luroka/widgets/tv_settings_hub.dart';
import 'package:luroka/screens/settings/appearance_settings_screen.dart';
import 'package:luroka/screens/settings/theme_settings_screen.dart';
import 'package:luroka/providers/theme_provider.dart';
import 'package:luroka/services/supporter/supporter_service.dart';
import 'package:luroka/services/supporter/supporter_mode.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:provider/provider.dart';
import 'package:intl/date_symbol_data_local.dart';
import '../test_helpers/prefs.dart';

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
    LocaleSettings.setLocaleSync(AppLocale.en);
  });
  tearDown(() => TvDetectionService.debugSetAppleTVOverride(null));

  testWidgets('TV theme picker updates the workspace preview after returning', (tester) async {
    await initializeDateFormatting('en');
    TvDetectionService.debugSetAppleTVOverride(true);
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final supporter = SupporterService.forTesting(availability: SupporterAvailability.hidden);
    final themes = ThemeProvider(supporter: supporter);
    addTearDown(themes.dispose);
    addTearDown(supporter.dispose);
    final node = FocusNode();
    addTearDown(node.dispose);
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: themes),
          ChangeNotifierProvider.value(value: supporter),
        ],
        child: Consumer<ThemeProvider>(
          builder: (context, theme, _) => MaterialApp(
            theme: theme.lightTheme,
            darkTheme: theme.darkTheme,
            themeMode: theme.materialThemeMode,
            home: TvSettingsHub(
              onExitLeft: () {},
              categories: [
                TvSettingsCategory(
                  id: 'appearance',
                  title: t.settings.appearance,
                  icon: Icons.palette_outlined,
                  firstFocus: node,
                  preview: true,
                  builder: (_) => const AppearanceSettingsScreen(section: AppearanceSettingsSection.appearance),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    final preview = find.byKey(const ValueKey('tv-mini-home-preview'));
    expect(preview, findsOneWidget);
    final before = (tester.widget<DecoratedBox>(preview).decoration as BoxDecoration).color;
    await tester.tap(find.text(t.settings.theme));
    await tester.pumpAndSettle();
    expect(find.byType(ThemeSettingsScreen), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey(settings.ThemeMode.lurokaNocturne)));
    await tester.pumpAndSettle();
    await tester.pageBack();
    await tester.pumpAndSettle();
    final after = (tester.widget<DecoratedBox>(preview).decoration as BoxDecoration).color;
    expect(after, isNot(before));
    expect(after, themes.activePalette.bg);
    expect(find.text(t.tvSettingsV2.previewLive), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox());
  });
  for (final palette in [MonoPalette.dark, MonoPalette.lurokaJade, MonoPalette.light]) {
    testWidgets('home preview responds to real Home settings with ${palette.bg}', (tester) async {
      final help = ValueNotifier<SettingsHelp?>(null);
      addTearDown(help.dispose);
      await tester.pumpWidget(
        MaterialApp(
          theme: monoTheme(palette),
          home: Scaffold(
            body: SizedBox(
              width: 360,
              height: 600,
              child: TvSettingsPreviewPanel(categoryId: 'home', help: help),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text(t.tvSettingsV2.homePreview), findsOneWidget);
      expect(find.text(t.tvSettingsV2.previewPlaceholder), findsOneWidget);
      final preview = tester.widget<DecoratedBox>(find.byKey(const ValueKey('tv-mini-home-preview')));
      expect((preview.decoration as BoxDecoration).color, palette.bg);
      await SettingsService.instance.write(SettingsService.showHeroSection, false);
      await tester.pumpAndSettle();
      expect(find.text(t.tvSettingsV2.previewPlaceholder), findsNothing);
      await SettingsService.instance.write(SettingsService.showHeroSection, true);
      await tester.pumpAndSettle();
      expect(find.text(t.tvSettingsV2.previewPlaceholder), findsOneWidget);
      await SettingsService.instance.write(SettingsService.homeShelfItemCount, 48);
      await tester.pumpAndSettle();
      expect(find.text(t.tvSettingsV2.previewShelfCount(count: 48)), findsOneWidget);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox());
    });
  }
  testWidgets('library preview follows grid density and list mode without inventing titles', (tester) async {
    final help = ValueNotifier<SettingsHelp?>(null);
    addTearDown(help.dispose);
    await tester.pumpWidget(
      MaterialApp(
        theme: monoTheme(MonoPalette.dark),
        home: Scaffold(
          body: SizedBox(
            width: 360,
            height: 700,
            child: TvSettingsPreviewPanel(categoryId: 'library', help: help),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(LibrarySettingsPreview), findsOneWidget);
    expect(find.text(t.tvSettingsV2.libraryPreview), findsOneWidget);
    await SettingsService.instance.write(SettingsService.libraryDensity, 5);
    await tester.pumpAndSettle();
    GridView grid() =>
        tester.widget(find.descendant(of: find.byType(LibrarySettingsPreview), matching: find.byType(GridView)));
    expect((grid().gridDelegate as SliverGridDelegateWithFixedCrossAxisCount).crossAxisCount, 3);
    await SettingsService.instance.write(SettingsService.viewMode, ViewMode.list);
    await tester.pumpAndSettle();
    expect((grid().gridDelegate as SliverGridDelegateWithFixedCrossAxisCount).crossAxisCount, 1);
    expect(find.text(t.tvSettingsV2.previewPlaceholder), findsNWidgets(3));
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox());
  });
  testWidgets('subtitle panel uses the same live preview as the subtitle editor', (tester) async {
    final help = ValueNotifier<SettingsHelp?>(SettingsHelp(t.settings.subtitleStyling, ''));
    addTearDown(help.dispose);
    await tester.pumpWidget(
      MaterialApp(
        theme: monoTheme(MonoPalette.dark),
        home: Scaffold(
          body: SizedBox(
            width: 360,
            height: 500,
            child: TvSettingsPreviewPanel(categoryId: 'audio', help: help),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text(t.tvSettingsV2.subtitlePreview), findsOneWidget);
    final sample = find.text(t.settings.subtitleStyling);
    expect(sample, findsOneWidget);
    final before = tester.widget<Text>(sample).style!.fontSize!;
    await SettingsService.instance.write(SettingsService.subtitleFontSize, 55);
    await tester.pumpAndSettle();
    expect(tester.widget<Text>(sample).style!.fontSize!, greaterThan(before));
    final shared = SubtitleStylingScreen.buildPreview(tester.element(sample), embedded: true);
    expect(shared, isA<Semantics>());
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox());
  });
}
