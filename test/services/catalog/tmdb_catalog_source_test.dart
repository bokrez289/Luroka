import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/models/catalog/catalog_item.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/services/catalog/catalog_source.dart';
import 'package:luroka/services/catalog/tmdb_catalog_source.dart';
import 'package:luroka/services/sensitive_prefs.dart';
import 'package:luroka/utils/app_logger.dart';
import '../../test_helpers/prefs.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(resetSharedPreferencesForTest);

  test('weekly movie feed paginates, excludes adult titles, attributes TMDb and caches without secrets', () async {
    var requests = 0;
    final source = TmdbCatalogSource(
      'test-private-key',
      httpClient: MockClient((request) async {
        requests++;
        expect(request.url.path, '/3/trending/movie/week');
        expect(request.url.queryParameters['page'], '2');
        expect(request.url.queryParameters['api_key'], 'test-private-key');
        return http.Response(
          jsonEncode({
            'page': 2,
            'total_pages': 3,
            'total_results': 60,
            'results': [
              {
                'id': 1,
                'title': 'A movie',
                'vote_average': 7.2,
                'release_date': '2025-01-02',
                'poster_path': '/poster.jpg',
              },
              {'id': 2, 'title': 'Adult', 'adult': true},
            ],
          }),
          200,
        );
      }),
    );
    addTearDown(source.dispose);
    final page = await source.fetchRow(CatalogRowId.trendingMovies, page: 2);
    expect(page.items.single.title, 'A movie');
    expect(page.items.single.ratings!.single.source, 'tmdb');
    expect(page.items.single.year, 2025);
    expect(page.hasMore, isTrue);
    await source.fetchRow(CatalogRowId.trendingMovies, page: 2);
    expect(requests, 1);
    final prefs = await BaseSharedPreferencesService.sharedCache();
    expect(prefs.keys.join(), isNot(contains('test-private-key')));
    for (final key in prefs.keys) {
      expect('${prefs.get(key)}', isNot(contains('test-private-key')));
    }
    expect(isSensitivePrefKey('luroka_tmdb_credential'), isTrue);
  });

  test('credential validation is uncached and token uses an authorization header', () async {
    var requests = 0;
    final source = TmdbCatalogSource(
      'test.read.token',
      httpClient: MockClient((request) async {
        requests++;
        expect(request.url.queryParameters.containsKey('api_key'), isFalse);
        expect(request.headers['Authorization'], 'Bearer test.read.token');
        return http.Response('{"success":true}', 200);
      }),
    );
    addTearDown(source.dispose);
    await source.validate();
    await source.validate();
    expect(requests, 2);
  });

  test('transport failures never expose the credential', () async {
    final source = TmdbCatalogSource(
      'private-secret',
      httpClient: MockClient((request) async {
        throw http.ClientException('private-secret', request.url);
      }),
    );
    addTearDown(source.dispose);
    await expectLater(
      source.fetchRow(CatalogRowId.trendingMovies),
      throwsA(predicate((error) => !error.toString().contains('private-secret'))),
    );
  });

  test('TMDb HTTP failure logs its status without the credential', () async {
    MemoryLogOutput.clearLogs();
    final source = TmdbCatalogSource(
      'private-secret',
      httpClient: MockClient((_) async => http.Response('private-secret', 429)),
    );
    addTearDown(source.dispose);
    await expectLater(source.fetchRow(CatalogRowId.trendingMovies), throwsStateError);
    final entries = MemoryLogOutput.getLogs().map((entry) => '${entry.message} ${entry.error}').join('\n');
    expect(entries, contains('TMDb request failed with HTTP 429'));
    expect(entries, isNot(contains('private-secret')));
  });

  test('IMDb score is accepted only for the requested IMDb identity and cached', () async {
    var requests = 0;
    final source = TmdbCatalogSource(
      'test-key',
      httpClient: MockClient((request) async {
        requests++;
        expect(request.url.host, 'v3-cinemeta.strem.io');
        expect(request.url.queryParameters, isEmpty);
        expect(request.headers.containsKey('Authorization'), isFalse);
        return http.Response('{"meta":{"imdb_id":"tt1234","imdbRating":"8.3"}}', 200);
      }),
    );
    addTearDown(source.dispose);
    final scores = await source.fetchCommunityRatings(MediaKind.movie, const CatalogItemIds(imdb: 'tt1234'));
    expect(scores.single.source, 'imdb');
    expect(scores.single.value, 8.3);
    await source.fetchCommunityRatings(MediaKind.movie, const CatalogItemIds(imdb: 'tt1234'));
    expect(requests, 1);
  });

  test('mismatched identity or invalid IMDb score cannot become a badge', () async {
    final source = TmdbCatalogSource(
      'test-key',
      httpClient: MockClient((request) async => http.Response('{"meta":{"imdb_id":"tt9999","imdbRating":"8.3"}}', 200)),
    );
    addTearDown(source.dispose);
    expect(await source.fetchCommunityRatings(MediaKind.show, const CatalogItemIds(imdb: 'tt1234')), isEmpty);
  });
}
