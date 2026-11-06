import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/connection/connection_registry.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/navigation/navigation_tabs.dart';
import 'package:luroka/profiles/active_profile_provider.dart';
import 'package:luroka/profiles/plex_home_service.dart';
import 'package:luroka/profiles/profile_connection_registry.dart';
import 'package:luroka/profiles/profile_registry.dart';
import 'package:luroka/screens/settings/general_settings_screen.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:provider/provider.dart';

import '../../test_helpers/prefs.dart';

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    await SettingsService.getInstance();
    LocaleSettings.setLocaleSync(AppLocale.en);
  });

  Future<({AppDatabase database, PlexHomeService plexHome, ActiveProfileProvider activeProfile})> pumpGeneralScreen(
    WidgetTester tester,
  ) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1000, 1400);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);

    final database = AppDatabase.forTesting(NativeDatabase.memory());
    final connections = ConnectionRegistry(database);
    final profileConnections = ProfileConnectionRegistry(database);
    final profiles = ProfileRegistry(database);
    final plexHome = PlexHomeService(
      connections: connections,
      profileConnections: profileConnections,
      plexHomeUserFetcher: (_) async => const [],
    );
    // Never initialized: zero profiles, so hasMultipleProfiles stays false.
    final activeProfile = ActiveProfileProvider(
      registry: profiles,
      plexHome: plexHome,
      connections: connections,
      profileConnections: profileConnections,
    );

    await tester.pumpWidget(
      ChangeNotifierProvider<ActiveProfileProvider>.value(
        value: activeProfile,
        child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: const GeneralSettingsScreen()),
      ),
    );
    await tester.pumpAndSettle();
    return (database: database, plexHome: plexHome, activeProfile: activeProfile);
  }

  Future<void> disposeHarness(
    WidgetTester tester,
    ({AppDatabase database, PlexHomeService plexHome, ActiveProfileProvider activeProfile}) harness,
  ) async {
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump();
    harness.activeProfile.dispose();
    await harness.plexHome.dispose();
    await harness.database.close();
  }

  testWidgets('shows language and startup tiles, hides the profile prompt for a single profile', (tester) async {
    final harness = await pumpGeneralScreen(tester);

    expect(find.text(t.settings.language), findsOneWidget);
    expect(find.text(t.settings.startupSection), findsOneWidget);
    // Only meaningful with several profiles; a lone profile has nothing to pick.
    expect(find.text(t.settings.requireProfileSelectionOnOpen), findsNothing);
    // The test host is a desktop OS, so the window group applies.
    expect(find.text(t.settings.startInFullscreen), findsOneWidget);

    await disposeHarness(tester, harness);
  });

  testWidgets('changes the persisted startup section', (tester) async {
    final harness = await pumpGeneralScreen(tester);

    await tester.tap(find.text(t.settings.startupSection));
    await tester.pumpAndSettle();
    final librariesLabel = allNavigationTabs.firstWhere((tab) => tab.id == NavigationTabId.libraries).getLabel();
    await tester.tap(find.text(librariesLabel).last);
    await tester.pumpAndSettle();

    final settings = SettingsService.instance;
    expect(settings.read(SettingsService.startupSection), NavigationTabId.libraries);
    expect(settings.prefs.getString(SettingsService.startupSection.key), 'libraries');

    await disposeHarness(tester, harness);
  });
}
