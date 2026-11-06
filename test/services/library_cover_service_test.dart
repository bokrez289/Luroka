import 'dart:async';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/media/library_cover.dart';
import 'package:luroka/media/library_query.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_library.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/services/library_cover_service.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/utils/media_server_http_client.dart';

import '../test_helpers/prefs.dart';

class CoverClient extends Fake implements MediaServerClient, ScopedMediaServerClient {
  CoverClient({this.scope = 'server/user-a'});
  final String scope;
  List<MediaItem> items = [];
  final queries = <LibraryQuery>[];
  final aborts = <AbortController>[];
  Completer<void>? gate;
  bool fail = false;
  @override
  ServerId get serverId => ServerId('server');
  @override
  String get scopedServerId => scope;
  @override
  Future<LibraryPage<MediaItem>> fetchLibraryPagedContent(
    String id, {
    required LibraryQuery query,
    MediaKind? libraryKind,
    AbortController? abort,
  }) async {
    queries.add(query);
    if (abort != null) aborts.add(abort);
    await gate?.future;
    if (fail) throw StateError('unavailable');
    return LibraryPage(items: items, totalCount: 10000);
  }
}

void main() {
  setUp(resetSharedPreferencesForTest);
  const library = MediaLibrary(
    id: 'custom',
    backend: MediaBackend.jellyfin,
    title: 'Our favourite documentaries',
    kind: MediaKind.show,
    serverId: 'server',
  );

  List<MediaItem> titles(String prefix) => List.generate(
    12,
    (index) => MediaItem.jellyfin(
      id: '$prefix-$index',
      kind: MediaKind.show,
      title: '$prefix title $index',
      thumbPath: 'https://old-host/jellyfin/Items/$prefix-$index/Images/Primary?tag=$index&api_key=secret',
    ),
  );

  test('bounded, coalesced recipes remain stable across reopening and storage restart', () async {
    var now = DateTime.utc(2026, 10, 30);
    final storage = await StorageService.getInstance();
    final client = CoverClient()..items = titles('first');
    final service = LibraryCoverService(profileId: 'profile-a', storage: Future.value(storage), now: () => now);
    final results = await Future.wait([service.load(library, client), service.load(library, client)]);
    expect(client.queries, hasLength(1));
    expect(client.queries.single.limit, 12);
    expect(client.queries.single.kind, MediaKind.show);
    expect(results.first.images, hasLength(4));
    final savedPaths = results.first.images.map((image) => image.path).toList();
    expect(savedPaths.toSet(), hasLength(4));
    expect(jsonEncode(storage.getLibraryCoverRecipes(profileId: 'profile-a')), isNot(contains('secret')));
    client.items = titles('new');
    expect((await service.load(library, client)).images.map((image) => image.path), savedPaths);
    service.dispose();
    BaseSharedPreferencesService.resetForTesting();
    final restarted = LibraryCoverService(
      profileId: 'profile-a',
      storage: StorageService.getInstance(),
      now: () => now,
    );
    addTearDown(restarted.dispose);
    expect((await restarted.load(library, client)).images.map((image) => image.path), savedPaths);
    expect(client.queries, hasLength(1));
    now = now.add(const Duration(days: 8));
    expect((await restarted.load(library, client)).images.first.path, contains('new-'));
    expect(client.queries, hasLength(2));
  });

  test('profiles and authenticated server users never share recipes', () async {
    final storage = await StorageService.getInstance();
    final a = LibraryCoverService(profileId: 'profile-a', storage: Future.value(storage));
    final b = LibraryCoverService(profileId: 'profile-b', storage: Future.value(storage));
    addTearDown(a.dispose);
    addTearDown(b.dispose);
    final first = CoverClient()..items = titles('a');
    final second = CoverClient(scope: 'server/user-b')..items = titles('b');
    await a.load(library, first);
    expect((await b.load(library, first)).images.first.path, contains('a-'));
    expect(first.queries, hasLength(2));
    expect((await a.load(library, second)).images.first.path, contains('b-'));
    expect(second.queries, hasLength(1));
  });

  test('empty libraries adapt without repeating posters and failed requests can retry', () async {
    final service = LibraryCoverService(profileId: null, storage: StorageService.getInstance());
    addTearDown(service.dispose);
    final client = CoverClient()..fail = true;
    expect((await service.load(library, client)).images, isEmpty);
    client.fail = false;
    client.items = [titles('single').first, titles('single').first];
    expect((await service.load(library, client)).images, hasLength(1));
    client.items = [];
    expect((await service.load(library, client, refresh: true)).images, isEmpty);
    expect(client.queries, hasLength(3));
  });

  test('session disposal aborts work and prevents late recipes being persisted', () async {
    final storage = await StorageService.getInstance();
    final service = LibraryCoverService(profileId: 'profile-a', storage: Future.value(storage));
    final client = CoverClient()
      ..items = titles('late')
      ..gate = Completer<void>();
    final future = service.load(library, client);
    for (var attempt = 0; attempt < 10 && client.aborts.isEmpty; attempt++) {
      await Future<void>.delayed(Duration.zero);
    }
    service.dispose();
    expect(client.aborts.single.isAborted, isTrue);
    client.gate!.complete();
    expect((await future).images, isEmpty);
    expect(storage.getLibraryCoverRecipes(profileId: 'profile-a'), isEmpty);
  });

  test('cover paths retain image tags and rebind through the current client', () {
    expect(
      libraryCoverImagePath('https://host/subpath/Items/id/Images/Primary?tag=abc&api_key=secret', MediaBackend.emby),
      '/Items/id/Images/Primary?tag=abc',
    );
    expect(
      libraryCoverImagePath('/library/metadata/4/thumb/7?X-Plex-Token=secret', MediaBackend.plex),
      '/library/metadata/4/thumb/7',
    );
    expect(libraryCoverImagePath('https://external.example/private.jpg?token=secret', MediaBackend.plex), isNull);
    expect(
      libraryCoverImagePath('/Items/id%2Fpart/Images/Primary?tag=a%2Bb', MediaBackend.emby),
      '/Items/id%2Fpart/Images/Primary?tag=a%2Bb',
    );
    expect(
      LibraryCoverRecipe.fromJson({
        'createdAt': 1,
        'images': [null],
      }),
      isNull,
    );
  });

  test('music and home-video artwork keep their native shapes', () async {
    final service = LibraryCoverService(profileId: null, storage: StorageService.getInstance());
    addTearDown(service.dispose);
    final client = CoverClient()
      ..items = [
        const MediaItem.jellyfin(
          id: 'album',
          title: 'A live recording',
          kind: MediaKind.album,
          thumbPath: '/Items/album/Images/Primary',
        ),
        const MediaItem.jellyfin(
          id: 'video',
          title: 'A home video',
          kind: MediaKind.clip,
          thumbPath: '/Items/video/Images/Primary',
        ),
      ];
    final recipe = await service.load(library, client);
    expect(recipe.images.map((image) => image.aspectRatio), [1.0, 1.6]);
    expect(recipe.images.every((image) => !image.poster), isTrue);
  });
}
