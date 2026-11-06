import 'dart:convert';

import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:luroka/database/app_database.dart';
import 'package:luroka/exceptions/media_server_exceptions.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/services/jellyfin_api_cache.dart';
import 'package:luroka/utils/external_ids.dart';

import '../../test_helpers/backend_client_fixtures.dart';

http.Response json(Object body) => http.Response(jsonEncode(body), 200, headers: {'content-type': 'application/json'});

void main() {
  late AppDatabase database;
  setUp(() {
    database = AppDatabase.forTesting(NativeDatabase.memory());
    JellyfinApiCache.initialize(database);
  });
  tearDown(() => database.close());

  test('Emby batches provider ids, verifies every result, and retains separate library copies', () async {
    final requests = <Uri>[];
    final client = testJellyfinClient(
      connection: testEmbyConnection(),
      handler: (request) async {
        requests.add(request.url);
        if (request.url.path.endsWith('/Ancestors')) {
          final id = request.url.path.split('/')[2];
          return json([
            {'Id': id == 'hd' ? 'HD' : '4K', 'Name': id == 'hd' ? 'Movies' : 'Movies 4K', 'Type': 'CollectionFolder'},
          ]);
        }
        return json({
          'Items': [
            {
              'Id': 'hd',
              'Name': 'Arrival',
              'Type': 'Movie',
              'ProviderIds': {'Imdb': 'tt2543164'},
            },
            {
              'Id': 'uhd',
              'Name': 'Arrival',
              'Type': 'Movie',
              'ProviderIds': {'Imdb': 'tt2543164'},
            },
            {
              'Id': 'wrong',
              'Name': 'Arrival',
              'Type': 'Movie',
              'ProviderIds': {'Imdb': 'tt0000000'},
            },
          ],
          'TotalRecordCount': 3,
        });
      },
    );
    addTearDown(client.close);
    final result = await client.findByExternalIdsBatch(const [
      ExternalIds(imdb: 'tt2543164'),
      ExternalIds(tmdb: 329865),
    ], kind: MediaKind.movie);
    expect(result!.map((item) => item.id).toSet(), {'hd', 'uhd'});
    expect(result.map((item) => item.libraryId).toSet(), {'HD', '4K'});
    final query = requests.first.queryParameters;
    expect(query['AnyProviderIdEquals'], 'Imdb.tt2543164,Tmdb.329865');
    expect(query['IncludeItemTypes'], 'Movie');
    expect(query['Fields'], isNot(contains('RecursiveItemCount')));
    expect(requests.where((uri) => uri.path.endsWith('/Ancestors')), hasLength(2));
  });

  test('Emby single-title lookup uses indexed provider IDs instead of repeated title searches', () async {
    final requests = <Uri>[];
    final client = testJellyfinClient(
      connection: testEmbyConnection(),
      handler: (request) async {
        requests.add(request.url);
        if (request.url.path.endsWith('/Ancestors')) {
          final id = request.url.path.split('/')[2];
          return json([
            {'Id': 'library-$id', 'Name': 'Movies', 'Type': 'CollectionFolder'},
          ]);
        }
        return json({
          'Items': [
            {
              'Id': 'hd',
              'Name': 'One title',
              'Type': 'Movie',
              'ProviderIds': {'Tmdb': '42'},
            },
            {
              'Id': 'uhd',
              'Name': 'Another title',
              'Type': 'Movie',
              'ProviderIds': {'Tmdb': '42'},
            },
            {
              'Id': 'wrong',
              'Name': 'One title',
              'Type': 'Movie',
              'ProviderIds': {'Tmdb': '99'},
            },
          ],
          'TotalRecordCount': 3,
        });
      },
    );
    addTearDown(client.close);

    final result = await client.findByExternalIds(
      const ExternalIds(tmdb: 42),
      kind: MediaKind.movie,
      titles: const ['One title', 'Another title'],
    );
    expect(result!.map((item) => (item.id, item.libraryId)).toSet(), {('hd', 'library-hd'), ('uhd', 'library-uhd')});
    final searches = requests.where((uri) => uri.path == '/Items').toList();
    expect(searches, hasLength(1));
    expect(searches.single.queryParameters['AnyProviderIdEquals'], 'Tmdb.42');
    expect(searches.single.queryParameters.containsKey('SearchTerm'), isFalse);
  });

  test('Jellyfin reuses a compact scoped index instead of a removed provider-id filter', () async {
    final requests = <Uri>[];
    final client = testJellyfinClient(
      handler: (request) async {
        requests.add(request.url);
        if (request.url.path.endsWith('/Views')) {
          return json({
            'Items': [
              {'Id': 'movies', 'Name': 'Our Movies', 'Type': 'CollectionFolder', 'CollectionType': 'movies'},
            ],
          });
        }
        return json({
          'Items': [
            {
              'Id': 'arrival',
              'Name': 'Arrival',
              'Type': 'Movie',
              'ProviderIds': {'Imdb': 'tt2543164'},
              if (request.url.queryParameters.containsKey('Ids'))
                'UserData': {'PlaybackPositionTicks': 600000000, 'Played': false},
            },
          ],
          'TotalRecordCount': 1,
        });
      },
    );
    addTearDown(client.close);
    final found = await client.findByExternalIdsBatch(const [ExternalIds(imdb: 'tt2543164')], kind: MediaKind.movie);
    expect(found!.single.id, 'arrival');
    expect(found.single.libraryId, 'movies');
    expect(found.single.viewOffsetMs, 60000);
    final indexRequest = requests.singleWhere((uri) => uri.queryParameters['ParentId'] == 'movies');
    expect(indexRequest.queryParameters['EnableUserData'], 'false');
    expect(indexRequest.queryParameters['Fields'], isNot(contains('RecursiveItemCount')));
    expect(requests.every((uri) => !uri.queryParameters.containsKey('AnyProviderIdEquals')), isTrue);
    expect(await client.findByExternalIdsBatch(const [ExternalIds(imdb: 'tt99999')], kind: MediaKind.movie), isEmpty);
    expect(requests.where((uri) => uri.queryParameters['ParentId'] == 'movies'), hasLength(1));
  });

  for (final emby in [false, true]) {
    test('${emby ? 'Emby' : 'Jellyfin'} does not treat an HTTP error as an empty catalog batch', () async {
      final client = testJellyfinClient(
        connection: emby ? testEmbyConnection() : null,
        handler: (request) async {
          if (request.url.path.endsWith('/Views')) {
            return json({
              'Items': [
                {'Id': 'movies', 'Name': 'Movies', 'Type': 'CollectionFolder', 'CollectionType': 'movies'},
              ],
            });
          }
          return http.Response('unavailable', 500);
        },
      );
      addTearDown(client.close);
      await expectLater(
        client.findByExternalIdsBatch(const [ExternalIds(imdb: 'tt2543164')], kind: MediaKind.movie),
        throwsA(isA<MediaServerHttpException>().having((error) => error.statusCode, 'status', 500)),
      );
    });
  }
}
