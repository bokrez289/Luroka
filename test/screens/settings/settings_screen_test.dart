import 'dart:async';
import 'dart:io';

import 'package:background_downloader/background_downloader.dart' show RequireWiFi;
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:luroka/connection/connection_registry.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_library.dart';
import 'package:luroka/profiles/active_profile_provider.dart';
import 'package:luroka/profiles/plex_home_service.dart';
import 'package:luroka/profiles/profile_connection_registry.dart';
import 'package:luroka/profiles/profile_registry.dart';
import 'package:luroka/providers/account_preferences_controller.dart';
import 'package:luroka/providers/hidden_libraries_provider.dart';
import 'package:luroka/providers/libraries_provider.dart';
import 'package:luroka/providers/download_provider.dart';
import 'package:luroka/providers/seerr_account_provider.dart';
import 'package:luroka/providers/theme_provider.dart';
import 'package:luroka/providers/trackers_provider.dart';
import 'package:luroka/screens/settings/settings_screen.dart';
import 'package:luroka/services/background_work_diagnostics_service.dart';
import 'package:luroka/services/donation_service.dart';
import 'package:luroka/services/download_storage_service.dart';
import 'package:luroka/services/download_manager_service.dart';
import 'package:luroka/services/file_picker_service.dart';
import 'package:luroka/services/settings_export_service.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/settings_service.dart' as app_settings show ThemeMode;
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/services/supporter/supporter_mode.dart';
import 'package:luroka/services/supporter/supporter_service.dart';
import 'package:luroka/services/update_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/app_icon.dart';
import 'package:luroka/widgets/dialog_action_button.dart';
import 'package:luroka/widgets/focusable_list_tile.dart';
import 'package:luroka/widgets/loading_indicator_box.dart';
import 'package:luroka/widgets/setting_tile.dart';
import 'package:provider/provider.dart';

import '../../test_helpers/io_fakes.dart';
import '../../test_helpers/prefs.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late PathProviderPlatform originalPathProvider;
  late _FakeDirectoryPicker directoryPicker;
  late Directory temporaryDirectory;

  setUpAll(() {
    originalPathProvider = PathProviderPlatform.instance;
    LocaleSettings.setLocaleSync(AppLocale.en);
  });

  setUp(() async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    DownloadStorageService.resetForTesting();
    temporaryDirectory = await Directory.systemTemp.createTemp('plezy_settings_screen_test_');
    PathProviderPlatform.instance = FakePathProvider(temporaryDirectory);
    TvDetectionService.debugSetAppleTVOverride(false);
    PlatformDetector.debugSetIsDesktopOSOverride(false);
    directoryPicker = _FakeDirectoryPicker();
    FilePickerService.setDelegateForTesting(directoryPicker);
    await SettingsService.getInstance();
  });

  tearDown(() async {
    TvDetectionService.debugSetAppleTVOverride(null);
    PlatformDetector.debugSetIsDesktopOSOverride(null);
    DownloadStorageService.resetForTesting();
    FilePickerService.setDelegateForTesting(null);
    SettingsService.resetForTesting();
    PathProviderPlatform.instance = originalPathProvider;
    if (temporaryDirectory.existsSync()) {
      await temporaryDirectory.delete(recursive: true);
    }
  });

  testWidgets('system back closes Manage Libraries without popping pushed settings', (tester) async {
    final harness = await _pumpSettingsScreen(
      tester,
      pushSettingsRoute: true,
      platform: TargetPlatform.android,
      initialLibraries: const [
        MediaLibrary(
          id: 'maestro-movies',
          backend: MediaBackend.jellyfin,
          title: 'Maestro Movies',
          kind: MediaKind.movie,
        ),
      ],
    );
    addTearDown(() => harness.dispose(tester));

    final accounts = find.text(t.tvSettingsV2.accountsLibraries);
    await tester.ensureVisible(accounts);
    await tester.pumpAndSettle();
    await tester.tap(accounts);
    await _pumpUi(tester);
    await tester.tap(find.text(t.libraries.manageLibraries));
    await _pumpUi(tester);
    expect(find.text('Maestro Movies'), findsOneWidget);

    // Android can dispatch one physical Back through both the focused key
    // path and Navigator.popRoute. The old modal fallback consumed one path
    // and let the other pop Settings itself.
    await tester.sendKeyDownEvent(LogicalKeyboardKey.escape);
    await tester.binding.handlePopRoute();
    await tester.pump();
    await tester.sendKeyUpEvent(LogicalKeyboardKey.escape);
    await _pumpUi(tester);

    expect(find.text('Maestro Movies'), findsNothing, reason: 'system back dismisses the sheet');
    expect(find.text(t.settings.services), findsOneWidget, reason: 'the settings route remains current');
    expect(find.text('Settings launcher'), findsNothing, reason: 'system back must not pop the settings route');
  });

  for (final size in [const Size(320, 640), const Size(390, 844), const Size(844, 390)]) {
    testWidgets('mobile settings stays usable in Simple and Advanced at $size', (tester) async {
      final harness = await _pumpSettingsScreen(
        tester, platform: TargetPlatform.android, size: size, textScale: size.width == 320 ? 1.5 : 1,
      );
      addTearDown(() => harness.dispose(tester));
      expect(find.byKey(const ValueKey('mobile-settings-mode-simple')), findsOneWidget);
      expect(find.byKey(const ValueKey('mobile-settings-mode-advanced')), findsOneWidget);
      expect(find.byKey(const ValueKey('mobile-settings-category-appearance')), findsOneWidget);
      final before = SettingsService.instance.read(SettingsService.autoPlayNextEpisode);
      await tester.tap(find.byKey(const ValueKey('mobile-settings-mode-advanced')));
      await _pumpUi(tester);
      expect(SettingsService.instance.read(SettingsService.mobileSettingsAdvancedMode), isTrue);
      expect(SettingsService.instance.read(SettingsService.tvSettingsAdvancedMode), isFalse);
      expect(SettingsService.instance.read(SettingsService.autoPlayNextEpisode), before);
      final playback = find.byKey(const ValueKey('mobile-settings-category-playback'));
      await tester.scrollUntilVisible(playback, 250, scrollable: find.byType(Scrollable).first);
      await _pumpUi(tester);
      await tester.tap(playback);
      await _pumpUi(tester);
      expect(find.text(t.tvSettingsV2.morePlayback), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('mobile mode persists and the live Home preview remains visible while settings change', (tester) async {
    final harness = await _pumpSettingsScreen(tester, platform: TargetPlatform.android, size: const Size(390, 844));
    addTearDown(() => harness.dispose(tester));
    await tester.tap(find.byKey(const ValueKey('mobile-settings-mode-advanced')));
    await _pumpUi(tester);
    await tester.pumpWidget(const SizedBox.shrink());
    final reopened = await _pumpSettingsScreen(tester, platform: TargetPlatform.android, size: const Size(390, 844));
    addTearDown(() => reopened.dispose(tester));
    expect(SettingsService.instance.read(SettingsService.mobileSettingsAdvancedMode), isTrue);
    final home = find.byKey(const ValueKey('mobile-settings-category-home'));
    await tester.ensureVisible(home);
    await _pumpUi(tester);
    await tester.tap(home);
    await _pumpUi(tester);
    final preview = find.byKey(const ValueKey('mobile-mini-home-preview'));
    expect(preview, findsOneWidget);
    expect(find.text(t.tvSettingsV2.previewPlaceholder), findsOneWidget);
    await SettingsService.instance.write(SettingsService.showHeroSection, false);
    await _pumpUi(tester);
    expect(preview, findsOneWidget);
    expect(find.text(t.tvSettingsV2.previewPlaceholder), findsNothing);
    await tester.tap(find.byKey(const ValueKey('mobile-settings-preview-toggle')));
    await _pumpUi(tester);
    expect(preview, findsNothing);
    await tester.tap(find.byKey(const ValueKey('mobile-settings-preview-toggle')));
    await _pumpUi(tester);
    expect(preview, findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('mobile library preview tracks poster density and remains visible while scrolling', (tester) async {
    final harness = await _pumpSettingsScreen(tester, platform: TargetPlatform.android, size: const Size(390, 844));
    addTearDown(() => harness.dispose(tester));
    final library = find.byKey(const ValueKey('mobile-settings-category-library'));
    await tester.ensureVisible(library);
    await _pumpUi(tester);
    await tester.tap(library);
    await _pumpUi(tester);
    final preview = find.byKey(const ValueKey('library-settings-preview'));
    expect(preview, findsOneWidget);
    int columns() => (tester.widget<GridView>(find.descendant(of: preview, matching: find.byType(GridView))).gridDelegate
        as SliverGridDelegateWithFixedCrossAxisCount).crossAxisCount;
    await SettingsService.instance.write(SettingsService.libraryDensity, 1);
    await _pumpUi(tester);
    expect(columns(), 5);
    await SettingsService.instance.write(SettingsService.libraryDensity, 5);
    await _pumpUi(tester);
    expect(columns(), 3);
    await tester.drag(find.byKey(const PageStorageKey('workspace-library')), const Offset(0, -350));
    await _pumpUi(tester);
    expect(tester.getRect(preview).bottom, lessThan(844));
    expect(tester.takeException(), isNull);
  });

  testWidgets('mobile appearance preview fits a small phone with enlarged text', (tester) async {
    final harness = await _pumpSettingsScreen(
      tester, platform: TargetPlatform.android, size: const Size(320, 640), textScale: 1.5,
    );
    addTearDown(() => harness.dispose(tester));
    await tester.tap(find.byKey(const ValueKey('mobile-settings-category-appearance')));
    await _pumpUi(tester);
    expect(find.byKey(const ValueKey('mobile-mini-home-preview')), findsOneWidget);
    expect(find.byKey(const PageStorageKey('workspace-appearance')), findsOneWidget);
  });

  testWidgets('mobile settings search reveals and remembers Advanced for advanced results', (tester) async {
    final harness = await _pumpSettingsScreen(tester, platform: TargetPlatform.android, size: const Size(390, 844));
    addTearDown(() => harness.dispose(tester));
    expect(SettingsService.instance.read(SettingsService.mobileSettingsAdvancedMode), isFalse);
    await tester.tap(find.byTooltip(t.lurokaWorkspace.searchSettings));
    await _pumpUi(tester);
    await tester.enterText(find.byType(TextField), t.settings.hardwareDecoding);
    await _pumpUi(tester);
    await tester.tap(find.text(t.settings.hardwareDecoding).last);
    await _pumpUi(tester);
    expect(SettingsService.instance.read(SettingsService.mobileSettingsAdvancedMode), isTrue);
    expect(find.text(t.tvSettingsV2.engine), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'TV Simple and Advanced keep the same categories and reveal extra controls without changing preferences',
    (tester) async {
      await initializeDateFormatting('en');
      TvDetectionService.debugSetAppleTVOverride(true);
      PackageInfo.setMockInitialValues(appName: 'Luroka', packageName: 'com.bokrez.luroka', version: '2.24.0', buildNumber: '1', buildSignature: '');
      final harness = await _pumpSettingsScreen(tester, size: const Size(1280, 720));
      addTearDown(() => harness.dispose(tester));
      expect(find.text(t.tvSettingsV2.simple), findsOneWidget);
      expect(SettingsService.instance.read(SettingsService.tvSettingsAdvancedMode), isFalse);
      expect(find.text(t.tvSettingsV2.homeNavigation), findsOneWidget);
      expect(find.text(t.tvSettingsV2.libraryCards), findsWidgets);
      expect(find.text(t.lurokaWorkspace.networkStreaming), findsNothing);
      expect(find.text(t.tvSettingsV2.performance), findsNothing);
      final before = SettingsService.instance.read(SettingsService.fireStickMode);
      await tester.tap(find.text(t.settings.advanced));
      await _pumpUi(tester);
      expect(SettingsService.instance.read(SettingsService.tvSettingsAdvancedMode), isTrue);
      // Recreating the workspace uses the device-local mode preference.
      await tester.pumpWidget(const SizedBox.shrink());
      final second = await _pumpSettingsScreen(tester, size: const Size(1280, 720));
      addTearDown(() => second.dispose(tester));
      expect(find.text(t.tvSettingsV2.performance), findsOneWidget);
      expect(find.text(t.tvSettingsV2.homeNavigation), findsOneWidget);
      expect(find.text(t.tvSettingsV2.performance), findsOneWidget);
      expect(SettingsService.instance.read(SettingsService.fireStickMode), before);
      await tester.tap(find.text(t.tvSettingsV2.libraryCards));
      await _pumpUi(tester);
      expect(find.text(t.tvSettingsV2.posterSize), findsOneWidget);
      expect(find.text(t.tvSettingsV2.libraryPreview), findsOneWidget);
      await tester.tap(find.text(t.tvSettingsV2.simple));
      await _pumpUi(tester);
      expect(find.text(t.tvSettingsV2.libraryCards), findsWidgets);
      expect(SettingsService.instance.read(SettingsService.tvSettingsAdvancedMode), isFalse);
      await tester.tap(find.byTooltip(t.lurokaWorkspace.searchSettings));
      await _pumpUi(tester);
      await tester.enterText(find.byType(TextField), t.settings.hardwareDecoding);
      await _pumpUi(tester);
      await tester.tap(find.text(t.settings.hardwareDecoding).last);
      await _pumpUi(tester);
      expect(find.text(t.tvSettingsV2.engine), findsWidgets, reason: 'Search reveals the advanced engine entry');
      expect(tester.takeException(), isNull);
    },
  );

  for (final size in [const Size(720, 480), const Size(960, 540), const Size(1280, 720)]) {
    testWidgets('TV live theme preview and direct About are visible at $size', (tester) async {
      await initializeDateFormatting('en');
      TvDetectionService.debugSetAppleTVOverride(true);
      PackageInfo.setMockInitialValues(appName: 'Luroka', packageName: 'com.bokrez.luroka', version: '2.24.0', buildNumber: '1', buildSignature: '');
      final harness = await _pumpSettingsScreen(tester, size: size);
      addTearDown(() => harness.dispose(tester));
      final preview = find.byKey(const ValueKey('tv-contextual-preview'));
      expect(preview, findsOneWidget, reason: 'The preview must not disappear on a compact TV');
      expect(find.text(t.tvSettingsV2.themePreview), findsOneWidget);
      final old = SettingsService.instance.read(SettingsService.themeMode);
      final themeRow = find.widgetWithText(SettingNavigationTile, t.settings.theme);
      expect(themeRow, findsOneWidget);
      await tester.tap(themeRow);
      await _pumpUi(tester);
      final nextTheme = app_settings.ThemeMode.featuredDark.firstWhere((mode) => mode != old);
      await tester.tap(find.byKey(ValueKey(nextTheme)));
      await _pumpUi(tester);
      expect(SettingsService.instance.read(SettingsService.themeMode), isNot(old));
      await tester.pageBack();
      await _pumpUi(tester);
      expect(preview, findsOneWidget, reason: 'Selecting a theme leaves the live preview on screen');
      final about = find.text(t.tvSettingsV2.aboutSupport);
      await tester.scrollUntilVisible(about, 200, scrollable: find.byType(Scrollable).first);
      await _pumpUi(tester);
      await tester.tap(about);
      await _pumpUi(tester);
      expect(find.byKey(const ValueKey('luroka-version')), findsOneWidget);
      expect(find.text(t.settingsRedesign.aboutDescription), findsOneWidget);
      expect(find.text(t.settingsRedesign.updateSource), findsNothing);
      expect(find.text(t.about.communitySection), findsNothing);
      expect(find.text(t.about.customSource), findsNothing);
      expect(find.text(t.about.openSourceLicenses), findsOneWidget);
      expect(tester.getRect(find.byKey(const ValueKey('luroka-version'))).top, lessThan(size.height / 2));
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('settings rows share the modern row geometry and activation', (tester) async {
    final harness = await _pumpSettingsScreen(tester);
    addTearDown(() => harness.dispose(tester));

    final rows = <_MigratedRow>[
      _MigratedRow(
        title: t.settings.supportDeveloper,
        focusLabel: 'settings_donate',
        isVisible: DonationService.isEnabled,
      ),
      _MigratedRow(title: t.settings.watchTogetherRelay, focusLabel: 'settings_watch_together_relay'),
      _MigratedRow(title: t.settings.clearImageCache, focusLabel: 'settings_clear_image_cache'),
      _MigratedRow(title: t.settings.resetSettings, focusLabel: 'settings_reset_settings'),
      const _MigratedRow(title: 'Test Sentry', isVisible: kDebugMode),
      const _MigratedRow(title: 'Test ANR', isVisible: kDebugMode),
      _MigratedRow(title: t.settings.exportSettings, focusLabel: 'settings_export_settings'),
      _MigratedRow(title: t.settings.importSettings, focusLabel: 'settings_import_settings'),
      _MigratedRow(
        title: t.settings.checkForUpdates,
        focusLabel: 'settings_check_for_updates',
        isVisible: UpdateService.isUpdateCheckAvailable && UpdateService.useNativeUpdater,
        hasSubtitle: false,
      ),
    ];

    final referenceHeight = tester.getSize(_focusableTileFor(t.settings.viewLogs)).height;

    for (final row in rows) {
      final navigationTile = _navigationTileFor(row.title);
      if (!row.isVisible) {
        expect(navigationTile, findsNothing, reason: '${row.title} must honor its production gate');
        continue;
      }

      expect(navigationTile, findsOneWidget, reason: '${row.title} must use SettingNavigationTile');
      final focusableFinder = _focusableTileWithin(navigationTile);
      final focusable = tester.widget<FocusableListTile>(focusableFinder);
      final materialTile = tester.widget<ListTile>(
        find.descendant(of: focusableFinder, matching: find.byType(ListTile)),
      );

      expect(focusable.dense, isTrue, reason: '${row.title} must use the shared compact row density');
      expect(focusable.visualDensity, const VisualDensity(vertical: -3));
      expect(materialTile.dense, isFalse);
      expect(materialTile.visualDensity, const VisualDensity(vertical: -3));
      expect(focusable.onTap, isNotNull, reason: '${row.title} must remain pointer activatable');
      expect(materialTile.onTap, isNotNull);
      expect(materialTile.focusNode, isNotNull, reason: '${row.title} must remain D-pad focusable');
      expect(materialTile.focusNode!.canRequestFocus, isTrue);
      final pointerRegions = tester.widgetList<MouseRegion>(
        find.descendant(of: focusableFinder, matching: find.byType(MouseRegion)),
      );
      expect(pointerRegions.any((region) => region.cursor == SystemMouseCursors.click), isTrue);

      if (row.focusLabel != null) {
        expect(focusable.focusNode?.debugLabel, row.focusLabel);
        expect(materialTile.focusNode, same(focusable.focusNode));
      } else {
        expect(focusable.focusNode, isNull, reason: '${row.title} intentionally uses the tile-owned focus node');
      }

      if (row.hasSubtitle) {
        // Subtitle rows occupy the same vertical space as an existing standard
        // SettingNavigationTile in this screen.
        expect(tester.getSize(focusableFinder).height, referenceHeight);
      }
    }

    // Exercise both input paths against real callbacks rather than merely
    // checking that callbacks are non-null.
    final relayMaterialTile = tester.widget<ListTile>(
      find.descendant(of: _focusableTileFor(t.settings.watchTogetherRelay), matching: find.byType(ListTile)),
    );
    relayMaterialTile.focusNode!.requestFocus();
    await tester.pump();
    expect(relayMaterialTile.focusNode!.hasFocus, isTrue);
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await _pumpUi(tester);
    expect(find.byType(AlertDialog), findsOneWidget);
    expect(find.text(t.settings.watchTogetherRelay), findsWidgets);
    Navigator.of(tester.element(find.byType(AlertDialog))).pop();
    await _pumpUi(tester);

    await tester.tap(find.text(t.settings.clearImageCache));
    await _pumpUi(tester);
    expect(find.byType(AlertDialog), findsOneWidget);
    expect(find.text(t.settings.clearImageCache), findsWidgets);
  });

  testWidgets('special download and generic update rows keep rich content on the modern settings surface', (
    tester,
  ) async {
    final harness = await _pumpSettingsScreen(tester);
    addTearDown(() => harness.dispose(tester));

    if (Platform.isIOS) {
      expect(find.text(t.settings.downloadLocationDefault), findsNothing);
    } else {
      final downloadTileFinder = _focusableTileFor(t.settings.downloadLocationDefault);
      final materialDownloadTile = tester.widget<ListTile>(
        find.descendant(of: downloadTileFinder, matching: find.byType(ListTile)),
      );
      final downloadTile = tester.widget<FocusableListTile>(downloadTileFinder);
      final subtitle = downloadTile.subtitle! as Text;

      expect(_navigationTileFor(t.settings.downloadLocationDefault), findsNothing);
      expect(materialDownloadTile.dense, isFalse);
      expect(materialDownloadTile.visualDensity, const VisualDensity(vertical: -3));
      expect(downloadTile.dense, isTrue);
      expect(downloadTile.visualDensity, const VisualDensity(vertical: -3));
      expect(downloadTile.leading, isA<AppIcon>());
      expect(downloadTile.trailing, isA<AppIcon>());
      expect(subtitle.maxLines, 2);
      expect(subtitle.overflow, TextOverflow.ellipsis);
      expect(downloadTile.onTap, isNotNull);

      await tester.tap(find.text(t.settings.downloadLocationDefault));
      await _pumpUi(tester);
      expect(find.byType(AlertDialog), findsOneWidget);
      expect(find.text(t.settings.downloadLocationDescription), findsOneWidget);
      Navigator.of(tester.element(find.byType(AlertDialog))).pop();
      await _pumpUi(tester);
    }

    if (!UpdateService.isUpdateCheckAvailable) {
      expect(find.text(t.settings.checkForUpdates), findsNothing);
      return;
    }

    if (UpdateService.useNativeUpdater) {
      expect(_navigationTileFor(t.settings.checkForUpdates), findsOneWidget);
      return;
    }

    final updateTileFinder = _focusableTileFor(t.settings.checkForUpdates);
    final materialUpdateTile = tester.widget<ListTile>(
      find.descendant(of: updateTileFinder, matching: find.byType(ListTile)),
    );
    final updateTile = tester.widget<FocusableListTile>(updateTileFinder);

    expect(_navigationTileFor(t.settings.checkForUpdates), findsNothing);
    expect(updateTile.dense, isTrue);
    expect(materialUpdateTile.dense, isFalse);
    expect(materialUpdateTile.visualDensity, const VisualDensity(vertical: -3));
    expect(updateTile.visualDensity, const VisualDensity(vertical: -3));
    expect(updateTile.trailing, isA<AppIcon>());
    expect(updateTile.onTap, isNotNull);
    expect(find.descendant(of: updateTileFinder, matching: find.byType(LoadingIndicatorBox)), findsNothing);

    // The generic updater deliberately remains a FocusableListTile: unlike a
    // SettingNavigationTile, its trailing slot can be replaced by the progress
    // indicator and its callback disabled while a request is in flight.
    expect(materialUpdateTile.focusNode, isNotNull);
  });

  testWidgets('background downloads tile renders and opens the injected blocked status', (tester) async {
    const channel = MethodChannel('com.luroka/device.settings-background-test');
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, (call) async {
      return switch (call.method) {
        'getBackgroundWorkSignals' => {
          'verdict': 'blocked',
          'reasons': ['background_restricted'],
        },
        'openBackgroundSettings' => true,
        _ => null,
      };
    });
    final diagnostics = BackgroundWorkDiagnosticsService.forTesting(channel: channel);
    await diagnostics.refresh();
    final harness = await _pumpSettingsScreen(tester, backgroundWorkDiagnosticsService: diagnostics);
    addTearDown(() async {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
      await harness.dispose(tester);
      diagnostics.dispose();
    });

    expect(find.text(t.downloads.backgroundWarning.statusTile), findsOneWidget);
    expect(find.text(t.downloads.backgroundWarning.statusBlocked), findsOneWidget);

    await tester.tap(find.text(t.downloads.backgroundWarning.statusTile));
    await _pumpUi(tester);

    expect(find.text(t.downloads.backgroundWarning.sheetTitle), findsOneWidget);
  });

  testWidgets('unprobed background diagnostics stay unknown instead of claiming success', (tester) async {
    final diagnostics = BackgroundWorkDiagnosticsService.forTesting();
    final harness = await _pumpSettingsScreen(tester, backgroundWorkDiagnosticsService: diagnostics);
    addTearDown(() async {
      await harness.dispose(tester);
      diagnostics.dispose();
    });

    expect(find.text(t.downloads.backgroundWarning.statusUnknown), findsOneWidget);
    expect(find.text(t.downloads.backgroundWarning.statusOk), findsNothing);
  });

  testWidgets('background downloads tile is absent when diagnostics are unsupported', (tester) async {
    final diagnostics = BackgroundWorkDiagnosticsService.forTesting(supported: false);
    final harness = await _pumpSettingsScreen(tester, backgroundWorkDiagnosticsService: diagnostics);
    addTearDown(() async {
      await harness.dispose(tester);
      diagnostics.dispose();
    });

    expect(find.text(t.downloads.backgroundWarning.statusTile), findsNothing);
  });

  testWidgets('relay dialog rejects invalid bases without persisting them', (tester) async {
    final harness = await _pumpSettingsScreen(tester);
    addTearDown(() => harness.dispose(tester));

    await tester.tap(find.text(t.settings.watchTogetherRelay));
    await _pumpUi(tester);
    await tester.enterText(find.byType(TextField), 'ws://opaque-user@relay.example.test/path?wrong=route');
    await tester.tap(find.text(t.common.save));
    await _pumpUi(tester);

    expect(find.byType(AlertDialog), findsOneWidget);
    expect(find.text(t.settings.watchTogetherRelayInvalid), findsOneWidget);
    expect(SettingsService.instance.read(SettingsService.watchPartyRelayUrl), isNull);
  });

  testWidgets('relay dialog saves and reopens the canonical base', (tester) async {
    final harness = await _pumpSettingsScreen(tester);
    addTearDown(() => harness.dispose(tester));

    await tester.tap(find.text(t.settings.watchTogetherRelay));
    await _pumpUi(tester);
    await tester.enterText(find.byType(TextField), '  HTTP://Relay.Example.Test:8080/prefix///  ');
    await tester.tap(find.text(t.common.save));
    await _pumpUi(tester);

    expect(find.byType(AlertDialog), findsNothing);
    expect(SettingsService.instance.read(SettingsService.watchPartyRelayUrl), 'http://relay.example.test:8080/prefix');

    await tester.tap(find.text(t.settings.watchTogetherRelay));
    await _pumpUi(tester);
    expect(find.widgetWithText(TextField, 'http://relay.example.test:8080/prefix'), findsOneWidget);
  });

  testWidgets('selected download folder becomes the persisted location', (tester) async {
    final selectedDirectory = Directory('${temporaryDirectory.path}/selected-downloads');
    directoryPicker.directoryPath = selectedDirectory.path;
    final harness = await _pumpSettingsScreen(tester);
    addTearDown(() => harness.dispose(tester));

    await tester.tap(find.text(t.settings.downloadLocationDefault));
    await _pumpUi(tester);
    await tester.tap(find.text(t.settings.selectFolder));
    await _pumpUi(tester);

    expect(SettingsService.instance.read(SettingsService.customDownloadPath), selectedDirectory.path);
  });

  testWidgets('toggling Wi-Fi only re-evaluates downloads that are already queued', (tester) async {
    final requirements = <RequireWiFi>[];
    final harness = await _pumpSettingsScreen(
      tester,
      requireWiFiOverride: (requirement) async {
        requirements.add(requirement);
        return true;
      },
    );
    addTearDown(() => harness.dispose(tester));

    await tester.tap(find.text(t.settings.downloadOnWifiOnly));
    await _pumpUi(tester);
    expect(SettingsService.instance.read(SettingsService.downloadOnWifiOnly), isTrue);

    await tester.tap(find.text(t.settings.downloadOnWifiOnly));
    await _pumpUi(tester);

    expect(requirements, [RequireWiFi.forAllTasks, RequireWiFi.forNoTasks]);
  });

  testWidgets('importing Wi-Fi only applies it to downloads that are already queued', (tester) async {
    final requirements = <RequireWiFi>[];
    final harness = await _pumpSettingsScreen(
      tester,
      requireWiFiOverride: (requirement) async {
        requirements.add(requirement);
        return true;
      },
      settingsImporter: () async {
        await SettingsService.instance.write(SettingsService.downloadOnWifiOnly, true);
        return const ImportResult(keysImported: 1, keysSkipped: 0);
      },
    );
    addTearDown(() => harness.dispose(tester));

    await tester.tap(find.text(t.settings.importSettings));
    await _pumpUi(tester);
    await tester.tap(find.widgetWithText(DialogActionButton, t.settings.importSettings));
    await _pumpUi(tester);

    expect(SettingsService.instance.read(SettingsService.downloadOnWifiOnly), isTrue);
    expect(requirements, [RequireWiFi.forAllTasks]);
  });

  testWidgets('download location reset uses the provider coordinator', (tester) async {
    await SettingsService.instance.write(
      SettingsService.customDownloadPath,
      '${temporaryDirectory.path}/old-downloads',
    );
    await SettingsService.instance.write(SettingsService.customDownloadPathType, 'file');
    final harness = await _pumpSettingsScreen(tester);
    addTearDown(() => harness.dispose(tester));

    await tester.tap(find.text(t.settings.downloadLocationCustom));
    await _pumpUi(tester);
    await tester.tap(find.text(t.settings.resetToDefault));
    await _pumpUi(tester);

    expect(harness.locationEvents, ['path:null', 'type:null', 'refresh']);
    expect(SettingsService.instance.read(SettingsService.customDownloadPath), isNull);
  });

  testWidgets('Reset All resets download location through the provider first', (tester) async {
    await SettingsService.instance.write(
      SettingsService.customDownloadPath,
      '${temporaryDirectory.path}/old-downloads',
    );
    await SettingsService.instance.write(SettingsService.customDownloadPathType, 'file');
    final harness = await _pumpSettingsScreen(tester);
    addTearDown(() => harness.dispose(tester));

    await tester.tap(find.text(t.settings.resetSettings));
    await _pumpUi(tester);
    await tester.tap(find.text(t.common.reset));
    await _pumpUi(tester);

    expect(harness.locationEvents.take(3), ['path:null', 'type:null', 'refresh']);
    expect(SettingsService.instance.read(SettingsService.customDownloadPath), isNull);
    // Success feedback is silent now (snackbars removed); the reset effect
    // itself is asserted above.
  });

  testWidgets('cancelled directory picker remains silent and leaves the dialog retryable', (tester) async {
    final harness = await _pumpSettingsScreen(tester);
    addTearDown(() => harness.dispose(tester));

    await tester.tap(find.text(t.settings.downloadLocationDefault));
    await _pumpUi(tester);
    await tester.tap(find.text(t.settings.selectFolder));
    await _pumpUi(tester);

    expect(find.byType(AlertDialog), findsOneWidget);
    expect(find.text(t.settings.saveFailed), findsNothing);
    expect(find.text(t.settings.downloadLocationChanged), findsNothing);
    expect(harness.locationEvents, isEmpty);
  });

  testWidgets('directory picker platform failure uses shared settings feedback', (tester) async {
    directoryPicker.directoryError = PlatformException(code: 'picker_failed');
    final harness = await _pumpSettingsScreen(tester);
    addTearDown(() => harness.dispose(tester));

    await tester.tap(find.text(t.settings.downloadLocationDefault));
    await _pumpUi(tester);
    await tester.tap(find.text(t.settings.selectFolder));
    await _pumpUi(tester);

    // The picker dialog stays open; the failure dialog stacks on top of it.
    expect(find.byType(AlertDialog), findsNWidgets(2));
    expect(find.text(t.settings.saveFailed), findsOneWidget);
    expect(harness.locationEvents, isEmpty);
  });

  testWidgets('directory filesystem failure uses shared settings feedback', (tester) async {
    directoryPicker.directoryPath = '${temporaryDirectory.path}/selected-downloads';
    final harness = await _pumpSettingsScreen(
      tester,
      writableChecker: (_) async => throw const FileSystemException('writable check failed'),
    );
    addTearDown(() => harness.dispose(tester));

    await tester.tap(find.text(t.settings.downloadLocationDefault));
    await _pumpUi(tester);
    await tester.tap(find.text(t.settings.selectFolder));
    await _pumpUi(tester);

    // The picker dialog stays open; the failure dialog stacks on top of it.
    expect(find.byType(AlertDialog), findsNWidgets(2));
    expect(find.text(t.settings.saveFailed), findsOneWidget);
    expect(harness.locationEvents, isEmpty);
  });

  testWidgets('late directory picker completion does not use a disposed context', (tester) async {
    directoryPicker.directoryGate = Completer<String?>();
    final harness = await _pumpSettingsScreen(tester);

    await tester.tap(find.text(t.settings.downloadLocationDefault));
    await _pumpUi(tester);
    await tester.tap(find.text(t.settings.selectFolder));
    await tester.pump();
    await harness.dispose(tester);

    directoryPicker.directoryGate!.complete('${temporaryDirectory.path}/late-downloads');
    await tester.pump();

    expect(tester.takeException(), isNull);
    expect(harness.locationEvents, isEmpty);
  });

  testWidgets('late directory picker failure does not use a disposed context', (tester) async {
    directoryPicker.directoryGate = Completer<String?>();
    final harness = await _pumpSettingsScreen(tester);

    await tester.tap(find.text(t.settings.downloadLocationDefault));
    await _pumpUi(tester);
    await tester.tap(find.text(t.settings.selectFolder));
    await tester.pump();
    await harness.dispose(tester);

    directoryPicker.directoryGate!.completeError(PlatformException(code: 'late_picker_failure'));
    await tester.pump();

    expect(tester.takeException(), isNull);
    expect(harness.locationEvents, isEmpty);
  });

  testWidgets('late settings export failure does not use a disposed context', (tester) async {
    final exportGate = Completer<String?>();
    final harness = await _pumpSettingsScreen(tester, settingsExporter: () => exportGate.future);

    await tester.tap(find.text(t.settings.exportSettings));
    await tester.pump();
    await harness.dispose(tester);

    exportGate.completeError(PlatformException(code: 'late_export_failure'));
    await tester.pump();

    expect(tester.takeException(), isNull);
  });

  testWidgets('late settings import failure does not use a disposed context', (tester) async {
    final importGate = Completer<ImportResult?>();
    final harness = await _pumpSettingsScreen(tester, settingsImporter: () => importGate.future);

    await tester.tap(find.text(t.settings.importSettings));
    await _pumpUi(tester);
    await tester.tap(find.widgetWithText(DialogActionButton, t.settings.importSettings));
    await tester.pump();
    await harness.dispose(tester);

    importGate.completeError(PlatformException(code: 'late_import_failure'));
    await tester.pump();

    expect(tester.takeException(), isNull);
  });

  testWidgets('settings export platform failure uses shared settings feedback', (tester) async {
    final harness = await _pumpSettingsScreen(
      tester,
      settingsExporter: () async => throw PlatformException(code: 'save_failed'),
    );
    addTearDown(() => harness.dispose(tester));

    await tester.tap(find.text(t.settings.exportSettings));
    await _pumpUi(tester);

    expect(find.text(t.settings.saveFailed), findsOneWidget);
    expect(find.text(t.settings.exportSettingsSuccess), findsNothing);
  });

  testWidgets('settings import platform failure uses shared settings feedback', (tester) async {
    final harness = await _pumpSettingsScreen(
      tester,
      settingsImporter: () async => throw PlatformException(code: 'pick_failed'),
    );
    addTearDown(() => harness.dispose(tester));

    await tester.tap(find.text(t.settings.importSettings));
    await _pumpUi(tester);
    await tester.tap(find.widgetWithText(DialogActionButton, t.settings.importSettings));
    await _pumpUi(tester);

    expect(find.text(t.settings.saveFailed), findsOneWidget);
    expect(find.text(t.settings.importSettingsSuccess), findsNothing);
  });
}

Finder _navigationTileFor(String title) =>
    find.ancestor(of: find.text(title), matching: find.byType(SettingNavigationTile));

Finder _focusableTileFor(String title) => find.ancestor(of: find.text(title), matching: find.byType(FocusableListTile));
Future<void> _pumpUi(WidgetTester tester) async {
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 300));
}

Finder _focusableTileWithin(Finder navigationTile) =>
    find.descendant(of: navigationTile, matching: find.byType(FocusableListTile));

class _MigratedRow {
  const _MigratedRow({required this.title, this.focusLabel, this.isVisible = true, this.hasSubtitle = true});

  final String title;
  final String? focusLabel;
  final bool isVisible;
  final bool hasSubtitle;
}

class _SettingsHarness {
  _SettingsHarness({
    required this.database,
    required this.plexHome,
    required this.activeProfile,
    required this.libraries,
    required this.hiddenLibraries,
    required this.theme,
    required this.trackers,
    required this.trackerHttpClients,
    required this.seerr,
    required this.downloadManager,
    required this.downloadProvider,
    required this.locationEvents,
    required this.accountPreferences,
  });

  final AppDatabase database;
  final PlexHomeService plexHome;
  final ActiveProfileProvider activeProfile;
  final LibrariesProvider libraries;
  final HiddenLibrariesProvider hiddenLibraries;
  final ThemeProvider theme;
  final TrackersProvider trackers;
  final List<FakeHttpClient> trackerHttpClients;
  final SeerrAccountProvider seerr;
  final DownloadManagerService downloadManager;
  final DownloadProvider downloadProvider;
  final List<String> locationEvents;
  final AccountPreferencesController accountPreferences;

  Future<void> dispose(WidgetTester tester) async {
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump();
    downloadProvider.dispose();
    downloadManager.dispose();
    hiddenLibraries.dispose();
    libraries.dispose();
    theme.dispose();
    trackers.dispose();
    seerr.dispose();
    activeProfile.dispose();
    accountPreferences.dispose();
    await plexHome.dispose();
    await database.close();
    expect(trackerHttpClients, hasLength(6));
    expect(trackerHttpClients.toSet(), hasLength(6));
    for (final client in trackerHttpClients) {
      expect(client.closeCount, 1);
    }
  }
}

Future<_SettingsHarness> _pumpSettingsScreen(
  WidgetTester tester, {
  Future<bool> Function(Directory directory)? writableChecker,
  Future<String?> Function()? settingsExporter,
  Future<ImportResult?> Function()? settingsImporter,
  BackgroundWorkDiagnosticsService? backgroundWorkDiagnosticsService,
  bool pushSettingsRoute = false,
  // Shared mutation/diagnostic tests exercise the full desktop catalog. Mobile
  // category routing is exercised explicitly by the pushed-settings Back test.
  TargetPlatform platform = TargetPlatform.linux,
  Size size = const Size(1800, 3200),
  double textScale = 1,
  List<MediaLibrary> initialLibraries = const [],
  Future<bool> Function(RequireWiFi requirement)? requireWiFiOverride,
}) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.resetPhysicalSize);
  addTearDown(tester.view.resetDevicePixelRatio);

  final database = AppDatabase.forTesting(NativeDatabase.memory());
  final connections = ConnectionRegistry(database);
  final profileConnections = ProfileConnectionRegistry(database);
  final profiles = ProfileRegistry(database);
  final plexHome = PlexHomeService(
    connections: connections,
    profileConnections: profileConnections,
    plexHomeUserFetcher: (_) async => const [],
  );
  final activeProfile = ActiveProfileProvider(
    registry: profiles,
    plexHome: plexHome,
    connections: connections,
    profileConnections: profileConnections,
  );
  final libraries = _FixtureLibrariesProvider(initialLibraries);
  final hiddenLibraries = HiddenLibrariesProvider(storageService: _FakeHiddenLibrariesStorage());
  await hiddenLibraries.ensureInitialized();
  final supporter = SupporterService.forTesting(availability: SupporterAvailability.hidden);
  addTearDown(supporter.dispose);
  final theme = ThemeProvider(supporter: supporter);
  final trackerHttpClients = <FakeHttpClient>[];
  FakeHttpClient trackerHttpClientFactory() {
    final client = FakeHttpClient(HttpStatus.ok, const <int>[]);
    trackerHttpClients.add(client);
    return client;
  }

  final trackers = TrackersProvider(httpClientFactory: trackerHttpClientFactory);
  final seerr = SeerrAccountProvider();
  // Left unattached: with no registries wired it resolves no accounts, so the
  // Account preferences row stays hidden and these tests keep their existing
  // section list.
  final accountPreferences = AccountPreferencesController();
  final settingsService = SettingsService.instance;
  final storageService = DownloadStorageService.instance;
  await tester.runAsync(() => storageService.initialize(settingsService));
  final locationEvents = <String>[];
  final downloadManager = DownloadManagerService(
    database: database,
    storageService: _WritableDownloadStorage(),
    clientResolver: (_, {clientScopeId}) => null,
    downloadsSupportedOverride: requireWiFiOverride != null,
    requireWiFiOverride: requireWiFiOverride,
    downloadLocationReader: () => (
      path: settingsService.read(SettingsService.customDownloadPath),
      type: settingsService.read(SettingsService.customDownloadPathType),
    ),
    downloadPathWriter: (value) async {
      locationEvents.add('path:$value');
      await settingsService.write(SettingsService.customDownloadPath, value);
    },
    downloadPathTypeWriter: (value) async {
      locationEvents.add('type:$value');
      await settingsService.write(SettingsService.customDownloadPathType, value);
    },
    downloadStorageRefresher: () async {
      locationEvents.add('refresh');
    },
  )..recoveryFuture = Future<void>.value();
  final downloadProvider = DownloadProvider.forTesting(downloadManager: downloadManager, database: database);
  final harness = _SettingsHarness(
    database: database,
    plexHome: plexHome,
    activeProfile: activeProfile,
    libraries: libraries,
    hiddenLibraries: hiddenLibraries,
    theme: theme,
    trackers: trackers,
    trackerHttpClients: trackerHttpClients,
    seerr: seerr,
    downloadManager: downloadManager,
    downloadProvider: downloadProvider,
    locationEvents: locationEvents,
    accountPreferences: accountPreferences,
  );

  await tester.pumpWidget(
    TranslationProvider(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<ActiveProfileProvider>.value(value: activeProfile),
          ChangeNotifierProvider<LibrariesProvider>.value(value: libraries),
          ChangeNotifierProvider<HiddenLibrariesProvider>.value(value: hiddenLibraries),
          ChangeNotifierProvider<SupporterService>.value(value: supporter),
          ChangeNotifierProvider<ThemeProvider>.value(value: theme),
          ChangeNotifierProvider<TrackersProvider>.value(value: trackers),
          ChangeNotifierProvider<SeerrAccountProvider>.value(value: seerr),
          ChangeNotifierProvider<DownloadProvider>.value(value: downloadProvider),
          ChangeNotifierProvider<AccountPreferencesController>.value(value: accountPreferences),
        ],
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark).copyWith(platform: platform),
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(textScale)),
            child: child!,
          ),
          home: pushSettingsRoute
              ? Builder(
                  builder: (context) => Scaffold(
                    body: Center(
                      child: ElevatedButton(
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (_) => SettingsScreen(
                              downloadDirectoryWritableChecker: writableChecker ?? (_) async => true,
                              settingsExporter: settingsExporter,
                              settingsImporter: settingsImporter,
                              backgroundWorkDiagnosticsService: backgroundWorkDiagnosticsService,
                            ),
                          ),
                        ),
                        child: const Text('Settings launcher'),
                      ),
                    ),
                  ),
                )
              : SettingsScreen(
                  downloadDirectoryWritableChecker: writableChecker ?? (_) async => true,
                  settingsExporter: settingsExporter,
                  settingsImporter: settingsImporter,
                  backgroundWorkDiagnosticsService: backgroundWorkDiagnosticsService,
                ),
        ),
      ),
    ),
  );
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 300));
  if (pushSettingsRoute) {
    await tester.tap(find.text('Settings launcher'));
    await _pumpUi(tester);
  }
  return harness;
}

class _FixtureLibrariesProvider extends LibrariesProvider {
  _FixtureLibrariesProvider(this.libraries);

  @override
  final List<MediaLibrary> libraries;

  @override
  bool get hasLibraries => libraries.isNotEmpty;
}

class _WritableDownloadStorage extends Fake implements DownloadStorageService {
  @override
  Future<bool> isDirectoryWritable(Directory dir) async => true;
}

class _FakeHiddenLibrariesStorage implements StorageService {
  @override
  Set<String> getHiddenLibraries() => {};

  @override
  Set<String>? getSelectedSourceLibraries({String? profileId}) => {};

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _FakeDirectoryPicker implements FilePickerDelegate {
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

  String? directoryPath;
  Object? directoryError;
  Completer<String?>? directoryGate;

  @override
  Future<String?> getDirectoryPath({
    String? dialogTitle,
    String? initialDirectory,
    bool lockParentWindow = false,
  }) async {
    final gate = directoryGate;
    if (gate != null) return gate.future;
    final error = directoryError;
    if (error != null) throw error;
    return directoryPath;
  }
}
