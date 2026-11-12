import 'dart:async';
import 'package:drift/native.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:luroka/media/ids.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/connection/connection.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/connection/connection_registry.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_hub.dart';
import 'package:luroka/media/home_layout.dart';
import 'package:luroka/media/home_progress.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_library.dart';
import 'package:luroka/media/library_query.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/media/server_capabilities.dart';
import 'package:luroka/mixins/refreshable.dart';
import 'package:luroka/profiles/active_profile_provider.dart';
import 'package:luroka/profiles/plex_home_service.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/profile_connection.dart';
import 'package:luroka/profiles/profile_connection_registry.dart';
import 'package:luroka/profiles/profile_registry.dart';
import 'package:luroka/screens/profile/family_settings_screen.dart';
import 'package:luroka/screens/profile/profile_switch_screen.dart';
import 'package:luroka/screens/settings/home_layout_screen.dart';
import 'package:luroka/providers/companion_remote_provider.dart';
import 'package:luroka/providers/discover_provider.dart';
import 'package:luroka/providers/hidden_libraries_provider.dart';
import 'package:luroka/providers/home_layout_provider.dart';
import 'package:luroka/providers/home_favorites_snapshot.dart';
import 'package:luroka/providers/home_taste_provider.dart';
import 'package:luroka/providers/watch_state_store.dart';
import 'package:luroka/providers/libraries_provider.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/screens/discover_screen.dart';
import 'package:luroka/screens/main_screen.dart';
import 'package:luroka/screens/settings/screen_time_screen.dart';
import 'package:luroka/services/multi_server_manager.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/utils/media_server_http_client.dart';
import 'package:luroka/utils/watch_state_notifier.dart';
import 'package:luroka/watch_together/watch_together.dart';
import 'package:luroka/widgets/side_navigation_rail.dart';
import 'package:luroka/widgets/tv_browse_rail.dart';
import 'package:luroka/widgets/system_clock.dart';
import 'package:luroka/widgets/hub_section.dart';
import 'package:luroka/widgets/home_dashboard.dart';
import 'package:luroka/widgets/mobile_home_carousel.dart';
import 'package:provider/provider.dart';

import '../test_helpers/prefs.dart';
import '../test_helpers/media_items.dart';
import '../test_helpers/multi_server_fixtures.dart';
import '../test_helpers/watch_room_harness.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() => initializeDateFormatting('en'));

  setUp(() {
    resetSharedPreferencesForTest(initialAsync: const {'custom_home_design': 'classic'});
    SettingsService.resetForTesting();
    TvDetectionService.debugSetAppleTVOverride(true);
    LocaleSettings.setLocaleSync(AppLocale.en);
  });

  tearDown(() {
    TvDetectionService.debugSetAppleTVOverride(null);
  });

  testWidgets('modern Home is wired to live row preferences and fits the real phone toolbar', (tester) async {
    final item = testMediaItem(
      id: 'movie',
      backend: MediaBackend.plex,
      kind: MediaKind.movie,
      title: 'A featured movie',
      serverId: 'server_1',
    );
    final row = MediaHub(id: 'recommended', serverId: 'server_1', title: 'Recommended', type: 'movie', items: [item]);
    final layout = (await _pumpDiscoverShell(
      tester,
      isTv: false,
      customize: true,
      size: const Size(320, 640),
      hubs: [row],
    ))!;
    expect(find.byType(HomeDashboard), findsOneWidget);
    expect(find.byType(MobileHomeCarousel), findsOneWidget);
    expect(tester.takeException(), isNull);
    await layout.setHidden(homeRowKey(row), true);
    await tester.pump();
    expect(tester.widget<HomeDashboard>(find.byType(HomeDashboard)).rows, isEmpty);
    expect(find.byKey(const ValueKey('home_live_details')), findsNothing);
  });

  testWidgets('phone Home shows a room shortcut beside the profile while in a session', (tester) async {
    final world = WatchRoomHarness(tester);
    final host = world.host();
    await _pumpDiscoverShell(tester, isTv: false, size: const Size(320, 640), watchTogether: host);

    final shortcut = find.byKey(const ValueKey('mobile_home_watch_together'));
    expect(shortcut, findsNothing);
    await world.together(host, []);
    await tester.pump();
    expect(shortcut, findsOneWidget);
    expect(
      tester.getTopRight(shortcut).dx,
      lessThanOrEqualTo(tester.getTopLeft(find.byTooltip(t.profiles.sectionTitle)).dx),
    );
    expect(tester.takeException(), isNull);

    await tester.tap(shortcut);
    await tester.pumpAndSettle();
    expect(find.byType(WatchTogetherScreen), findsOneWidget);
    expect(find.text(host.formattedRoomCode!), findsWidgets);

    await tester.pageBack();
    await tester.pumpAndSettle();
    host.leave();
    await world.until(() => !host.isInSession, 'the host leaves the room');
    await tester.pump();
    expect(shortcut, findsNothing);
  });

  testWidgets('late modern Home content receives an active tab handoff', (tester) async {
    final gated = await _pumpGatedDiscover(tester);
    (tester.state(find.byType(DiscoverScreen)) as FocusableTab).focusActiveTabIfReady();
    await tester.pump();
    await gated.landItems(tester);
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'dashboard_play');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'hub_hub_1');
  });

  testWidgets('late modern Home content can take focus without pulling it off the sidebar', (tester) async {
    final gated = await _pumpGatedDiscover(tester);
    (tester.state(find.byType(DiscoverScreen)) as FocusableTab).focusActiveTabIfReady();
    await tester.pump();
    gated.sidebarItem.requestFocus();
    await tester.pump();
    await gated.landItems(tester);
    expect(find.byType(HomeDashboard), findsOneWidget);
    expect(FocusManager.instance.primaryFocus, same(gated.sidebarItem));
  });

  for (final isTv in [true, false]) {
    testWidgets('custom row order and visibility update the ${isTv ? 'TV' : 'phone'} home live', (tester) async {
      final item = testMediaItem(
        id: 'movie',
        backend: MediaBackend.plex,
        kind: MediaKind.movie,
        title: 'Movie',
        serverId: 'server_1',
      );
      final a = MediaHub(id: 'a', serverId: 'server_1', title: 'Row A', type: 'movie', items: [item]);
      final b = MediaHub(id: 'b', serverId: 'server_1', title: 'Row B', type: 'movie', items: [item]);
      final layout = (await _pumpDiscoverShell(tester, isTv: isTv, customize: true, hubs: [a, b]))!;
      await layout.moveRow([a, b], homeRowKey(b), -1);
      await tester.pump();
      if (isTv) {
        expect(tester.widget<HomeDashboard>(find.byType(HomeDashboard)).rows.map((hub) => hub.id), ['b', 'a']);
      } else {
        expect(tester.widgetList<HubSection>(find.byType(HubSection)).first.hub.id, 'b');
      }
      await layout.setHidden(homeRowKey(b), true);
      await tester.pump();
      if (isTv) {
        expect(tester.widget<HomeDashboard>(find.byType(HomeDashboard)).rows.single.id, 'a');
      } else {
        expect(tester.widgetList<HubSection>(find.byType(HubSection)).map((widget) => widget.hub.id), ['a']);
      }
      await layout.resetRows();
      await tester.pump();
      if (isTv) {
        expect(tester.widget<HomeDashboard>(find.byType(HomeDashboard)).rows.map((hub) => hub.id), ['a', 'b']);
      } else {
        expect(tester.widgetList<HubSection>(find.byType(HubSection)).first.hub.id, 'a');
      }
    });
  }

  for (final isTv in [true, false]) {
    testWidgets('split progress rows update ${isTv ? 'TV' : 'phone'} Home and honor visibility', (tester) async {
      final resume = withHomeProgressRole(
        testMediaItem(
          id: 'resume',
          backend: MediaBackend.jellyfin,
          kind: MediaKind.movie,
          title: 'Resume',
          serverId: 'server_1',
        ),
        HomeProgressRole.resume,
      );
      final next = withHomeProgressRole(
        testMediaItem(
          id: 'next',
          backend: MediaBackend.jellyfin,
          kind: MediaKind.episode,
          title: 'Next',
          serverId: 'server_1',
        ),
        HomeProgressRole.nextUp,
      );
      final unknown = testMediaItem(
        id: 'unknown',
        backend: MediaBackend.plex,
        kind: MediaKind.movie,
        title: 'Plex',
        serverId: 'server_1',
      );
      final layout = (await _pumpDiscoverShell(tester, isTv: isTv, customize: true, onDeck: [resume, next, unknown]))!;
      HomeDashboard dashboard() => tester.widget<HomeDashboard>(find.byType(HomeDashboard));
      expect(dashboard().rows.where((row) => row.id == homeContinueWatchingId).single.items, hasLength(3));
      await layout.setSplitContinueWatching(true);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 100));
      final rows = dashboard().rows;
      expect(
        rows.firstWhere((row) => row.id == homeContinueWatchingId).items.map((item) => item.id),
        containsAll(['resume', 'unknown']),
      );
      final nextRow = rows.firstWhere((row) => row.id == homeNextUpId);
      expect(nextRow.items.map((item) => item.id), ['next']);
      expect((await dashboard().loadMoreItems(nextRow)!()).map((item) => item.id), ['next']);
      await layout.setHidden(homeNextUpKey, true);
      await tester.pump();
      expect(dashboard().rows.where((row) => row.id == homeNextUpId), isEmpty);
      expect(dashboard().rows.where((row) => row.id == homeContinueWatchingId), hasLength(1));
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('pinned collections appear only for available servers and visible libraries', (tester) async {
    final layout = (await _pumpDiscoverShell(tester, isTv: true, customize: true))!;
    final pin = testMediaItem(
      id: 'collection',
      backend: MediaBackend.plex,
      kind: MediaKind.collection,
      title: 'Favorites',
      serverId: 'server_1',
      libraryId: 'movies',
    );
    final unavailable = pin.copyWith(serverId: 'offline');
    await layout.setPinned(pin, true);
    await layout.setPinned(unavailable, true);
    await tester.pump();
    final hub = tester.widget<HomeDashboard>(find.byType(HomeDashboard)).rows.single;
    expect(hub.id, homePinnedCollectionsId);
    expect(hub.items.single.globalKey, pin.globalKey);
    final hidden = tester.element(find.byType(DiscoverScreen)).read<HiddenLibrariesProvider>();
    await hidden.hideLibrary('server_1:movies');
    await tester.pump();
    expect(tester.widget<HomeDashboard>(find.byType(HomeDashboard)).rows, isEmpty);
    expect(layout.layout.pins, hasLength(2), reason: 'temporary visibility changes must retain the saved shortcuts');
  });

  testWidgets('personal Spotlight follows the profile preference and respects hidden progress rows', (tester) async {
    final resume = testMediaItem(
      id: 'resume-personal',
      title: 'My resume',
      serverId: 'server_1',
      kind: MediaKind.movie,
      backend: MediaBackend.plex,
      viewOffsetMs: 1000,
      durationMs: 10000,
    );
    final recent = testMediaItem(
      id: 'recent-personal',
      title: 'A new movie',
      serverId: 'server_1',
      kind: MediaKind.movie,
      backend: MediaBackend.plex,
    );
    final layout = (await _pumpDiscoverShell(
      tester,
      isTv: true,
      customize: true,
      onDeck: [resume],
      hubs: [
        MediaHub(id: 'library.movies.recent', title: 'Recently added', type: 'movie', items: [recent]),
      ],
    ))!;
    await layout.setSpotlightSource(HomeSpotlightSource.forYou);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    expect(tester.widget<HomeDashboard>(find.byType(HomeDashboard)).spotlightSource, HomeSpotlightSource.forYou);
    expect(tester.widget<Text>(find.byKey(const ValueKey('home_preview_title'))).data, 'My resume');
    await layout.setHidden(homeContinueWatchingKey, true);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    expect(tester.widget<Text>(find.byKey(const ValueKey('home_preview_title'))).data, 'A new movie');
    expect(tester.takeException(), isNull);
  });

  testWidgets('Home loads a bounded favorite preview after its main pass and hides it with its library', (
    tester,
  ) async {
    final snapshot = HomeFavoritesSnapshot();
    addTearDown(snapshot.dispose);
    final watchState = WatchStateStore()..setActiveProfileId('custom-profile');
    addTearDown(watchState.dispose);
    final client = _FavoriteHomeClient();
    final layout = (await _pumpDiscoverShell(
      tester,
      isTv: true,
      customize: true,
      homeSnapshot: snapshot,
      fakeClient: client,
      watchState: watchState,
      profiles: [Profile.local(id: 'custom-profile', displayName: 'Viewer', createdAt: DateTime(2026))],
      activeProfileId: 'custom-profile',
    ))!;
    final context = tester.element(find.byType(DiscoverScreen));
    await context.read<LibrariesProvider>().updateLibraryOrder(const [
      MediaLibrary(
        id: 'movies',
        title: 'Movies',
        kind: MediaKind.movie,
        backend: MediaBackend.jellyfin,
        serverId: 'server_1',
      ),
    ]);
    await tester.pump(const Duration(seconds: 3));
    expect(client.favoriteCalls, 0, reason: 'Trending must not start personal Favorites requests');
    await layout.setSpotlightSource(HomeSpotlightSource.forYou);
    await tester.pump();
    expect(client.favoriteCalls, 0, reason: 'background work must not delay the main Home pass');
    await tester.pump(const Duration(seconds: 3));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    expect(client.favoriteCalls, 1);
    expect(snapshot.items.single.id, 'saved-outside-home');
    expect(tester.widget<Text>(find.byKey(const ValueKey('home_preview_title'))).data, 'Saved outside Home');
    WatchStateNotifier().notifyWatched(item: snapshot.items.single);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    expect(find.text('Saved outside Home'), findsNothing, reason: 'a newly watched favorite is no longer eligible');
    WatchStateNotifier().notifyWatched(item: snapshot.items.single, isNowWatched: false);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    expect(find.text('Saved outside Home'), findsWidgets);
    await context.read<HiddenLibrariesProvider>().hideLibrary('server_1:movies');
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    expect(find.text('Saved outside Home'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Home reads local profile activity after loading without replacing the focused title', (tester) async {
    final calls = <String>[];
    final taste = HomeTasteProvider(
      profileId: 'custom-profile',
      now: () => DateTime(2026, 2, 2),
      loadSessions: ({required profileId, required startLocalDate, required limit}) async {
        calls.add(profileId);
        ScreenTimeSessionRow entry(int id, String itemId) => ScreenTimeSessionRow(
          id: id,
          profileId: profileId,
          localDate: '2026-02-01',
          startUtcMs: 1,
          endUtcMs: 360001,
          durationMs: 360000,
          mediaKind: 0,
          serverKey: 'server_1',
          itemKey: itemId,
        );
        return [entry(1, 'watched-one'), entry(2, 'watched-two')];
      },
    );
    addTearDown(taste.dispose);
    MediaItem movie(String id, String title, String genre, int views) => testMediaItem(
      id: id,
      title: title,
      serverId: 'server_1',
      kind: MediaKind.movie,
      backend: MediaBackend.plex,
      viewCount: views,
      genres: [genre],
    );
    final layout = (await _pumpDiscoverShell(
      tester,
      isTv: true,
      customize: true,
      homeTaste: taste,
      profiles: [Profile.local(id: 'custom-profile', displayName: 'Viewer', createdAt: DateTime(2026))],
      activeProfileId: 'custom-profile',
      hubs: [
        MediaHub(
          id: 'watched',
          title: 'Watched',
          type: 'movie',
          items: [movie('watched-one', 'Seen One', 'Mystery', 1), movie('watched-two', 'Seen Two', 'Mystery', 1)],
        ),
        MediaHub(
          id: 'library.movies.recent',
          title: 'Recent',
          type: 'movie',
          items: [movie('other', 'Other Movie', 'Comedy', 0), movie('match', 'Mystery Match', 'Mystery', 0)],
        ),
      ],
    ))!;
    await tester.pump(const Duration(seconds: 3));
    expect(calls, isEmpty, reason: 'Trending does not read personal activity');
    await layout.setSpotlightSource(HomeSpotlightSource.forYou);
    await tester.pump();
    expect(calls, isEmpty);
    expect(tester.widget<Text>(find.byKey(const ValueKey('home_preview_title'))).data, 'Other Movie');
    tester.state<HomeDashboardState>(find.byType(HomeDashboard)).requestContentFocus();
    await tester.pump();
    final focus = FocusManager.instance.primaryFocus;
    await tester.pump(const Duration(seconds: 3));
    await tester.pump();
    expect(calls, ['custom-profile']);
    expect(tester.widget<Text>(find.byKey(const ValueKey('home_preview_title'))).data, 'Other Movie');
    expect(FocusManager.instance.primaryFocus, same(focus));
    for (var i = 0; i < 3; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
      await tester.pump();
    }
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pump();
    expect(tester.widget<Text>(find.byKey(const ValueKey('home_preview_title'))).data, 'Mystery Match');
    expect(find.text(t.homeLayout.spotlightInspired), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Home skips the taste-history read when loaded titles have no genre metadata', (tester) async {
    var calls = 0;
    final taste = HomeTasteProvider(
      profileId: 'custom-profile',
      loadSessions: ({required profileId, required startLocalDate, required limit}) async {
        calls++;
        return [];
      },
    );
    addTearDown(taste.dispose);
    final layout = (await _pumpDiscoverShell(
      tester,
      isTv: true,
      customize: true,
      homeTaste: taste,
      profiles: [Profile.local(id: 'custom-profile', displayName: 'Viewer', createdAt: DateTime(2026))],
      activeProfileId: 'custom-profile',
      hubs: [
        MediaHub(
          id: 'library.movies.recent',
          title: 'Recent',
          type: 'movie',
          items: [testMediaItem(id: 'movie', title: 'Movie', serverId: 'server_1')],
        ),
      ],
    ))!;
    await layout.setSpotlightSource(HomeSpotlightSource.forYou);
    await tester.pump();
    await tester.pump(const Duration(seconds: 3));
    await tester.pump();
    expect(calls, 0);
    expect(tester.takeException(), isNull);
  });

  testWidgets('startup prime does not duplicate the load DiscoverScreen started in initState', (tester) async {
    // DiscoverScreen.initState fires load(); main_screen._primeOnlineServices
    // then primes the content tabs once libraries land. Asking for a full
    // refresh there queued a trailing pass through CoalescedLoadCoordinator and
    // ran the whole home fan-out twice on every cold start (#1784).
    await SettingsService.getInstance();
    tester.view.devicePixelRatio = 1.0;
    tester.view.physicalSize = const Size(1280, 720);
    addTearDown(() {
      tester.view.resetDevicePixelRatio();
      tester.view.resetPhysicalSize();
    });

    final hub = MediaHub(id: 'hub_1', title: 'Recommended', type: 'movie', items: const [], size: 0);
    final client = _GatedHubsFakeClient(hubs: [hub]);
    // Disposes both the provider and the manager it wraps; MultiServerProvider
    // does not own the manager, and manager.dispose() is what closes its
    // status/progress controllers and the registered clients.
    final multiServerProvider = testMultiServer(clients: [client]).provider;
    final hiddenLibrariesProvider = HiddenLibrariesProvider();
    final librariesProvider = LibrariesProvider();
    final watchTogetherProvider = WatchTogetherProvider();
    final companionRemoteProvider = CompanionRemoteProvider();
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    final connectionRegistry = _FakeConnectionRegistry(db);
    final profileConnectionRegistry = _FakeProfileConnectionRegistry(db);
    final storage = await StorageService.getInstance();
    final plexHome = PlexHomeService(
      connections: connectionRegistry,
      profileConnections: profileConnectionRegistry,
      storage: storage,
      plexHomeUserFetcher: (_) async => const [],
    );
    final activeProfileProvider = ActiveProfileProvider(
      registry: _FakeProfileRegistry(db),
      plexHome: plexHome,
      connections: connectionRegistry,
      profileConnections: profileConnectionRegistry,
      storage: storage,
    );
    final discoverProvider = DiscoverProvider(
      multiServerProvider,
      hiddenLibrariesProvider,
      librariesProvider,
      profileId: null,
      isProfileBinding: () => false,
    );
    addTearDown(() async {
      discoverProvider.dispose();
      activeProfileProvider.dispose();
      companionRemoteProvider.dispose();
      watchTogetherProvider.dispose();
      librariesProvider.dispose();
      hiddenLibrariesProvider.dispose();
      // multiServerProvider + its manager are torn down by testMultiServer.
      await plexHome.dispose();
      await db.close();
    });

    await tester.pumpWidget(
      TranslationProvider(
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<MultiServerProvider>.value(value: multiServerProvider),
            ChangeNotifierProvider<HiddenLibrariesProvider>.value(value: hiddenLibrariesProvider),
            ChangeNotifierProvider<LibrariesProvider>.value(value: librariesProvider),
            ChangeNotifierProvider<DiscoverProvider>.value(value: discoverProvider),
            ChangeNotifierProvider<WatchTogetherProvider>.value(value: watchTogetherProvider),
            ChangeNotifierProvider<CompanionRemoteProvider>.value(value: companionRemoteProvider),
            ChangeNotifierProvider<ActiveProfileProvider>.value(value: activeProfileProvider),
          ],
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: MainScreenFocusScope(
              focusSidebar: () {},
              sideNavigationWidth: SideNavigationRailState.expandedWidth,
              reservedSideNavigationWidth: SideNavigationRailState.tvCollapsedWidth,
              foregroundLeft: 0,
              foregroundWidth: 1280,
              viewportWidth: 1280,
              child: const SizedBox(width: 1280, height: 720, child: DiscoverScreen()),
            ),
          ),
        ),
      ),
    );
    await tester.pump();

    // The initState pass is in flight, waiting on the server.
    expect(discoverProvider.isLoadInFlight, isTrue);
    expect(client.hubCalls, 1);

    final screen = tester.state(find.byType(DiscoverScreen)) as FullRefreshable;
    screen.primeRefresh();

    client.release();
    // Bounded pumps, not pumpAndSettle: the hero carousel runs a repeating
    // auto-scroll timer, so the frame loop never goes quiet.
    await tester.pump();
    await tester.pump();
    await tester.pump();

    expect(client.hubCalls, 1, reason: 'the prime rode along with the load already running');
    expect(discoverProvider.isLoadInFlight, isFalse);

    // A prime with nothing in flight (reconnect-from-offline) must still refetch.
    screen.primeRefresh();
    await tester.pump();
    client.release();
    await tester.pump();
    await tester.pump();

    expect(client.hubCalls, 2);
  });

  testWidgets('Refreshable.refresh refetches hubs only once they are stale (#1646)', (tester) async {
    // The stale-resume gate goes through Refreshable.refresh(). A fresh
    // refresh must stay Continue Watching-only (zero hub calls), but once the
    // hub list is older than DiscoverProvider.staleAfter it must run a full
    // pass — otherwise media added server-side never appears until a restart.
    await SettingsService.getInstance();
    tester.view.devicePixelRatio = 1.0;
    tester.view.physicalSize = const Size(1280, 720);
    addTearDown(() {
      tester.view.resetDevicePixelRatio();
      tester.view.resetPhysicalSize();
    });

    var currentTime = DateTime(2026, 1, 1, 12);
    final hub = MediaHub(id: 'hub_1', title: 'Recommended', type: 'movie', items: const [], size: 0);
    final client = _GatedHubsFakeClient(hubs: [hub]);
    final multiServerProvider = testMultiServer(clients: [client]).provider;
    final hiddenLibrariesProvider = HiddenLibrariesProvider();
    final librariesProvider = LibrariesProvider();
    final watchTogetherProvider = WatchTogetherProvider();
    final companionRemoteProvider = CompanionRemoteProvider();
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    final connectionRegistry = _FakeConnectionRegistry(db);
    final profileConnectionRegistry = _FakeProfileConnectionRegistry(db);
    final storage = await StorageService.getInstance();
    final plexHome = PlexHomeService(
      connections: connectionRegistry,
      profileConnections: profileConnectionRegistry,
      storage: storage,
      plexHomeUserFetcher: (_) async => const [],
    );
    final activeProfileProvider = ActiveProfileProvider(
      registry: _FakeProfileRegistry(db),
      plexHome: plexHome,
      connections: connectionRegistry,
      profileConnections: profileConnectionRegistry,
      storage: storage,
    );
    final discoverProvider = DiscoverProvider(
      multiServerProvider,
      hiddenLibrariesProvider,
      librariesProvider,
      profileId: null,
      isProfileBinding: () => false,
      now: () => currentTime,
    );
    addTearDown(() async {
      discoverProvider.dispose();
      activeProfileProvider.dispose();
      companionRemoteProvider.dispose();
      watchTogetherProvider.dispose();
      librariesProvider.dispose();
      hiddenLibrariesProvider.dispose();
      // multiServerProvider + its manager are torn down by testMultiServer.
      await plexHome.dispose();
      await db.close();
    });

    await tester.pumpWidget(
      TranslationProvider(
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<MultiServerProvider>.value(value: multiServerProvider),
            ChangeNotifierProvider<HiddenLibrariesProvider>.value(value: hiddenLibrariesProvider),
            ChangeNotifierProvider<LibrariesProvider>.value(value: librariesProvider),
            ChangeNotifierProvider<DiscoverProvider>.value(value: discoverProvider),
            ChangeNotifierProvider<WatchTogetherProvider>.value(value: watchTogetherProvider),
            ChangeNotifierProvider<CompanionRemoteProvider>.value(value: companionRemoteProvider),
            ChangeNotifierProvider<ActiveProfileProvider>.value(value: activeProfileProvider),
          ],
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: MainScreenFocusScope(
              focusSidebar: () {},
              sideNavigationWidth: SideNavigationRailState.expandedWidth,
              reservedSideNavigationWidth: SideNavigationRailState.tvCollapsedWidth,
              foregroundLeft: 0,
              foregroundWidth: 1280,
              viewportWidth: 1280,
              child: const SizedBox(width: 1280, height: 720, child: DiscoverScreen()),
            ),
          ),
        ),
      ),
    );
    await tester.pump();

    // Let the initState load pass commit, stamping hub freshness at T0.
    client.release();
    await tester.pump();
    await tester.pump();
    expect(client.hubCalls, 1);
    expect(discoverProvider.isLoadInFlight, isFalse);

    final screen = tester.state(find.byType(DiscoverScreen)) as Refreshable;

    // Fresh: the resume refresh stays Continue Watching-only.
    screen.refresh();
    await tester.pump();
    await tester.pump();
    expect(client.hubCalls, 1, reason: 'a fresh refresh must not refetch hubs');

    // Stale: the same refresh entry point now runs the full pass.
    currentTime = currentTime.add(DiscoverProvider.staleAfter + const Duration(seconds: 1));
    screen.refresh();
    await tester.pump();
    client.release();
    await tester.pump();
    await tester.pump();
    expect(client.hubCalls, 2, reason: 'a stale refresh must refetch the home hubs');
  });

  testWidgets('Home content does not duplicate the clock now owned by the TV navigation dock', (tester) async {
    await _pumpDiscoverShell(tester, isTv: false);
    expect(find.text(t.common.home), findsOneWidget);
    expect(
      find.byType(SystemClock),
      findsNothing,
      reason: 'a phone status bar and a desktop menu bar already show the time',
    );
    await tester.pumpWidget(const SizedBox());

    await _pumpDiscoverShell(tester, isTv: true);
    expect(find.byType(SystemClock), findsNothing, reason: 'the single TV clock belongs to the global dock');
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('phone Home has a compact toolbar, pull to refresh, and Downloads in the profile menu', (tester) async {
    await _pumpDiscoverShell(
      tester,
      isTv: false,
      customize: true,
      size: const Size(390, 844),
      platform: TargetPlatform.android,
      profiles: [
        Profile.local(id: 'alex', displayName: 'Alex', createdAt: DateTime(2026)),
        Profile.local(id: 'sam', displayName: 'Sam', createdAt: DateTime(2026)),
      ],
      activeProfileId: 'alex',
      hubs: [
        MediaHub(
          id: 'phone-home',
          title: 'Recently added',
          type: 'movie',
          items: [testMediaItem(id: 'phone-movie', title: 'A movie', serverId: 'server_1')],
        ),
      ],
    );
    expect(find.byType(RefreshIndicator), findsOneWidget);
    expect(find.byIcon(Symbols.refresh_rounded), findsNothing);
    expect(find.byIcon(Symbols.phone_android_rounded), findsNothing);
    expect(find.byIcon(Symbols.group_rounded), findsNothing);
    await tester.tap(find.byTooltip(t.titlePage.more));
    await tester.pumpAndSettle();
    expect(find.text(t.homeLayout.title), findsOneWidget);
    expect(find.text(t.watchTogether.title), findsNothing);
    expect(find.text(t.companionRemote.title), findsNothing);
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip(t.profiles.sectionTitle));
    await tester.pumpAndSettle();
    expect(find.text(t.navigation.downloads), findsOneWidget);
    expect(find.text(t.family.activity), findsOneWidget);
    expect(find.text(t.common.settings), findsOneWidget);
    expect(find.text(t.watchTogether.title), findsOneWidget);
    expect(find.text(t.profiles.sectionTitle), findsOneWidget);
    expect(find.text(t.profiles.signOutDevice), findsOneWidget);
    expect(find.text(t.family.switchProfile), findsOneWidget);
    expect(find.text(t.profiles.manageProfiles), findsOneWidget);
    expect(find.text(t.homeLayout.title), findsOneWidget);
    expect(find.text('Sam'), findsNothing);
    expect(find.text('Alex'), findsOneWidget);
    expect(find.text(t.profiles.active), findsOneWidget);
    expect(find.text(t.companionRemote.title), findsNothing);
    expect(tester.takeException(), isNull);
    await tester.ensureVisible(find.byKey(const ValueKey('logout')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('logout')));
    await tester.pumpAndSettle();
    expect(find.text(t.messages.logoutDeviceConfirm), findsOneWidget);
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip(t.profiles.sectionTitle));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.family.activity));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));
    expect(find.byType(ScreenTimeScreen), findsOneWidget);
    expect(find.text(t.family.activityUnavailable), findsOneWidget);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('phone profile menu opens switching, management, and Home customization', (tester) async {
    await _pumpDiscoverShell(
      tester,
      isTv: false,
      customize: true,
      size: const Size(390, 844),
      profiles: [
        Profile.local(id: 'alex', displayName: 'Alex', createdAt: DateTime(2026)),
        Profile.local(id: 'sam', displayName: 'Sam', createdAt: DateTime(2026)),
      ],
      activeProfileId: 'alex',
    );

    Future<void> openMenu() async {
      await tester.tap(find.byTooltip(t.profiles.sectionTitle));
      await tester.pumpAndSettle();
    }

    await openMenu();
    await tester.tap(find.text(t.family.switchProfile));
    await tester.pumpAndSettle();
    expect(find.byType(ProfileSwitchScreen), findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();

    await openMenu();
    await tester.tap(find.text(t.profiles.manageProfiles));
    await tester.pumpAndSettle();
    expect(find.byType(FamilySettingsScreen), findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();

    await openMenu();
    await tester.tap(find.byKey(const ValueKey('customize_home')));
    await tester.pumpAndSettle();
    expect(find.byType(HomeLayoutScreen), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('a pending TV rail focus is dropped once the user has moved to the sidebar', (tester) async {
    // The first load arms "focus the rail when it has hubs"; an empty-items
    // hub keeps it armed because the rail has nothing to render yet. Items
    // landing on a later pass must not pull focus off a sidebar item the
    // user has since navigated to.
    final gated = await _pumpGatedDiscover(tester);
    gated.sidebarItem.requestFocus();
    await tester.pump();

    await gated.landItems(tester);

    expect(find.byType(HomeDashboard), findsOneWidget);
    expect(
      FocusManager.instance.primaryFocus,
      same(gated.sidebarItem),
      reason: 'items landing must not steal the sidebar',
    );
  });

  testWidgets('a pending TV rail focus still claims the rail while focus sits on a bare scope', (tester) async {
    // Startup shape: MainScreen has focused its content scope but nothing
    // below it yet. That is "nowhere", not a destination the user chose, so
    // the rail keeps its initial-focus claim when hubs finally arrive.
    final gated = await _pumpGatedDiscover(tester);
    expect(FocusManager.instance.primaryFocus, isA<FocusScopeNode>());

    await gated.landItems(tester);

    expect(FocusManager.instance.primaryFocus?.debugLabel, 'dashboard_play');
  });

  testWidgets('an explicit tab handoff claims the rail while focus still sits on the sidebar', (tester) async {
    // Sidebar → Home: MainScreen calls focusActiveTabIfReady() without moving
    // focus off the sidebar item that selected the tab. Focus resting there
    // is the handoff in flight, not the user navigating away.
    final gated = await _pumpGatedDiscover(tester);
    await gated.landItems(tester);
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'dashboard_play');

    gated.sidebarItem.requestFocus();
    await tester.pump();
    (tester.state(find.byType(DiscoverScreen)) as FocusableTab).focusActiveTabIfReady();
    await tester.pump();
    await tester.pump();

    expect(FocusManager.instance.primaryFocus?.debugLabel, 'dashboard_play');
  });

  testWidgets('a handoff made while hubs are still loading claims the rail when they land', (tester) async {
    // Same handoff on a slow server: the rail has nothing to focus yet, so the
    // claim stays armed with focus on the sidebar item. Items landing later
    // must honor it — focus has not moved since the user selected Home.
    final gated = await _pumpGatedDiscover(tester);
    gated.sidebarItem.requestFocus();
    await tester.pump();
    (tester.state(find.byType(DiscoverScreen)) as FocusableTab).focusActiveTabIfReady();
    await tester.pump();
    expect(FocusManager.instance.primaryFocus, same(gated.sidebarItem));

    await gated.landItems(tester);

    expect(FocusManager.instance.primaryFocus?.debugLabel, 'dashboard_play');
  });

  testWidgets('a handoff claim lapses once the user moves to another sidebar item', (tester) async {
    final gated = await _pumpGatedDiscover(tester);
    gated.sidebarItem.requestFocus();
    await tester.pump();
    (tester.state(find.byType(DiscoverScreen)) as FocusableTab).focusActiveTabIfReady();
    await tester.pump();

    gated.otherSidebarItem.requestFocus();
    await tester.pump();

    await gated.landItems(tester);

    expect(find.byType(HomeDashboard), findsOneWidget);
    expect(
      FocusManager.instance.primaryFocus,
      same(gated.otherSidebarItem),
      reason: 'the user navigated on; do not yank focus',
    );
  });
}

class _GatedDiscover {
  _GatedDiscover({required this.client, required this.sidebarItem, required this.otherSidebarItem});

  final _GatedHubsFakeClient client;
  final FocusNode sidebarItem;
  final FocusNode otherSidebarItem;

  /// Replace the empty-items hub with a populated one and run a full pass.
  Future<void> landItems(WidgetTester tester) async {
    client.hubs
      ..clear()
      ..add(
        MediaHub(
          id: 'hub_1',
          title: 'Recommended',
          type: 'movie',
          items: [testMediaItem(id: 'movie_1', backend: MediaBackend.plex, kind: MediaKind.movie, title: 'Movie 1')],
          size: 1,
        ),
      );
    (tester.state(find.byType(DiscoverScreen)) as FullRefreshable).fullRefresh();
    await tester.pump();
    client.release();
    await tester.pump();
    await tester.pump();
  }
}

/// Mounts a TV [DiscoverScreen] beside a sidebar stand-in and completes its
/// first load with a hub that has no items, so the rail has nothing to render
/// and the screen's "focus the rail when ready" request stays armed.
Future<_GatedDiscover> _pumpGatedDiscover(WidgetTester tester) async {
  await SettingsService.getInstance();
  tester.view.devicePixelRatio = 1.0;
  tester.view.physicalSize = const Size(1280, 720);
  addTearDown(() {
    tester.view.resetDevicePixelRatio();
    tester.view.resetPhysicalSize();
  });

  final client = _GatedHubsFakeClient(
    hubs: [MediaHub(id: 'hub_1', title: 'Recommended', type: 'movie', items: const [], size: 0)],
  );
  final multiServerProvider = testMultiServer(clients: [client]).provider;
  final hiddenLibrariesProvider = HiddenLibrariesProvider();
  final librariesProvider = LibrariesProvider();
  final watchTogetherProvider = WatchTogetherProvider();
  final companionRemoteProvider = CompanionRemoteProvider();
  final db = AppDatabase.forTesting(NativeDatabase.memory());
  final connectionRegistry = _FakeConnectionRegistry(db);
  final profileConnectionRegistry = _FakeProfileConnectionRegistry(db);
  final storage = await StorageService.getInstance();
  final plexHome = PlexHomeService(
    connections: connectionRegistry,
    profileConnections: profileConnectionRegistry,
    storage: storage,
    plexHomeUserFetcher: (_) async => const [],
  );
  final activeProfileProvider = ActiveProfileProvider(
    registry: _FakeProfileRegistry(db),
    plexHome: plexHome,
    connections: connectionRegistry,
    profileConnections: profileConnectionRegistry,
    storage: storage,
  );
  final discoverProvider = DiscoverProvider(
    multiServerProvider,
    hiddenLibrariesProvider,
    librariesProvider,
    profileId: null,
    isProfileBinding: () => false,
  );
  final sidebarItem = FocusNode(debugLabel: 'sidebar_item');
  final otherSidebarItem = FocusNode(debugLabel: 'other_sidebar_item');
  addTearDown(() async {
    sidebarItem.dispose();
    otherSidebarItem.dispose();
    discoverProvider.dispose();
    activeProfileProvider.dispose();
    companionRemoteProvider.dispose();
    watchTogetherProvider.dispose();
    librariesProvider.dispose();
    hiddenLibrariesProvider.dispose();
    // multiServerProvider + its manager are torn down by testMultiServer.
    await plexHome.dispose();
    await db.close();
  });

  await tester.pumpWidget(
    TranslationProvider(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<MultiServerProvider>.value(value: multiServerProvider),
          ChangeNotifierProvider<HiddenLibrariesProvider>.value(value: hiddenLibrariesProvider),
          ChangeNotifierProvider<LibrariesProvider>.value(value: librariesProvider),
          ChangeNotifierProvider<DiscoverProvider>.value(value: discoverProvider),
          ChangeNotifierProvider<WatchTogetherProvider>.value(value: watchTogetherProvider),
          ChangeNotifierProvider<CompanionRemoteProvider>.value(value: companionRemoteProvider),
          ChangeNotifierProvider<ActiveProfileProvider>.value(value: activeProfileProvider),
        ],
        child: InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: Row(
              children: [
                Column(
                  children: [
                    Focus(focusNode: sidebarItem, child: const SizedBox(width: 80, height: 360)),
                    Focus(focusNode: otherSidebarItem, child: const SizedBox(width: 80, height: 360)),
                  ],
                ),
                MainScreenFocusScope(
                  focusSidebar: () {},
                  sideNavigationWidth: SideNavigationRailState.expandedWidth,
                  reservedSideNavigationWidth: SideNavigationRailState.tvCollapsedWidth,
                  foregroundLeft: 80,
                  foregroundWidth: 1200,
                  viewportWidth: 1280,
                  child: const SizedBox(width: 1200, height: 720, child: DiscoverScreen()),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
  await tester.pump();
  client.release();
  await tester.pump();
  await tester.pump();
  expect(find.byType(TvBrowseRail), findsNothing, reason: 'an empty-items hub gives the rail nothing to show');
  return _GatedDiscover(client: client, sidebarItem: sidebarItem, otherSidebarItem: otherSidebarItem);
}

/// Mounts [DiscoverScreen] in the smallest graph both layout branches need, so
/// one test can compare the TV and non-TV chrome without rebuilding it twice.
Future<HomeLayoutProvider?> _pumpDiscoverShell(
  WidgetTester tester, {
  required bool isTv,
  bool customize = false,
  List<MediaHub> hubs = const [],
  List<MediaItem> onDeck = const [],
  List<Profile> profiles = const [],
  String? activeProfileId,
  Size size = const Size(1280, 720),
  WatchTogetherProvider? watchTogether,
  TargetPlatform? platform,
  HomeFavoritesSnapshot? homeSnapshot,
  HomeTasteProvider? homeTaste,
  WatchStateStore? watchState,
  _FakeMediaServerClient? fakeClient,
}) async {
  TvDetectionService.debugSetAppleTVOverride(isTv);
  await SettingsService.getInstance();
  tester.view.devicePixelRatio = 1.0;
  tester.view.physicalSize = size;
  addTearDown(() {
    tester.view.resetDevicePixelRatio();
    tester.view.resetPhysicalSize();
  });

  final client = fakeClient ?? _FakeMediaServerClient(hubs: hubs, onDeck: onDeck);
  final manager = MultiServerManager()..debugRegisterClientForTesting(client);
  final multiServerProvider = testMultiServerProvider(manager);
  final hiddenLibrariesProvider = HiddenLibrariesProvider();
  final librariesProvider = LibrariesProvider();
  final watchTogetherProvider = watchTogether ?? WatchTogetherProvider();
  final companionRemoteProvider = CompanionRemoteProvider();

  final db = AppDatabase.forTesting(NativeDatabase.memory());
  final storage = await StorageService.getInstance();
  if (activeProfileId != null) await storage.setActiveProfileId(activeProfileId);
  final layout = customize ? HomeLayoutProvider(storage: storage, profileId: 'custom-profile') : null;
  final connectionRegistry = _FakeConnectionRegistry(db);
  final profileConnectionRegistry = _FakeProfileConnectionRegistry(db);
  final plexHome = PlexHomeService(
    connections: connectionRegistry,
    profileConnections: profileConnectionRegistry,
    storage: storage,
    plexHomeUserFetcher: (_) async => const [],
  );
  final activeProfileProvider = ActiveProfileProvider(
    registry: _FakeProfileRegistry(db, profiles),
    plexHome: plexHome,
    connections: connectionRegistry,
    profileConnections: profileConnectionRegistry,
    storage: storage,
  );
  final discoverProvider = DiscoverProvider(
    multiServerProvider,
    hiddenLibrariesProvider,
    librariesProvider,
    profileId: null,
    isProfileBinding: () => activeProfileProvider.isBinding,
  );

  if (profiles.isNotEmpty) await activeProfileProvider.initialize();

  addTearDown(() async {
    discoverProvider.dispose();
    layout?.dispose();
    activeProfileProvider.dispose();
    companionRemoteProvider.dispose();
    watchTogetherProvider.dispose();
    librariesProvider.dispose();
    hiddenLibrariesProvider.dispose();
    multiServerProvider.dispose();
    await plexHome.dispose();
    await db.close();
  });

  await tester.pumpWidget(
    TranslationProvider(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<MultiServerProvider>.value(value: multiServerProvider),
          ChangeNotifierProvider<HiddenLibrariesProvider>.value(value: hiddenLibrariesProvider),
          ChangeNotifierProvider<LibrariesProvider>.value(value: librariesProvider),
          ChangeNotifierProvider<WatchTogetherProvider>.value(value: watchTogetherProvider),
          ChangeNotifierProvider<CompanionRemoteProvider>.value(value: companionRemoteProvider),
          ChangeNotifierProvider<ActiveProfileProvider>.value(value: activeProfileProvider),
          ChangeNotifierProvider<DiscoverProvider>.value(value: discoverProvider),
          if (layout != null) ChangeNotifierProvider<HomeLayoutProvider>.value(value: layout),
          if (homeSnapshot != null) ChangeNotifierProvider<HomeFavoritesSnapshot>.value(value: homeSnapshot),
          if (homeTaste != null) ChangeNotifierProvider<HomeTasteProvider>.value(value: homeTaste),
          if (watchState != null) ChangeNotifierProvider<WatchStateStore>.value(value: watchState),
        ],
        child: InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark).copyWith(platform: platform),
            home: MainScreenFocusScope(
              focusSidebar: () {},
              sideNavigationWidth: SideNavigationRailState.expandedWidth,
              reservedSideNavigationWidth: SideNavigationRailState.tvCollapsedWidth,
              foregroundLeft: 0,
              foregroundWidth: 1280,
              viewportWidth: 1280,
              child: const DiscoverScreen(),
            ),
          ),
        ),
      ),
    ),
  );

  // Bounded pumps only: the hero runs periodic auto-scroll timers, so
  // pumpAndSettle would never settle.
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 100));
  return layout;
}

class _FakeMediaServerClient implements MediaServerClient {
  final List<MediaHub> hubs;
  final List<MediaItem> onDeck;

  _FakeMediaServerClient({required this.hubs, this.onDeck = const []});

  @override
  ServerId get serverId => ServerId('server_1');

  @override
  String? get serverName => 'Server';

  @override
  MediaBackend get backend => MediaBackend.plex;

  @override
  ServerCapabilities get capabilities => ServerCapabilities.plex;

  @override
  Future<List<MediaItem>> fetchContinueWatching({int? count = 20, Set<String> excludedLibraryIds = const {}}) async =>
      count == null ? onDeck : onDeck.take(count).toList();

  @override
  Future<List<MediaHub>> fetchGlobalHubs({
    int limit = defaultHubPreviewLimit,
    bool includePlaybackHubs = true,
    HubFetchDiagnostics? diagnostics,
  }) async => hubs;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _FavoriteHomeClient extends _FakeMediaServerClient {
  _FavoriteHomeClient() : super(hubs: const []);
  int favoriteCalls = 0;

  @override
  MediaBackend get backend => MediaBackend.jellyfin;
  @override
  ServerCapabilities get capabilities => ServerCapabilities.jellyfin;
  @override
  Future<List<MediaLibrary>> fetchLibraries() async => const [];
  @override
  Future<LibraryPage<MediaItem>> fetchLibraryPagedContent(
    String libraryId, {
    required LibraryQuery query,
    MediaKind? libraryKind,
    AbortController? abort,
  }) async {
    favoriteCalls++;
    return LibraryPage(
      items: [
        testMediaItem(
          id: 'saved-outside-home',
          title: 'Saved outside Home',
          backend: MediaBackend.jellyfin,
          kind: MediaKind.movie,
          serverId: 'server_1',
          libraryId: libraryId,
          viewCount: 0,
          raw: const {
            'UserData': {'Played': false},
          },
        ),
      ],
      totalCount: 1,
    );
  }
}

/// Hub client that holds each fetch open until [release], so a test can act
/// while a Discover load pass is genuinely in flight.
class _GatedHubsFakeClient implements MediaServerClient {
  _GatedHubsFakeClient({required this.hubs});

  final List<MediaHub> hubs;
  int hubCalls = 0;
  final _gates = <Completer<List<MediaHub>>>[];

  void release() {
    for (final gate in _gates.where((g) => !g.isCompleted)) {
      gate.complete(hubs);
    }
  }

  @override
  ServerId get serverId => ServerId('server_1');

  @override
  String? get serverName => 'Server';

  @override
  MediaBackend get backend => MediaBackend.plex;

  @override
  ServerCapabilities get capabilities => ServerCapabilities.plex;

  @override
  Future<List<MediaItem>> fetchContinueWatching({int? count = 20, Set<String> excludedLibraryIds = const {}}) async =>
      const [];

  @override
  Future<List<MediaLibrary>> fetchLibraries() async => const [];

  @override
  Future<List<MediaHub>> fetchGlobalHubs({
    int limit = defaultHubPreviewLimit,
    bool includePlaybackHubs = true,
    HubFetchDiagnostics? diagnostics,
  }) {
    hubCalls++;
    final gate = Completer<List<MediaHub>>();
    _gates.add(gate);
    return gate.future;
  }

  /// Reached by `MultiServerManager.dispose()` via `_closeClientGracefully`.
  /// Releases any gate still open so teardown cannot leave a fetch hanging.
  @override
  void close() => release();

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _FakeProfileRegistry extends ProfileRegistry {
  _FakeProfileRegistry(super.db, [this.profiles = const []]);
  final List<Profile> profiles;

  @override
  Stream<List<Profile>> watchProfiles() => Stream.value(profiles);

  @override
  Future<List<Profile>> list() async => profiles;
}

class _FakeConnectionRegistry extends ConnectionRegistry {
  _FakeConnectionRegistry(super.db);

  @override
  Stream<List<Connection>> watchConnections() => Stream.value(const []);

  @override
  Future<List<Connection>> list() async => const [];
}

class _FakeProfileConnectionRegistry extends ProfileConnectionRegistry {
  _FakeProfileConnectionRegistry(super.db);

  @override
  Stream<List<ProfileConnection>> watchAll() => Stream.value(const []);
}
