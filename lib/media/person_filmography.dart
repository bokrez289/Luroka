import 'media_item.dart';

enum PersonFilmographySort { newest, oldest, title }

/// Sort only after identity grouping; missing dates stay at the end in either
/// direction and deterministic title/identity ties preserve remote navigation.
List<MediaItem> sortPersonFilmography(Iterable<MediaItem> source, PersonFilmographySort order) {
  DateTime? date(MediaItem item) =>
      DateTime.tryParse(item.originallyAvailableAt ?? '') ?? (item.year == null ? null : DateTime.utc(item.year!));
  int title(MediaItem a, MediaItem b) {
    final result = (a.titleSort ?? a.displayTitle).toLowerCase().compareTo(
      (b.titleSort ?? b.displayTitle).toLowerCase(),
    );
    return result == 0 ? a.globalKey.compareTo(b.globalKey) : result;
  }

  return source.toList()..sort((a, b) {
    if (order == PersonFilmographySort.title) return title(a, b);
    final ad = date(a), bd = date(b);
    if (ad == null || bd == null) {
      return ad == bd
          ? title(a, b)
          : ad == null
          ? 1
          : -1;
    }
    final result = order == PersonFilmographySort.newest ? bd.compareTo(ad) : ad.compareTo(bd);
    return result == 0 ? title(a, b) : result;
  });
}
