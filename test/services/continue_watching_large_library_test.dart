import 'package:flutter_test/flutter_test.dart';
import 'package:drift/native.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/media/home_progress.dart';
import 'package:luroka/services/plex_api_cache.dart';

import '../test_helpers/backend_client_fixtures.dart';
import '../test_helpers/http_fixtures.dart';

Map<String, Object?> episode(String id, String series, {String? played, bool started = false, String? added}) => {
  'Id': id,
  'Name': id,
  'Type': 'Episode',
  'SeriesId': series,
  'DateCreated': added ?? '2000-01-01T00:00:00Z',
  'UserData': {'PlaybackPositionTicks': started ? 400000000 : 0, 'LastPlayedDate': ?played},
};

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('Plex refills a preview whose first candidates belong to hidden libraries', () async {
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    PlexApiCache.initialize(db);
    addTearDown(db.close);
    final requests = <int>[];
    final client = testPlexClient(
      handler: (request) async {
        final count = int.parse(request.url.queryParameters['count'] ?? '20');
        requests.add(count);
        final rows = [
          for (var i = 0; i < 10; i++)
            {
              'ratingKey': '$i',
              'type': 'movie',
              'title': 'Movie $i',
              'librarySectionID': i < 5 ? 1 : 2,
              'lastViewedAt': 100 - i,
            },
        ].take(count).toList();
        return jsonResponse({
          'MediaContainer': {
            'Hub': [
              {'hubIdentifier': 'home.continue', 'type': 'movie', 'size': rows.length, 'Metadata': rows},
            ],
          },
        });
      },
    );
    addTearDown(client.close);
    final rows = await client.fetchContinueWatching(count: 3, excludedLibraryIds: {'1'});
    expect(rows.map((item) => item.id), ['5', '6', '7']);
    expect(requests, [3, 6, 12]);
  });

  test('Jellyfin refills after multiple resumable episodes of one show', () async {
    final offsets = <int>[];
    final client = testJellyfinClient(
      handler: (request) async {
        if (request.url.path == '/Shows/NextUp') return jsonResponse({'Items': []});
        final start = int.parse(request.url.queryParameters['StartIndex'] ?? '0');
        offsets.add(start);
        return jsonResponse({
          'Items': start == 0
              ? [episode('first', 'same', started: true), episode('second', 'same', started: true)]
              : [episode('third', 'other', started: true)],
        });
      },
    );
    addTearDown(client.close);
    final rows = await client.fetchContinueWatching(count: 2);
    expect(rows.map((item) => item.id), ['first', 'third']);
    expect(offsets, [0, 2]);
  });

  test('Emby retains viewing order after history enrichment fails, including split shelves', () async {
    var failHistory = false;
    final client = testEmbyClient(
      handler: (request) async {
        if (request.url.path.endsWith('/Views')) {
          return jsonResponse({
            'Items': [
              {'Id': 'tv', 'Name': 'TV', 'CollectionType': 'tvshows'},
            ],
          });
        }
        if (request.url.path.endsWith('/Items/Resume')) {
          return jsonResponse({
            'Items': [
              episode('recent-next', 'recent'),
              episode('resuming', 'resume', started: true, played: '2026-11-17T00:00:00Z'),
              episode('older-next', 'older', added: '2026-11-19T00:00:00Z'),
            ],
          });
        }
        if (failHistory) return jsonResponse({'Error': 'busy'}, status: 500);
        return jsonResponse({
          'Items': [
            episode('recent-played', 'recent', played: '2026-11-18T00:00:00Z'),
            episode('older-played', 'older', played: '2026-11-16T00:00:00Z'),
          ],
        });
      },
    );
    addTearDown(client.close);
    final initial = await client.fetchContinueWatchingByLibrary(includedLibraryIds: {'tv'}, count: 48, splitRows: true);
    expect(initial.map((item) => item.id), ['recent-next', 'resuming', 'older-next']);
    failHistory = true;
    final refreshed = await client.fetchContinueWatchingByLibrary(
      includedLibraryIds: {'tv'},
      count: 48,
      splitRows: true,
    );
    expect(refreshed.map((item) => item.id), initial.map((item) => item.id));
    expect(refreshed.where(isHomeNextUp).map((item) => item.id), ['recent-next', 'older-next']);
  });

  test('Emby pages past 300 resume entries to fill Next Up without losing hide-aware semantics', () async {
    final offsets = <int>[];
    final client = testEmbyClient(
      handler: (request) async {
        if (request.url.path.endsWith('/Items/Resume')) {
          final start = int.parse(request.url.queryParameters['StartIndex'] ?? '0');
          offsets.add(start);
          return jsonResponse({
            'TotalRecordCount': 301,
            'Items': start == 0
                ? [for (var i = 0; i < 300; i++) episode('resume-$i', 'show-$i', started: true)]
                : [episode('next', 'next-show')],
          });
        }
        return jsonResponse({'Items': []});
      },
    );
    addTearDown(client.close);
    final page = await client.fetchMoreHubItemsPage('home.nextup', start: 0, size: 16);
    expect(offsets, [0, 300]);
    expect(page.items.map((item) => item.id), ['next']);
  });

  test('scoped Emby Home requests a preview and refills a sparse shelf without a total', () async {
    final pages = <(int, int)>[];
    final client = testEmbyClient(handler: (request) async {
      if (request.url.path.endsWith('/Views')) {
        return jsonResponse({'Items': [{'Id': 'tv', 'Name': 'TV', 'CollectionType': 'tvshows'}]});
      }
      if (!request.url.path.endsWith('/Items/Resume')) return jsonResponse({'Items': []});
      final query = request.url.queryParameters;
      expect(query['ParentId'], 'tv');
      final start = int.parse(query['StartIndex'] ?? '0');
      final limit = int.parse(query['Limit']!);
      pages.add((start, limit));
      return jsonResponse({'Items': start == 0
          ? [for (var i = 0; i < limit; i++) episode('r$i', 's$i', started: true)]
          : [episode('next', 'another')]});
    });
    addTearDown(client.close);
    final rows = await client.fetchContinueWatchingByLibrary(
      includedLibraryIds: {'tv'}, count: 17, splitRows: true,
    );
    expect(pages, [(0, 34), (34, 300)]);
    expect(rows.map((row) => row.id), contains('next'));
  });

  test('Emby history scan pages through a binge instead of starving another series', () async {
    final offsets = <int>[];
    final client = testEmbyClient(
      handler: (request) async {
        if (request.url.path.endsWith('/Items/Resume')) {
          return jsonResponse({
            'Items': [episode('next', 'wanted')],
          });
        }
        final start = int.parse(request.url.queryParameters['StartIndex'] ?? '0');
        offsets.add(start);
        return jsonResponse({
          'Items': start == 0
              ? [for (var i = 0; i < 192; i++) episode('binge-$i', 'binge', played: '2026-11-18T00:00:00Z')]
              : [episode('played', 'wanted', played: '2026-11-17T00:00:00Z')],
        });
      },
    );
    addTearDown(client.close);
    final rows = await client.fetchContinueWatching();
    expect(offsets, [0, 192]);
    expect(rows.single.lastViewedAt, DateTime.utc(2026, 11, 17).millisecondsSinceEpoch ~/ 1000);
  });

  test('Jellyfin caches series dates across episodes but isolates accounts and removed rows', () async {
    var failHistory = false;
    var removed = false;
    final client = testJellyfinClient(
      handler: (request) async {
        if (request.url.path.endsWith('/Resume')) return jsonResponse({'Items': []});
        if (request.url.path == '/Shows/NextUp') {
          return jsonResponse({
            'Items': removed ? [] : [episode(failHistory ? 'next-2' : 'next-1', 'show')],
          });
        }
        if (failHistory) return jsonResponse({}, status: 500);
        return jsonResponse({
          'Items': [episode('played', 'show', played: '2026-11-18T00:00:00Z')],
        });
      },
    );
    addTearDown(client.close);
    final first = await client.fetchContinueWatching();
    failHistory = true;
    final second = await client.fetchContinueWatching();
    expect(second.single.id, 'next-2');
    expect(second.single.lastViewedAt, first.single.lastViewedAt);
    removed = true;
    expect(await client.fetchContinueWatching(), isEmpty);

    final other = testJellyfinClient(
      handler: (request) async => jsonResponse({
        'Items': request.url.path == '/Shows/NextUp' ? [episode('next-2', 'show')] : [],
      }),
    );
    addTearDown(other.close);
    expect((await other.fetchContinueWatching()).single.lastViewedAt, isNull);
  });
}
