import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/setting_tile.dart';
import 'package:luroka/widgets/settings_section.dart';
import 'package:luroka/widgets/tv_settings_hub.dart';
import 'package:luroka/i18n/strings.g.dart';
import '../test_helpers/prefs.dart';
import '../test_helpers/theme.dart';

void main() {
  setUpAll(() => initializeDateFormatting('en'));
  setUp(() async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    await SettingsService.getInstance();
    TvDetectionService.debugSetAppleTVOverride(true);
  });
  tearDown(() => TvDetectionService.debugSetAppleTVOverride(null));

  testWidgets('Everyday and Advanced preserve values and search returns to the actual setting', (tester) async {
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final basic = FocusNode(debugLabel: 'SearchSpoilers');
    final advanced = FocusNode(debugLabel: 'SearchDecoder');
    addTearDown(basic.dispose);
    addTearDown(advanced.dispose);
    final before = SettingsService.instance.read(SettingsService.hideSpoilers);
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: ThemeData(extensions: const [testMonoTokens]),
          home: TvSettingsHub(
            onExitLeft: () {},
            categories: [
              TvSettingsCategory(
                id: 'basic',
                title: 'Appearance',
                icon: Icons.palette_rounded,
                firstFocus: basic,
                builder: (_) => SettingsGroup(
                  children: [
                    SettingSwitchTile(
                      focusNode: basic,
                      pref: SettingsService.hideSpoilers,
                      icon: Icons.visibility_off,
                      title: 'Hide spoilers',
                      subtitle: 'Keep plot details hidden.',
                    ),
                  ],
                ),
              ),
              TvSettingsCategory(
                id: 'engine',
                title: 'Player engine',
                advanced: true,
                icon: Icons.memory,
                firstFocus: advanced,
                builder: (_) => SettingsGroup(
                  children: [
                    SettingSwitchTile(
                      focusNode: advanced,
                      pref: SettingsService.enableHardwareDecoding,
                      icon: Icons.memory,
                      title: 'Hardware decoding',
                    ),
                  ],
                ),
              ),
            ],
            searchEntries: [
              TvSettingsSearchEntry(
                categoryId: 'basic',
                title: 'Hide spoilers',
                settingId: SettingsService.hideSpoilers.key,
              ),
            ],
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Hardware decoding'), findsNothing);
    await tester.tap(find.text(t.settings.advanced).first);
    await tester.pumpAndSettle();
    expect(find.text('Hide spoilers'), findsOneWidget, reason: 'Changing mode retains the current category');
    await tester.tap(find.text('Player engine'));
    await tester.pumpAndSettle();
    expect(find.text('Hardware decoding'), findsOneWidget);
    expect(find.text('Hide spoilers'), findsNothing);
    expect(SettingsService.instance.read(SettingsService.hideSpoilers), before);
    await tester.tap(find.byTooltip(t.lurokaWorkspace.searchSettings));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'spoilers');
    await tester.pumpAndSettle();
    await tester.tap(find.text('Hide spoilers'));
    await tester.pumpAndSettle();
    expect(basic.hasFocus, isTrue);
    expect(SettingsService.instance.read(SettingsService.hideSpoilers), before);
    expect(tester.takeException(), isNull);
  });

  for (final size in [const Size(960, 540), const Size(1280, 720), const Size(1920, 1080)]) {
    testWidgets('TV settings ${size.width.toInt()} navigates categories, edits a preference, and returns safely', (
      tester,
    ) async {
      tester.view.physicalSize = size;
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      final first = FocusNode(debugLabel: 'SetupFirst');
      final second = FocusNode(debugLabel: 'AppearanceFirst');
      addTearDown(first.dispose);
      addTearDown(second.dispose);
      final key = GlobalKey<TvSettingsHubState>();
      var exitRequests = 0;
      await tester.pumpWidget(
        InputModeTracker(
          child: MaterialApp(
            theme: ThemeData(extensions: const [testMonoTokens]),
            home: TvSettingsHub(
              key: key,
              onExitLeft: () => exitRequests++,
              categories: [
                TvSettingsCategory(
                  id: 'setup',
                  title: 'Quick setup',
                  icon: Symbols.auto_awesome_rounded,
                  description: 'Configure the essentials for your television.',
                  firstFocus: first,
                  builder: (_) => SettingsGroup(
                    children: [
                      SettingSwitchTile(
                        focusNode: first,
                        pref: SettingsService.showWatchedIndicators,
                        icon: Symbols.check_circle_rounded,
                        title: 'Watched indicators',
                      ),
                    ],
                  ),
                ),
                TvSettingsCategory(
                  id: 'appearance',
                  title: 'Appearance',
                  icon: Symbols.palette_rounded,
                  firstFocus: second,
                  builder: (_) => SettingsGroup(
                    children: [
                      SettingSwitchTile(
                        focusNode: second,
                        pref: SettingsService.hideSpoilers,
                        icon: Symbols.visibility_off_rounded,
                        title: 'Hide spoilers',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
      key.currentState!.requestFocus();
      await tester.pumpAndSettle();
      expect(FocusManager.instance.primaryFocus?.debugLabel, 'SettingsCategory:setup');
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pumpAndSettle();
      expect(FocusManager.instance.primaryFocus?.debugLabel, 'SettingsCategory:appearance');
      expect(find.text('Hide spoilers'), findsNothing, reason: 'Focus and selection remain independent until OK');
      expect(second.hasFocus, isFalse, reason: 'previewing must not enter or change the setting');
      expect(find.text('Watched indicators'), findsOneWidget);
      await tester.sendKeyEvent(LogicalKeyboardKey.enter);
      await tester.pumpAndSettle();
      expect(find.text('Hide spoilers'), findsOneWidget);
      expect(
        second.hasFocus,
        isTrue,
        reason: 'primary: ${FocusManager.instance.primaryFocus}; attached: ${second.context}',
      );
      final before = SettingsService.instance.read(SettingsService.hideSpoilers);
      await tester.sendKeyEvent(LogicalKeyboardKey.enter);
      await tester.pumpAndSettle();
      expect(SettingsService.instance.read(SettingsService.hideSpoilers), !before);
      // Platform Back leaves the preference pane rather than closing settings.
      await tester.binding.handlePopRoute();
      await tester.pumpAndSettle();
      expect(FocusManager.instance.primaryFocus?.debugLabel, 'SettingsCategory:appearance');
      expect(find.byType(TvSettingsHub), findsOneWidget);
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowLeft);
      await tester.pump();
      expect(exitRequests, 0, reason: 'Left stops at the settings sidebar');
      await tester.sendKeyDownEvent(LogicalKeyboardKey.escape);
      await tester.pump();
      await tester.sendKeyRepeatEvent(LogicalKeyboardKey.escape);
      await tester.sendKeyUpEvent(LogicalKeyboardKey.escape);
      await tester.pump();
      expect(exitRequests, 1, reason: 'holding Back must trigger a single exit action');
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
    });
  }
}
