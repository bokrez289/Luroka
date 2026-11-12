import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/exceptions/media_server_exceptions.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/media/library_query.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_library.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/media/media_studio.dart';
import 'package:luroka/providers/hidden_libraries_provider.dart';
import 'package:luroka/providers/libraries_provider.dart';
import 'package:luroka/providers/studios_provider.dart';
import 'package:luroka/utils/media_server_http_client.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/screens/studio_browser_screen.dart';
import 'package:luroka/screens/media_detail_screen.dart';
import 'package:luroka/widgets/studio_spotlight.dart';
import 'package:luroka/widgets/focusable_media_card.dart';
import 'package:luroka/media/studio_sort.dart';
import 'package:luroka/widgets/focusable_tab_chip.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:provider/provider.dart';
import '../test_helpers/multi_server_fixtures.dart';
import '../test_helpers/prefs.dart';

class StudioTestClient extends Fake implements MediaServerClient, StudioBrowserClient, LatestEpisodeAddedClient {
  StudioTestClient(this.id);
  final String id;
  final calls = <(String, MediaKind)>[];
  final facetAborts = <AbortController?>[];
  final facetLimits = <int>[];
  final contentCalls = <LibraryQuery>[];
  final listings = <String, List<MediaStudio>>{};
  Future<LibraryPage<MediaStudio>> Function()? gate;
  final facetGates = <String, Completer<void>>{};
  List<MediaItem> content = [];
  final libraryContent = <String, List<MediaItem>>{};
  final latestEpisodeDates = <String, int>{};
  final episodeDateCalls = <String>[];
  bool failEpisodeDates = false;
  bool failShows = false;
  int facetFailures = 0;
  Future<void> Function()? contentGate;
  Future<void> Function(LibraryQuery)? pageGate;
  Future<void> Function(String, LibraryQuery)? libraryPageGate;
  @override
  ServerId get serverId => ServerId(id);
  @override
  String get serverName => id;
  @override
  MediaBackend get backend => MediaBackend.plex;
  @override
  Future<LibraryPage<MediaStudio>> fetchStudios(
    String libraryId, {
    required MediaKind kind,
    int offset = 0,
    int limit = 100,
    AbortController? abort,
  }) async {
    calls.add((libraryId, kind));
    facetAborts.add(abort);
    facetLimits.add(limit);
    if (facetFailures > 0) {
      facetFailures--;
      throw StateError('temporary facet failure');
    }
    await facetGates[libraryId]?.future;
    if (gate != null) return gate!();
    final rows = listings[libraryId] ?? [];
    return LibraryPage(items: rows.skip(offset).take(limit).toList(), totalCount: rows.length, offset: offset);
  }

  @override
  Future<LibraryPage<MediaItem>> fetchLibraryPagedContent(
    String libraryId, {
    required LibraryQuery query,
    MediaKind? libraryKind,
    AbortController? abort,
  }) async {
    contentCalls.add(query);
    await contentGate?.call();
    await pageGate?.call(query);
    await libraryPageGate?.call(libraryId, query);
    if (failShows && query.kind == MediaKind.show) throw StateError('temporary failure');
    final items = (libraryContent[libraryId] ?? content)
        .where(
          (item) =>
              item.kind == query.kind &&
              (query.search == null || (item.title ?? '').toLowerCase().contains(query.search!.toLowerCase())),
        )
        .toList();
    final descending = query.sort?.direction == LibrarySortDirection.descending;
    final sort = switch (query.sort?.field) {
      'year' || 'productionYear' => descending ? StudioSort.newest : StudioSort.oldest,
      'addedAt' => StudioSort.recentlyAdded,
      'rating' => StudioSort.rating,
      'episode.addedAt' => StudioSort.recentlyAddedEpisode,
      _ => descending ? StudioSort.titleDescending : StudioSort.titleAscending,
    };
    items.sort(
      sort == StudioSort.recentlyAddedEpisode && latestEpisodeDates.isNotEmpty
          ? (a, b) => (latestEpisodeDates[b.id] ?? 0).compareTo(latestEpisodeDates[a.id] ?? 0)
          : sort.compare,
    );
    return LibraryPage(
      items: items.skip(query.offset).take(query.limit).toList(),
      totalCount: items.length,
      offset: query.offset,
    );
  }

  @override
  Future<int?> fetchLatestEpisodeAddedAt(String seriesId, {AbortController? abort}) async {
    episodeDateCalls.add(seriesId);
    if (failEpisodeDates) throw StateError('temporary episode date failure');
    return latestEpisodeDates[seriesId];
  }

  @override
  void close() {}
}

/// Captures the real navigation target without mounting the unrelated detail
/// screen's playback/download dependencies.
class StudioNavigationObserver extends NavigatorObserver {
  final opened = <MediaItem>[];

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route is! PageRouteBuilder<bool>) return;
    final page = route.pageBuilder(
      navigator!.context,
      const AlwaysStoppedAnimation<double>(1),
      const AlwaysStoppedAnimation<double>(0),
    );
    if (page is MediaDetailScreen) {
      opened.add(page.metadata);
      scheduleMicrotask(() => navigator?.removeRoute(route));
    }
  }
}

class StudioTestLibraries extends ChangeNotifier implements LibrariesProvider {
  StudioTestLibraries(this.rows);
  List<MediaLibrary> rows;
  @override
  List<MediaLibrary> get libraries => rows;
  void changed() => notifyListeners();
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

Future<void> settleStudios(StudiosProvider provider) async {
  for (var i = 0; i < 20; i++) {
    await Future<void>.delayed(Duration.zero);
    if (!provider.loading && i > 0) return;
  }
}

MediaLibrary studioLibrary(String id, {MediaKind kind = MediaKind.movie}) =>
    MediaLibrary(id: id, backend: MediaBackend.plex, title: id, kind: kind, serverId: 'server');

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    await StorageService.getInstance();
    await SettingsService.getInstance();
  });

  test('large studio facets stop after one page and resume on demand without losing late brands', () async {
    final client = StudioTestClient('server')
      ..listings['movies'] = [
        for (var i = 0; i < 500; i++) MediaStudio(id: '$i', name: 'Unlisted $i'),
        const MediaStudio(id: 'late', name: 'Pixar'),
      ];
    final libraries = StudioTestLibraries([studioLibrary('movies')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(
      libraries: libraries,
      hidden: hidden,
      servers: testMultiServer(clients: [client]).provider,
      isBinding: () => false,
    );
    addTearDown(provider.dispose);
    addTearDown(hidden.dispose);
    addTearDown(libraries.dispose);
    provider.ensureLoaded();
    await settleStudios(provider);
    expect(client.calls, hasLength(1));
    expect(provider.groups, isEmpty);
    expect(provider.hasMore, isTrue);
    provider.loadMore();
    await settleStudios(provider);
    expect(client.calls, hasLength(2));
    expect(provider.groups.single.name, 'Pixar');
    expect(provider.hasMore, isFalse);
  });

  test('a discovered studio may have additional aliases beyond the bounded first facet page', () async {
    final client = StudioTestClient('server')
      ..listings['movies'] = [
        const MediaStudio(id: 'pixar-first', name: 'Pixar'),
        for (var i = 0; i < 499; i++) MediaStudio(id: 'unlisted-$i', name: 'Unlisted $i'),
        const MediaStudio(id: 'pixar-later', name: 'Pixar Animation Studios'),
      ];
    final libraries = StudioTestLibraries([studioLibrary('movies')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(
      libraries: libraries,
      hidden: hidden,
      servers: testMultiServer(clients: [client]).provider,
      isBinding: () => false,
    );
    addTearDown(provider.dispose);
    addTearDown(hidden.dispose);
    addTearDown(libraries.dispose);
    provider.ensureLoaded();
    await settleStudios(provider);
    expect(client.calls, hasLength(1));
    expect(provider.group('pixar')!.sources.map((source) => source.studio.id), ['pixar-first']);
    expect(provider.hasMore, isTrue);
    provider.loadMore();
    await settleStudios(provider);
    expect(client.calls, hasLength(2));
    expect(provider.group('pixar')!.sources.map((source) => source.studio.id), ['pixar-first', 'pixar-later']);
    expect(provider.hasMore, isFalse);
  });

  testWidgets('opening Pixar discovers later movie libraries without expanding Home discovery', (tester) async {
    final queriedLibraries = <String>{};
    final client = StudioTestClient('server')
      ..libraryPageGate = (library, _) async {
        queriedLibraries.add(library);
      }
      ..listings['small'] = [const MediaStudio(id: 'pixar', name: 'Pixar')]
      ..listings['large'] = [
        for (var i = 0; i < 500; i++) MediaStudio(id: '$i', name: 'Unlisted $i'),
        const MediaStudio(id: 'pixar', name: 'Pixar'),
      ]
      ..libraryContent['small'] = [
        MediaItem(id: 'two', backend: MediaBackend.plex, kind: MediaKind.movie, title: 'Inside Out 2', year: 2024),
      ]
      ..libraryContent['large'] = [
        MediaItem(id: 'one', backend: MediaBackend.plex, kind: MediaKind.movie, title: 'Inside Out', year: 2015),
      ];
    final libraries = StudioTestLibraries([studioLibrary('small'), studioLibrary('large')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(
      libraries: libraries,
      hidden: hidden,
      servers: testMultiServer(clients: [client]).provider,
      isBinding: () => false,
    );
    addTearDown(provider.dispose);
    addTearDown(hidden.dispose);
    addTearDown(libraries.dispose);
    provider.ensureLoaded();
    await tester.runAsync(() => settleStudios(provider));
    expect(client.calls, hasLength(2));
    expect(provider.group('pixar')!.sources, hasLength(1));
    await tester.pumpWidget(
      ChangeNotifierProvider<StudiosProvider>.value(
        value: provider,
        child: InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: const StudioBrowserScreen(studioKey: 'pixar'),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(client.calls, hasLength(3));
    expect(provider.hasMore, isFalse);
    expect(provider.group('pixar')!.sources, hasLength(2));
    expect(queriedLibraries, containsAll(['small', 'large']));
    expect(tester.takeException(), isNull);
  });

  testWidgets('a timed-out studio request is cancelled before another library starts', (tester) async {
    final stalled = Completer<LibraryPage<MediaStudio>>();
    final client = StudioTestClient('server')..gate = () => stalled.future;
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('movies')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await tester.pump();
    expect(client.facetAborts.single?.isAborted, isFalse);
    await tester.pump(const Duration(seconds: 12));
    expect(client.facetAborts.single?.isAborted, isTrue);
    expect(provider.failed, isTrue);
    stalled.complete(const LibraryPage(items: [], totalCount: 0, offset: 0));
    provider.dispose();
    await tester.pump();
  });

  test('publishes available studios while another library is still loading', () async {
    final stalled = Completer<void>();
    final client = StudioTestClient('server')
      ..listings['fast'] = [const MediaStudio(id: 'a24', name: 'A24')]
      ..listings['slow'] = [const MediaStudio(id: 'pixar', name: 'Pixar')]
      ..facetGates['slow'] = stalled;
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('fast'), studioLibrary('slow')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    for (var i = 0; i < 20 && provider.groups.isEmpty; i++) {
      await Future<void>.delayed(Duration.zero);
    }
    expect(provider.loading, isTrue);
    expect(provider.groups.map((group) => group.key), contains('a24'));
    stalled.complete();
    await settleStudios(provider);
    expect(provider.groups.map((group) => group.key), containsAll(['a24', 'pixar']));
  });

  test('retries a failed cold-start studio discovery automatically', () async {
    final client = StudioTestClient('server')
      ..facetFailures = 1
      ..listings['movies'] = [const MediaStudio(id: 'a24', name: 'A24')];
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('movies')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await settleStudios(provider);
    expect(provider.failed, isTrue);
    await Future<void>.delayed(const Duration(milliseconds: 2200));
    await settleStudios(provider);
    expect(provider.groups.map((group) => group.key), contains('a24'));
    expect(provider.failed, isFalse);
  });

  test('studio retries keep completed libraries and use larger facet pages', () async {
    final client = StudioTestClient('server')
      ..facetFailures = 1
      ..listings['failed'] = [const MediaStudio(id: 'a24', name: 'A24')]
      ..listings['complete'] = [const MediaStudio(id: 'pixar', name: 'Pixar')];
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('failed'), studioLibrary('complete')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await settleStudios(provider);
    expect(provider.groups.map((group) => group.key), contains('pixar'));
    await Future<void>.delayed(const Duration(milliseconds: 2200));
    await settleStudios(provider);
    expect(provider.groups.map((group) => group.key), containsAll(['a24', 'pixar']));
    expect(client.calls.where((call) => call.$1 == 'complete'), hasLength(1));
    expect(client.calls.where((call) => call.$1 == 'failed'), hasLength(2));
    expect(client.facetLimits, everyElement(500));
  });

  test('studio title lookup searches each matching library rather than draining catalogs', () async {
    final selected = MediaItem(
      id: 'one',
      backend: MediaBackend.plex,
      kind: MediaKind.movie,
      title: 'Dune',
      year: 2021,
      serverId: 'server',
      libraryId: 'one',
    );
    final client = StudioTestClient('server')
      ..listings['one'] = [const MediaStudio(id: '42', name: 'A24')]
      ..listings['two'] = [const MediaStudio(id: '42', name: 'A24')]
      ..libraryContent['one'] = [selected]
      ..libraryContent['two'] = [
        MediaItem(id: 'two', backend: MediaBackend.plex, kind: MediaKind.movie, title: 'Dune', year: 2021),
      ];
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('one'), studioLibrary('two')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await settleStudios(provider);
    final copies = await provider.findTitleCopies(provider.group('a24')!, selected, AbortController());
    expect(copies.map((item) => item.libraryId), containsAll(['one', 'two']));
    expect(client.contentCalls.every((query) => query.search == 'Dune'), isTrue);
  });

  test('a single studio source opens its title without a network lookup', () async {
    final selected = MediaItem(
      id: 'one',
      backend: MediaBackend.plex,
      kind: MediaKind.movie,
      title: 'Dune',
      serverId: 'server',
      libraryId: 'one',
    );
    final client = StudioTestClient('server')..listings['one'] = [const MediaStudio(id: '42', name: 'A24')];
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('one')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await settleStudios(provider);
    expect(await provider.findTitleCopies(provider.group('a24')!, selected, AbortController()), [selected]);
    expect(client.contentCalls, isEmpty);
  });

  test('studio copy search retries a transient connection failure for that library', () async {
    final selected = MediaItem(
      id: 'a',
      backend: MediaBackend.plex,
      kind: MediaKind.movie,
      title: 'Dune',
      year: 2021,
      serverId: 'server',
      libraryId: 'one',
    );
    var attempts = 0;
    final client = StudioTestClient('server')
      ..listings['one'] = [const MediaStudio(id: '42', name: 'A24')]
      ..listings['two'] = [const MediaStudio(id: '42', name: 'A24')]
      ..libraryContent['one'] = [selected]
      ..libraryContent['two'] = [selected.copyWith(id: 'b', libraryId: 'two')]
      ..libraryPageGate = (library, query) async {
        if (library == 'two' && attempts++ == 0) {
          throw MediaServerHttpException(type: MediaServerHttpErrorType.connectionError);
        }
      };
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('one'), studioLibrary('two')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await settleStudios(provider);
    final copies = await provider.findTitleCopies(provider.group('a24')!, selected, AbortController());
    expect(attempts, 2);
    expect(copies.map((item) => item.id), containsAll(['a', 'b']));
  });

  test('failed studio source preserves verified results from other libraries', () async {
    final selected = MediaItem(
      id: 'a',
      backend: MediaBackend.plex,
      kind: MediaKind.movie,
      title: 'Dune',
      year: 2021,
      serverId: 'server',
      libraryId: 'one',
    );
    final client = StudioTestClient('server')
      ..listings['one'] = [const MediaStudio(id: '42', name: 'A24')]
      ..listings['two'] = [const MediaStudio(id: '42', name: 'A24')]
      ..listings['three'] = [const MediaStudio(id: '42', name: 'A24')]
      ..libraryContent['one'] = [selected]
      ..libraryContent['two'] = [selected.copyWith(id: 'b', libraryId: 'two')]
      ..libraryPageGate = (library, query) async {
        if (library == 'three') throw StateError('server refused');
      };
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('one'), studioLibrary('two'), studioLibrary('three')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await settleStudios(provider);
    await expectLater(
      provider.findTitleCopies(provider.group('a24')!, selected, AbortController()),
      throwsA(
        isA<StudioCopyLookupException>()
            .having((e) => e.failedLibraries, 'failed libraries', 1)
            .having((e) => e.copies.map((item) => item.id), 'known copies', containsAll(['a', 'b'])),
      ),
    );
  });

  testWidgets('phone Browse All fetches another page only when scrolling near the end', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(false);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final client = StudioTestClient('server')
      ..listings['movies'] = [const MediaStudio(id: '42', name: 'A24')]
      ..content = [
        for (var i = 0; i < 90; i++)
          MediaItem(
            id: '$i',
            backend: MediaBackend.plex,
            kind: MediaKind.movie,
            title: 'Movie ${i.toString().padLeft(3, '0')}',
          ),
      ];
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('movies')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await tester.runAsync(() => settleStudios(provider));
    await tester.pumpWidget(
      ChangeNotifierProvider<StudiosProvider>.value(
        value: provider,
        child: InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark).copyWith(platform: TargetPlatform.android),
            home: const StudioBrowserScreen(studioKey: 'a24'),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('mobile_studio_mode')), findsOneWidget);
    expect(client.contentCalls.map((query) => query.offset), isNot(contains(40)));
    final scroll = tester.widget<CustomScrollView>(find.byType(CustomScrollView)).controller!;
    scroll.jumpTo(scroll.position.maxScrollExtent);
    await tester.pumpAndSettle();
    expect(client.contentCalls.map((query) => query.offset), contains(40));
  });

  testWidgets('studio publishes a responsive library while another is still loading', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    final gate = Completer<void>();
    final client = StudioTestClient('server')
      ..listings['fast'] = [const MediaStudio(id: '42', name: 'A24')]
      ..listings['slow'] = [const MediaStudio(id: '42', name: 'A24')]
      ..libraryContent['fast'] = [
        const MediaItem.plex(id: 'fast', kind: MediaKind.movie, title: 'Fast title', year: 2024),
      ]
      ..libraryContent['slow'] = [
        const MediaItem.plex(id: 'slow', kind: MediaKind.movie, title: 'Slow title', year: 2024),
      ]
      ..libraryPageGate = (library, query) async {
        if (library == 'slow') await gate.future;
      };
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('fast'), studioLibrary('slow')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await tester.runAsync(() => settleStudios(provider));
    await tester.pumpWidget(
      ChangeNotifierProvider<StudiosProvider>.value(
        value: provider,
        child: InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: const StudioBrowserScreen(studioKey: 'a24'),
          ),
        ),
      ),
    );
    for (var i = 0; i < 20; i++) {
      await tester.pump(const Duration(milliseconds: 20));
    }
    expect(find.text('Fast title'), findsWidgets);
    gate.complete();
    await tester.pumpAndSettle();
    await tester.tap(find.text('${t.studios.browseAll}  ›'));
    await tester.pumpAndSettle();
    expect(find.byType(FocusableMediaCard), findsNWidgets(2));
  });

  test(
    'episode recency merges libraries by latest episode, retries failed lookups, and keeps show identities',
    () async {
      final client = StudioTestClient('server')
        ..latestEpisodeDates.addAll({'a': 400, 'b': 100, 'c': 300, 'd': 200})
        ..libraryContent['one'] = [
          const MediaItem.plex(id: 'a', kind: MediaKind.show, title: 'A', addedAt: 1),
          const MediaItem.plex(id: 'b', kind: MediaKind.show, title: 'B', addedAt: 999),
        ]
        ..libraryContent['two'] = [
          const MediaItem.plex(id: 'c', kind: MediaKind.show, title: 'C', addedAt: 2),
          const MediaItem.plex(id: 'd', kind: MediaKind.show, title: 'D', addedAt: 3),
        ];
      final sources = [
        for (final id in ['one', 'two'])
          StudioSource(
            library: studioLibrary(id, kind: MediaKind.show),
            client: client,
            kind: MediaKind.show,
            studio: const MediaStudio(id: '42', name: 'Studio'),
          ),
      ];
      final cursor = StudioItemsCursor(sources, isVisible: (_) => true, sort: StudioSort.recentlyAddedEpisode);
      client.failEpisodeDates = true;
      await expectLater(cursor.next(AbortController(), limit: 2), throwsStateError);
      client.failEpisodeDates = false;
      client.episodeDateCalls.clear();
      final first = await cursor.next(AbortController(), limit: 2);
      final last = await cursor.next(AbortController(), limit: 2);
      expect([...first, ...last].map((item) => item.id), ['a', 'c', 'd', 'b']);
      expect(client.episodeDateCalls.toSet(), {'a', 'b', 'c', 'd'});
      expect(client.episodeDateCalls, hasLength(4));
      expect(first.first.libraryId, 'one');
      expect(first.last.libraryId, 'two');
      expect(
        client.contentCalls.every((query) => query.kind == MediaKind.show && query.sort?.field == 'episode.addedAt'),
        isTrue,
      );

      client.episodeDateCalls.clear();
      final single = StudioItemsCursor([sources.first], isVisible: (_) => true, sort: StudioSort.recentlyAddedEpisode);
      expect((await single.next(AbortController())).map((item) => item.id), ['a', 'b']);
      expect(client.episodeDateCalls, isEmpty); // Single-source server order needs no lookups.
    },
  );

  testWidgets('studio restores saved sort on reopen and remembers the show-only episode sort independently', (
    tester,
  ) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    final client = StudioTestClient('server')
      ..listings['mixed'] = [const MediaStudio(id: '42', name: 'A24')]
      ..content = [
        const MediaItem.plex(id: 'movie', kind: MediaKind.movie, title: 'Movie', year: 2025),
        const MediaItem.plex(id: 'show', kind: MediaKind.show, title: 'Show', year: 2024),
      ];
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('mixed', kind: MediaKind.unknown)]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await tester.runAsync(() => settleStudios(provider));
    Future<void> mount(int generation) async {
      await tester.pumpWidget(
        ChangeNotifierProvider<StudiosProvider>.value(
          value: provider,
          child: InputModeTracker(
            child: MaterialApp(
              theme: monoTheme(MonoPalette.dark),
              home: StudioBrowserScreen(key: ValueKey(generation), studioKey: 'a24'),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text('${t.studios.browseAll}  ›'));
      await tester.pumpAndSettle();
    }

    await mount(1);
    await tester.tap(find.text(t.studios.sortTitleAscending));
    await tester.pumpAndSettle();
    expect(find.text(t.studios.sortEpisodeAdded), findsNothing);
    await tester.tap(find.text(t.studios.sortNewest));
    await tester.pumpAndSettle();
    expect((await StorageService.getInstance()).getStudioSort(), StudioSort.newest);
    await tester.tap(find.text(t.studios.shows));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.studios.sortNewest));
    await tester.pumpAndSettle();
    // The seventh option can be below the fold on a TV; reach it with the
    // remote so the test also verifies menu scrolling and focus visibility.
    for (var index = 0; index < StudioSort.values.indexOf(StudioSort.recentlyAddedEpisode); index++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pumpAndSettle();
    }
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(client.contentCalls.last.sort?.field, 'episode.addedAt');
    await tester.tap(find.text(t.studios.movies));
    await tester.pumpAndSettle();
    expect(find.text(t.studios.sortNewest), findsOneWidget);
    await mount(2);
    expect(find.text(t.studios.sortNewest), findsOneWidget);
    await tester.tap(find.text(t.studios.shows));
    await tester.pumpAndSettle();
    expect(find.text(t.studios.sortEpisodeAdded), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('studio browser switches All / Movies / TV Shows using touch and remote chips', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final client = StudioTestClient('server')
      ..listings['mixed'] = [const MediaStudio(id: '42', name: 'A24')]
      ..content = [
        MediaItem(
          id: 'movie',
          backend: MediaBackend.plex,
          kind: MediaKind.movie,
          title: 'Studio Movie',
          summary: 'Movie plot',
          durationMs: 500000,
        ),
        MediaItem(
          id: 'show',
          backend: MediaBackend.plex,
          kind: MediaKind.show,
          title: 'Studio Show',
          summary: 'Show plot',
        ),
      ];
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('mixed', kind: MediaKind.unknown)]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await tester.runAsync(() => settleStudios(provider));
    await tester.pumpWidget(
      ChangeNotifierProvider<StudiosProvider>.value(
        value: provider,
        child: InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: const StudioBrowserScreen(studioKey: 'a24'),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('${t.studios.browseAll}  ›'));
    await tester.pumpAndSettle();
    List<MediaItem> items() => tester
        .widgetList<FocusableMediaCard>(find.byType(FocusableMediaCard))
        .map((card) => card.item as MediaItem)
        .toList();
    expect(items().map((item) => item.kind).toSet(), {MediaKind.movie, MediaKind.show});
    final expandedHero = tester.getSize(find.byType(StudioSpotlight)).height;
    final smallPosterWidth = tester.getSize(find.byType(FocusableMediaCard).first).width;
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'studio_item_0');
    final compactHero = tester.getSize(find.byType(StudioSpotlight)).height;
    expect(compactHero, lessThan(expandedHero));
    expect(tester.getSize(find.byType(FocusableMediaCard).first).width, greaterThan(smallPosterWidth));
    expect(tester.widget<CustomScrollView>(find.byType(CustomScrollView)).controller!.offset, 0);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowLeft);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'studio_item_0');
    expect(tester.getSize(find.byType(StudioSpotlight)).height, compactHero);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'studio_filter_0');
    expect(tester.getSize(find.byType(StudioSpotlight)).height, expandedHero);
    await tester.tap(find.text(t.studios.movies));
    await tester.pumpAndSettle();
    expect(items().single.kind, MediaKind.movie);
    final chips = tester.widgetList<FocusableTabChip>(find.byType(FocusableTabChip)).toList();
    chips[1].focusNode!.requestFocus();
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(items().single.kind, MediaKind.show);
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'studio_filter_2');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'studio_item_0');

    await tester.sendKeyEvent(LogicalKeyboardKey.arrowLeft);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'studio_overview');
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(find.byType(StudioOverviewDialog), findsOneWidget);
    expect(tester.widget<Text>(find.byKey(const ValueKey('studio_full_synopsis'))).data, 'Show plot');
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'studio_overview');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'studio_item_0');

    await tester.tap(find.text(t.studios.all));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.studios.sortTitleAscending));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.studios.sortTitleDescending));
    await tester.pumpAndSettle();
    expect(items().map((item) => item.title), ['Studio Show', 'Studio Movie']);
    expect(client.contentCalls.last.sort?.direction, LibrarySortDirection.descending);
    await tester.tap(find.byTooltip(t.settings.listView));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('studio_list')), findsOneWidget);
    expect(
      tester
          .widgetList<FocusableMediaCard>(find.byType(FocusableMediaCard))
          .every((card) => card.viewModeOverride == ViewMode.list),
      isTrue,
    );
    await tester.tap(find.byTooltip(t.settings.gridView));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('studio_grid')), findsOneWidget);
    await tester.ensureVisible(find.text(t.studios.movies));
    await tester.tap(find.text(t.studios.movies));
    await tester.pumpAndSettle();
    client.failShows = true;
    provider.invalidatePages();
    await tester.tap(find.text(t.studios.shows));
    await tester.pumpAndSettle();
    expect(items(), isEmpty);
    tester.widgetList<FocusableTabChip>(find.byType(FocusableTabChip)).elementAt(2).focusNode!.requestFocus();
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'studio_more');
    client.failShows = false;
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(items().single.kind, MediaKind.show);
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'studio_item_0');
    await hidden.hideLibrary('server:mixed');
    await tester.pumpAndSettle();
    expect(items(), isEmpty);
  });

  test('cursor retry does not lose already fetched movies when the shows request fails', () async {
    final client = StudioTestClient('server')
      ..failShows = true
      ..content = [
        MediaItem(id: 'movie', backend: MediaBackend.plex, kind: MediaKind.movie),
        MediaItem(id: 'show', backend: MediaBackend.plex, kind: MediaKind.show),
      ];
    final sources = [
      for (final kind in [MediaKind.movie, MediaKind.show])
        StudioSource(
          library: studioLibrary('mixed', kind: kind),
          client: client,
          kind: kind,
          studio: const MediaStudio(id: '42', name: 'Studio'),
        ),
    ];
    final cursor = StudioItemsCursor(sources, isVisible: (_) => true);
    await expectLater(cursor.next(AbortController()), throwsStateError);
    client.failShows = false;
    final items = await cursor.next(AbortController());
    expect(items.map((item) => item.id), ['movie', 'show']);
  });

  testWidgets('studio layout fits TV and large-text phones without draining the catalogue', (tester) async {
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    addTearDown(() => tester.view.resetPhysicalSize());
    addTearDown(() => tester.view.resetDevicePixelRatio());
    tester.view.devicePixelRatio = 1;
    final client = StudioTestClient('server')
      ..listings['movies'] = [const MediaStudio(id: '42', name: 'A24')]
      ..content = [
        for (var i = 0; i < 85; i++)
          MediaItem(
            id: '$i',
            backend: MediaBackend.plex,
            kind: MediaKind.movie,
            title: 'Movie $i',
            summary: 'A synopsis',
          ),
      ];
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('movies')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await tester.runAsync(() => settleStudios(provider));
    for (final (size, tv, textScale, margin) in [
      (const Size(960, 540), true, 1.0, 0),
      (const Size(960, 540), true, 1.0, 8),
      (const Size(1280, 720), true, 1.0, 0),
      (const Size(1280, 720), true, 1.5, 8),
      (const Size(1920, 1080), true, 1.0, 0),
      (const Size(1920, 1080), true, 1.5, 8),
      (const Size(3840, 2160), true, 1.0, 8),
      (const Size(1280, 540), true, 1.0, 0),
      (const Size(720, 480), true, 1.0, 8),
      (const Size(320, 640), false, 1.5, 0),
      (const Size(640, 320), false, 1.0, 0),
    ]) {
      TvDetectionService.debugSetAppleTVOverride(tv);
      await SettingsService.instance.write(SettingsService.tvScreenMargin, margin);
      tester.view.physicalSize = size;
      await tester.pumpWidget(
        ChangeNotifierProvider<StudiosProvider>.value(
          value: provider,
          child: InputModeTracker(
            child: MaterialApp(
              theme: monoTheme(MonoPalette.dark),
              builder: (context, child) => MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(textScale)),
                child: child!,
              ),
              home: StudioBrowserScreen(key: ValueKey(size), studioKey: 'a24'),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      if (tv && find.text('${t.studios.browseAll}  ›').evaluate().isNotEmpty) {
        expect(tester.takeException(), isNull, reason: 'Landing: $size, scale $textScale');
        await tester.tap(find.text('${t.studios.browseAll}  ›'));
        await tester.pumpAndSettle();
      }
      if (!tv && find.byKey(const ValueKey('mobile_studio_browse_all')).evaluate().isNotEmpty) {
        await tester.tap(find.byKey(const ValueKey('mobile_studio_browse_all')));
        await tester.pumpAndSettle();
      }
      expect(find.byType(FocusableMediaCard), findsWidgets);
      expect(tester.takeException(), isNull, reason: '$size, scale $textScale');
      expect(tester.getSize(find.byType(CustomScrollView)).height, greaterThan(140));
      if (find.byType(StudioEditorialSpotlight).evaluate().isNotEmpty) {
        expect(find.byType(StudioEditorialSpotlight), findsOneWidget);
        final synopsis = tester.widget<Text>(find.byKey(const ValueKey('studio_visible_synopsis')));
        expect(synopsis.data, 'A synopsis');
        expect(synopsis.maxLines, isNull);
        final grid = tester.widget<SliverGrid>(find.byType(SliverGrid));
        final delegate = grid.gridDelegate as SliverGridDelegateWithFixedCrossAxisCount;
        expect(delegate.crossAxisCount, size.width * (1 - margin * 2 / 100) >= 1700 ? 4 : 3);
        expect(tester.getSize(find.byType(FocusableMediaCard).first).width, greaterThan(70));
        expect(
          tester.getRect(find.byKey(const ValueKey('studio_visible_synopsis'))).left,
          lessThan(tester.getRect(find.byType(CustomScrollView)).left),
        );
      }
      if (tv) {
        final firstCard = tester.widget<FocusableMediaCard>(find.byType(FocusableMediaCard).first);
        final first = find.byKey(firstCard.key!);
        firstCard.focusNode!.requestFocus();
        await tester.pumpAndSettle();
        final viewport = tester.getRect(find.byType(CustomScrollView));
        final card = tester.getRect(first);
        expect(card.top, greaterThanOrEqualTo(viewport.top), reason: '$size margin=$margin scale=$textScale');
        expect(card.bottom, lessThanOrEqualTo(viewport.bottom), reason: '$size margin=$margin scale=$textScale');
        expect(card.left, greaterThanOrEqualTo(viewport.left));
        expect(card.right, lessThanOrEqualTo(viewport.right));
        // The same guarantee must hold after navigating to later rows.
        for (var row = 0; row < 2; row++) {
          await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
          await tester.pumpAndSettle();
          final focused = tester
              .widgetList<FocusableMediaCard>(find.byType(FocusableMediaCard))
              .firstWhere((card) => card.focusNode!.hasFocus);
          final rect = tester.getRect(find.byWidget(focused));
          final currentViewport = tester.getRect(find.byType(CustomScrollView));
          expect(rect.top, greaterThanOrEqualTo(currentViewport.top - 1), reason: '$size row=$row');
          expect(rect.bottom, lessThanOrEqualTo(currentViewport.bottom + 1), reason: '$size row=$row');
        }
      }
      if (size == const Size(1280, 720) && margin == 0) {
        tester.widget<FocusableMediaCard>(find.byType(FocusableMediaCard).first).focusNode!.requestFocus();
        await tester.pumpAndSettle();
        await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
        await tester.pumpAndSettle();
        final selectedFocus = FocusManager.instance.primaryFocus;
        expect(selectedFocus?.debugLabel, isNot('studio_item_0'));
        final catalogTop = tester.getTopLeft(find.byType(CustomScrollView)).dy;
        expect(find.byType(StudioEditorialSpotlight), findsNothing);
        expect(tester.getBottomLeft(find.byType(StudioSpotlight)).dy, lessThanOrEqualTo(catalogTop));
        expect(tester.getSize(find.byType(CustomScrollView)).width, greaterThan(size.width * 0.85));
        await tester.sendKeyEvent(LogicalKeyboardKey.arrowLeft);
        await tester.pumpAndSettle();
        expect(FocusManager.instance.primaryFocus?.debugLabel, 'studio_overview');
        await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
        await tester.pumpAndSettle();
        expect(FocusManager.instance.primaryFocus, same(selectedFocus));
      }
    }
    expect(client.contentCalls.map((query) => query.offset).toSet(), contains(0));
    expect(client.contentCalls.map((query) => query.offset), isNot(contains(80)));
    expect(tester.takeException(), isNull);
  });

  testWidgets('a studio discovered during a copy chooser does not cancel the selection', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1280, 720);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final lateFacet = Completer<void>();
    final client = StudioTestClient('server')
      ..listings['HD'] = [const MediaStudio(id: '42', name: 'A24')]
      ..listings['4K'] = [const MediaStudio(id: '42', name: 'A24')]
      ..listings['late'] = [const MediaStudio(id: '42', name: 'A24')]
      ..facetGates['late'] = lateFacet
      ..libraryContent['HD'] = [
        MediaItem(id: 'hd', backend: MediaBackend.plex, kind: MediaKind.movie, title: 'Movie', year: 2020),
      ]
      ..libraryContent['4K'] = [
        MediaItem(id: 'uhd', backend: MediaBackend.plex, kind: MediaKind.movie, title: 'Movie', year: 2020),
      ];
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('HD'), studioLibrary('4K'), studioLibrary('late')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await tester.runAsync(() => settleStudios(provider));
    final observer = StudioNavigationObserver();
    await tester.pumpWidget(
      ChangeNotifierProvider<StudiosProvider>.value(
        value: provider,
        child: InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark).copyWith(platform: TargetPlatform.android),
            navigatorObservers: [observer],
            home: const StudioBrowserScreen(studioKey: 'a24'),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('${t.studios.browseAll}  ›'));
    await tester.pumpAndSettle();
    await tester.tap(find.byType(FocusableMediaCard).first);
    await tester.pumpAndSettle();
    expect(find.text('4K'), findsOneWidget);
    lateFacet.complete();
    await tester.pumpAndSettle();
    expect(find.text('4K'), findsOneWidget);
    await tester.tap(find.text('4K'));
    await tester.pumpAndSettle();
    expect(observer.opened.single.id, 'uhd');
  });

  testWidgets('opening a title finds HD/4K copies before the rest of the catalog loads', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1280, 720);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final pending = Completer<void>();
    final client = StudioTestClient('server')
      ..listings['HD'] = [const MediaStudio(id: '42', name: 'A24')]
      ..listings['4K'] = [const MediaStudio(id: '42', name: 'A24')]
      ..libraryContent['HD'] = [
        for (var i = 0; i < 85; i++)
          MediaItem(
            id: 'hd$i',
            backend: MediaBackend.plex,
            kind: MediaKind.movie,
            title: 'Movie ${i.toString().padLeft(3, '0')}',
            year: 2020,
            summary: 'Synopsis',
            durationMs: 600000,
          ),
      ]
      ..libraryContent['4K'] = [
        MediaItem(
          id: 'uhd',
          backend: MediaBackend.plex,
          kind: MediaKind.movie,
          title: 'Movie 000',
          year: 2020,
          summary: 'Synopsis',
          durationMs: 600000,
        ),
      ]
      ..pageGate = (query) async {
        if (query.offset >= 40) await pending.future;
      };
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('HD'), studioLibrary('4K')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await tester.runAsync(() => settleStudios(provider));
    final observer = StudioNavigationObserver();
    await tester.pumpWidget(
      ChangeNotifierProvider<StudiosProvider>.value(
        value: provider,
        child: InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark).copyWith(platform: TargetPlatform.android),
            navigatorObservers: [observer],
            home: const StudioBrowserScreen(studioKey: 'a24'),
          ),
        ),
      ),
    );
    for (var i = 0; i < 10; i++) {
      await tester.pump(const Duration(milliseconds: 20));
    }
    await tester.tap(find.text('${t.studios.browseAll}  ›'));
    await tester.pump();
    // Copy discovery must work even before catalogue pagination reaches it.
    final poster = find.byType(FocusableMediaCard).first;
    tester.widget<FocusableMediaCard>(poster).focusNode!.requestFocus();
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(observer.opened, isEmpty);
    expect(find.text('HD'), findsOneWidget);
    expect(find.text('4K'), findsOneWidget);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(observer.opened.single.id, 'uhd');
    expect(observer.opened.single.libraryId, '4K');
    expect(observer.opened.single.serverId, 'server');
    pending.complete();
    for (var i = 0; i < 10; i++) {
      await tester.pump(const Duration(milliseconds: 20));
    }
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'studio_item_0');
    // Cancellation returns to the same single poster, without navigation.
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    expect(observer.opened, hasLength(1));
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'studio_item_0');
    await tester.tap(find.byType(FocusableMediaCard).first);
    await tester.pumpAndSettle();
    await tester.tap(find.text('HD'));
    await tester.pumpAndSettle();
    expect(observer.opened.last.id, 'hd0');
    expect(observer.opened.last.libraryId, 'HD');
    // A completed lookup with only one copy opens directly without a chooser.
    await tester.tap(find.byType(FocusableMediaCard).at(1));
    await tester.pumpAndSettle();
    expect(observer.opened.last.id, 'hd1');
    expect(find.text(t.libraries.selectLibrary), findsNothing);
    await tester.tap(find.byType(FocusableMediaCard).first);
    await tester.pumpAndSettle();
    await tester.tap(find.text('HD'));
    await tester.pumpAndSettle();
    expect(observer.opened.last.id, 'hd0', reason: 'the title lookup must not poison a later selection');
    expect(tester.takeException(), isNull);
  });

  test('studio first pages coalesce, survive filter changes and invalidate on library changes', () async {
    final pending = Completer<void>();
    final client = StudioTestClient('server')
      ..listings['movies'] = [const MediaStudio(id: '42', name: 'A24')]
      ..content = [MediaItem(id: 'movie', backend: MediaBackend.plex, kind: MediaKind.movie, title: 'A movie')]
      ..contentGate = () => pending.future;
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('movies')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await settleStudios(provider);
    final sources = provider.group('a24')!.sources;
    final cancelled = AbortController();
    final first = provider.createCursor(sources).next(cancelled);
    final firstResult = expectLater(
      first,
      throwsA(
        isA<MediaServerHttpException>().having((error) => error.type, 'type', MediaServerHttpErrorType.cancelled),
      ),
    );
    final second = provider.createCursor(sources).next(AbortController());
    await Future<void>.delayed(Duration.zero);
    expect(client.contentCalls, hasLength(1));
    cancelled.abort();
    pending.complete();
    await firstResult;
    expect((await second).single.id, 'movie');
    expect((await provider.createCursor(sources).next(AbortController())).single.id, 'movie');
    expect(client.contentCalls, hasLength(1));
    await provider.createCursor(sources, sort: StudioSort.newest).next(AbortController());
    expect(client.contentCalls, hasLength(2));
    provider.invalidatePages();
    await provider.createCursor(sources).next(AbortController());
    expect(client.contentCalls, hasLength(3));
    await hidden.hideLibrary('server:movies');
    await settleStudios(provider);
    expect(await provider.createCursor(sources).next(AbortController()), isEmpty);
    expect(client.contentCalls, hasLength(3));
  });

  test('dwelling on a studio warms its first page for opening', () async {
    final client = StudioTestClient('server')
      ..listings['movies'] = [const MediaStudio(id: '42', name: 'A24')]
      ..content = [
        for (var i = 0; i < 85; i++)
          MediaItem(id: '$i', backend: MediaBackend.plex, kind: MediaKind.movie, title: 'Movie $i'),
      ];
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('movies')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await settleStudios(provider);
    provider.warmStudio('a24');
    provider.warmStudio('a24');
    expect(client.contentCalls, isEmpty);
    await Future<void>.delayed(const Duration(milliseconds: 220));
    expect(client.contentCalls, hasLength(1));
    final cursor = provider.createCursor(provider.group('a24')!.sources);
    expect(await cursor.next(AbortController()), hasLength(40));
    expect(client.contentCalls, hasLength(1));
    expect(await cursor.next(AbortController()), hasLength(40));
    expect(client.contentCalls.map((call) => call.offset), [0, 40]);
  });
  test('sorting merges titles across libraries and continues in order over page boundaries', () async {
    final first = StudioTestClient('server')
      ..content = [
        for (var i = 0; i < 70; i += 2)
          MediaItem(
            id: 'a$i',
            backend: MediaBackend.plex,
            kind: MediaKind.movie,
            title: 'Title ${i.toString().padLeft(3, '0')}',
          ).copyWith(year: 1950 + i, rating: i / 10, addedAt: i),
      ];
    final second = StudioTestClient('second')
      ..content = [
        for (var i = 1; i < 70; i += 2)
          MediaItem(
            id: 'b$i',
            backend: MediaBackend.plex,
            kind: MediaKind.movie,
            title: 'Title ${i.toString().padLeft(3, '0')}',
          ).copyWith(year: 1950 + i, rating: i / 10, addedAt: i),
      ];
    final sources = [
      StudioSource(
        library: studioLibrary('first'),
        client: first,
        kind: MediaKind.movie,
        studio: const MediaStudio(id: '1', name: 'A24'),
      ),
      StudioSource(
        library: const MediaLibrary(id: 'second', backend: MediaBackend.plex, title: 'Second', serverId: 'second'),
        client: second,
        kind: MediaKind.movie,
        studio: const MediaStudio(id: '99', name: 'A24'),
      ),
    ];
    for (final sort in StudioSort.values) {
      final cursor = StudioItemsCursor(sources, isVisible: (_) => true, sort: sort);
      final actual = <MediaItem>[];
      while (cursor.hasMore) {
        actual.addAll(await cursor.next(AbortController(), limit: 13));
      }
      expect(actual, hasLength(70));
      for (var i = 1; i < actual.length; i++) {
        expect(sort.compare(actual[i - 1], actual[i]), lessThanOrEqualTo(0), reason: '${sort.name} at $i');
      }
    }
  });

  test('discovery scopes visible movie/show libraries, merges known aliases and keeps subsidiaries distinct', () async {
    final client = StudioTestClient('server')
      ..listings.addAll({
        'movies': [
          const MediaStudio(id: '1', name: 'Warner Bros. Pictures'),
          const MediaStudio(id: '2', name: 'Pixar'),
          const MediaStudio(id: 'minor', name: 'Obscure Independent Films'),
        ],
        'shows': [const MediaStudio(id: '3', name: 'Warner Bros.')],
        'hidden': [const MediaStudio(id: '4', name: 'Hidden Studio')],
      });
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([
      studioLibrary('movies'),
      studioLibrary('shows', kind: MediaKind.show),
      studioLibrary('hidden'),
    ]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    await hidden.hideLibrary('server:hidden');
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await settleStudios(provider);
    expect(client.calls.toSet(), {('movies', MediaKind.movie), ('shows', MediaKind.show)});
    expect(provider.groups, hasLength(2));
    expect(provider.group('warner bros')!.sources, hasLength(2));
    expect(provider.groups.any((group) => group.name == 'Hidden Studio'), isFalse);
    await hidden.hideLibrary('server:movies');
    await settleStudios(provider);
    expect(provider.groups.single.sources.single.library.id, 'shows');
  });

  test('a late studio discovery reply cannot republish a newly hidden library', () async {
    final pending = Completer<LibraryPage<MediaStudio>>();
    final client = StudioTestClient('server')..gate = () => pending.future;
    final multi = testMultiServer(clients: [client]).provider;
    final libraries = StudioTestLibraries([studioLibrary('movies')]);
    final hidden = HiddenLibrariesProvider();
    await hidden.ensureInitialized();
    final provider = StudiosProvider(libraries: libraries, hidden: hidden, servers: multi, isBinding: () => false);
    addTearDown(provider.dispose);
    addTearDown(libraries.dispose);
    addTearDown(hidden.dispose);
    provider.ensureLoaded();
    await Future<void>.delayed(Duration.zero);
    await hidden.hideLibrary('server:movies');
    await settleStudios(provider);
    pending.complete(
      const LibraryPage(
        items: [MediaStudio(id: '1', name: 'Must stay hidden')],
        totalCount: 1,
      ),
    );
    await settleStudios(provider);
    expect(provider.groups, isEmpty);
  });

  test(
    'cursor paginates full studio results with explicit kind and studio filter, stamping library identity',
    () async {
      final client = StudioTestClient('server')
        ..content = [
          for (var i = 0; i < 85; i++)
            MediaItem(id: '$i', backend: MediaBackend.plex, kind: MediaKind.movie, title: 'Movie $i'),
        ];
      final source = StudioSource(
        library: studioLibrary('movies'),
        client: client,
        kind: MediaKind.movie,
        studio: const MediaStudio(id: '42', name: 'Studio'),
      );
      final cursor = StudioItemsCursor([source], isVisible: (_) => true);
      final abort = AbortController();
      final first = await cursor.next(abort);
      final second = await cursor.next(abort);
      final third = await cursor.next(abort);
      expect([first.length, second.length, third.length], [40, 40, 5]);
      expect(cursor.hasMore, isFalse);
      expect(first.first.serverId, 'server');
      expect(first.first.libraryId, 'movies');
      expect(client.contentCalls.map((query) => query.offset), [0, 40, 80]);
      expect(
        client.contentCalls.every(
          (query) => query.filters.single.values.single == '42' && query.kind == MediaKind.movie,
        ),
        isTrue,
      );
    },
  );

  test('cursor does not fetch sources which are no longer visible', () async {
    final client = StudioTestClient('server');
    final cursor = StudioItemsCursor([
      StudioSource(
        library: studioLibrary('movies'),
        client: client,
        kind: MediaKind.movie,
        studio: const MediaStudio(id: '1', name: 'Studio'),
      ),
    ], isVisible: (_) => false);
    expect(await cursor.next(AbortController()), isEmpty);
    expect(client.contentCalls, isEmpty);
  });
}
