import 'library_query.dart';
import 'media_backend.dart';
import 'media_item.dart';
import 'media_kind.dart';
import '../utils/json_utils.dart';

enum StudioSort { titleAscending, titleDescending, newest, oldest, recentlyAdded, rating, recentlyAddedEpisode }

const studioEpisodeAddedAtKey = 'studioEpisodeAddedAt';

/// Preserve real episode-addition dates, never a show's original import date.
int? studioEpisodeAddedAt(MediaItem item) {
  for (final key in [studioEpisodeAddedAtKey, 'lastEpisodeAddedAt', 'DateLastMediaAdded', 'DateLastContentAdded']) {
    final raw = item.raw?[key];
    final seconds = flexibleInt(raw);
    if (seconds != null) return seconds;
    if (raw is String) {
      final date = DateTime.tryParse(raw);
      if (date != null) return date.millisecondsSinceEpoch ~/ 1000;
    }
  }
  return null;
}

extension StudioSortQuery on StudioSort {
  bool availableFor(MediaKind? kind) => this != StudioSort.recentlyAddedEpisode || kind == MediaKind.show;

  LibrarySort forBackend(MediaBackend backend) => LibrarySort(
    field: switch (this) {
      StudioSort.titleAscending || StudioSort.titleDescending => backend == MediaBackend.plex ? 'titleSort' : 'title',
      StudioSort.newest || StudioSort.oldest => 'originallyAvailableAt',
      StudioSort.recentlyAdded => 'addedAt',
      StudioSort.rating => 'rating',
      StudioSort.recentlyAddedEpisode => 'episode.addedAt',
    },
    direction: this == StudioSort.titleAscending || this == StudioSort.oldest
        ? LibrarySortDirection.ascending
        : LibrarySortDirection.descending,
  );

  int compare(MediaItem a, MediaItem b) {
    int nullableNumber(num? first, num? second, {required bool descending}) {
      if (first == null) return second == null ? 0 : 1;
      if (second == null) return -1;
      return descending ? second.compareTo(first) : first.compareTo(second);
    }

    final title = (a.titleSort ?? a.displayTitle).toLowerCase().compareTo(
      (b.titleSort ?? b.displayTitle).toLowerCase(),
    );
    int? releaseDate(MediaItem item) => DateTime.tryParse(
      item.originallyAvailableAt ?? (item.year == null ? '' : '${item.year}-01-01'),
    )?.millisecondsSinceEpoch;
    final primary = switch (this) {
      StudioSort.titleAscending => title,
      StudioSort.titleDescending => -title,
      StudioSort.newest => nullableNumber(releaseDate(a), releaseDate(b), descending: true),
      StudioSort.oldest => nullableNumber(releaseDate(a), releaseDate(b), descending: false),
      StudioSort.recentlyAdded => nullableNumber(
        a.kind == MediaKind.show ? studioEpisodeAddedAt(a) : a.addedAt,
        b.kind == MediaKind.show ? studioEpisodeAddedAt(b) : b.addedAt,
        descending: true,
      ),
      StudioSort.rating => nullableNumber(a.rating, b.rating, descending: true),
      StudioSort.recentlyAddedEpisode => nullableNumber(
        studioEpisodeAddedAt(a),
        studioEpisodeAddedAt(b),
        descending: true,
      ),
    };
    if (primary != 0) return primary;
    return title != 0 ? title : a.globalKey.compareTo(b.globalKey);
  }
}
