import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:luroka/connection/connection_registry.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/profiles/active_profile_provider.dart';
import 'package:luroka/profiles/plex_home_service.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/profile_avatar.dart';
import 'package:luroka/profiles/profile_connection_registry.dart';
import 'package:luroka/profiles/profile_registry.dart';
import 'package:luroka/screens/profile/add_local_profile_screen.dart';
import 'package:luroka/screens/profile/household_setup_screen.dart';
import 'package:luroka/screens/profile/kids_settings_screen.dart';
import 'package:luroka/screens/profile/profile_picture_screen.dart';
import 'package:luroka/screens/settings/add_connection_screen.dart';
import 'package:luroka/services/kids_profile_service.dart';
import 'package:luroka/services/profile_appearance_service.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/widgets/profile_avatar_artwork.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';

import '../../test_helpers/prefs.dart';

void main() {
  final appearance = ProfileAppearanceService.instance;
  final kids = KidsProfileService.instance;
  final person = Profile.local(id: 'person', displayName: 'Alex', createdAt: DateTime(2026));
  setUp(() {
    resetSharedPreferencesForTest();
    appearance.resetForTesting();
    kids.resetForTesting();
    LocaleSettings.setLocaleSync(AppLocale.en);
  });
  tearDown(() {
    appearance.resetForTesting();
    kids.resetForTesting();
  });

  testWidgets('TV avatar gallery centers the expanded illustrated portrait and animal choices', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.physicalSize = const Size(1920, 1080);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await appearance.initialize();
    await tester.pumpWidget(
      TranslationProvider(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: ProfilePictureScreen(profile: person),
        ),
      ),
    );
    await tester.pumpAndSettle();
    final gallery = tester.widget<Wrap>(
      find.descendant(of: find.byType(ProfilePictureScreen), matching: find.byType(Wrap)).first,
    );
    expect(gallery.alignment, WrapAlignment.center);
    expect(find.byKey(const ValueKey('profile-preset-cat')), findsOneWidget);
    expect(find.byKey(const ValueKey('profile-preset-kidArtist')), findsOneWidget);
    expect(find.byKey(const ValueKey('profile-preset-portraitSunrise')), findsOneWidget);
    expect(find.byType(ProfileAvatarArtwork), findsNWidgets(ProfileAvatarPreset.values.length));
    expect(find.byKey(const ValueKey('profile-choose-photo')), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('avatar editor updates all mounted profile pictures and supports returning to the server image', (
    tester,
  ) async {
    await appearance.initialize();
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          home: Column(
            children: [
              ProfileAvatar(profile: person),
              Expanded(child: ProfilePictureScreen(profile: person)),
            ],
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('profile-preset-waves')));
    await tester.pumpAndSettle();
    expect(appearance.presetFor(person.id), ProfileAvatarPreset.waves);
    expect(find.byType(ProfileAvatarArtwork), findsNWidgets(ProfileAvatarPreset.values.length + 2));
    final avatarWrap = tester.widget<Wrap>(
      find.descendant(of: find.byType(ProfilePictureScreen), matching: find.byType(Wrap)).first,
    );
    expect(avatarWrap.alignment, WrapAlignment.center);
    await tester.ensureVisible(find.byKey(const ValueKey('profile-preset-cat')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('profile-preset-cat')));
    await tester.pumpAndSettle();
    expect(appearance.presetFor(person.id), ProfileAvatarPreset.cat);
    await tester.pump(const Duration(seconds: 5));
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(
      find.text(t.household.serverPicture),
      240,
      scrollable: find.byType(Scrollable).first,
    );
    final resetButton = tester.widget<TextButton>(
      find.ancestor(of: find.text(t.household.serverPicture), matching: find.byType(TextButton)).first,
    );
    resetButton.onPressed!();
    await tester.pumpAndSettle();
    expect(appearance.hasOverride(person.id), isFalse);
    expect(find.byType(ProfileAvatarArtwork), findsNWidgets(ProfileAvatarPreset.values.length));
  });

  testWidgets('kids cannot open the adult avatar editor', (tester) async {
    await kids.initialize();
    await kids.setParentPin('1234');
    await kids.setChild('child', parentId: person.id, maxAge: 7);
    kids.selectProfile('child');
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(home: ProfilePictureScreen(profile: person)),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(KidsSettingsScreen), findsOneWidget);
    expect(find.byKey(const ValueKey('profile-preset-moon')), findsNothing);
  });

  testWidgets('first sign-in household page offers another profile and requires a connection before completion', (
    tester,
  ) async {
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    final profiles = ProfileRegistry(db);
    final connections = ConnectionRegistry(db);
    final bindings = ProfileConnectionRegistry(db);
    final storage = await StorageService.getInstance();
    final home = PlexHomeService(
      connections: connections,
      profileConnections: bindings,
      storage: storage,
      plexHomeUserFetcher: (_) async => [],
    );
    final active = ActiveProfileProvider(
      registry: profiles,
      connections: connections,
      profileConnections: bindings,
      plexHome: home,
      storage: storage,
    );
    addTearDown(() async {
      active.dispose();
      await home.dispose();
      await db.close();
    });
    await profiles.upsert(person);
    await storage.setActiveProfileId(person.id);
    await active.initialize();
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: active),
          Provider.value(value: profiles),
          Provider.value(value: bindings),
        ],
        child: InputModeTracker(
          child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: const HouseholdSetupScreen(onboarding: true)),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text(t.household.welcome), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text(t.household.startWatching),
      200,
      scrollable: find.byType(Scrollable).first,
    );
    expect(find.text(t.household.startWatching), findsOneWidget);
    await tester.ensureVisible(find.byKey(const ValueKey('household-add-profile')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('household-add-profile')));
    await tester.pumpAndSettle();
    expect(find.byType(AddLocalProfileScreen), findsOneWidget);
    expect(find.text(t.household.sharedHint), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'Sam');
    await tester.pump();
    await tester.scrollUntilVisible(
      find.text(t.profiles.continueButton),
      200,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.tap(find.text(t.profiles.continueButton));
    await tester.pumpAndSettle();
    expect(find.byType(ProfilePictureScreen), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('profile-preset-moon')));
    await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds: 5));
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(
      find.byKey(const ValueKey('profile-picture-done')),
      200,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.ensureVisible(find.byKey(const ValueKey('profile-picture-done')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('profile-picture-done')));
    await tester.pumpAndSettle();
    expect(find.byType(AddConnectionScreen), findsOneWidget);
    tester.state<NavigatorState>(find.byType(Navigator).first).pop();
    await tester.pumpAndSettle();
    expect(find.byType(AddLocalProfileScreen), findsOneWidget);
    expect(find.text(t.household.connectionRequired), findsOneWidget);
    final created = (await profiles.list()).singleWhere((profile) => profile.displayName == 'Sam');
    expect(appearance.presetFor(created.id), ProfileAvatarPreset.moon);
    expect(active.activeId, person.id);
    expect(await bindings.listForProfile(created.id), isEmpty);
    await tester.pumpWidget(const SizedBox.shrink());
  });
}
