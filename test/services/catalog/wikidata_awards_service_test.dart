import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/services/catalog/award_catalog.dart';
import 'package:luroka/services/catalog/wikidata_awards_service.dart';

import '../../test_helpers/prefs.dart';

Map<String, Object?> row(String imdb, String title, {String kind = 'movie', String date = '2024-01-01T00:00:00Z'}) => {
  'imdb': {'value': imdb},
  'workLabel': {'value': title},
  'kind': {'value': kind},
  'date': {'value': date},
  'tmdb': {'value': '123'},
};

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    await BaseSharedPreferencesService.sharedCache();
  });

  test('catalog covers requested Oscar, Emmy, and Berlin categories with unique stable identities', () {
    final oscars = awardFamilies.firstWhere((family) => family.id == 'oscars');
    expect(
      oscars.categories.map((category) => category.id),
      containsAll(['international', 'animated', 'actor', 'actress', 'documentary']),
    );
    final emmys = awardFamilies.firstWhere((family) => family.id == 'emmys');
    expect(
      emmys.categories.map((category) => category.id),
      containsAll(['comedy', 'drama', 'limited', 'animated', 'comedyActor']),
    );
    expect(awardFamilies.firstWhere((family) => family.id == 'berlin').categories.first.qid, 'Q154590');
    expect(
      awardFamilies.map((family) => family.id),
      containsAll(['cannes', 'venice', 'sundance', 'toronto', 'saturn', 'goldenGlobes', 'bafta']),
    );
    for (final family in awardFamilies) {
      expect(family.categories.map((category) => category.id).toSet(), hasLength(family.categories.length));
      expect(family.categories.every((category) => RegExp(r'^Q\d+$').hasMatch(category.qid)), isTrue);
    }
  });

  test('actor winners and nominees resolve the awarded work using different Wikidata properties', () {
    final actor = awardFamilies.first.categories.firstWhere((category) => category.id == 'actor');
    final winners = WikidataAwardsService.buildQuery(actor, AwardSelection.winners);
    final nominees = WikidataAwardsService.buildQuery(actor, AwardSelection.nominees);
    expect(winners, contains('ps:P166 wd:Q103916'));
    expect(nominees, contains('ps:P1411 wd:Q103916'));
    expect(winners, contains('pq:P1686 ?work'));
    expect(nominees, contains('pq:P1686 ?work'));
    expect(winners, contains('wdt:P345 ?imdb'));
  });

  test('parsing deduplicates releases, retains earliest release year and separates TV/film identities', () {
    final titles = WikidataAwardsService.parseBindings([
      row('tt1', 'A winner', date: '2025-01-01'),
      row('tt1', 'A winner', date: '2024-01-01'),
      row('tt2', 'Comedy winner', kind: 'show', date: '2023-01-01'),
      row('nm1', 'An actor'),
      row('tt3', 'Q123'),
      row('tt4', 'Undated', date: 'bad'),
    ], MediaKind.movie);
    expect(titles, hasLength(3));
    expect(titles.first.year, 2024);
    expect(titles[1].kind, MediaKind.show);
    expect(titles.last.year, isNull);
    expect(titles.first.tmdb, 123);
  });

  test('membership caches survive restart and winners never satisfy nominee requests', () async {
    var requests = 0;
    final category = awardFamilies.first.categories.firstWhere((category) => category.id == 'international');
    final client = MockClient((request) async {
      requests++;
      return http.Response(
        jsonEncode({
          'results': {
            'bindings': [row('tt1', 'International winner')],
          },
        }),
        200,
      );
    });
    final first = WikidataAwardsService(httpClient: client);
    await Future.wait([first.load(category, AwardSelection.winners), first.load(category, AwardSelection.winners)]);
    expect(requests, 1);
    first.dispose();
    BaseSharedPreferencesService.resetForTesting();
    await BaseSharedPreferencesService.sharedCache();
    final second = WikidataAwardsService(
      httpClient: MockClient((request) async {
        requests++;
        expect(request.url.queryParameters['query'], contains('P1411'));
        return http.Response(
          jsonEncode({
            'results': {
              'bindings': [row('tt2', 'A nominee')],
            },
          }),
          200,
        );
      }),
    );
    addTearDown(second.dispose);
    expect((await second.load(category, AwardSelection.winners)).single.title, 'International winner');
    expect(requests, 1);
    expect((await second.load(category, AwardSelection.nominees)).single.title, 'A nominee');
    expect(requests, 2);
  });

  test('outage uses stale cache or headline winner snapshot, never fabricates nominee membership', () async {
    final now = DateTime.utc(2026, 10, 30);
    final category = awardFamilies.first.categories.first;
    final service = WikidataAwardsService(
      httpClient: MockClient((_) async => http.Response('unavailable', 503)),
      now: () => now,
    );
    addTearDown(service.dispose);
    expect(await service.load(category, AwardSelection.winners), isNotEmpty);
    await expectLater(service.load(category, AwardSelection.nominees), throwsStateError);
    final prefs = await BaseSharedPreferencesService.sharedCache();
    await prefs.setString(
      'luroka_award_categories_v1:Q102427:nominees',
      jsonEncode({
        'at': now.subtract(const Duration(days: 30)).toIso8601String(),
        'titles': [const AwardTitleReference(imdb: 'tt2', title: 'Cached nominee', kind: MediaKind.movie).toJson()],
      }),
    );
    expect((await service.load(category, AwardSelection.nominees)).single.title, 'Cached nominee');
  });
}
