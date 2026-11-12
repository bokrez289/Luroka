import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/media/library_query.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_filter.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/catalog_item_ref.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/models/catalog/catalog_item.dart';
import 'package:luroka/providers/catalog_sources_provider.dart';
import 'package:luroka/services/catalog/catalog_source.dart';
import 'package:luroka/media/media_library.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/media/server_capabilities.dart';
import 'package:luroka/providers/libraries_provider.dart';
import 'package:luroka/providers/home_favorites_snapshot.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/screens/favorites_screen.dart';
import 'package:luroka/screens/media_detail_screen.dart';
import 'package:luroka/services/multi_server_manager.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/utils/media_server_http_client.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:provider/provider.dart';
import 'package:luroka/widgets/focusable_media_card.dart';

import '../test_helpers/media_items.dart';
import '../test_helpers/multi_server_fixtures.dart';
import '../test_helpers/prefs.dart';
import '../test_helpers/theme.dart';

const _serverId = 'srv-jellyfin';

class _PlexWatchlist implements CatalogSource {
  final changes = WatchlistChangeNotifier();
  final pages = <int>[];
  @override
  CatalogSourceId get id => CatalogSourceId.plex;
  @override
  Listenable get watchlistChanges => changes;
  @override
  Future<CatalogPage> fetchRow(CatalogRowId row, {int page = 1, int limit = 25}) async {
    pages.add(page);
    return CatalogPage(
      items: [
        CatalogItem(
          source: CatalogSourceId.plex,
          kind: MediaKind.show,
          title: 'Plex show $page',
          ids: CatalogItemIds(plex: '$page'),
        ),
      ],
      hasMore: page == 1,
    );
  }

  @override
  void dispose() => changes.dispose();
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _CatalogSources extends CatalogSourcesProvider {
  _CatalogSources(this.source);
  final CatalogSource source;
  @override
  List<CatalogSource> get connectedSources => [source];
}

class _FavoriteCall {
  const _FavoriteCall(this.libraryId, this.query);

  final String libraryId;
  final LibraryQuery query;
}

class _RouteObserver extends NavigatorObserver {
  Route<dynamic>? pushed;
  Widget? page;
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (previousRoute == null) return;
    pushed = route;
    final context = navigator!.context;
    if (route is MaterialPageRoute<bool>) {
      page = route.builder(context);
    } else if (route is PageRouteBuilder<bool>) {
      page = route.pageBuilder(context, const AlwaysStoppedAnimation(1), const AlwaysStoppedAnimation(1));
    }
    scheduleMicrotask(() {
      if (route.isActive) navigator?.removeRoute(route);
    });
  }
}

class _FavoritesClient implements MediaServerClient {
  _FavoritesClient(this.favoritesByLibrary);

  final Map<String, List<MediaItem>> favoritesByLibrary;
  final calls = <_FavoriteCall>[];
  final gates = <String, Completer<void>>{};

  @override
  ServerId get serverId => ServerId(_serverId);

  @override
  String get serverName => 'Jellyfin';

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
    calls.add(_FavoriteCall(libraryId, query));
    await gates[libraryId]?.future;
    final all = favoritesByLibrary[libraryId] ?? const <MediaItem>[];
    final start = query.offset;
    final end = (start + query.limit).clamp(0, all.length);
    return LibraryPage(
      items: start >= all.length ? const [] : all.sublist(start, end),
      totalCount: all.length,
      offset: start,
    );
  }

  @override
  void close() {}

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _PlexClient extends _FavoritesClient {
  _PlexClient() : super(const {});
  @override
  MediaBackend get backend => MediaBackend.plex;
  @override
  ServerCapabilities get capabilities => ServerCapabilities.plex;
}

MediaLibrary _library(String id, String title) => MediaLibrary(
  id: id,
  backend: MediaBackend.jellyfin,
  title: title,
  kind: MediaKind.movie,
  serverId: _serverId,
  serverName: 'Jellyfin',
);

MediaItem _favorite(String id, String title, String libraryId) => testMediaItem(
  id: id,
  backend: MediaBackend.jellyfin,
  title: title,
  libraryId: libraryId,
  libraryTitle: libraryId,
  serverId: _serverId,
  serverName: 'Jellyfin',
);

Future<void> _pumpFavorites(
  WidgetTester tester, {
  required _FavoritesClient client,
  required List<MediaLibrary> libraries,
  CatalogSourcesProvider? catalogSources,
  bool settle = true,
  NavigatorObserver? observer,
  HomeFavoritesSnapshot? homeSnapshot,
}) async {
  await SettingsService.getInstance();
  await StorageService.getInstance();
  final librariesProvider = LibrariesProvider();
  await librariesProvider.updateLibraryOrder(libraries);
  addTearDown(librariesProvider.dispose);

  final manager = MultiServerManager();
  manager.debugRegisterClientForTesting(client);
  final multiServer = testMultiServerProvider(manager);
  addTearDown(() {
    multiServer.dispose();
    manager.dispose();
  });

  await tester.pumpWidget(
    TranslationProvider(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<LibrariesProvider>.value(value: librariesProvider),
          ChangeNotifierProvider<MultiServerProvider>.value(value: multiServer),
          if (homeSnapshot != null) ChangeNotifierProvider<HomeFavoritesSnapshot>.value(value: homeSnapshot),
          if (catalogSources != null) ChangeNotifierProvider<CatalogSourcesProvider>.value(value: catalogSources),
        ],
        child: MaterialApp(
          theme: ThemeData(extensions: const [testMonoTokens]),
          navigatorObservers: [?observer],
          home: const FavoritesScreen(),
        ),
      ),
    ),
  );
  if (settle) {
    await tester.pumpAndSettle();
  } else {
    for (var i = 0; i < 8; i++) {
      await tester.pump(const Duration(milliseconds: 30));
    }
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    LocaleSettings.setLocaleSync(AppLocale.en);
  });

  test('a Plex-only profile exposes Favorites for its Watchlist', () {
    final manager = MultiServerManager()..debugRegisterClientForTesting(_PlexClient());
    final provider = testMultiServerProvider(manager);
    expect(provider.hasUserFavorites, isTrue);
    provider.dispose();
    manager.dispose();
  });

  testWidgets('Favorites hands already loaded items to the profile Spotlight without extra requests', (tester) async {
    final snapshot = HomeFavoritesSnapshot();
    addTearDown(snapshot.dispose);
    final client = _FavoritesClient({
      'movies': [_favorite('a', 'Saved movie', 'movies')],
    });
    await _pumpFavorites(tester, client: client, libraries: [_library('movies', 'Movies')], homeSnapshot: snapshot);
    expect(snapshot.items.map((item) => item.id), ['a']);
    expect(client.calls, hasLength(1));
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('Favorites combines Jellyfin favorites and every Plex Watchlist page', (tester) async {
    final plex = _PlexWatchlist();
    final sources = _CatalogSources(plex);
    addTearDown(() {
      sources.dispose();
      plex.dispose();
    });
    await _pumpFavorites(
      tester,
      client: _FavoritesClient({
        'movies': [_favorite('a', 'Jellyfin movie', 'movies')],
      }),
      libraries: [_library('movies', 'Movies')],
      catalogSources: sources,
    );
    final cards = tester
        .widgetList<FocusableMediaCard>(find.byType(FocusableMediaCard))
        .map((card) => card.item as MediaItem)
        .toList();
    expect(cards.map((item) => item.displayTitle), ['Jellyfin movie', 'Plex show 1', 'Plex show 2']);
    expect(cards.where((item) => item.isCatalogItem), hasLength(2));
    expect(plex.pages, [1, 2]);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('duplicate favorite movies expose one card with a library chooser', (tester) async {
    final a = _favorite('a', 'Shared movie', 'HD').copyWith(kind: MediaKind.movie, year: 2026);
    final b = _favorite('b', 'Shared movie', '4K').copyWith(kind: MediaKind.movie, year: 2026);
    await _pumpFavorites(
      tester,
      client: _FavoritesClient({
        'HD': [a],
        '4K': [b],
      }),
      libraries: [_library('HD', 'HD'), _library('4K', '4K')],
    );
    expect(find.byType(FocusableMediaCard), findsOneWidget);
    tester.widget<FocusableMediaCard>(find.byType(FocusableMediaCard)).onTap!();
    await tester.pumpAndSettle();
    expect(find.text('HD'), findsOneWidget);
    expect(find.text('4K'), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  for (final tv in [false, true]) {
    testWidgets('favorites ${tv ? 'TV' : 'phone'} opens the known copy before late libraries finish', (tester) async {
      TvDetectionService.debugSetAppleTVOverride(tv);
      addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
      final gate = Completer<void>();
      final observer = _RouteObserver();
      final a = _favorite('a', 'Shared movie', 'HD').copyWith(kind: MediaKind.movie, year: 2026);
      final b = _favorite('b', 'Shared movie', '4K').copyWith(kind: MediaKind.movie, year: 2026);
      final client = _FavoritesClient({
        'HD': [a],
        '4K': [b],
      })..gates['4K'] = gate;
      await _pumpFavorites(
        tester,
        client: client,
        libraries: [_library('HD', 'HD'), _library('4K', '4K')],
        settle: false,
        observer: observer,
      );
      expect(find.byType(FocusableMediaCard), findsOneWidget);
      tester.widget<FocusableMediaCard>(find.byType(FocusableMediaCard)).onTap!();
      await tester.pump();
      expect(observer.pushed, isNotNull);
      final details = observer.page;
      expect(details, isA<MediaDetailScreen>());
      expect((details as MediaDetailScreen).metadata.globalKey, a.globalKey);
      gate.complete();
      await tester.pumpWidget(const SizedBox.shrink());
    });
  }

  testWidgets('loads favorites across libraries, filters server-side, and sorts by title', (tester) async {
    final client = _FavoritesClient({
      'movies': [_favorite('b', 'Beta Movie', 'movies'), _favorite('a', 'Alpha Movie', 'movies')],
      'shows': [_favorite('c', 'Charlie Show', 'shows')],
    });

    await _pumpFavorites(tester, client: client, libraries: [_library('movies', 'Movies'), _library('shows', 'Shows')]);

    expect(find.text('Alpha Movie'), findsWidgets);
    expect(find.text('Beta Movie'), findsOneWidget);
    expect(find.text('Charlie Show'), findsOneWidget);
    expect(client.calls, hasLength(2));
    for (final call in client.calls) {
      final filter = call.query.filters.single;
      expect(filter.field, MediaFilterField.favorite);
      expect(filter.values, ['1']);
      expect(call.query.sort?.field, 'title');
      expect(call.query.sort?.direction, LibrarySortDirection.ascending);
      expect(call.query.limit, 100);
    }

    final titles = tester
        .widgetList<FocusableMediaCard>(find.byType(FocusableMediaCard))
        .map((card) => (card.item as MediaItem).displayTitle)
        .toList();
    expect(titles, ['Alpha Movie', 'Beta Movie', 'Charlie Show']);
  });

  testWidgets('anime recognizes any grouped library copy without additional server calls', (tester) async {
    final a = _favorite('a', 'Shared movie', 'mixed').copyWith(kind: MediaKind.movie, year: 2026);
    final b = _favorite('b', 'Shared movie', 'anime').copyWith(kind: MediaKind.movie, year: 2026);
    final client = _FavoritesClient({
      'mixed': [a],
      'anime': [b],
    });
    await _pumpFavorites(
      tester,
      client: client,
      libraries: [_library('mixed', 'Movies'), _library('anime', 'Anime Movies')],
    );
    final before = client.calls.length;
    await tester.tap(find.text(t.animeFavorites.filter));
    await tester.pumpAndSettle();
    expect(find.byType(FocusableMediaCard), findsOneWidget);
    expect(client.calls, hasLength(before));
    expect(tester.takeException(), isNull);
  });

  testWidgets('reloads when the library set changes', (tester) async {
    final client = _FavoritesClient({
      'movies': [_favorite('a', 'Alpha Movie', 'movies')],
      'shows': [_favorite('c', 'Charlie Show', 'shows')],
    });

    await _pumpFavorites(tester, client: client, libraries: [_library('movies', 'Movies')]);
    expect(find.text('Alpha Movie'), findsWidgets);
    expect(find.text('Charlie Show'), findsNothing);

    final librariesProvider = tester.element(find.byType(FavoritesScreen)).read<LibrariesProvider>();
    await librariesProvider.updateLibraryOrder([_library('movies', 'Movies'), _library('shows', 'Shows')]);
    await tester.pumpAndSettle();

    expect(find.text('Charlie Show'), findsOneWidget);
    expect(client.calls.map((call) => call.libraryId), containsAll(['movies', 'shows']));
  });
}
