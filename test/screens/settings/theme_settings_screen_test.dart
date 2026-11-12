import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/providers/theme_provider.dart';
import 'package:luroka/screens/settings/custom_theme_editor_screen.dart';
import 'package:luroka/screens/settings/theme_settings_screen.dart';
import 'package:luroka/services/settings_service.dart' as settings;
import 'package:luroka/services/supporter/supporter_mode.dart';
import 'package:luroka/services/supporter/supporter_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../test_helpers/prefs.dart';

class _Harness {
  _Harness(this.supporter, this.theme);
  final SupporterService supporter;
  final ThemeProvider theme;
  int sheetOpened = 0;
  settings.ThemeMode get stored => settings.SettingsService.instance.read(settings.SettingsService.themeMode);
}

Finder _tile(settings.ThemeMode mode) => find.byKey(ValueKey(mode));
bool _checked(settings.ThemeMode mode) => find
    .descendant(of: _tile(mode), matching: find.byIcon(Symbols.radio_button_checked_rounded))
    .evaluate().isNotEmpty;

settings.ThemeMode? _focusedTile() {
  settings.ThemeMode? found;
  FocusManager.instance.primaryFocus?.context?.visitAncestorElements((element) {
    final key = element.widget.key;
    if (key is ValueKey<settings.ThemeMode>) found = key.value;
    return found == null;
  });
  return found;
}

Future<_Harness> _mount(WidgetTester tester, SupporterAvailability availability,
    {bool buy = false, bool keyboard = false, bool mobile = false}) async {
  tester.view.devicePixelRatio = 1;
  tester.view.physicalSize = mobile ? const Size(390, 844) : const Size(960, 540);
  addTearDown(tester.view.reset);
  final supporter = SupporterService.forTesting(availability: availability);
  final theme = ThemeProvider(supporter: supporter);
  addTearDown(supporter.dispose);
  addTearDown(theme.dispose);
  final harness = _Harness(supporter, theme);
  Future<void> openSheet(BuildContext context) async {
    harness.sheetOpened++;
    if (buy) {
      await settings.SettingsService.instance.write(settings.SettingsService.supporterEntitlementCached, true);
      await supporter.init();
    }
  }
  final navigator = GlobalKey<NavigatorState>();
  Widget picker() => ThemeSettingsScreen(openSupporterSheet: openSheet);
  await tester.pumpWidget(InputModeTracker(child: MultiProvider(providers: [
    ChangeNotifierProvider<SupporterService>.value(value: supporter),
    ChangeNotifierProvider<ThemeProvider>.value(value: theme),
  ], child: Consumer<ThemeProvider>(builder: (_, provider, _) => MaterialApp(
    navigatorKey: navigator,
    theme: provider.lightTheme.copyWith(platform: mobile ? TargetPlatform.android : TargetPlatform.linux),
    darkTheme: provider.darkTheme.copyWith(platform: mobile ? TargetPlatform.android : TargetPlatform.linux),
    themeMode: provider.materialThemeMode,
    home: keyboard ? const Scaffold(body: Text('launcher')) : picker(),
  )))));
  await tester.pumpAndSettle();
  if (keyboard) {
    InputModeTracker.reportNonPointerInput();
    await tester.pump();
    unawaited(navigator.currentState!.push(MaterialPageRoute<void>(builder: (_) => picker())));
    await tester.pumpAndSettle();
  }
  return harness;
}

Future<void> _tapVisible(WidgetTester tester, Finder finder) async {
  if (finder.evaluate().isEmpty && find.byKey(const ValueKey('mobile-theme-choices')).evaluate().isNotEmpty) {
    await tester.scrollUntilVisible(finder, 300, scrollable: find.descendant(
      of: find.byKey(const ValueKey('mobile-theme-choices')), matching: find.byType(Scrollable)).first);
    await tester.pumpAndSettle();
  }
  await tester.ensureVisible(finder);
  await tester.pumpAndSettle();
  await tester.tap(finder);
  await tester.pumpAndSettle();
}

Future<void> _more(WidgetTester tester) => _tapVisible(tester, find.byKey(const ValueKey('more-themes')));

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    settings.SettingsService.resetForTesting();
    final service = await settings.SettingsService.getInstance();
    await service.write(settings.SettingsService.themeMode, settings.ThemeMode.lurokaCoral);
    LocaleSettings.setLocaleSync(AppLocale.en);
  });

  testWidgets('featured page and More themes expose all available current palettes', (tester) async {
    await _mount(tester, SupporterAvailability.hidden);
    for (final mode in [...settings.ThemeMode.featuredDark, ...settings.ThemeMode.featuredLight]) {
      expect(_tile(mode), findsOneWidget);
    }
    expect(_checked(settings.ThemeMode.lurokaCoral), isTrue);
    expect(_tile(settings.ThemeMode.lurokaAurora), findsNothing);
    await _more(tester);
    for (final mode in [...settings.ThemeMode.cinemaDark, ...settings.ThemeMode.cinemaLight]
        .where((mode) => !settings.ThemeMode.featuredDark.contains(mode) &&
          !settings.ThemeMode.featuredLight.contains(mode) && !mode.isSupporterPerk)) {
      expect(_tile(mode), findsOneWidget, reason: mode.name);
    }
    expect(_tile(settings.ThemeMode.velvetHour), findsOneWidget);
    expect(_tile(settings.ThemeMode.custom), findsNothing);
    for (final mode in [settings.ThemeMode.system, settings.ThemeMode.ember, settings.ThemeMode.forest]) {
      expect(_tile(mode), findsNothing);
    }
  });

  testWidgets('theme changes apply immediately and survive navigation back', (tester) async {
    final harness = await _mount(tester, SupporterAvailability.hidden);
    await _more(tester);
    await _tapVisible(tester, _tile(settings.ThemeMode.lurokaNocturne));
    expect(harness.stored, settings.ThemeMode.lurokaNocturne);
    expect(harness.theme.activePalette, MonoPalette.lurokaNocturne);
    expect(_checked(settings.ThemeMode.lurokaNocturne), isTrue);
    await tester.pageBack();
    await tester.pumpAndSettle();
    expect(harness.theme.activePalette, MonoPalette.lurokaNocturne);
    expect(find.text(t.lurokaThemes.nocturne), findsOneWidget);
  });

  testWidgets('locked theme is marked and a purchase applies it', (tester) async {
    await settings.SettingsService.instance.write(settings.SettingsService.customThemePalette, MonoPalette.plum);
    final harness = await _mount(tester, SupporterAvailability.purchasable, buy: true);
    await _more(tester);
    expect(find.descendant(of: _tile(settings.ThemeMode.custom), matching: find.byIcon(Symbols.lock_rounded)), findsOneWidget);
    await _tapVisible(tester, _tile(settings.ThemeMode.custom));
    expect(harness.sheetOpened, 1);
    expect(harness.stored, settings.ThemeMode.custom);
    expect(harness.theme.activePalette, MonoPalette.plum);
    expect(_checked(settings.ThemeMode.custom), isTrue);
    expect(find.byIcon(Symbols.lock_rounded), findsNothing);
  });

  testWidgets('declining unlock preserves the old theme and custom editor is protected', (tester) async {
    final harness = await _mount(tester, SupporterAvailability.purchasable);
    await _more(tester);
    await _tapVisible(tester, _tile(settings.ThemeMode.custom));
    expect(harness.stored, settings.ThemeMode.lurokaCoral);
    await _tapVisible(tester, find.byKey(const ValueKey('theme_edit_custom')));
    expect(harness.sheetOpened, 2);
    expect(find.byType(CustomThemeEditorScreen), findsNothing);
  });

  testWidgets('saved locked theme remains saved and is identified in More themes', (tester) async {
    await settings.SettingsService.instance.write(settings.SettingsService.customThemePalette, MonoPalette.plum);
    await settings.SettingsService.instance.write(settings.SettingsService.themeMode, settings.ThemeMode.custom);
    final harness = await _mount(tester, SupporterAvailability.purchasable);
    expect(harness.theme.themeMode, settings.ThemeMode.lurokaCoral);
    expect(harness.stored, settings.ThemeMode.custom);
    await _more(tester);
    expect(find.descendant(of: _tile(settings.ThemeMode.custom), matching: find.text(t.themeEditor.savedLocked)), findsOneWidget);
  });

  testWidgets('custom editor starts from the active or saved palette', (tester) async {
    final harness = await _mount(tester, SupporterAvailability.free);
    await _more(tester);
    await _tapVisible(tester, _tile(settings.ThemeMode.custom));
    expect(tester.widget<CustomThemeEditorScreen>(find.byType(CustomThemeEditorScreen)).initialPalette, MonoPalette.lurokaCoral);
    expect(harness.stored, settings.ThemeMode.lurokaCoral);
    await tester.pageBack();
    await tester.pumpAndSettle();
    final saved = MonoPalette.forest.withColor(MonoPaletteSlot.accent, const Color(0xFFFF00AA));
    await settings.SettingsService.instance.write(settings.SettingsService.customThemePalette, saved);
    await tester.pumpAndSettle();
    await _tapVisible(tester, find.byKey(const ValueKey('theme_edit_custom')));
    expect(tester.widget<CustomThemeEditorScreen>(find.byType(CustomThemeEditorScreen)).initialPalette, saved);
  });

  testWidgets('TV remote focuses featured theme and then the selected More theme', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    await settings.SettingsService.instance.write(settings.SettingsService.themeMode, settings.ThemeMode.lurokaNocturne);
    final harness = await _mount(tester, SupporterAvailability.free, keyboard: true);
    expect(harness.theme.themeMode, settings.ThemeMode.lurokaNocturne);
    expect(find.byKey(const ValueKey('more-themes')), findsOneWidget);
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    expect(_focusedTile(), settings.ThemeMode.lurokaNocturne);
    expect(_checked(settings.ThemeMode.lurokaNocturne), isTrue);
  });

  testWidgets('mobile marks a locked saved theme and updates its live preview', (tester) async {
    await settings.SettingsService.instance.write(settings.SettingsService.customThemePalette, MonoPalette.plum);
    await settings.SettingsService.instance.write(settings.SettingsService.themeMode, settings.ThemeMode.custom);
    final harness = await _mount(tester, SupporterAvailability.purchasable, buy: true, mobile: true);
    await _more(tester);
    final tile = _tile(settings.ThemeMode.custom);
    await tester.scrollUntilVisible(tile, 300, scrollable: find.descendant(
      of: find.byKey(const ValueKey('mobile-theme-choices')), matching: find.byType(Scrollable)).first);
    await tester.pumpAndSettle();
    expect(find.descendant(of: tile, matching: find.byIcon(Symbols.lock_rounded)), findsOneWidget);
    expect(find.descendant(of: tile, matching: find.text(t.themeEditor.savedLocked)), findsOneWidget);
    await _tapVisible(tester, tile);
    expect(harness.sheetOpened, 1);
    expect(harness.theme.activePalette, MonoPalette.plum);
    expect(find.descendant(of: tile, matching: find.byIcon(Symbols.lock_rounded)), findsNothing);
    final preview = tester.widget<DecoratedBox>(find.byKey(const ValueKey('mobile-mini-home-preview')));
    expect((preview.decoration as BoxDecoration).color, MonoPalette.plum.bg);
    expect(tester.takeException(), isNull);
  });
}
