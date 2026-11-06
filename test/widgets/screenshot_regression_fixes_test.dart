import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/navigation/navigation_tabs.dart';
import 'package:luroka/providers/theme_provider.dart';
import 'package:luroka/screens/settings/appearance_settings_screen.dart';
import 'package:luroka/services/kids_profile_service.dart';
import 'package:luroka/services/settings_service.dart' hide ThemeMode;
import 'package:luroka/services/settings_service.dart' as settings;
import 'package:luroka/services/supporter/supporter_mode.dart';
import 'package:luroka/services/supporter/supporter_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/account_recovery_menu.dart';
import 'package:luroka/widgets/luroka_mobile_navigation.dart';
import 'package:luroka/widgets/mobile_home_carousel.dart';
import 'package:luroka/widgets/mobile_keyboard_scope.dart';
import 'package:luroka/widgets/mobile_playback_actions.dart';
import 'package:luroka/widgets/mobile_shell_scaffold.dart';
import 'package:luroka/widgets/setting_tile.dart';
import 'package:luroka/widgets/settings_page.dart';
import 'package:luroka/widgets/settings_section.dart';
import 'package:luroka/widgets/tv_settings_hub.dart';
import '../test_helpers/media_items.dart';
import '../test_helpers/prefs.dart';

void main() {
  setUpAll(() => initializeDateFormatting('en'));
  setUp(() async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
    KidsProfileService.instance.resetForTesting();
    LocaleSettings.setLocaleSync(AppLocale.en);
  });
  tearDown(() {
    TvDetectionService.debugSetAppleTVOverride(null);
    KidsProfileService.instance.resetForTesting();
  });

  for (final scale in [1.0, 1.5, 2.0]) {
    testWidgets('playback action text remains complete at phone text scale $scale', (tester) async {
      tester.view.physicalSize = const Size(320, 700);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      var play = 0, restart = 0;
      await tester.pumpWidget(
        MaterialApp(
          theme: monoTheme(MonoPalette.lurokaCoral),
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(scale)),
            child: child!,
          ),
          home: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: MobilePlaybackActions(
                label: t.common.resume,
                icon: const Icon(Icons.play_arrow_rounded, size: 20),
                onPlay: () => play++,
                onRestart: () => restart++,
                contextLabel: 'Continue S12 E123',
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(tester.widget<Text>(find.text(t.common.resume)).overflow, isNot(TextOverflow.ellipsis));
      final primary = tester.getRect(find.byKey(const ValueKey('mobile_title_primary_play')));
      final secondary = tester.getRect(find.byKey(const ValueKey('mobile_title_restart')));
      expect(primary.right, lessThanOrEqualTo(300));
      expect(secondary.right, lessThanOrEqualTo(300));
      if (scale == 2) expect(secondary.top, greaterThan(primary.bottom));
      await tester.tap(find.text(t.common.resume));
      await tester.tap(find.text(t.detailComposition.startOver));
      expect(play, 1);
      expect(restart, 1);
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('Home viewport and dock recover after the keyboard opens and closes', (tester) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final inset = ValueNotifier(0.0);
    addTearDown(inset.dispose);
    late BuildContext bodyContext;
    var height = 0.0;
    final item = testMediaItem(id: 'feature', title: 'Feature', serverId: 'server');
    await tester.pumpWidget(
      MaterialApp(
        theme: monoTheme(MonoPalette.oled),
        builder: (context, child) => ValueListenableBuilder<double>(
          valueListenable: inset,
          builder: (context, bottom, _) => MediaQuery(
            data: MediaQuery.of(context).copyWith(viewInsets: EdgeInsets.only(bottom: bottom)),
            child: child!,
          ),
        ),
        home: MobileShellScaffold(
          bottomNavigationBar: LurokaMobileNavigation(
            tabs: NavigationTab.getVisibleTabs(
              isOffline: false,
            ).where((t) => t.id == NavigationTabId.discover || t.id == NavigationTabId.libraries).toList(),
            selected: NavigationTabId.discover,
            onSelected: (_) {},
          ),
          body: Scaffold(
            body: LayoutBuilder(
              builder: (context, bounds) {
                bodyContext = context;
                height = bounds.maxHeight;
                return MobileHomeCarousel(
                  items: [item],
                  label: 'Home',
                  resolveClient: (_) => null,
                  onPlay: (_) {},
                  onDetails: (_) {},
                  active: true,
                );
              },
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    final full = height;
    expect(tester.getRect(find.byType(LurokaMobileNavigation)).bottom, 844);
    inset.value = 300;
    await tester.pumpAndSettle();
    expect(find.byType(LurokaMobileNavigation), findsNothing);
    expect(height, 544);
    expect(MediaQuery.viewInsetsOf(bodyContext).bottom, 0);
    expect(MobileKeyboardScope.isVisibleOf(bodyContext), isTrue);
    inset.value = 0;
    await tester.pumpAndSettle();
    expect(height, full);
    expect(tester.getRect(find.byType(LurokaMobileNavigation)).bottom, 844);
    expect(MobileKeyboardScope.isVisibleOf(bodyContext), isFalse);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('mobile settings last action stays above a 3-button Android navigation bar', (tester) async {
    tester.view.physicalSize = const Size(320, 640);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final first = FocusNode();
    addTearDown(first.dispose);
    var activated = false;
    await tester.pumpWidget(
      MaterialApp(
        theme: monoTheme(MonoPalette.dark).copyWith(platform: TargetPlatform.android),
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(
            padding: const EdgeInsets.only(bottom: 48),
            viewPadding: const EdgeInsets.only(bottom: 48),
            textScaler: TextScaler.linear(1.5),
          ),
          child: child!,
        ),
        home: TvSettingsHub(
          onExitLeft: () {},
          categories: [
            TvSettingsCategory(
              id: 'test',
              title: 'Test settings',
              icon: Icons.settings,
              firstFocus: first,
              builder: (_) => SettingsPage(
                title: const Text('Test settings'),
                children: [
                  SettingsGroup(
                    children: [
                      SegmentedSetting<String>(
                        icon: Icons.aspect_ratio,
                        title: 'A longer setting title that must wrap on a phone',
                        segments: const [
                          ButtonSegment(value: 'a', label: Text('Comfortable')),
                          ButtonSegment(value: 'b', label: Text('Extra spacious')),
                          ButtonSegment(value: 'c', label: Text('Compact')),
                        ],
                        selected: 'a',
                        onChanged: (_) {},
                      ),
                      for (var i = 0; i < 12; i++)
                        SettingNavigationTile(icon: Icons.tune, title: 'Setting $i', onTap: () {}),
                      SettingNavigationTile(icon: Icons.check, title: 'Last action', onTap: () => activated = true),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('Test settings'));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Last action'));
    await tester.pumpAndSettle();
    expect(tester.getRect(find.text('Last action')).bottom, lessThanOrEqualTo(592));
    await tester.tap(find.text('Last action'));
    expect(activated, isTrue);
    expect(tester.takeException(), isNull);
  });

  testWidgets('account recovery menu is usable without any connected-server provider', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: monoTheme(MonoPalette.dark),
        home: const Scaffold(body: AccountRecoveryMenu()),
      ),
    );
    await tester.tap(find.byTooltip(t.serversAccounts.title));
    await tester.pumpAndSettle();
    expect(find.text(t.connections.addConnection), findsOneWidget);
    expect(find.text(t.common.logout), findsOneWidget);
    await tester.tap(find.text(t.common.logout));
    await tester.pumpAndSettle();
    expect(find.text(t.messages.logoutDeviceConfirm), findsOneWidget);
    await tester.tap(find.text(t.common.cancel));
    await tester.pumpAndSettle();
    expect(find.text(t.messages.logoutDeviceConfirm), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('TV Appearance tabs, live themes and Back work while Left never exits settings', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await SettingsService.instance.write(SettingsService.themeMode, settings.ThemeMode.lurokaJade);
    final supporter = SupporterService.forTesting(availability: SupporterAvailability.hidden);
    final theme = ThemeProvider(supporter: supporter);
    addTearDown(theme.dispose);
    addTearDown(supporter.dispose);
    final first = FocusNode(debugLabel: 'AppearanceTab:0');
    addTearDown(first.dispose);
    final hub = GlobalKey<TvSettingsHubState>();
    var exits = 0;
    await tester.pumpWidget(
      ChangeNotifierProvider.value(
        value: theme,
        child: InputModeTracker(
          child: Consumer<ThemeProvider>(
            builder: (_, provider, _) => MaterialApp(
              theme: provider.lightTheme,
              darkTheme: provider.darkTheme,
              themeMode: provider.materialThemeMode,
              home: TvSettingsHub(
                key: hub,
                onExitLeft: () => exits++,
                categories: [
                  TvSettingsCategory(
                    id: 'appearance',
                    title: 'Appearance',
                    icon: Icons.palette,
                    firstFocus: first,
                    builder: (_) => AppearanceSettingsScreen(firstFocus: first),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    hub.currentState!.requestFocus();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(first.hasFocus, isTrue);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(find.text(t.settingsRedesign.livePreview), findsOneWidget);
    final focused = FocusManager.instance.primaryFocus;
    await SettingsService.instance.write(SettingsService.themeMode, settings.ThemeMode.lurokaOcean);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus, same(focused));
    expect(Theme.of(first.context!).colorScheme.primary, MonoPalette.lurokaOcean.accent);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(find.text(t.downloadsRedesign.shelfSize), findsOneWidget);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'AppearanceTab:2');
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SettingsCategory:appearance');
    for (var i = 0; i < 4; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowLeft);
      await tester.pump();
    }
    expect(exits, 0);
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    expect(exits, 1);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox());
  });
}
