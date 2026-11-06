import 'dart:convert';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:luroka/database/app_database.dart';
import 'package:luroka/media/library_query.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/studio_sort.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/services/jellyfin_api_cache.dart';
import 'package:luroka/services/plex_api_cache.dart';
import 'package:luroka/services/library_query_translator.dart';
import '../test_helpers/backend_client_fixtures.dart';

http.Response response(Object data) =>
    http.Response(jsonEncode(data), 200, headers: {'content-type': 'application/json'});

void main() {
  late AppDatabase db;
  setUp(() {
    db = AppDatabase.forTesting(NativeDatabase.memory());
    PlexApiCache.initialize(db);
    JellyfinApiCache.initialize(db);
  });
  tearDown(() => db.close());
  for (final emby in [false, true]) {
    test('${emby ? 'Emby' : 'Jellyfin'} resolves only the latest episode under the selected series', () async {
      late Uri uri;
      final client = testJellyfinClient(
        connection: emby ? testEmbyConnection() : testJellyfinConnection(),
        handler: (request) async {
          uri = request.url;
          return response({
            'Items': [
              {'Id': 'episode', 'Type': 'Episode', 'DateCreated': '2026-10-29T12:00:00Z'},
            ],
            'TotalRecordCount': 100,
          });
        },
      );
      addTearDown(client.close);
      expect(
        await client.fetchLatestEpisodeAddedAt('series-a'),
        DateTime.utc(2026, 10, 29, 12).millisecondsSinceEpoch ~/ 1000,
      );
      expect(uri.queryParameters['ParentId'], 'series-a');
      expect(uri.queryParameters['IncludeItemTypes'], 'Episode');
      expect(uri.queryParameters['SortBy'], 'DateCreated');
      expect(uri.queryParameters['SortOrder'], 'Descending');
      expect(uri.queryParameters['Limit'], '1');
    });
    test('${emby ? 'Emby' : 'Jellyfin'} studio titles skip recursive counts and retain scoped pagination', () async {
      late Uri uri;
      final client = testJellyfinClient(
        connection: emby ? testEmbyConnection() : testJellyfinConnection(),
        handler: (request) async {
          uri = request.url;
          return response({'Items': [], 'TotalRecordCount': 0});
        },
      );
      addTearDown(client.close);
      await client.fetchLibraryPagedContent(
        'library-a',
        query: const LibraryQuery(
          kind: MediaKind.show,
          offset: 40,
          limit: 40,
          filters: [
            LibraryFilter(field: 'studio', values: ['studio-a']),
          ],
        ),
      );
      expect(uri.queryParameters['ParentId'], 'library-a');
      expect(uri.queryParameters['StudioIds'], 'studio-a');
      expect(uri.queryParameters['IncludeItemTypes'], 'Series');
      expect(uri.queryParameters['StartIndex'], '40');
      expect(uri.queryParameters['Limit'], '40');
      final fields = uri.queryParameters['Fields']!.split(',');
      expect(fields, containsAll(['Overview', 'DateCreated', 'SortName', 'ProviderIds']));
      expect(fields, isNot(contains('RecursiveItemCount')));
      expect(fields, isNot(contains('ChildCount')));
      expect(fields, isNot(contains('MediaSources')));
    });

    test('${emby ? 'Emby' : 'Jellyfin'} studio listing is user/library/type scoped and builds logo paths', () async {
      late Uri uri;
      final client = testJellyfinClient(
        connection: emby ? testEmbyConnection() : testJellyfinConnection(),
        handler: (request) async {
          uri = request.url;
          return response({
            'Items': [
              {
                'Id': 'studio/id',
                'Name': 'A24',
                'ImageTags': {'Primary': 'image-tag'},
              },
            ],
            'TotalRecordCount': 150,
          });
        },
      );
      addTearDown(client.close);
      final page = await client.fetchStudios('library-a', kind: MediaKind.show, offset: 100, limit: 50);
      expect(uri.path, '/Studios');
      expect(uri.queryParameters['UserId'], 'user-1');
      expect(uri.queryParameters['ParentId'], 'library-a');
      expect(uri.queryParameters['IncludeItemTypes'], 'Series');
      expect(uri.queryParameters['StartIndex'], '100');
      expect(uri.queryParameters['Recursive'], 'true');
      expect(page.totalCount, 150);
      expect(page.items.single.id, 'studio/id');
      expect(page.items.single.imagePath, contains('studio%2Fid'));
    });
  }

  test('Plex latest-episode date is a bounded server-sorted lookup', () async {
    late Uri uri;
    final client = testPlexClient(
      handler: (request) async {
        uri = request.url;
        return response({
          'MediaContainer': {
            'Metadata': [
              {'ratingKey': 'episode', 'type': 'episode', 'addedAt': 300},
            ],
          },
        });
      },
    );
    addTearDown(client.close);
    expect(await client.fetchLatestEpisodeAddedAt('series'), 300);
    expect(uri.path, '/library/metadata/series/allLeaves');
    expect(uri.queryParameters['sort'], 'addedAt:desc');
    expect(uri.queryParameters['X-Plex-Container-Size'], '1');
  });

  test('series episode recency translates to backend sorting without changing the studio filter', () {
    for (final backend in MediaBackend.values) {
      final query = LibraryQuery(
        kind: MediaKind.show,
        sort: StudioSort.recentlyAddedEpisode.forBackend(backend),
        filters: const [
          LibraryFilter(field: 'studio', values: ['42']),
        ],
      );
      if (backend == MediaBackend.plex) {
        final params = const PlexLibraryQueryTranslator().toQueryParameters(query);
        expect(params['sort'], 'episode.addedAt:desc');
        expect(params['studio'], '42');
      } else {
        final params = const JellyfinLibraryQueryTranslator(
          userId: 'user',
          parentId: 'library',
          fields: '',
        ).toQueryParameters(query);
        expect(params['SortBy'], 'DateLastContentAdded,SortName');
        expect(params['StudioIds'], '42');
      }
    }
  });

  test('Plex studio facets keep the backend id and type rather than using display names as filters', () async {
    late Uri uri;
    final client = testPlexClient(
      handler: (request) async {
        uri = request.url;
        return response({
          'MediaContainer': {
            'Directory': [
              {'key': '/library/sections/7/all?studio=42', 'title': 'Warner Bros. Pictures'},
            ],
            'totalSize': 1,
          },
        });
      },
    );
    addTearDown(client.close);
    final page = await client.fetchStudios('7', kind: MediaKind.movie);
    expect(uri.path, '/library/sections/7/studio');
    expect(uri.queryParameters['type'], '1');
    expect(page.items.single.id, '42');
    expect(page.items.single.name, 'Warner Bros. Pictures');
  });

  test('Plex escaped studio names reach title queries with exactly one wire encoding', () async {
    final requests = <Uri>[];
    final client = testPlexClient(
      handler: (request) async {
        requests.add(request.url);
        if (request.url.path.endsWith('/studio')) {
          return response({
            'MediaContainer': {
              'Directory': [
                {'key': '/library/sections/7/all?studio=Disney%252B', 'title': 'Disney+'},
                {'key': '/library/sections/7/all?studio=Netflix%2520Studios', 'title': 'Netflix Studios'},
                {'key': '/library/sections/7/all?studio=42', 'title': 'Warner Bros.'},
                {'key': '/library/sections/7/all?studio=100%2525%2520Films', 'title': '100% Films'},
              ],
              'totalSize': 4,
            },
          });
        }
        return response({
          'MediaContainer': {'Metadata': [], 'totalSize': 0},
        });
      },
    );
    addTearDown(client.close);
    final studios = await client.fetchStudios('7', kind: MediaKind.show);
    expect(studios.items.map((studio) => studio.id), ['Disney+', 'Netflix Studios', '42', '100% Films']);
    for (final studio in studios.items) {
      await client.fetchLibraryPagedContent(
        '7',
        query: LibraryQuery(
          kind: MediaKind.show,
          filters: [
            LibraryFilter(field: 'studio', values: [studio.id]),
          ],
        ),
      );
    }
    expect(requests.skip(1).map((uri) => uri.queryParameters['studio']), [
      'Disney+',
      'Netflix Studios',
      '42',
      '100% Films',
    ]);
    expect(requests[1].query, contains('studio=Disney%2B'));
    expect(requests[1].query, isNot(contains('%252B')));
  });

  test('studio content filters translate to StudioIds on MediaBrowser and studio on Plex', () {
    const query = LibraryQuery(
      kind: MediaKind.movie,
      offset: 40,
      limit: 40,
      filters: [
        LibraryFilter(field: 'studio', values: ['42']),
      ],
    );
    final jellyfin = const JellyfinLibraryQueryTranslator(
      userId: 'user',
      parentId: 'library',
      fields: '',
    ).toQueryParameters(query);
    expect(jellyfin['StudioIds'], '42');
    expect(jellyfin['ParentId'], 'library');
    expect(jellyfin['IncludeItemTypes'], 'Movie');
    expect(const PlexLibraryQueryTranslator().toQueryParameters(query)['studio'], '42');
  });
}
