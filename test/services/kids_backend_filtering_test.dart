import 'dart:convert';

import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:luroka/database/app_database.dart';
import 'package:luroka/media/library_query.dart';
import 'package:luroka/media/media_browser_dialect.dart';
import 'package:luroka/services/jellyfin_api_cache.dart';
import 'package:luroka/services/kids_profile_service.dart';
import 'package:luroka/services/plex_api_cache.dart';

import '../test_helpers/backend_client_fixtures.dart';
import '../test_helpers/prefs.dart';

void main() {
  final kids = KidsProfileService.instance;
  late AppDatabase db;
  setUp(() async {
    resetSharedPreferencesForTest();
    kids.resetForTesting();
    await kids.initialize();
    await kids.setParentPin('1234');
    await kids.setChild('child', parentId: 'adult', maxAge: 7);
    kids.selectProfile('child');
    db = AppDatabase.forTesting(NativeDatabase.memory());
    PlexApiCache.initialize(db);
    JellyfinApiCache.initialize(db);
  });
  tearDown(() async {
    kids.resetForTesting();
    await db.close();
  });

  http.Response response(Object value) =>
      http.Response(jsonEncode(value), 200, headers: {'content-type': 'application/json'});

  final plexRows = [
    {'ratingKey': 'safe', 'type': 'movie', 'title': 'Family movie', 'contentRating': 'G'},
    {'ratingKey': 'adult', 'type': 'movie', 'title': 'Adult movie', 'contentRating': 'R'},
    {'ratingKey': 'unrated', 'type': 'movie', 'title': 'Unrated movie'},
  ];

  test('Plex filters library pages, children, direct details and on-deck metadata', () async {
    final client = testPlexClient(
      handler: (request) async => response({
        'MediaContainer': {
          'size': plexRows.length,
          'totalSize': plexRows.length,
          'Metadata': request.url.path.contains('/metadata/adult') ? [plexRows[1]] : plexRows,
        },
      }),
    );
    addTearDown(client.close);
    expect((await client.fetchLibraryPage('1')).items.map((item) => item.id), ['safe']);
    expect((await client.fetchChildren('parent')).map((item) => item.id), ['safe']);
    expect(await client.fetchItem('adult'), isNull);
    expect((await client.fetchItemWithOnDeck('adult')).item, isNull);
    kids.selectProfile('adult');
    expect((await client.fetchLibraryPage('1')).items, hasLength(3));
    expect((await client.fetchItem('adult'))?.id, 'adult');
  });

  test('Plex applies selected libraries and Animation while allowing unrated titles only by parent choice', () async {
    await kids.setChild(
      'child',
      parentId: 'adult',
      maxAge: 7,
      allowedLibraries: {'server-1:7'},
      animationOnly: true,
      allowUnrated: true,
    );
    Uri? requestUri;
    final rows = [
      {
        'ratingKey': 'safe',
        'type': 'movie',
        'title': 'Animation',
        'contentRating': 'G',
        'librarySectionID': 7,
        'Genre': [
          {'tag': 'Animation'},
        ],
      },
      {
        'ratingKey': 'unrated',
        'type': 'movie',
        'title': 'Unrated animation',
        'librarySectionID': 7,
        'Genre': [
          {'tag': 'Animation'},
        ],
      },
      {
        'ratingKey': 'adult',
        'type': 'movie',
        'title': 'Adult animation',
        'contentRating': 'R',
        'librarySectionID': 7,
        'Genre': [
          {'tag': 'Animation'},
        ],
      },
      {
        'ratingKey': 'blocked-library',
        'type': 'movie',
        'title': 'Other library',
        'contentRating': 'G',
        'librarySectionID': 8,
        'Genre': [
          {'tag': 'Animation'},
        ],
      },
    ];
    final client = testPlexClient(
      handler: (request) async {
        requestUri = request.url;
        return response({
          'MediaContainer': {'Metadata': rows, 'size': rows.length, 'totalSize': rows.length},
        });
      },
    );
    addTearDown(client.close);
    expect((await client.fetchLibraryPage('7')).items.map((item) => item.id), ['safe', 'unrated']);
    expect(requestUri!.queryParameters.containsKey('contentRating'), isFalse);
  });

  for (final dialect in MediaBrowserDialect.values) {
    test('${dialect.name} honors parental custom ratings over provider labels', () async {
      Uri? uri;
      final client = testJellyfinClient(
        connection: testJellyfinConnection(dialect: dialect),
        handler: (request) async {
          uri = request.url;
          return response({
            'Items': [
              {
                'Id': 'override-mature',
                'Type': 'Movie',
                'Name': 'Mature override',
                'OfficialRating': 'G',
                'CustomRating': 'R',
              },
              {'Id': 'safe', 'Type': 'Movie', 'Name': 'Family', 'OfficialRating': 'G', 'CustomRating': ''},
              {
                'Id': 'unknown-override',
                'Type': 'Movie',
                'Name': 'Unknown',
                'OfficialRating': 'G',
                'CustomRating': 'Unrecognized',
              },
            ],
            'TotalRecordCount': 3,
          });
        },
      );
      addTearDown(client.close);
      expect((await client.fetchLibraryPagedContent('movies', query: const LibraryQuery())).items.map((i) => i.id), ['safe']);
      expect(uri!.queryParameters['Fields'], contains('CustomRating'));
    });
    test('${dialect.name} resolves direct library ownership and combines library, genre and unrated policy', () async {
      await kids.setChild(
        'child',
        parentId: 'adult',
        maxAge: 7,
        allowedLibraries: {'srv-1:kids'},
        animationOnly: true,
        allowUnrated: true,
      );
      final rows = [
        {
          'Id': 'safe',
          'Type': 'Movie',
          'Name': 'Animation',
          'OfficialRating': 'G',
          'Genres': ['Animation'],
        },
        {
          'Id': 'unrated',
          'Type': 'Movie',
          'Name': 'Unrated animation',
          'Genres': ['Animation'],
        },
        {
          'Id': 'adult',
          'Type': 'Movie',
          'Name': 'Adult animation',
          'OfficialRating': 'R',
          'Genres': ['Animation'],
        },
        {
          'Id': 'live',
          'Type': 'Movie',
          'Name': 'Live action',
          'OfficialRating': 'G',
          'Genres': ['Family'],
        },
      ];
      final requests = <Uri>[];
      final client = testJellyfinClient(
        connection: testJellyfinConnection(dialect: dialect),
        handler: (request) async {
          requests.add(request.url);
          if (request.url.path.endsWith('/Ancestors')) {
            return response([
              {
                'Id': request.url.path.contains('blocked') ? 'adult-library' : 'kids',
                'Type': 'CollectionFolder',
                'Name': 'Kids',
              },
            ]);
          }
          if (request.url.path.endsWith('/blocked')) return response({...rows.first, 'Id': 'blocked'});
          if (request.url.path.endsWith('/direct')) return response({...rows.first, 'Id': 'direct'});
          return response({'Items': rows, 'TotalRecordCount': rows.length});
        },
      );
      addTearDown(client.close);
      expect(
        (await client.fetchLibraryPagedContent('kids', query: const LibraryQuery())).items.map((item) => item.id),
        ['safe', 'unrated'],
      );
      expect(
        requests.first.queryParameters.containsKey('OfficialRatings'),
        isFalse,
        reason: 'Unrated content must not be removed by the request',
      );
      expect(requests.first.queryParameters['Fields'], contains('Genres'));
      expect((await client.fetchItem('direct'))?.id, 'direct');
      expect(await client.fetchItem('blocked'), isNull);
      expect((await client.fetchLibraryPagedContent('adult-library', query: const LibraryQuery())).items, isEmpty);
    });

    test('${dialect.name} filters library pages, direct details, and cached details', () async {
      final rows = [
        {'Id': 'safe', 'Type': 'Movie', 'Name': 'Family movie', 'OfficialRating': 'G'},
        {'Id': 'adult', 'Type': 'Movie', 'Name': 'Adult movie', 'OfficialRating': 'R'},
        {'Id': 'unrated', 'Type': 'Movie', 'Name': 'Unrated movie'},
      ];
      final client = testJellyfinClient(
        connection: testJellyfinConnection(dialect: dialect),
        handler: (request) async =>
            response(request.url.path.endsWith('/adult') ? rows[1] : {'Items': rows, 'TotalRecordCount': 3}),
      );
      addTearDown(client.close);
      final page = await client.fetchLibraryPagedContent('library', query: const LibraryQuery());
      expect(page.items.map((item) => item.id), ['safe']);
      expect(await client.fetchItem('adult'), isNull);
      expect(await client.fetchItemFreshCacheFirst('adult'), isNull);
      kids.selectProfile('adult');
      expect((await client.fetchLibraryPagedContent('library', query: const LibraryQuery())).items, hasLength(3));
      expect((await client.fetchItem('adult'))?.id, 'adult');
    });
  }
}
