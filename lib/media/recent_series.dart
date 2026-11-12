import 'media_item.dart';
import 'media_kind.dart';

/// Group already loaded episodes without extra server calls. Pagination keeps
/// counting the original rows, so several episodes of a show cannot skip pages.
List<MediaItem> groupRecentSeries(Iterable<MediaItem> items) {
  final grouped = <String, MediaItem>{};
  for (final item in items) {
    final seriesId = (item.kind == MediaKind.episode) ? item.grandparentId : null;
    final row = seriesId == null || seriesId.isEmpty
        ? item
        : item.copyWith(
            id: seriesId,
            kind: MediaKind.show,
            title: item.grandparentTitle ?? item.displayTitle,
            titleSort: item.grandparentTitle,
            thumbPath: item.grandparentThumbPath,
            artPath: item.grandparentArtPath,
            backdropPaths: item.grandparentBackdropPaths,
            summary: null,
            year: null,
            originallyAvailableAt: null,
            durationMs: null,
            viewOffsetMs: null,
            viewCount: null,
            index: null,
            parentIndex: null,
            parentId: null,
            parentTitle: null,
            grandparentId: null,
            grandparentTitle: null,
            rating: null,
            ratings: null,
            mediaVersions: null,
            leafCount: null,
            viewedLeafCount: null,
            childCount: null,
            raw: null,
          );
    final existing = grouped[row.globalKey];
    if (existing == null) {
      grouped[row.globalKey] = row;
    } else if ((item.kind != MediaKind.episode)) {
      // Prefer real series metadata, retaining its latest episode addition date.
      grouped[row.globalKey] = item.copyWith(addedAt: existing.addedAt ?? item.addedAt);
    }
  }
  return grouped.values.toList();
}
