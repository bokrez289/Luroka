import 'media_item.dart';
import 'media_kind.dart';
import 'catalog_item_ref.dart';
import 'movie_copy_groups.dart';
import 'search_hit.dart';

/// Keeps ranked order and people/episodes intact while folding library movie
/// and show copies. The representative carries the visible copy count.
List<SearchHit> groupSearchMovies(List<SearchHit> hits, Iterable<MediaItem> candidates) {
  bool groupable(MediaItem item) =>
      !item.isCatalogItem && (item.kind == MediaKind.movie || item.kind == MediaKind.show);
  final groups = MovieCopyGroups([
    ...candidates.where(groupable),
    ...hits.whereType<MediaSearchHit>().map((hit) => hit.item).where(groupable),
  ]);
  final seen = <String>{};
  return [
    for (final hit in hits)
      if (hit is! MediaSearchHit || !groupable(hit.item))
        hit
      else if (seen.add(groups.copiesFor(hit.item).first.globalKey))
        MediaSearchHit(
          hit.item.copyWith(raw: {...?hit.item.raw, 'lurokaCopyCount': groups.copiesFor(hit.item).length}),
        ),
  ];
}
