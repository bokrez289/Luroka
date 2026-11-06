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
import 'package:luroka/profiles/plex_home_service.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/profile_connection.dart';
import 'package:luroka/profiles/profile_connection_registry.dart';
import 'package:luroka/profiles/profile_registry.dart';
import 'package:luroka/screens/auth_screen.dart';
import 'package:luroka/screens/profile/onboarding_profile_screen.dart';
import 'package:luroka/services/kids_profile_service.dart';
import 'package:luroka/services/profile_appearance_service.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/services/credential_vault.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';

import '../../test_helpers/prefs.dart';

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
    expect(find.text(t.household.startWatching), findsOneWidget);
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
