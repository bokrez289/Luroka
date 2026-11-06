import '../../i18n/strings.g.dart';
import '../../models/catalog/catalog_item.dart';
import 'award_catalog.dart';
import 'catalog_source.dart';
import 'discovery_awards.dart';
import 'wikidata_awards_service.dart';

/// Stable shelf keys are shared by both public discovery sources and saved per
/// profile. Category membership keeps using the awards browser's 14-day cache.
class DiscoveryShelf {
  const DiscoveryShelf(this.id, this.label, {this.family, this.category});
  final String id;
  final String Function() label;
  final AwardFamily? family;
  final AwardCategory? category;
  String get title => label();
}

final discoveryShelves = [
  DiscoveryShelf('imdb100', () => t.lurokaDiscovery.imdb100),
  DiscoveryShelf('imdbTv100', () => t.lurokaDiscovery.imdbTv100),
  for (final family in awardFamilies)
    for (final category in family.categories)
      DiscoveryShelf(
        category.seedId ?? 'award:${family.id}:${category.id}',
        () => '${family.name} · ${category.title}',
        family: family,
        category: category,
      ),
];

const defaultDiscoveryShelves = <String>{
  'popularMovies',
  'popularShows',
  'trendingMovies',
  'trendingShows',
  'imdb100',
  'imdbTv100',
  'oscars',
  'award:oscars:international',
  'award:oscars:animated',
  'award:oscars:documentary',
  'emmys',
  'emmyComedy',
  'award:emmys:limited',
  'bafta',
  'cannes',
  'award:berlin:goldenBear',
  'award:venice:goldenLion',
  'award:goldenGlobes:dramaFilm',
  'award:goldenGlobes:comedyFilm',
  'award:sundance:dramatic',
  'award:toronto:audience',
};

final validDiscoveryShelfIds = <String>{
  'popularMovies',
  'popularShows',
  'trendingMovies',
  'trendingShows',
  for (final shelf in discoveryShelves) shelf.id,
};

Future<CatalogHub> loadDiscoveryShelf(
  DiscoveryShelf shelf,
  CatalogSourceId source,
  WikidataAwardsService awards,
) async {
  final seed = discoveryAwards.where((award) => award.id == shelf.id).firstOrNull;
  final items = seed != null
      ? [
          for (final entry in seed.entries)
            CatalogItem(
              source: source,
              kind: seed.kind,
              title: entry.title,
              year: entry.year,
              ids: CatalogItemIds(imdb: entry.imdb),
            ),
        ]
      : [for (final ref in await awards.load(shelf.category!, AwardSelection.winners)) ref.toCatalog(source)];
  return CatalogHub(
    id: shelf.id,
    title: shelf.title,
    page: CatalogPage(items: items),
  );
}
