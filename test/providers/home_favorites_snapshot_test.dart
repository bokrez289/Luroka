import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/media/catalog_item_ref.dart';
import 'package:luroka/media/library_query.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_filter.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_library.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/media/server_capabilities.dart';
import 'package:luroka/providers/home_favorites_snapshot.dart';
import 'package:luroka/models/catalog/catalog_item.dart';
import 'package:luroka/services/catalog/catalog_source.dart';
import 'package:luroka/utils/media_server_http_client.dart';

import '../test_helpers/media_items.dart';

MediaLibrary library(String id) =>
    MediaLibrary(id: id, title: id, backend: MediaBackend.jellyfin, kind: MediaKind.movie, serverId: 'server');

MediaItem item(String id, String libraryId) => testMediaItem(
  id: id,
  title: id,
  serverId: 'server',
  libraryId: libraryId,
  backend: MediaBackend.jellyfin,
  kind: MediaKind.movie,
  viewCount: 0,
);

class _Client implements MediaServerClient {
  final calls = <(String, LibraryQuery)>[];
  final gates = <String, Completer<void>>{};
  final failures = <String>{};
  int active = 0;
  int maxActive = 0;
  AbortController? lastAbort;

  @override
  ServerId get serverId => ServerId('server');
  @override
  String get serverName => 'Server';
  @override
  ServerCapabilities get capabilities => ServerCapabilities.jellyfin;

  @override
  Future<LibraryPage<MediaItem>> fetchLibraryPagedContent(
    String libraryId, {
    required LibraryQuery query,
    MediaKind? libraryKind,
    AbortController? abort,
  }) async {
    calls.add((libraryId, query));
    lastAbort = abort;
    active++;
    if (active > maxActive) maxActive = active;
    try {
      await (gates[libraryId]?.future ?? Future<void>.delayed(const Duration(milliseconds: 2)));
      if (failures.contains(libraryId)) throw StateError('unavailable');
      return LibraryPage(items: [item('new-$libraryId', libraryId)], totalCount: 1);
    } finally {
      active--;
    }
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _Watchlist extends Fake implements CatalogSource {
  int calls = 0;
  int? requestedLimit;
  @override
  Future<CatalogPage> fetchRow(CatalogRowId row, {int page = 1, int limit = 25}) async {
    calls++;
    requestedLimit = limit;
    return CatalogPage(
      items: [
        const CatalogItem(
          source: CatalogSourceId.plex,
          kind: MediaKind.movie,
          title: 'Saved',
          ids: CatalogItemIds(imdb: 'tt1234567'),
        ),
      ],
      hasMore: true,
    );
  }
}

void main() {
  test('background Favorites is bounded, filtered, coalesced and expires', () async {
    var now = DateTime(2026, 1, 1);
    final snapshot = HomeFavoritesSnapshot(now: () => now);
    addTearDown(snapshot.dispose);
    final client = _Client();
    final targets = [for (var i = 0; i < 10; i++) (library: library('lib-$i'), client: client as MediaServerClient)];
    await Future.wait([
      snapshot.ensureBackground(libraries: targets, plexWatchlist: null, canRun: () => true),
      snapshot.ensureBackground(libraries: targets, plexWatchlist: null, canRun: () => true),
    ]);
    expect(client.calls, hasLength(HomeFavoritesSnapshot.maxLibraries));
    expect(client.maxActive, lessThanOrEqualTo(2));
    expect(snapshot.items, hasLength(HomeFavoritesSnapshot.maxLibraries));
    for (final (_, query) in client.calls) {
      expect(query.limit, HomeFavoritesSnapshot.pageSize);
      expect(query.filters.single.field, MediaFilterField.favorite);
    }
    expect(snapshot.items.every((entry) => entry.isFavorite == true), isTrue);
    await snapshot.ensureBackground(libraries: targets, plexWatchlist: null, canRun: () => true);
    expect(client.calls, hasLength(HomeFavoritesSnapshot.maxLibraries));
    now = now.add(HomeFavoritesSnapshot.refreshInterval + const Duration(seconds: 1));
    await snapshot.ensureBackground(libraries: targets, plexWatchlist: null, canRun: () => true);
    expect(client.calls, hasLength(HomeFavoritesSnapshot.maxLibraries * 2));
    expect(
      client.calls.skip(HomeFavoritesSnapshot.maxLibraries).map((call) => call.$1),
      containsAll(['lib-6', 'lib-7', 'lib-8', 'lib-9']),
    );
  });

  test('a full Favorites update cancels an older background response', () async {
    final snapshot = HomeFavoritesSnapshot();
    addTearDown(snapshot.dispose);
    final client = _Client()..gates['movies'] = Completer<void>();
    final pending = snapshot.ensureBackground(
      libraries: [(library: library('movies'), client: client)],
      plexWatchlist: null,
      canRun: () => true,
    );
    expect(snapshot.isLoading, isTrue);
    snapshot.replace([item('manual', 'movies')]);
    expect(client.lastAbort!.isAborted, isTrue);
    client.gates['movies']!.complete();
    await pending;
    expect(snapshot.items.single.id, 'manual');
  });

  test('Plex watchlist preview fetches only one bounded page without resolving each title', () async {
    final snapshot = HomeFavoritesSnapshot();
    addTearDown(snapshot.dispose);
    final client = _Client();
    final plex = _Watchlist();
    await snapshot.ensureBackground(
      libraries: [(library: library('movies'), client: client)],
      plexWatchlist: plex,
      canRun: () => true,
    );
    expect(plex.calls, 1);
    expect(plex.requestedLimit, HomeFavoritesSnapshot.pageSize);
    expect(snapshot.items.where((item) => item.isCatalogItem), hasLength(1));
    expect(client.calls, hasLength(1));
  });

  test('failed source retains its previous result while a successful source refreshes', () async {
    var now = DateTime(2026, 1, 1);
    final snapshot = HomeFavoritesSnapshot(now: () => now);
    addTearDown(snapshot.dispose);
    snapshot.replace([item('old-a', 'a'), item('old-b', 'b')]);
    now = now.add(HomeFavoritesSnapshot.refreshInterval + const Duration(seconds: 1));
    final client = _Client()..failures.add('b');
    await snapshot.ensureBackground(
      libraries: [(library: library('a'), client: client), (library: library('b'), client: client)],
      plexWatchlist: null,
      canRun: () => true,
    );
    expect(snapshot.items.map((value) => value.id), containsAll(['old-b', 'new-a']));
    expect(snapshot.items.map((value) => value.id), isNot(contains('old-a')));
    expect(client.calls, hasLength(2));
    client.failures.clear();
    now = now.add(const Duration(minutes: 6));
    await snapshot.ensureBackground(
      libraries: [(library: library('a'), client: client), (library: library('b'), client: client)],
      plexWatchlist: null,
      canRun: () => true,
    );
    expect(snapshot.items.map((value) => value.id), containsAll(['new-a', 'new-b']));
    expect(client.calls, hasLength(4));
  });

  test('an invalidated profile guard discards a late response and permits a retry', () async {
    var current = true;
    final snapshot = HomeFavoritesSnapshot();
    addTearDown(snapshot.dispose);
    final client = _Client()..gates['movies'] = Completer<void>();
    final targets = [(library: library('movies'), client: client as MediaServerClient)];
    final pending = snapshot.ensureBackground(libraries: targets, plexWatchlist: null, canRun: () => current);
    current = false;
    client.gates['movies']!.complete();
    await pending;
    expect(snapshot.items, isEmpty);
    current = true;
    await snapshot.ensureBackground(libraries: targets, plexWatchlist: null, canRun: () => current);
    expect(snapshot.items.single.id, 'new-movies');
  });

  test('disposing a profile cancels its in-flight Favorites preview', () async {
    final snapshot = HomeFavoritesSnapshot();
    final client = _Client()..gates['movies'] = Completer<void>();
    var notifications = 0;
    snapshot.addListener(() => notifications++);
    final pending = snapshot.ensureBackground(
      libraries: [(library: library('movies'), client: client)],
      plexWatchlist: null,
      canRun: () => true,
    );
    snapshot.dispose();
    expect(client.lastAbort!.isAborted, isTrue);
    client.gates['movies']!.complete();
    await pending;
    expect(notifications, 0);
  });
}
