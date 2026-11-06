import 'media_item.dart';
import 'studio_sort.dart';

/// Library-backed studio shelves. Missing metadata never becomes an invented
/// popularity score, date, or resume position.
class StudioDiscovery {
  StudioDiscovery(Iterable<MediaItem> items) {
    final titles = items.toList();
    recentlyAdded = _rank(titles.where((item) => (item.addedAt ?? 0) > 0), StudioSort.recentlyAdded.compare);
    topRated = _rank(titles.where((item) => (item.rating ?? 0) > 0), StudioSort.rating.compare);
    continueWatching = _rank(titles.where(_inProgress), (a, b) {
      final recent = (b.lastViewedAt ?? 0).compareTo(a.lastViewedAt ?? 0);
      return recent != 0 ? recent : StudioSort.titleAscending.compare(a, b);
    });
    mostWatched = _rank(titles.where((item) => _plays(item) > 0), (a, b) {
      final count = _plays(b).compareTo(_plays(a));
      return count != 0 ? count : StudioSort.titleAscending.compare(a, b);
    });
    featured = continueWatching.firstOrNull ?? topRated.firstOrNull ?? recentlyAdded.firstOrNull ?? titles.firstOrNull;
  }

  late final List<MediaItem> recentlyAdded;
  late final List<MediaItem> topRated;
  late final List<MediaItem> continueWatching;
  late final List<MediaItem> mostWatched;
  late final MediaItem? featured;

  static int _plays(MediaItem item) => item.viewedLeafCount ?? item.viewCount ?? 0;

  static bool _inProgress(MediaItem item) {
    return item.hasActiveProgress || item.isPartiallyWatched;
  }

  static List<MediaItem> _rank(Iterable<MediaItem> items, Comparator<MediaItem> compare) {
    final ranked = items.toList()..sort(compare);
    return ranked.take(20).toList(growable: false);
  }
}
