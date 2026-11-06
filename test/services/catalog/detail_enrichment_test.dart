import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/detail_enrichment.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/models/catalog/catalog_item.dart';
import 'package:luroka/services/catalog/tmdb_catalog_source.dart';
import 'package:luroka/services/catalog/cinemeta_catalog_source.dart';
import 'package:luroka/services/jellyfin_mappers.dart';
import 'package:luroka/services/plex_mappers.dart';
import '../../test_helpers/prefs.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(resetSharedPreferencesForTest);

  test('external identity, official ordering, deduplication and review attribution survive caching', () async {
    var requests = 0;
    final source = TmdbCatalogSource(
      'private',
      httpClient: MockClient((request) async {
        requests++;
        final path = request.url.path;
        if (path.contains('/find/')) {
          expect(request.url.queryParameters['external_source'], 'imdb_id');
          return http.Response('{"movie_results":[{"id":42}]}', 200);
        }
        expect(path, startsWith('/3/movie/42/'));
        if (path.endsWith('/videos')) {
          return http.Response(
            jsonEncode({
              'results': [
                {'key': 'abcdefghijk', 'site': 'YouTube', 'name': 'Fan trailer', 'type': 'Trailer'},
                {'key': '12345678901', 'site': 'YouTube', 'name': 'Official', 'type': 'Trailer', 'official': true},
                {'key': '12345678901', 'site': 'YouTube', 'name': 'Duplicate', 'type': 'Trailer'},
                {'key': 'not-a-video', 'site': 'Vimeo', 'name': 'Unsupported', 'type': 'Trailer'},
              ],
            }),
            200,
          );
        }
        return http.Response(
          jsonEncode({
            'results': [
              {
                'id': 'r1',
                'author': 'username',
                'author_details': {'name': 'Reviewer', 'rating': 8},
                'content': 'A thoughtful review.',
                'created_at': '2026-10-01T12:00:00Z',
              },
              {'id': 'r2', 'author': 'No rating', 'content': 'Another review.'},
              {'id': 'r3', 'content': '  '},
            ],
          }),
          200,
        );
      }),
    );
    addTearDown(source.dispose);
    final data = await source.fetchDetailEnrichment(MediaKind.movie, const CatalogItemIds(imdb: 'tt1234567'));
    expect(data.videos.map((v) => v.name), ['Official', 'Fan trailer']);
    expect(data.reviews.length, 2);
    expect(data.reviews.first.source, 'TMDb');
    expect(data.reviews.first.author, 'Reviewer');
    expect(data.reviews.first.rating, 8);
    expect(data.reviews.last.rating, isNull);
    await source.fetchDetailEnrichment(MediaKind.movie, const CatalogItemIds(imdb: 'tt1234567'));
    expect(requests, 3);
  });

  test('missing localized reviews fall back to English independently of videos', () async {
    final source = TmdbCatalogSource(
      'private',
      httpClient: MockClient((request) async {
        final english = request.url.queryParameters['language'] == 'en-US';
        return http.Response(
          jsonEncode({
            'results': request.url.path.endsWith('reviews') && english
                ? [
                    {'id': 'r', 'author': 'Author', 'content': 'English review'},
                  ]
                : [],
          }),
          200,
        );
      }),
    );
    addTearDown(source.dispose);
    final data = await source.fetchDetailEnrichment(MediaKind.show, const CatalogItemIds(tmdb: 3), language: 'de-DE');
    expect(data.reviews.single.content, 'English review');
    expect(data.videos, isEmpty);
  });

  test('Cinemeta verifies title identity and returns all unique key-free trailers', () async {
    final source = CinemetaCatalogSource(
      httpClient: MockClient(
        (request) async => http.Response(
          jsonEncode({
            'meta': {
              'id': request.url.path.contains('tt0000000') ? 'tt9999999' : 'tt1234567',
              'trailers': [
                {'source': 'abcdefghijk', 'name': 'First'},
                {'source': '12345678901', 'name': 'Second'},
                {'source': 'abcdefghijk'},
                {'source': 'invalid'},
              ],
            },
          }),
          200,
        ),
      ),
    );
    addTearDown(source.dispose);
    expect((await source.fetchTitleVideos(MediaKind.movie, 'tt1234567')).length, 2);
    expect(await source.fetchTitleVideos(MediaKind.movie, 'tt0000000'), isEmpty);
  });

  test('director identities and server reviews survive Plex mapping and server stamping', () {
    final dto = PlexMetadataDto.fromJson({
      'ratingKey': '1',
      'type': 'movie',
      'title': 'Title',
      'Director': [
        {'id': 55, 'tag': 'Director Name'},
      ],
      'Review': [
        {'tag': 'Critic', 'source': 'Publication', 'text': 'Review text'},
      ],
    }).copyWith(serverId: ServerId('server'));
    final item = PlexMappers.mediaItem(dto);
    expect(detailDirectors(item).single.id, '55');
    expect((item.raw!['Review'] as List).single['source'], 'Publication');
  });

  test('Jellyfin director navigation uses real director ID, never an actor with the same name', () {
    final item = JellyfinMappers.mediaItem({
      'Id': '1',
      'Type': 'Movie',
      'Name': 'Title',
      'People': [
        {'Id': 'actor', 'Type': 'Actor', 'Name': 'Same Name'},
        {'Id': 'director', 'Type': 'Director', 'Name': 'Same Name'},
      ],
    }, serverId: ServerId('server'), absolutizer: null);
    expect(detailDirectors(item!).single.id, 'director');
  });
}
