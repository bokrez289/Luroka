import 'media_item.dart';
import 'media_kind.dart';
import 'studio_titles.dart';

/// Presentation-only movie/show grouping. Real source identities and watch
/// positions stay on each copy; episodes and other media are never folded.
class MovieCopyGroups {
  final StudioTitles _titles = StudioTitles();
  final List<MediaItem> items = [];

  MovieCopyGroups(Iterable<MediaItem> source) {
    final rows = source.toList();
    _titles.addAll(rows.where(_groupable));
    final emitted = <String>{};
    for (final item in rows) {
      final representative = _groupable(item) ? _titles.copiesFor(item).first : item;
      if (emitted.add(representative.globalKey)) items.add(representative);
    }
  }

  static bool _groupable(MediaItem item) => item.kind == MediaKind.movie || item.kind == MediaKind.show;

  List<MediaItem> copiesFor(MediaItem item) => _groupable(item) ? _titles.copiesFor(item) : [item];
}
