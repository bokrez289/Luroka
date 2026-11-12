import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:luroka/connection/connection.dart';
import 'package:luroka/connection/connection_registry.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/profiles/active_profile_provider.dart';
import 'package:luroka/profiles/active_profile_binder.dart';
import 'package:luroka/profiles/plex_home_service.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/profile_connection.dart';
import 'package:luroka/profiles/profile_connection_registry.dart';
import 'package:luroka/profiles/profile_registry.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/screens/auth_screen.dart';
import 'package:luroka/screens/profile/onboarding_profile_screen.dart';
import 'package:luroka/screens/profile/add_local_profile_screen.dart';
import 'package:luroka/services/kids_profile_service.dart';
import 'package:luroka/services/profile_appearance_service.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/services/credential_vault.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';

import '../../test_helpers/prefs.dart';
import '../../test_helpers/multi_server_fixtures.dart';

late ({
  AppDatabase db,
  ProfileRegistry profiles,
  ProfileConnectionRegistry links,
  PlexHomeService home,
  ActiveProfileProvider active,
})
_fixture;

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    ProfileAppearanceService.instance.resetForTesting();
    KidsProfileService.instance.resetForTesting();
    LocaleSettings.setLocaleSync(AppLocale.en);
    CredentialVault.resetKeyForTesting();
    await StorageService.getInstance();
    await CredentialVault.protect('onboarding-vault-warmup');
    _fixture = await _seedProfile();
  });
  tearDown(() async {
    _fixture.active.dispose();
    await _fixture.home.dispose();
    await _fixture.db.close();
    ProfileAppearanceService.instance.resetForTesting();
    KidsProfileService.instance.resetForTesting();
    TvDetectionService.debugSetAppleTVOverride(null);
  });

  testWidgets('name and avatar are saved without changing the connected server identity', (tester) async {
    final data = await _pumpProfile(tester);
    expect(find.text(t.onboarding.profileTitle), findsOneWidget);
    expect(find.text(t.household.startWatching), findsNothing);
    await tester.enterText(find.byType(TextField), '  Alex  ');
    await tester.ensureVisible(find.byKey(const ValueKey('onboarding-avatar-cat')));
    await tester.tap(find.byKey(const ValueKey('onboarding-avatar-cat')));
    await tester.ensureVisible(find.byKey(const ValueKey('onboarding-profile-continue')));
    final continueButton = tester.widget<FilledButton>(find.byKey(const ValueKey('onboarding-profile-continue')));
    await tester.runAsync(() async => await (continueButton.onPressed as dynamic)());
    await tester.pumpAndSettle();
    expect((await tester.runAsync(data.profiles.list))!.single.displayName, 'Alex');
    expect(ProfileAppearanceService.instance.presetFor('local'), ProfileAvatarPreset.cat);
    final link = (await tester.runAsync(() => data.links.listForProfile('local')))!.single;
    expect(link.userIdentifier, 'server-user');
    expect(link.userToken, 'server-token');
    expect(find.text(t.onboarding.addService), findsOneWidget);
    expect(find.text(t.household.addProfile), findsOneWidget);
    expect(find.byKey(const ValueKey('onboarding-start-watching')), findsOneWidget);
    expect(find.text(t.household.startWatching), findsNothing);
    expect(ProfileAppearanceService.instance.setupComplete, isFalse);

    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(find.text(t.onboarding.profileTitle), findsOneWidget);
    expect(ProfileAppearanceService.instance.setupComplete, isFalse);
    expect(tester.widget<TextField>(find.byType(TextField)).controller!.text.trim(), 'Alex');
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump(const Duration(milliseconds: 100));
  });

  testWidgets('blank names cannot advance', (tester) async {
    await _pumpProfile(tester);
    await tester.enterText(find.byType(TextField), '   ');
    await tester.pump();
    expect(tester.widget<FilledButton>(find.byKey(const ValueKey('onboarding-profile-continue'))).onPressed, isNull);
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump(const Duration(milliseconds: 100));
  });

  testWidgets('first profile can defer libraries and proceeds to its pending guide', (tester) async {
    final graph = _fixture;
    final servers = testMultiServer();
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<ActiveProfileProvider>.value(value: graph.active),
          Provider<ActiveProfileBinder>.value(value: _BorrowBinder()),
          Provider<ProfileRegistry>.value(value: graph.profiles),
          Provider<ProfileConnectionRegistry>.value(value: graph.links),
          ChangeNotifierProvider<MultiServerProvider>.value(value: servers.provider),
        ],
        child: InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: OnboardingProfileScreen.forTesting(
              sessionBuilder: (_) => const Scaffold(body: Text('Profile session')),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byKey(const ValueKey('onboarding-profile-continue')));
    final continueProfile = tester.widget<FilledButton>(find.byKey(const ValueKey('onboarding-profile-continue')));
    await tester.runAsync(() async => await (continueProfile.onPressed as dynamic)());
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('onboarding-start-watching')));
    for (var attempt = 0; attempt < 40 && find.text(t.sourceLibraries.title).evaluate().isEmpty; attempt++) {
      await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 50)));
      await tester.pump(const Duration(milliseconds: 100));
    }
    expect(find.text(t.sourceLibraries.title), findsOneWidget);
    final later = tester.widget<TextButton>(find.byKey(const ValueKey('source-libraries-later')));
    await tester.runAsync(() async => await (later.onPressed as dynamic)());
    for (var attempt = 0; attempt < 40 && find.text('Profile session').evaluate().isEmpty; attempt++) {
      await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 50)));
      await tester.pump(const Duration(milliseconds: 100));
    }
    await tester.pumpAndSettle();
    expect(find.text('Profile session'), findsOneWidget);
    expect(ProfileAppearanceService.instance.setupComplete, isTrue);
    expect(ProfileAppearanceService.instance.personalizationPendingFor('local'), isTrue);
    expect(ProfileAppearanceService.instance.integrationsPendingFor('local'), isFalse);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  for (final switchNow in [false, true]) {
    testWidgets('adding a profile with a borrowed connection can ${switchNow ? 'switch' : 'stay'}', (tester) async {
      final graph = _fixture;
      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider<ActiveProfileProvider>.value(value: graph.active),
            Provider<ActiveProfileBinder>.value(value: _BorrowBinder()),
            Provider<ProfileRegistry>.value(value: graph.profiles),
            Provider<AppDatabase>.value(value: graph.db),
            Provider<ProfileConnectionRegistry>.value(value: graph.links),
            Provider<ConnectionRegistry>.value(value: ConnectionRegistry(graph.db)),
            Provider<PlexHomeService>.value(value: graph.home),
          ],
          child: InputModeTracker(
            child: MaterialApp(
              theme: monoTheme(MonoPalette.dark),
              home: Builder(
                builder: (context) => Scaffold(
                  body: TextButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const AddLocalProfileScreen(offerSwitchAfterCreate: true)),
                    ),
                    child: const Text('Add person'),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
      await tester.tap(find.text('Add person'));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextField), 'Taylor');
      await tester.pump();
      await tester.tap(find.text(t.profiles.continueButton));
      for (var attempt = 0; attempt < 20 && find.text(t.household.changePicture).evaluate().isEmpty; attempt++) {
        await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 50)));
        await tester.pump(const Duration(milliseconds: 100));
      }
      expect(find.text(t.household.changePicture), findsOneWidget);
      final profiles = (await tester.runAsync(graph.profiles.list))!;
      final added = profiles.singleWhere((profile) => profile.displayName == 'Taylor');
      expect(ProfileAppearanceService.instance.personalizationPendingFor(added.id), isTrue);
      expect(ProfileAppearanceService.instance.sourceSelectionPendingFor(added.id), isTrue);
      await tester.scrollUntilVisible(
        find.byKey(const ValueKey('profile-picture-done')),
        250,
        scrollable: find.byType(Scrollable).last,
      );
      await tester.tap(find.byKey(const ValueKey('profile-picture-done')));
      await tester.pumpAndSettle();
      await tester.ensureVisible(find.text(t.addServer.borrowFromAnotherProfile));
      await tester.tap(find.text(t.addServer.borrowFromAnotherProfile));
      for (
        var attempt = 0;
        attempt < 40 && find.text(t.profiles.borrowFromProfile(displayName: 'Server name')).evaluate().isEmpty;
        attempt++
      ) {
        await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 50)));
        await tester.pump(const Duration(milliseconds: 100));
      }
      await tester.tap(find.text(t.profiles.borrowFromProfile(displayName: 'Server name')));
      for (var attempt = 0; attempt < 40 && find.text(t.profileSetupGuide.createdTitle).evaluate().isEmpty; attempt++) {
        await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 50)));
        await tester.pump(const Duration(milliseconds: 100));
      }
      await tester.pumpAndSettle();

      expect(find.text(t.profileSetupGuide.createdTitle), findsOneWidget);
      expect(ProfileAppearanceService.instance.personalizationPendingFor(added.id), isTrue);
      expect(ProfileAppearanceService.instance.sourceSelectionPendingFor(added.id), isTrue);
      expect(graph.active.activeId, 'local');
      final key = ValueKey(switchNow ? 'profile-created-switch' : 'profile-created-stay');
      await tester.tap(find.byKey(key));
      for (var attempt = 0; attempt < 40 && find.text('Add person').evaluate().isEmpty; attempt++) {
        await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 50)));
        await tester.pump(const Duration(milliseconds: 100));
      }
      await tester.pumpAndSettle();
      expect(find.text('Add person'), findsOneWidget);
      expect(graph.active.activeId, switchNow ? added.id : 'local');
      await tester.pumpWidget(const SizedBox.shrink());
    });
  }

  for (final size in [const Size(320, 640), const Size(960, 540)]) {
    testWidgets('profile setup fits $size with enlarged text', (tester) async {
      TvDetectionService.debugSetAppleTVOverride(size.width > 900);
      tester.view.physicalSize = size;
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      await _pumpProfile(tester, textScale: 1.6);
      await tester.ensureVisible(find.byKey(const ValueKey('onboarding-profile-continue')));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pump(const Duration(milliseconds: 100));
    });
  }

  testWidgets('service welcome fits a small phone and retains all backend sign-in options', (tester) async {
    tester.view.physicalSize = const Size(320, 640);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: const AuthScreen(initializeServices: false)),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text(t.auth.signInWithPlex), findsOneWidget);
    expect(find.text(t.onboarding.connectStep.toUpperCase()), findsNothing);
    expect(find.text(t.onboarding.connectTitle), findsOneWidget);
    expect(find.text(t.auth.connectToMediaBrowser(product: 'Jellyfin')), findsOneWidget);
    expect(find.text(t.auth.connectToMediaBrowser(product: 'Emby')), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox.shrink());
  });
}

class _BorrowBinder implements ActiveProfileBinder {
  @override
  void start({bool allowInitialPinPrompt = true}) {}

  @override
  void markUserInitiatedActivation(String profileId) {}

  @override
  Future<void> rebindIfActive(String profileId) async {}

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

Future<({ProfileRegistry profiles, ProfileConnectionRegistry links})> _pumpProfile(
  WidgetTester tester, {
  double textScale = 1,
}) async {
  final profiles = _fixture.profiles;
  final links = _fixture.links;
  final active = _fixture.active;
  await tester.pumpWidget(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: active),
        Provider.value(value: profiles),
        Provider.value(value: links),
      ],
      child: InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(textScale)),
            child: child!,
          ),
          home: const OnboardingProfileScreen(),
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
  return (profiles: profiles, links: links);
}

Future<
  ({
    AppDatabase db,
    ProfileRegistry profiles,
    ProfileConnectionRegistry links,
    PlexHomeService home,
    ActiveProfileProvider active,
  })
>
_seedProfile() async {
  late AppDatabase db;
  late ProfileRegistry profiles;
  late ProfileConnectionRegistry links;
  late PlexHomeService home;
  late ActiveProfileProvider active;
  db = AppDatabase.forTesting(NativeDatabase.memory());
  profiles = ProfileRegistry(db);
  final connections = ConnectionRegistry(db);
  links = ProfileConnectionRegistry(db);
  final storage = await StorageService.getInstance();
  home = PlexHomeService(
    connections: connections,
    profileConnections: links,
    storage: storage,
    plexHomeUserFetcher: (_) async => [],
  );
  active = ActiveProfileProvider(
    registry: profiles,
    connections: connections,
    profileConnections: links,
    plexHome: home,
    storage: storage,
  );
  await profiles.upsert(Profile.local(id: 'local', displayName: 'Server name', createdAt: DateTime(2026)));
  await connections.upsert(
    JellyfinConnection(
      id: 'jellyfin',
      baseUrl: 'https://example.test',
      serverName: 'Server',
      serverMachineId: 'server',
      userId: 'server-user',
      userName: 'Server name',
      accessToken: 'server-token',
      deviceId: 'device',
      createdAt: DateTime(2026),
    ),
  );
  await links.upsert(
    const ProfileConnection(
      profileId: 'local',
      connectionId: 'jellyfin',
      userIdentifier: 'server-user',
      userToken: 'server-token',
    ),
  );
  await storage.setActiveProfileId('local').timeout(const Duration(seconds: 5));
  await active.initialize().timeout(const Duration(seconds: 5));
  await ProfileAppearanceService.instance.initialize().timeout(const Duration(seconds: 5));
  return (db: db, profiles: profiles, links: links, home: home, active: active);
}
