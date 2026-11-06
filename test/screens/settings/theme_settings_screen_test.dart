import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/providers/theme_provider.dart';
import 'package:luroka/screens/settings/custom_theme_editor_screen.dart';
import 'package:luroka/screens/settings/theme_settings_screen.dart';
import 'package:luroka/services/settings_service.dart' hide ThemeMode;
import 'package:luroka/services/settings_service.dart' as settings show ThemeMode;
import 'package:luroka/services/supporter/supporter_mode.dart';
import 'package:luroka/services/supporter/supporter_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:provider/provider.dart';

import '../../test_helpers/prefs.dart';

const _presetLabels = ['Ember', 'Glacier', 'Forest', 'Plum', 'Paper'];

class _Harness {
  _Harness(this.supporter, this.theme);

  final SupporterService supporter;
  final ThemeProvider theme;

  /// How often a locked perk opened the Supporter sheet.
  int sheetOpened = 0;

  settings.ThemeMode get stored => SettingsService.instance.read(SettingsService.themeMode);
}

/// The picker at the app root, themed by the provider the way MainApp is.
/// [purchaseInSheet] makes the Supporter sheet end with a purchase. With
/// [viaKeyboard] the picker opens from a launcher after a D-pad session
/// started, the way a TV viewer reaches it.
Future<_Harness> _pumpPicker(
  WidgetTester tester,
  SupporterAvailability availability, {
  bool purchaseInSheet = false,
  bool viaKeyboard = false,
}) async {
  // D-pad runs use an Android TV screen (1920x1080 at 2x), where the Custom
  // group sits below the fold.
  tester.view.devicePixelRatio = viaKeyboard ? 2 : 1;
  tester.view.physicalSize = viaKeyboard ? const Size(1920, 1080) : const Size(900, 2000);
  addTearDown(tester.view.resetDevicePixelRatio);
  addTearDown(tester.view.resetPhysicalSize);

  final supporter = SupporterService.forTesting(availability: availability);
  addTearDown(supporter.dispose);
  final theme = ThemeProvider(supporter: supporter);
  addTearDown(theme.dispose);
  final harness = _Harness(supporter, theme);

  Future<void> openSheet(BuildContext context) async {
    harness.sheetOpened++;
    if (!purchaseInSheet) return;
    await SettingsService.instance.write(SettingsService.supporterEntitlementCached, true);
    await supporter.init();
  }

  final navigatorKey = GlobalKey<NavigatorState>();
  Widget picker() => ThemeSettingsScreen(openSupporterSheet: openSheet);
  await tester.pumpWidget(
    InputModeTracker(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<SupporterService>.value(value: supporter),
          ChangeNotifierProvider<ThemeProvider>.value(value: theme),
        ],
        child: Consumer<ThemeProvider>(
          builder: (_, provider, _) => MaterialApp(
            navigatorKey: navigatorKey,
            theme: provider.lightTheme,
            darkTheme: provider.darkTheme,
            themeMode: provider.materialThemeMode,
            home: viaKeyboard ? const Scaffold(body: Text('launcher')) : picker(),
          ),
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
  if (viaKeyboard) {
    InputModeTracker.reportNonPointerInput();
    await tester.pump();
    unawaited(navigatorKey.currentState!.push(MaterialPageRoute<void>(builder: (_) => picker())));
    await tester.pumpAndSettle();
  }
  return harness;
}

Finder _tile(settings.ThemeMode mode) => find.byKey(ValueKey(mode));

bool _isChecked(settings.ThemeMode mode) =>
    find.descendant(of: _tile(mode), matching: find.byIcon(Symbols.radio_button_checked_rounded)).evaluate().isNotEmpty;

Finder get _savedMarker => find.text(t.themeEditor.savedLocked);

/// The theme tile holding focus, if any.
settings.ThemeMode? _focusedTile() {
  settings.ThemeMode? found;
  FocusManager.instance.primaryFocus?.context?.visitAncestorElements((element) {
    final key = element.widget.key;
    if (key is ValueKey<settings.ThemeMode>) found = key.value;
    return found == null;
  });
  return found;
}

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    final service = await SettingsService.getInstance();
    await service.write(SettingsService.themeMode, settings.ThemeMode.lurokaCoral);
    LocaleSettings.setLocaleSync(AppLocale.en);
  });

  testWidgets('the picker shows cinema themes and retires the original four choices', (tester) async {
    await _pumpPicker(tester, SupporterAvailability.hidden);

    for (final label in [t.settings.systemTheme, t.settings.lightTheme, t.settings.darkTheme, t.settings.oledTheme]) {
      expect(find.text(label), findsNothing, reason: label);
    }
    for (final mode in [...settings.ThemeMode.cinemaDark, ...settings.ThemeMode.cinemaLight]) {
      expect(_tile(mode), findsOneWidget);
    }
    expect(find.text(t.lurokaThemes.darkThemes), findsOneWidget);
    expect(find.text(t.lurokaThemes.lightThemes), findsOneWidget);
    for (final label in [..._presetLabels, t.themeEditor.custom, t.themeEditor.editCustom, t.themeEditor.presets]) {
      expect(find.text(label), findsNothing, reason: label);
    }
    expect(find.byIcon(Symbols.lock_rounded), findsNothing);
  });

  testWidgets('a locked build shows every perk with a lock and the sheet decides', (tester) async {
    final harness = await _pumpPicker(tester, SupporterAvailability.purchasable);

    for (final mode in [
      settings.ThemeMode.velvetHour,
      settings.ThemeMode.custom,
    ]) {
      expect(find.descendant(of: _tile(mode), matching: find.byIcon(Symbols.lock_rounded)), findsOneWidget);
    }
    for (final mode in [...settings.ThemeMode.cinemaDark, ...settings.ThemeMode.cinemaLight]) {
      expect(find.descendant(of: _tile(mode), matching: find.byIcon(Symbols.lock_rounded)), findsNothing);
    }

    await tester.tap(find.text('Ember'));
    await tester.pumpAndSettle();
    expect(harness.sheetOpened, 1);
    expect(harness.stored, settings.ThemeMode.lurokaCoral);
    expect(harness.theme.themeMode, settings.ThemeMode.lurokaCoral);

    await tester.ensureVisible(find.text(t.themeEditor.editCustom));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.themeEditor.editCustom));
    await tester.pumpAndSettle();
    expect(harness.sheetOpened, 2);
    expect(find.byType(CustomThemeEditorScreen), findsNothing);

    // Built-ins never ask.
    await tester.ensureVisible(_tile(settings.ThemeMode.lurokaObsidian));
    await tester.tap(_tile(settings.ThemeMode.lurokaObsidian));
    await tester.pumpAndSettle();
    expect(harness.sheetOpened, 2);
    expect(harness.stored, settings.ThemeMode.lurokaObsidian);
  });

  testWidgets('light Luroka themes apply immediately, persist, and switch back to the black cinema theme', (
    tester,
  ) async {
    final harness = await _pumpPicker(tester, SupporterAvailability.hidden);
    for (final mode in [...settings.ThemeMode.cinemaLight, settings.ThemeMode.lurokaObsidian]) {
      await tester.ensureVisible(_tile(mode));
      await tester.tap(_tile(mode));
      await tester.pumpAndSettle();
      final palette = ThemeProvider.paletteFor(mode)!;
      final painted = Theme.of(tester.element(find.byType(ThemeSettingsScreen)));
      expect(harness.stored, mode);
      expect(
        harness.theme.materialThemeMode,
        palette.brightness == Brightness.light ? ThemeMode.light : ThemeMode.dark,
      );
      expect(painted.brightness, palette.brightness);
      expect(painted.scaffoldBackgroundColor, palette.bg);
      expect(painted.colorScheme.onSurface, palette.text);
      expect(_isChecked(mode), isTrue);
    }
    expect(harness.sheetOpened, 0);
    expect(tester.takeException(), isNull);
  });

  testWidgets('a purchase in the sheet applies the locked pick and drops the locks', (tester) async {
    final harness = await _pumpPicker(tester, SupporterAvailability.purchasable, purchaseInSheet: true);

    await tester.tap(find.text('Glacier'));
    await tester.pumpAndSettle();

    expect(harness.sheetOpened, 1);
    expect(harness.stored, settings.ThemeMode.velvetHour);
    expect(harness.theme.themeMode, settings.ThemeMode.velvetHour);
    expect(Theme.of(tester.element(find.byType(ThemeSettingsScreen))).colorScheme.primary, MonoPalette.velvetHour.accent);
    expect(find.byIcon(Symbols.lock_rounded), findsNothing);
    expect(_isChecked(settings.ThemeMode.velvetHour), isTrue);
  });

  testWidgets('a stored perk that is locked shows Electric checked, stays stored and says so', (tester) async {
    await SettingsService.instance.write(SettingsService.themeMode, settings.ThemeMode.forest);
    final harness = await _pumpPicker(tester, SupporterAvailability.purchasable);

    expect(_isChecked(settings.ThemeMode.lurokaElectric), isTrue);
    expect(_isChecked(settings.ThemeMode.forest), isFalse);
    expect(harness.stored, settings.ThemeMode.forest);
    expect(find.descendant(of: _tile(settings.ThemeMode.forest), matching: _savedMarker), findsOneWidget);
    expect(_savedMarker, findsOneWidget);
  });

  testWidgets('unlocking clears the saved marker and paints the saved perk', (tester) async {
    await SettingsService.instance.write(SettingsService.themeMode, settings.ThemeMode.velvetHour);
    final harness = await _pumpPicker(tester, SupporterAvailability.purchasable, purchaseInSheet: true);
    expect(find.descendant(of: _tile(settings.ThemeMode.velvetHour), matching: _savedMarker), findsOneWidget);

    await tester.tap(find.text('Glacier'));
    await tester.pumpAndSettle();

    expect(harness.sheetOpened, 1);
    expect(_isChecked(settings.ThemeMode.velvetHour), isTrue);
    expect(_savedMarker, findsNothing);
  });

  testWidgets('no saved marker when the saved theme is what paints', (tester) async {
    // A built-in in a locked build.
    await _pumpPicker(tester, SupporterAvailability.purchasable);
    expect(_isChecked(settings.ThemeMode.lurokaCoral), isTrue);
    expect(_savedMarker, findsNothing);
  });

  testWidgets('no saved marker for a perk in an unlocked build', (tester) async {
    await SettingsService.instance.write(SettingsService.themeMode, settings.ThemeMode.forest);
    await _pumpPicker(tester, SupporterAvailability.free);
    expect(_isChecked(settings.ThemeMode.forest), isTrue);
    expect(_savedMarker, findsNothing);
  });

  testWidgets('with a D-pad the picker opens focused on the theme in use', (tester) async {
    await SettingsService.instance.write(SettingsService.themeMode, settings.ThemeMode.lurokaObsidian);
    await _pumpPicker(tester, SupporterAvailability.purchasable, viaKeyboard: true);
    expect(_isChecked(settings.ThemeMode.lurokaObsidian), isTrue);
    expect(_focusedTile(), settings.ThemeMode.lurokaObsidian);
  });

  testWidgets('with a D-pad the picker opens focused on a saved Custom theme far down the list', (tester) async {
    await SettingsService.instance.write(SettingsService.customThemePalette, MonoPalette.plum);
    await SettingsService.instance.write(SettingsService.themeMode, settings.ThemeMode.custom);
    await _pumpPicker(tester, SupporterAvailability.free, viaKeyboard: true);
    expect(_focusedTile(), settings.ThemeMode.custom);
  });

  testWidgets('with a D-pad and a locked saved perk the picker opens on Electric, which paints', (tester) async {
    await SettingsService.instance.write(SettingsService.themeMode, settings.ThemeMode.velvetHour);
    await _pumpPicker(tester, SupporterAvailability.purchasable, viaKeyboard: true);
    expect(_focusedTile(), settings.ThemeMode.lurokaElectric);
  });

  testWidgets('on TV a locked saved perk shows Electric selected and focused', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    await SettingsService.instance.write(SettingsService.themeMode, settings.ThemeMode.velvetHour);
    final harness = await _pumpPicker(tester, SupporterAvailability.purchasable, viaKeyboard: true);

    expect(_isChecked(settings.ThemeMode.lurokaElectric), isTrue);
    expect(_isChecked(settings.ThemeMode.system), isFalse);
    expect(_focusedTile(), settings.ThemeMode.lurokaElectric);
    expect(find.descendant(of: _tile(settings.ThemeMode.velvetHour), matching: _savedMarker), findsOneWidget);
    expect(harness.stored, settings.ThemeMode.velvetHour);
  });

  testWidgets('a free build applies every pick without the sheet', (tester) async {
    final harness = await _pumpPicker(tester, SupporterAvailability.free);
    expect(find.byIcon(Symbols.lock_rounded), findsNothing);

    for (final (label, mode, palette) in [
      ('Ember', settings.ThemeMode.ember, MonoPalette.ember),
      ('Paper', settings.ThemeMode.paper, MonoPalette.paper),
    ]) {
      await tester.tap(find.text(label));
      await tester.pumpAndSettle();
      expect(harness.stored, mode);
      final screenTheme = Theme.of(tester.element(find.byType(ThemeSettingsScreen)));
      expect(screenTheme.scaffoldBackgroundColor, palette.bg);
    }
    expect(harness.sheetOpened, 0);
  });

  testWidgets('Custom with nothing saved opens the editor seeded from the theme on screen', (tester) async {
    final harness = await _pumpPicker(tester, SupporterAvailability.free);
    expect(find.text(t.themeEditor.customEmpty), findsOneWidget);

    await tester.tap(_tile(settings.ThemeMode.custom));
    await tester.pumpAndSettle();

    final editor = tester.widget<CustomThemeEditorScreen>(find.byType(CustomThemeEditorScreen));
    expect(editor.initialPalette, MonoPalette.lurokaCoral);
    // Opening the editor selects nothing until it saves.
    expect(harness.stored, settings.ThemeMode.lurokaCoral);
  });

  testWidgets('Edit opens the saved Custom palette', (tester) async {
    final saved = MonoPalette.forest.withColor(MonoPaletteSlot.accent, const Color(0xFFFF00AA));
    await SettingsService.instance.write(SettingsService.customThemePalette, saved);
    await _pumpPicker(tester, SupporterAvailability.free);
    expect(find.text(t.themeEditor.customEmpty), findsNothing);

    await tester.ensureVisible(find.text(t.themeEditor.editCustom));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.themeEditor.editCustom));
    await tester.pumpAndSettle();

    expect(tester.widget<CustomThemeEditorScreen>(find.byType(CustomThemeEditorScreen)).initialPalette, saved);
  });

  testWidgets('the D-pad reaches a preset and SELECT applies it', (tester) async {
    final harness = await _pumpPicker(tester, SupporterAvailability.free);

    final emberNode = Focus.of(
      tester.element(find.descendant(of: _tile(settings.ThemeMode.ember), matching: find.text('Ember'))),
    );
    for (var i = 0; i < 40 && !emberNode.hasFocus; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pumpAndSettle();
    }
    expect(emberNode.hasFocus, isTrue, reason: 'D-pad never reached Ember');

    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(harness.stored, settings.ThemeMode.ember);
  });
}
