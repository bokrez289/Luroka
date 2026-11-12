import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/connection/connection_registry.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/models/plex/plex_home_user.dart';
import 'package:luroka/media/home_layout.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/navigation/profile_navigation_scope.dart';
import 'package:luroka/navigation/profile_session_screen.dart';
import 'package:luroka/profiles/active_profile_provider.dart';
import 'package:luroka/profiles/active_profile_binder.dart';
import 'package:luroka/profiles/plex_home_service.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/profile_connection_registry.dart';
import 'package:luroka/profiles/profile_registry.dart';
import 'package:luroka/screens/profile/profile_switch_screen.dart';
import 'package:luroka/providers/companion_remote_provider.dart';
import 'package:luroka/providers/discover_provider.dart';
import 'package:luroka/providers/hidden_libraries_provider.dart';
import 'package:luroka/providers/home_favorites_snapshot.dart';
import 'package:luroka/providers/home_taste_provider.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/providers/trackers_provider.dart';
import 'package:luroka/services/multi_server_manager.dart';
import 'package:luroka/services/offline_watch_sync_service.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/services/system_shelf_service.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/settings_service.dart' as app_settings show ThemeMode;
import 'package:luroka/services/profile_appearance_service.dart';
import 'package:luroka/services/kids_profile_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:provider/provider.dart';

import '../test_helpers/io_fakes.dart';
import '../test_helpers/media_items.dart';
import '../test_helpers/multi_server_fixtures.dart';
import '../test_helpers/prefs.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() async {
    resetSharedPreferencesForTest();
    SystemShelfService().debugReset();
    ProfileAppearanceService.instance.resetForTesting();
    KidsProfileService.instance.resetForTesting();
    SettingsService.resetForTesting();
    await SettingsService.getInstance();
    LocaleSettings.setLocaleSync(AppLocale.en);
  });

  testWidgets('a Kids profile does not receive the integrations prompt', (tester) async {
    final graph = (await tester.runAsync(() async {
      final graph = await _SessionGraph.create();
      final child = Profile.local(id: 'child', displayName: 'Child', createdAt: DateTime(2026));
      await graph.profileRegistry.upsert(child);
      await graph.storage.setActiveProfileId(child.id);
      await graph.activeProfile.initialize();
      await KidsProfileService.instance.initialize();
      await KidsProfileService.instance.setParentPin('1234');
      await KidsProfileService.instance.setChild(child.id, parentId: 'parent', maxAge: 7);
      KidsProfileService.instance.selectProfile(child.id);
      await ProfileAppearanceService.instance.markIntegrationsPending(child.id);
      await ProfileAppearanceService.instance.markPersonalizationPending(child.id);
      await ProfileAppearanceService.instance.markSourceSelectionPending(child.id);
      return graph;
    }))!;
    addTearDown(() async {
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pumpAndSettle();
      await tester.runAsync(graph.dispose);
      KidsProfileService.instance.resetForTesting();
    });
    await graph.pump(
      tester,
      initialIntegrationsPrompt: true,
      httpClientFactory: () => FakeHttpClient(200, const <int>[]),
      profileShellBuilder: (_) => const Scaffold(body: Text('Kids home')),
    );
    await tester.pumpAndSettle();
    expect(find.text(t.profileIntegrations.title), findsNothing);
    expect(find.text(t.profileSetupGuide.title), findsNothing);
    expect(find.text('Kids home'), findsOneWidget);
  });

  testWidgets('new profile guide saves choices to its owner and is shown only once', (tester) async {
    final graph = (await tester.runAsync(() async {
      final graph = await _SessionGraph.create();
      final first = Profile.local(id: 'first', displayName: 'First', createdAt: DateTime(2026));
      final second = Profile.local(id: 'second', displayName: 'Second', createdAt: DateTime(2026));
      await graph.profileRegistry.upsert(first);
      await graph.profileRegistry.upsert(second);
      await graph.storage.initializeNewProfileHome(second.id);
      await graph.storage.setActiveProfileId(first.id);
      await graph.activeProfile.initialize();
      await SettingsService.instance.prepareProfileSettings([first.id, second.id]);
      await ProfileAppearanceService.instance.markPersonalizationPending(second.id);
      return graph;
    }))!;
    addTearDown(() async {
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pumpAndSettle();
      await tester.runAsync(graph.dispose);
    });
    await graph.pump(
      tester,
      httpClientFactory: () => FakeHttpClient(200, const <int>[]),
      profileShellBuilder: (context) =>
          Scaffold(body: Text('Profile ${context.watch<ActiveProfileProvider>().activeId}')),
    );
    await tester.pumpAndSettle();
    expect(find.text(t.profileSetupGuide.title), findsNothing);
    final second = graph.activeProfile.profiles.singleWhere((profile) => profile.id == 'second');
    expect(await tester.runAsync(() => graph.activeProfile.activate(second)), isTrue);
    await tester.pumpAndSettle();
    expect(find.text(t.profileSetupGuide.title), findsOneWidget);
    expect(ProfileAppearanceService.instance.personalizationPendingFor('second'), isTrue);
    expect(
      tester.widget<SingleChildScrollView>(find.byKey(const ValueKey('profile-guide-form'))).controller!.offset,
      0,
    );

    await tester.ensureVisible(find.byKey(const ValueKey('profile-guide-theme-dark')));
    await tester.tap(find.byKey(const ValueKey('profile-guide-theme-dark')));
    await tester.ensureVisible(find.byKey(const ValueKey('profile-guide-posters')));
    await tester.tap(find.byKey(const ValueKey('profile-guide-posters')));
    await tester.ensureVisible(find.byKey(const ValueKey('profile-guide-music')));
    await tester.tap(find.byKey(const ValueKey('profile-guide-music')));
    await tester.ensureVisible(find.byKey(const ValueKey('profile-guide-next')));
    await tester.tap(find.byKey(const ValueKey('profile-guide-next')));
    await tester.pumpAndSettle();
    expect(
      tester.widget<SingleChildScrollView>(find.byKey(const ValueKey('profile-guide-form'))).controller!.offset,
      0,
    );
    await tester.ensureVisible(find.byKey(const ValueKey('profile-guide-show-spotlight')));
    await tester.tap(find.byKey(const ValueKey('profile-guide-show-spotlight')));
    await tester.ensureVisible(find.byKey(const ValueKey('profile-guide-spotlight-trending')));
    await tester.tap(find.byKey(const ValueKey('profile-guide-spotlight-trending')));
    await tester.ensureVisible(find.byKey(const ValueKey('profile-guide-progress-true')));
    await tester.tap(find.byKey(const ValueKey('profile-guide-progress-true')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('live-home-spotlight')), findsNothing);
    expect(find.byKey(const ValueKey('live-home-row-home.nextup')), findsOneWidget);
    await tester.ensureVisible(find.byKey(const ValueKey('profile-guide-episode-thumbnails')));
    await tester.tap(find.byKey(const ValueKey('profile-guide-episode-thumbnails')));
    await tester.ensureVisible(find.byKey(const ValueKey('profile-guide-studios')));
    await tester.tap(find.byKey(const ValueKey('profile-guide-studios')));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byKey(const ValueKey('studio-pref-netflix')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('studio-pref-netflix')));
    await tester.pumpAndSettle();
    expect(graph.storage.getHomeLayout('second').hiddenStudios, isEmpty);
    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byKey(const ValueKey('profile-guide-next')));
    final finish = tester.widget<FilledButton>(find.byKey(const ValueKey('profile-guide-next')));
    await tester.runAsync(() async => await (finish.onPressed as dynamic)());
    await tester.pumpAndSettle();

    expect(find.text('Profile second'), findsOneWidget);
    expect(ProfileAppearanceService.instance.personalizationPendingFor('second'), isFalse);
    final settings = SettingsService.instance;
    expect(settings.readForProfile('second', SettingsService.themeMode), app_settings.ThemeMode.dark);
    expect(settings.readForProfile('second', SettingsService.posterDetails), isTrue);
    expect(settings.readForProfile('second', SettingsService.showThemeMusic), isFalse);
    expect(settings.readForProfile('second', SettingsService.showHeroSection), isFalse);
    expect(settings.readForProfile('second', SettingsService.homeEpisodeThumbnails), isTrue);
    expect(settings.readForProfile('first', SettingsService.homeEpisodeThumbnails), isFalse);
    expect(settings.readForProfile('first', SettingsService.showHeroSection), isTrue);
    expect(settings.readForProfile('first', SettingsService.posterDetails), isFalse);
    expect(graph.storage.getHomeLayout('second').spotlightSource, HomeSpotlightSource.trending);
    expect(graph.storage.getHomeLayout('second').splitContinueWatching, isTrue);
    expect(graph.storage.getHomeLayout('second').hiddenStudios, contains('netflix'));
    expect(graph.storage.getHomeLayout('first').hiddenStudios, isEmpty);
  });

  testWidgets('an interrupted guide returns on next activation and skipping keeps defaults', (tester) async {
    final graph = (await tester.runAsync(() async {
      final graph = await _SessionGraph.create();
      final first = Profile.local(id: 'first', displayName: 'First', createdAt: DateTime(2026));
      final second = Profile.local(id: 'second', displayName: 'Second', createdAt: DateTime(2026));
      await graph.profileRegistry.upsert(first);
      await graph.profileRegistry.upsert(second);
      await graph.storage.initializeNewProfileHome(second.id);
      await graph.storage.setActiveProfileId(first.id);
      await graph.activeProfile.initialize();
      await SettingsService.instance.prepareProfileSettings([first.id, second.id]);
      await ProfileAppearanceService.instance.markPersonalizationPending(second.id);
      return graph;
    }))!;
    addTearDown(() async {
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pumpAndSettle();
      await tester.runAsync(graph.dispose);
    });
    await graph.pump(
      tester,
      httpClientFactory: () => FakeHttpClient(200, const <int>[]),
      profileShellBuilder: (_) => const Scaffold(body: Text('Home')),
    );
    await tester.pumpAndSettle();
    final first = graph.activeProfile.profiles.singleWhere((profile) => profile.id == 'first');
    final second = graph.activeProfile.profiles.singleWhere((profile) => profile.id == 'second');
    expect(await tester.runAsync(() => graph.activeProfile.activate(second)), isTrue);
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byKey(const ValueKey('profile-guide-posters')));
    await tester.tap(find.byKey(const ValueKey('profile-guide-posters')));
    expect(await tester.runAsync(() => graph.activeProfile.activate(first)), isTrue);
    await tester.pumpAndSettle();
    expect(ProfileAppearanceService.instance.personalizationPendingFor('second'), isTrue);
    expect(await tester.runAsync(() => graph.activeProfile.activate(second)), isTrue);
    await tester.pumpAndSettle();
    expect(find.text(t.profileSetupGuide.title), findsOneWidget);
    await tester.ensureVisible(find.byKey(const ValueKey('profile-guide-next')));
    await tester.tap(find.byKey(const ValueKey('profile-guide-next')));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byKey(const ValueKey('profile-guide-studios')));
    await tester.tap(find.byKey(const ValueKey('profile-guide-studios')));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byKey(const ValueKey('studio-pref-netflix')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('studio-pref-netflix')));
    await tester.pumpAndSettle();
    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byKey(const ValueKey('profile-guide-skip')));
    final skip = tester.widget<OutlinedButton>(find.byKey(const ValueKey('profile-guide-skip')));
    await tester.runAsync(() async => await (skip.onPressed as dynamic)());
    await tester.pumpAndSettle();
    expect(ProfileAppearanceService.instance.personalizationPendingFor('second'), isFalse);
    expect(SettingsService.instance.readForProfile('second', SettingsService.posterDetails), isFalse);
    expect(graph.storage.getHomeLayout('second').spotlightSource, HomeSpotlightSource.forYou);
    expect(graph.storage.getHomeLayout('second').hiddenStudios, isEmpty);
    expect(await tester.runAsync(() => graph.activeProfile.activate(first)), isTrue);
    expect(await tester.runAsync(() => graph.activeProfile.activate(second)), isTrue);
    await tester.pumpAndSettle();
    expect(find.text(t.profileSetupGuide.title), findsNothing);
  });

  testWidgets('new profile can defer unavailable libraries before personalizing', (tester) async {
    final graph = (await tester.runAsync(() async {
      final graph = await _SessionGraph.create();
      final profile = Profile.local(id: 'new', displayName: 'New', createdAt: DateTime(2026));
      await graph.profileRegistry.upsert(profile);
      await graph.storage.initializeNewProfileHome(profile.id);
      await graph.storage.saveSelectedSourceLibraries({'offline:movies'}, profileId: profile.id);
      await graph.storage.setActiveProfileId(profile.id);
      await graph.activeProfile.initialize();
      await SettingsService.instance.prepareProfileSettings([profile.id]);
      await ProfileAppearanceService.instance.markPersonalizationPending(profile.id);
      await ProfileAppearanceService.instance.markSourceSelectionPending(profile.id);
      return graph;
    }))!;
    addTearDown(() async {
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pumpAndSettle();
      await tester.runAsync(graph.dispose);
    });
    await graph.pump(
      tester,
      binder: _TestBinder(),
      httpClientFactory: () => FakeHttpClient(200, const <int>[]),
      profileShellBuilder: (_) => const Scaffold(body: Text('Home')),
    );
    await tester.pumpAndSettle();
    expect(find.text(t.sourceLibraries.title), findsOneWidget);
    final later = tester.widget<TextButton>(find.byKey(const ValueKey('source-libraries-later')));
    await tester.runAsync(() async => await (later.onPressed as dynamic)());
    await tester.pumpAndSettle();
    expect(ProfileAppearanceService.instance.sourceSelectionPendingFor('new'), isFalse);
    expect(find.text(t.profileSetupGuide.title), findsOneWidget);
    expect(graph.storage.getSelectedSourceLibraries(profileId: 'new'), {'offline:movies'});
  });

  for (final size in [const Size(320, 640), const Size(960, 540)]) {
    testWidgets('profile guide remains usable at $size with enlarged text', (tester) async {
      TvDetectionService.debugSetAppleTVOverride(size.width >= 900);
      tester.view.physicalSize = size;
      tester.view.devicePixelRatio = 1;
      addTearDown(() {
        tester.view.reset();
        TvDetectionService.debugSetAppleTVOverride(null);
      });
      final graph = (await tester.runAsync(() async {
        final graph = await _SessionGraph.create();
        final profile = Profile.local(id: 'new', displayName: 'New', createdAt: DateTime(2026));
        await graph.profileRegistry.upsert(profile);
        await graph.storage.initializeNewProfileHome(profile.id);
        await graph.storage.setActiveProfileId(profile.id);
        await graph.activeProfile.initialize();
        await SettingsService.instance.prepareProfileSettings([profile.id]);
        await ProfileAppearanceService.instance.markPersonalizationPending(profile.id);
        return graph;
      }))!;
      addTearDown(() async {
        await tester.pumpWidget(const SizedBox.shrink());
        await tester.pumpAndSettle();
        await tester.runAsync(graph.dispose);
      });
      await graph.pump(
        tester,
        textScale: 1.6,
        httpClientFactory: () => FakeHttpClient(200, const <int>[]),
        profileShellBuilder: (_) => const Scaffold(body: Text('Home')),
      );
      await tester.pumpAndSettle();
      await tester.ensureVisible(find.byKey(const ValueKey('profile-guide-next')));
      await tester.tap(find.byKey(const ValueKey('profile-guide-next')));
      await tester.pumpAndSettle();
      expect(find.text(t.profileSetupGuide.homeStep), findsOneWidget);
      expect(
        tester.widget<SingleChildScrollView>(find.byKey(const ValueKey('profile-guide-form'))).controller!.offset,
        0,
      );
      await tester.ensureVisible(find.byKey(const ValueKey('profile-guide-skip')));
      await tester.pumpAndSettle();
      expect(tester.getTopLeft(find.byKey(const ValueKey('profile-guide-preview'))).dy, lessThan(size.height / 2));
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('a remembered Kids profile is covered at bedtime before its home is accessible', (tester) async {
    final graph = (await tester.runAsync(() async {
      final graph = await _SessionGraph.create();
      final child = Profile.local(id: 'child', displayName: 'Child', createdAt: DateTime(2026));
      await graph.profileRegistry.upsert(child);
      await graph.storage.setActiveProfileId(child.id);
      await graph.activeProfile.initialize();
      final kids = KidsProfileService.instance;
      await kids.setParentPin('1234');
      final now = DateTime.now();
      final minute = now.hour * 60 + now.minute;
      await kids.setChild(
        child.id,
        parentId: 'parent',
        maxAge: 7,
        updateTimeLimits: true,
        bedtimeStart: (minute + 1439) % 1440,
        bedtimeEnd: (minute + 60) % 1440,
      );
      return graph;
    }))!;
    addTearDown(() async {
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pumpAndSettle();
      await tester.runAsync(graph.dispose);
      KidsProfileService.instance.resetForTesting();
    });
    await graph.pump(
      tester,
      httpClientFactory: () => FakeHttpClient(200, const <int>[]),
      profileShellBuilder: (_) => const Scaffold(body: Center(child: Text('Kids home'))),
    );
    await tester.pumpAndSettle();
    expect(find.text(t.kids.bedtimeReached), findsOneWidget);
    expect(find.text('Kids home').hitTestable(), findsNothing);
  });

  testWidgets('a newly created profile gets its own integration prompt on first activation', (tester) async {
    final graph = (await tester.runAsync(() async {
      final graph = await _SessionGraph.create();
      final first = Profile.local(id: 'first', displayName: 'First', createdAt: DateTime(2026));
      final second = Profile.local(id: 'second', displayName: 'Second', createdAt: DateTime(2026));
      await graph.profileRegistry.upsert(first);
      await graph.profileRegistry.upsert(second);
      await graph.storage.setActiveProfileId(first.id);
      await graph.activeProfile.initialize();
      await ProfileAppearanceService.instance.markIntegrationsPending(second.id);
      return graph;
    }))!;
    addTearDown(() async {
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pumpAndSettle();
      await tester.runAsync(graph.dispose);
    });
    await graph.pump(
      tester,
      httpClientFactory: () => FakeHttpClient(200, const <int>[]),
      profileShellBuilder: (context) =>
          Scaffold(body: Text('Profile ${context.watch<ActiveProfileProvider>().activeId}')),
    );
    await tester.pumpAndSettle();
    expect(find.text(t.profileIntegrations.title), findsNothing);
    final second = graph.activeProfile.profiles.singleWhere((profile) => profile.id == 'second');
    expect(await tester.runAsync(() => graph.activeProfile.activate(second)), isTrue);
    await tester.pumpAndSettle();
    expect(find.text(t.profileIntegrations.title), findsOneWidget);
    expect(ProfileAppearanceService.instance.integrationsPendingFor('second'), isFalse);
    await tester.tap(find.byKey(const ValueKey('onboarding-integrations-later')));
    await tester.pumpAndSettle();
    expect(find.text('Profile second'), findsOneWidget);
  });

  testWidgets('first-run integration prompt opens profile-scoped services and can be skipped', (tester) async {
    final graph = (await tester.runAsync(() async {
      final graph = await _SessionGraph.create();
      final owner = Profile.local(id: 'local-owner', displayName: 'Owner', createdAt: DateTime(2026));
      await graph.profileRegistry.upsert(owner);
      await graph.storage.setActiveProfileId(owner.id);
      await graph.activeProfile.initialize();
      return graph;
    }))!;
    addTearDown(() async {
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pumpAndSettle();
      await tester.runAsync(graph.dispose);
    });
    await graph.pump(
      tester,
      initialIntegrationsPrompt: true,
      httpClientFactory: () => FakeHttpClient(200, const <int>[]),
      profileShellBuilder: (_) => const Scaffold(body: Text('Profile home')),
    );
    await tester.pumpAndSettle();
    expect(find.text(t.profileIntegrations.title), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('onboarding-integrations-connect')));
    await tester.pumpAndSettle();
    expect(find.text(t.services.discoverySection), findsOneWidget);
    expect(find.textContaining(t.services.seerrDescription), findsOneWidget);
    profileNavigationRegistry.navigator!.pop();
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('onboarding-integrations-later')));
    await tester.pumpAndSettle();
    expect(find.text('Profile home'), findsOneWidget);
  });

  testWidgets('profile long press opens integrations inside that active profile session', (tester) async {
    final graph = (await tester.runAsync(() async {
      final graph = await _SessionGraph.create();
      final owner = Profile.local(id: 'local-owner', displayName: 'Owner', createdAt: DateTime(2026));
      await graph.profileRegistry.upsert(owner);
      await graph.storage.setActiveProfileId(owner.id);
      await graph.activeProfile.initialize();
      return graph;
    }))!;
    final root = GlobalKey<NavigatorState>();
    addTearDown(() async {
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pumpAndSettle();
      await tester.runAsync(graph.dispose);
    });
    await graph.pump(
      tester,
      navigatorKey: root,
      httpClientFactory: () => FakeHttpClient(200, const <int>[]),
      profileShellBuilder: (_) => const Scaffold(body: Text('Profile home')),
    );
    await tester.pumpAndSettle();
    root.currentState!.push(MaterialPageRoute<void>(builder: (_) => const ProfileSwitchScreen()));
    await tester.pumpAndSettle();
    await tester.longPress(find.text('Owner'));
    await tester.pumpAndSettle();
    expect(find.text(t.profileIntegrations.manage), findsOneWidget);
    await tester.tap(find.text(t.profileIntegrations.manage));
    await tester.pumpAndSettle();
    expect(find.text(t.services.discoverySection), findsOneWidget);
    expect(graph.activeProfile.activeId, 'local-owner');
  });

  testWidgets('managing another profile integrations switches the profile before opening services', (tester) async {
    final graph = (await tester.runAsync(() async {
      final graph = await _SessionGraph.create();
      await graph.profileRegistry.upsert(Profile.local(id: 'first', displayName: 'First', createdAt: DateTime(2026)));
      await graph.profileRegistry.upsert(Profile.local(id: 'second', displayName: 'Second', createdAt: DateTime(2026)));
      await graph.storage.setActiveProfileId('first');
      await graph.activeProfile.initialize();
      return graph;
    }))!;
    final root = GlobalKey<NavigatorState>();
    addTearDown(() async {
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pumpAndSettle();
      await tester.runAsync(graph.dispose);
    });
    await graph.pump(
      tester,
      navigatorKey: root,
      binder: _TestBinder(),
      httpClientFactory: () => FakeHttpClient(200, const <int>[]),
      profileShellBuilder: (context) =>
          Scaffold(body: Text('Profile ${context.watch<ActiveProfileProvider>().activeId}')),
    );
    await tester.pumpAndSettle();
    root.currentState!.push(MaterialPageRoute<void>(builder: (_) => const ProfileSwitchScreen()));
    await tester.pumpAndSettle();
    await tester.longPress(find.text('Second'));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.profileIntegrations.manage));
    await tester.pump();
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 100)));
    await tester.pumpAndSettle();
    expect(graph.activeProfile.activeId, 'second');
    expect(find.text(t.services.discoverySection), findsOneWidget);
    expect(find.text(t.profileIntegrations.forProfile(name: 'Second')), findsOneWidget);
  });

  testWidgets('the profile picker does not offer integrations on a Kids profile', (tester) async {
    final graph = (await tester.runAsync(() async {
      final graph = await _SessionGraph.create();
      await graph.profileRegistry.upsert(Profile.local(id: 'parent', displayName: 'Parent', createdAt: DateTime(2026)));
      await graph.profileRegistry.upsert(Profile.local(id: 'child', displayName: 'Child', createdAt: DateTime(2026)));
      await graph.storage.setActiveProfileId('parent');
      await graph.activeProfile.initialize();
      await KidsProfileService.instance.initialize();
      await KidsProfileService.instance.setParentPin('1234');
      await KidsProfileService.instance.setChild('child', parentId: 'parent', maxAge: 7);
      KidsProfileService.instance.selectProfile('parent');
      return graph;
    }))!;
    final root = GlobalKey<NavigatorState>();
    addTearDown(() async {
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pumpAndSettle();
      await tester.runAsync(graph.dispose);
      KidsProfileService.instance.resetForTesting();
    });
    await graph.pump(
      tester,
      navigatorKey: root,
      httpClientFactory: () => FakeHttpClient(200, const <int>[]),
      profileShellBuilder: (_) => const Scaffold(body: Text('Profile home')),
    );
    await tester.pumpAndSettle();
    root.currentState!.push(MaterialPageRoute<void>(builder: (_) => const ProfileSwitchScreen()));
    await tester.pumpAndSettle();
    await tester.longPress(find.text('Child'));
    await tester.pumpAndSettle();
    expect(find.text(t.profiles.manage), findsOneWidget);
    expect(find.text(t.profileIntegrations.manage), findsNothing);
  });

  testWidgets('profile switch disposes the profile navigator, routes, and providers', (tester) async {
    final graph = (await tester.runAsync(_SessionGraph.create))!;
    final discoverProviders = <DiscoverProvider>[];
    final hiddenProviders = <HiddenLibrariesProvider>[];
    final trackerProviders = <TrackersProvider>[];
    final companionProviders = <CompanionRemoteProvider>[];
    final disposedActiveIds = <String>[];
    final trackerHttpClients = <FakeHttpClient>[];
    // TrackersProvider owns six eager auth HTTP clients across the five
    // services (MAL's proxy and token exchange use separate clients).
    const trackerAuthClientsPerProfile = 6;
    FakeHttpClient trackerHttpClientFactory() {
      final client = FakeHttpClient(200, const <int>[]);
      trackerHttpClients.add(client);
      return client;
    }

    addTearDown(() async {
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pumpAndSettle();
      await tester.runAsync(graph.dispose);
    });

    final owner = Profile.local(id: 'local-owner', displayName: 'Owner', createdAt: DateTime(2026, 1, 1));
    final kids = Profile.local(id: 'local-kids', displayName: 'Kids', createdAt: DateTime(2026, 1, 2));
    await tester.runAsync(() async {
      await graph.profileRegistry.upsert(owner);
      await graph.profileRegistry.upsert(kids);
      await graph.storage.saveHiddenLibrariesForProfile(owner.id, {'srv:owner'});
      await graph.storage.saveHiddenLibrariesForProfile(kids.id, {'srv:kids'});
      await graph.storage.setActiveProfileId(owner.id);
      await graph.activeProfile.initialize();
    });

    await graph.pump(
      tester,
      httpClientFactory: trackerHttpClientFactory,
      profileShellBuilder: (context) => _ProfileProbeShell(
        discoverProviders: discoverProviders,
        hiddenProviders: hiddenProviders,
        trackerProviders: trackerProviders,
        companionProviders: companionProviders,
        disposedActiveIds: disposedActiveIds,
      ),
    );
    await tester.pumpAndSettle();
    expect(trackerHttpClients, hasLength(trackerAuthClientsPerProfile));
    final ownerHttpClients = List<FakeHttpClient>.of(trackerHttpClients);
    _expectCloseCount(ownerHttpClients, 0);

    expect(find.text('active:local-owner'), findsOneWidget);
    expect(SystemShelfService().debugActiveOwner, owner.id);
    expect(discoverProviders.single.profileId, owner.id);
    expect(discoverProviders, hasLength(1));
    expect(hiddenProviders, hasLength(1));
    expect(companionProviders, hasLength(1));
    final ownerNavigator = profileNavigationRegistry.navigator;
    final ownerDiscover = discoverProviders.single;
    final ownerHidden = hiddenProviders.single;
    final ownerTrackers = trackerProviders.single;
    final ownerCompanion = companionProviders.single;
    final ownerFavorites = tester.element(find.byType(_ProfileProbeShell)).read<HomeFavoritesSnapshot>();
    final ownerTaste = tester.element(find.byType(_ProfileProbeShell)).read<HomeTasteProvider>();
    expect(ownerTaste.profileId, owner.id);
    ownerFavorites.replace([testMediaItem(id: 'owner-only', serverId: 'server')]);
    expect(ownerFavorites.items.single.id, 'owner-only');
    await tester.runAsync(ownerHidden.ensureInitialized);
    expect(ownerHidden.profileId, owner.id);
    expect(ownerHidden.hiddenLibraryKeys, {'srv:owner'});

    await tester.tap(find.byKey(const ValueKey('push-profile-route')));
    await tester.pumpAndSettle();
    expect(find.text('old profile route'), findsOneWidget);

    expect(await tester.runAsync(() => graph.activeProfile.activate(kids)), isTrue);
    await tester.pumpAndSettle();
    expect(trackerHttpClients, hasLength(trackerAuthClientsPerProfile * 2));
    final kidsHttpClients = trackerHttpClients.sublist(ownerHttpClients.length);
    _expectCloseCount(ownerHttpClients, 1);
    _expectCloseCount(kidsHttpClients, 0);

    expect(find.text('old profile route'), findsNothing);
    expect(find.text('active:local-kids'), findsOneWidget);
    expect(disposedActiveIds, contains('local-owner'));
    expect(discoverProviders, hasLength(2));
    expect(discoverProviders.last, isNot(same(ownerDiscover)));
    expect(hiddenProviders, hasLength(2));
    expect(hiddenProviders.last, isNot(same(ownerHidden)));
    expect(trackerProviders, hasLength(2));
    expect(trackerProviders.last, isNot(same(ownerTrackers)));
    expect(ownerTrackers.isDisposed, isTrue);
    expect(companionProviders, hasLength(2));
    expect(companionProviders.last, isNot(same(ownerCompanion)));
    final kidsFavorites = tester.element(find.byType(_ProfileProbeShell)).read<HomeFavoritesSnapshot>();
    final kidsTaste = tester.element(find.byType(_ProfileProbeShell)).read<HomeTasteProvider>();
    expect(kidsTaste, isNot(same(ownerTaste)));
    expect(kidsTaste.profileId, kids.id);
    expect(kidsTaste.signals, isEmpty);
    expect(kidsFavorites, isNot(same(ownerFavorites)));
    expect(kidsFavorites.items, isEmpty);
    expect(ownerCompanion.isDisposed, isTrue);
    await tester.runAsync(hiddenProviders.last.ensureInitialized);
    expect(hiddenProviders.last.profileId, kids.id);
    expect(hiddenProviders.last.hiddenLibraryKeys, {'srv:kids'});
    expect(profileNavigationRegistry.navigator, isNot(same(ownerNavigator)));
    expect(SystemShelfService().debugActiveOwner, kids.id);
    expect(discoverProviders.last.profileId, kids.id);

    await tester.runAsync(graph.activeProfile.clearActiveProfile);
    await tester.pumpAndSettle();
    expect(trackerHttpClients, hasLength(trackerAuthClientsPerProfile * 3));
    final signedOutHttpClients = trackerHttpClients.sublist(ownerHttpClients.length + kidsHttpClients.length);
    _expectCloseCount(ownerHttpClients, 1);
    _expectCloseCount(kidsHttpClients, 1);
    _expectCloseCount(signedOutHttpClients, 0);
    expect(SystemShelfService().debugActiveOwner, isNull);
    expect(discoverProviders.last.profileId, isNull);

    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pumpAndSettle();
    expect(trackerHttpClients.toSet(), hasLength(trackerAuthClientsPerProfile * 3));
    _expectCloseCount(trackerHttpClients, 1);
  });

  testWidgets(
    'a root-navigator route over the session blocks focus steals below it and hands focus back on pop (#2239)',
    (tester) async {
      final graph = (await tester.runAsync(_SessionGraph.create))!;
      final rootNavigator = GlobalKey<NavigatorState>();
      final content = FocusNode(debugLabel: 'SessionContent');
      final sidebar = FocusNode(debugLabel: 'SessionSidebar');
      final picker = FocusNode(debugLabel: 'RootPicker');

      addTearDown(() async {
        await tester.pumpWidget(const SizedBox.shrink());
        await tester.pumpAndSettle();
        content.dispose();
        sidebar.dispose();
        picker.dispose();
        await tester.runAsync(graph.dispose);
      });

      final owner = Profile.local(id: 'local-owner', displayName: 'Owner', createdAt: DateTime(2026, 1, 1));
      await tester.runAsync(() async {
        await graph.profileRegistry.upsert(owner);
        await graph.storage.setActiveProfileId(owner.id);
        await graph.activeProfile.initialize();
      });

      await graph.pump(
        tester,
        navigatorKey: rootNavigator,
        httpClientFactory: () => FakeHttpClient(200, const <int>[]),
        profileShellBuilder: (context) => Column(
          children: [
            Focus(focusNode: sidebar, child: const SizedBox(height: 10, width: 10)),
            Focus(focusNode: content, autofocus: true, child: const SizedBox(height: 10, width: 10)),
          ],
        ),
      );
      await tester.pump();
      await tester.pump(const Duration(seconds: 1));
      expect(content.hasPrimaryFocus, isTrue);

      // The picker/PIN shape: pushed on the root navigator, above the whole
      // nested profile-session navigator.
      rootNavigator.currentState!.push(
        MaterialPageRoute<void>(
          builder: (_) => Focus(focusNode: picker, autofocus: true, child: const SizedBox.expand()),
        ),
      );
      await tester.pump();
      await tester.pump(const Duration(seconds: 1));
      expect(picker.hasPrimaryFocus, isTrue);

      // A resume-time self-heal under MainScreen (sidebar reveal, grid load).
      sidebar.requestFocus();
      await tester.pump();
      expect(sidebar.hasPrimaryFocus, isFalse, reason: 'covered session must not take focus');
      expect(picker.hasPrimaryFocus, isTrue);

      rootNavigator.currentState!.pop();
      await tester.pump();
      await tester.pump(const Duration(seconds: 1));
      expect(content.hasPrimaryFocus, isTrue, reason: 'focus returns to the session leaf that had it');
    },
  );
}

void _expectCloseCount(Iterable<FakeHttpClient> clients, int expected) {
  for (final client in clients) {
    expect(client.closeCount, expected);
  }
}

class _SessionGraph {
  _SessionGraph._({
    required this.db,
    required this.profileRegistry,
    required this.connectionRegistry,
    required this.profileConnectionRegistry,
    required this.storage,
    required this.plexHome,
    required this.activeProfile,
    required this.serverManager,
    required this.multiServer,
    required this.offlineWatch,
  });

  final AppDatabase db;
  final ProfileRegistry profileRegistry;
  final ConnectionRegistry connectionRegistry;
  final ProfileConnectionRegistry profileConnectionRegistry;
  final StorageService storage;
  final _FakePlexHomeService plexHome;
  final ActiveProfileProvider activeProfile;
  final MultiServerManager serverManager;
  final MultiServerProvider multiServer;
  final OfflineWatchSyncService offlineWatch;

  static Future<_SessionGraph> create() async {
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    final profileRegistry = ProfileRegistry(db);
    final connectionRegistry = ConnectionRegistry(db);
    final profileConnectionRegistry = ProfileConnectionRegistry(db);
    final storage = await StorageService.getInstance();
    final plexHome = _FakePlexHomeService(
      connections: connectionRegistry,
      profileConnections: profileConnectionRegistry,
      storage: storage,
    );
    final serverManager = MultiServerManager();
    return _SessionGraph._(
      db: db,
      profileRegistry: profileRegistry,
      connectionRegistry: connectionRegistry,
      profileConnectionRegistry: profileConnectionRegistry,
      storage: storage,
      plexHome: plexHome,
      activeProfile: ActiveProfileProvider(
        registry: profileRegistry,
        plexHome: plexHome,
        connections: connectionRegistry,
        profileConnections: profileConnectionRegistry,
        storage: storage,
      ),
      serverManager: serverManager,
      multiServer: testMultiServerProvider(serverManager),
      // The session tree instantiates MusicPlaybackServiceImpl (the mini-player
      // overlay watches it), which needs the database + offline watch service.
      offlineWatch: OfflineWatchSyncService(database: db, serverManager: serverManager),
    );
  }

  Future<void> pump(
    WidgetTester tester, {
    required FakeHttpClient Function() httpClientFactory,
    required WidgetBuilder profileShellBuilder,
    GlobalKey<NavigatorState>? navigatorKey,
    bool initialIntegrationsPrompt = false,
    ActiveProfileBinder? binder,
    double textScale = 1,
  }) => tester.pumpWidget(
    MultiProvider(
      providers: [
        Provider<StorageService>.value(value: storage),
        Provider<AppDatabase>.value(value: db),
        Provider<ConnectionRegistry>.value(value: connectionRegistry),
        Provider<ProfileRegistry>.value(value: profileRegistry),
        if (binder != null) Provider<ActiveProfileBinder>.value(value: binder),
        Provider<ProfileConnectionRegistry>.value(value: profileConnectionRegistry),
        Provider<PlexHomeService>.value(value: plexHome),
        ChangeNotifierProvider<ActiveProfileProvider>.value(value: activeProfile),
        ChangeNotifierProvider<MultiServerProvider>.value(value: multiServer),
        ChangeNotifierProvider<OfflineWatchSyncService>.value(value: offlineWatch),
      ],
      child: MaterialApp(
        theme: monoTheme(MonoPalette.dark),
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(textScale)),
          child: child!,
        ),
        navigatorKey: navigatorKey,
        home: ProfileSessionScreen.forTesting(
          initialPromptHandled: true,
          initialIntegrationsPrompt: initialIntegrationsPrompt,
          httpClientFactory: httpClientFactory,
          profileShellBuilder: profileShellBuilder,
        ),
      ),
    ),
  );

  Future<void> dispose() async {
    await activeProfile.resetForTesting();
    activeProfile.dispose();
    multiServer.dispose();
    serverManager.dispose();
    await plexHome.dispose();
    offlineWatch.dispose();
    await db.close();
  }
}

class _TestBinder implements ActiveProfileBinder {
  @override
  void markUserInitiatedActivation(String profileId) {}

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _ProfileProbeShell extends StatefulWidget {
  const _ProfileProbeShell({
    required this.discoverProviders,
    required this.companionProviders,
    required this.hiddenProviders,
    required this.disposedActiveIds,
    required this.trackerProviders,
  });

  final List<CompanionRemoteProvider> companionProviders;
  final List<DiscoverProvider> discoverProviders;
  final List<HiddenLibrariesProvider> hiddenProviders;
  final List<TrackersProvider> trackerProviders;
  final List<String> disposedActiveIds;

  @override
  State<_ProfileProbeShell> createState() => _ProfileProbeShellState();
}

class _ProfileProbeShellState extends State<_ProfileProbeShell> {
  CompanionRemoteProvider? _companionProvider;
  DiscoverProvider? _discoverProvider;
  HiddenLibrariesProvider? _hiddenProvider;
  TrackersProvider? _trackersProvider;
  String _activeId = 'none';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _companionProvider = context.read<CompanionRemoteProvider>();
    _discoverProvider = context.read<DiscoverProvider>();
    _hiddenProvider = context.read<HiddenLibrariesProvider>();
    _trackersProvider = context.read<TrackersProvider>();
    _activeId = context.read<ActiveProfileProvider>().activeId ?? 'none';
    if (widget.discoverProviders.isEmpty || !identical(widget.discoverProviders.last, _discoverProvider)) {
      widget.discoverProviders.add(_discoverProvider!);
    }
    if (widget.hiddenProviders.isEmpty || !identical(widget.hiddenProviders.last, _hiddenProvider)) {
      widget.hiddenProviders.add(_hiddenProvider!);
    }
    if (widget.trackerProviders.isEmpty || !identical(widget.trackerProviders.last, _trackersProvider)) {
      widget.trackerProviders.add(_trackersProvider!);
    }
    if (widget.companionProviders.isEmpty || !identical(widget.companionProviders.last, _companionProvider)) {
      widget.companionProviders.add(_companionProvider!);
    }
  }

  @override
  void dispose() {
    widget.disposedActiveIds.add(_activeId);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final activeId = context.watch<ActiveProfileProvider>().activeId;
    return Scaffold(
      body: Column(
        children: [
          Text('active:$activeId'),
          ElevatedButton(
            key: const ValueKey('push-profile-route'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const Text('old profile route')));
            },
            child: const Text('push profile route'),
          ),
        ],
      ),
    );
  }
}

class _FakePlexHomeService extends PlexHomeService {
  _FakePlexHomeService({required super.connections, required super.profileConnections, required StorageService storage})
    : super(storage: storage, plexHomeUserFetcher: (_) async => const []);

  @override
  Map<String, List<PlexHomeUser>> get current => const {};

  @override
  Stream<Map<String, List<PlexHomeUser>>> get stream => Stream.value(const {});

  @override
  Future<void> start() async {}

  @override
  Future<void> reloadFromStorage() async {}

  @override
  Future<void> dispose() async {}
}
