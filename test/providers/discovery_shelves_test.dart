import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/providers/catalog_sources_provider.dart';
import 'package:luroka/providers/explore_provider.dart';
import 'package:luroka/services/catalog/award_catalog.dart';
import 'package:luroka/services/catalog/discovery_shelves.dart';
import 'package:luroka/services/catalog/wikidata_awards_service.dart';

import '../test_helpers/prefs.dart';

class _GatedAwards extends WikidataAwardsService {
  final pending = <({AwardCategory category, Completer<List<AwardTitleReference>> result})>[];
  int active = 0;
  int maximumActive = 0;

  @override
  Future<List<AwardTitleReference>> load(AwardCategory category, AwardSelection mode, {bool refresh = false}) {
    expect(mode, AwardSelection.winners);
    active++;
    if (active > maximumActive) maximumActive = active;
    final result = Completer<List<AwardTitleReference>>();
    pending.add((category: category, result: result));
    return result.future.whenComplete(() => active--);
  }

  void releaseAll() {
    for (final request in pending.toList()) {
      request.result.complete([
        AwardTitleReference(
          imdb: 'tt${request.category.qid.substring(1)}',
          title: request.category.title,
          kind: request.category.kind,
        ),
      ]);
      pending.remove(request);
    }
  }
}

void main() {
  setUp(resetSharedPreferencesForTest);

  test('shelf choices survive restart, remain profile scoped, and preserve an empty selection', () async {
    var sources = CatalogSourcesProvider(enablePublicCatalog: true);
    await sources.onActiveProfileChanged('one');
    expect(sources.discoveryShelfIds, containsAll(['award:oscars:animated', 'award:berlin:goldenBear']));
    expect(defaultDiscoveryShelves.difference(validDiscoveryShelfIds), isEmpty);
    await sources.setDiscoveryShelves({'imdb100', 'award:oscars:actor', 'invalid'});
    sources.dispose();
    sources = CatalogSourcesProvider(enablePublicCatalog: true);
    addTearDown(sources.dispose);
    await sources.onActiveProfileChanged('one');
    expect(sources.discoveryShelfIds, {'imdb100', 'award:oscars:actor'});
    await sources.onActiveProfileChanged('two');
    expect(sources.discoveryShelfIds, defaultDiscoveryShelves);
    await sources.setDiscoveryShelves({});
    await sources.onActiveProfileChanged('one');
    expect(sources.discoveryShelfIds, {'imdb100', 'award:oscars:actor'});
    await sources.onActiveProfileChanged('two');
    expect(sources.discoveryShelfIds, isEmpty);
  });

  test('cached charts publish before slow categories and removed shelves cannot return from an old load', () async {
    final sources = CatalogSourcesProvider(enablePublicCatalog: true);
    final awards = _GatedAwards();
    addTearDown(sources.dispose);
    addTearDown(awards.dispose);
    await sources.setDiscoveryShelves({'oscars', 'award:oscars:animated', 'award:oscars:international'});
    final explore = ExploreProvider(sources, awards: awards);
    addTearDown(explore.dispose);
    final firstLoad = explore.load();
    await Future<void>.delayed(Duration.zero);
    expect(explore.rowHubs.map((row) => row.providerHubId), ['oscars']);
    expect(awards.pending.length, 2);

    await sources.setDiscoveryShelves({'imdb100'});
    await explore.load();
    expect(explore.rowHubs.map((row) => row.providerHubId), ['imdb100']);
    awards.releaseAll();
    await firstLoad;
    expect(explore.rowHubs.map((row) => row.providerHubId), ['imdb100']);
  });

  test('only selected award categories fetch with at most three membership requests in flight', () async {
    final sources = CatalogSourcesProvider(enablePublicCatalog: true);
    final awards = _GatedAwards();
    addTearDown(sources.dispose);
    addTearDown(awards.dispose);
    const selected = {
      'award:oscars:animated',
      'award:oscars:international',
      'award:oscars:documentary',
      'award:berlin:goldenBear',
      'award:venice:goldenLion',
    };
    await sources.setDiscoveryShelves(selected);
    final explore = ExploreProvider(sources, awards: awards);
    addTearDown(explore.dispose);
    final load = explore.load();
    await Future<void>.delayed(Duration.zero);
    expect(awards.pending.length, 3);
    awards.releaseAll();
    await Future<void>.delayed(Duration.zero);
    expect(awards.pending.length, 2);
    awards.releaseAll();
    await load;
    expect(awards.maximumActive, 3);
    expect(explore.rowHubs.map((row) => row.providerHubId).toSet(), selected);
  });
}
