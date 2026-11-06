import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/models/catalog/catalog_item.dart';
import 'package:luroka/services/catalog/catalog_source.dart';
import 'package:luroka/services/catalog/cinemeta_catalog_source.dart';
import 'package:luroka/services/catalog/discovery_awards.dart';
import '../../test_helpers/prefs.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(resetSharedPreferencesForTest);

  test('show schedule validates identity and dates, deduplicates numbers and omits unknown air dates', () async {
    final source = CinemetaCatalogSource(
      httpClient: MockClient(
        (_) async => http.Response(
          jsonEncode({
            'meta': {
              'id': 'tt12345',
              'status': 'Continuing',
              'videos': [
                {'season': 1, 'episode': 1, 'released': '2026-10-20T20:00:00Z', 'title': 'Latest'},
                {'season': 1, 'episode': 2, 'released': '2026-11-01T20:00:00Z', 'title': 'Next'},
                {'season': 1, 'episode': 2, 'released': '2026-11-01T20:00:00Z'},
                {'season': 1, 'episode': 3, 'released': 'TBA'},
                {'season': 0, 'episode': 1, 'released': '2026-10-22'},
              ],
            },
          }),
          200,
        ),
      ),
    );
    addTearDown(source.dispose);
    final schedule = await source.fetchShowSchedule('tt12345');
    expect(schedule.ended, isFalse);
    expect(schedule.episodes.map((e) => e.number), [1, 2]);
    expect(schedule.latestAndUpcoming(DateTime.utc(2026, 10, 30)).map((e) => e.title), ['Latest', 'Next']);
    expect((await source.fetchShowSchedule('tt999')).episodes, isEmpty);
  });

  test('chart and award memberships are complete before library filtering, with no per-title network fanout', () async {
    final source = CinemetaCatalogSource(
      httpClient: MockClient((_) async => throw StateError('Unexpected network request')),
    );
    addTearDown(source.dispose);
    final hubs = await source.fetchHubs(limit: 25);
    expect(hubs.firstWhere((hub) => hub.id == 'imdb100').page.items.length, 100);
    expect(hubs.firstWhere((hub) => hub.id == 'imdbTv100').page.items.length, 100);
    expect(hubs.firstWhere((hub) => hub.id == 'oscars').page.items.length, 98);
    expect(hubs.firstWhere((hub) => hub.id == 'emmys').page.items.length, greaterThan(30));
    expect(hubs.firstWhere((hub) => hub.id == 'emmyComedy').page.items.length, greaterThan(25));
    for (final hub in hubs) {
      final ids = hub.page.items.map((item) => item.ids.imdb).toList();
      expect(ids.toSet().length, ids.length, reason: hub.id);
      expect(ids.every((id) => id != null && RegExp(r'^tt\d+$').hasMatch(id)), isTrue, reason: hub.id);
      expect(hub.page.hasMore, isFalse, reason: 'The library matcher must see the whole ${hub.id} collection.');
    }
    final pages = await Future.wait([
      for (var page = 1; page <= 4; page++) source.fetchHub('imdb100', page: page, limit: 25),
    ]);
    expect(
      pages.expand((page) => page.items).map((item) => item.ids.imdb).toList(),
      hubs.firstWhere((hub) => hub.id == 'imdb100').page.items.map((item) => item.ids.imdb).toList(),
    );
    expect(discoveryAwards.every((collection) => collection.sourceUrl.startsWith('https://')), isTrue);
  });

  test('public popularity catalog needs no credential and preserves IMDb rating attribution', () async {
    var calls = 0;
    final source = CinemetaCatalogSource(
      httpClient: MockClient((request) async {
        calls++;
        expect(request.url.toString(), 'https://v3-cinemeta.strem.io/catalog/movie/top.json');
        expect(request.headers.containsKey('Authorization'), isFalse);
        return http.Response(
          jsonEncode({
            'metas': [
              {
                'id': 'tt12345',
                'name': 'A film',
                'imdbRating': '8.1',
                'releaseInfo': '2025',
                'poster': 'https://example.com/a.jpg',
              },
              {'id': 'not-imdb', 'name': 'Invalid'},
            ],
          }),
          200,
        );
      }),
    );
    addTearDown(source.dispose);
    final page = await source.fetchRow(CatalogRowId.popularMovies);
    expect(page.items.single.source, CatalogSourceId.cinemeta);
    expect(page.items.single.ids.imdb, 'tt12345');
    expect(page.items.single.ratings!.single.source, 'imdb');
    expect(page.items.single.ratings!.single.value, 8.1);
    await source.fetchRow(CatalogRowId.popularMovies);
    expect(calls, 1);
    await source.invalidateDiscoveryCache();
    await source.fetchRow(CatalogRowId.popularMovies);
    expect(calls, 2, reason: 'Explicit refresh must bypass the public catalog TTL.');
  });

  test('detail enriches synopsis and rejects a different IMDb title', () async {
    var wrongIdentity = false;
    final source = CinemetaCatalogSource(
      httpClient: MockClient(
        (request) async => http.Response(
          jsonEncode({
            'meta': {
              'id': wrongIdentity ? 'tt99999' : 'tt12345',
              'name': 'Full title',
              'description': 'A full synopsis',
              'imdbRating': '8.5',
              'runtime': '120 min',
            },
          }),
          200,
        ),
      ),
    );
    addTearDown(source.dispose);
    final item = CatalogItem(
      source: CatalogSourceId.cinemeta,
      kind: MediaKind.movie,
      title: 'Row title',
      ids: const CatalogItemIds(imdb: 'tt12345'),
    );
    final enriched = await source.enrichPreview(item);
    expect(enriched.ids.imdb, 'tt12345');
    expect(enriched.overview, 'A full synopsis');
    expect(enriched.runtimeMinutes, 120);
    wrongIdentity = true;
    final other = CatalogItem(
      source: CatalogSourceId.cinemeta,
      kind: MediaKind.show,
      title: 'Original',
      ids: const CatalogItemIds(imdb: 'tt54321'),
    );
    expect((await source.enrichPreview(other)).title, 'Original');
  });

  test('invalid or missing IMDb scores never become a badge', () {
    for (final score in ['N/A', 'NaN', '11', '0']) {
      final item = CinemetaCatalogSource.mapItem({
        'id': 'tt12345',
        'name': 'Title',
        'imdbRating': score,
      }, MediaKind.movie)!;
      expect(item.ratings, isNull);
    }
  });
}
