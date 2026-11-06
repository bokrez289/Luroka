import '../utils/external_ids.dart';
import 'media_item.dart';
import 'title_copies.dart';

/// One poster per title, retaining the real library items for navigation.
/// Catalogue IDs take priority; exact title/year is a fallback for slim rows.
/// Movie/show kinds and conflicting IDs never collapse into the same poster.
class StudioTitles {
  final _groups = <_StudioTitle>[];
  final _byItem = <String, _StudioTitle>{};
  final _byIdentity = <String, Set<_StudioTitle>>{};

  List<MediaItem> get items => [for (final group in _groups) group.copies.first];

  List<MediaItem> copiesFor(MediaItem item) => List.unmodifiable(_byItem[item.globalKey]?.copies ?? [item]);

  void addAll(Iterable<MediaItem> items) {
    for (final item in items) {
      if (_byItem.containsKey(item.globalKey)) continue;
      final identity = _Identity(item);
      final candidates = <_StudioTitle>{for (final key in identity.keys) ...?_byIdentity[key]};
      final group = candidates.where((group) => group.matches(identity)).firstOrNull ?? _StudioTitle();
      if (group.copies.isEmpty) _groups.add(group);
      group.copies.add(item);
      group.identities.add(identity);
      _byItem[item.globalKey] = group;
      for (final key in identity.keys) {
        _byIdentity.putIfAbsent(key, () => {}).add(group);
      }
    }
  }

  void replace(MediaItem item) {
    final copies = _byItem[item.globalKey]?.copies;
    final index = copies?.indexWhere((copy) => copy.globalKey == item.globalKey) ?? -1;
    if (index >= 0) copies![index] = item;
  }
}

class _StudioTitle {
  final copies = <MediaItem>[];
  final identities = <_Identity>[];

  bool matches(_Identity other) {
    if (identities.any((identity) => identity.kind != other.kind || contradicts(identity.ids, other.ids))) return false;
    return identities.any((identity) {
      if (identity.ids.intersects(other.ids)) return true;
      if (identity.guid != null && other.guid != null) return identity.guid == other.guid;
      return identity.title.isNotEmpty &&
          identity.title == other.title &&
          identity.year != null &&
          identity.year == other.year;
    });
  }
}

class _Identity {
  _Identity(MediaItem item)
    : kind = item.kind.name,
      title = foldTitle(item.title ?? ''),
      year = item.year,
      guid = item.guid?.startsWith('plex://') == true ? item.guid : null,
      ids = ExternalIds.fromJellyfinProviderIds(Map<String, Object?>.from(item.raw?['ProviderIds'] as Map? ?? const {}))
          .fillFrom(ExternalIds.fromGuids(item.raw?['Guid'] as List? ?? const []))
          .fillFrom(ExternalIds.fromLegacyPlexGuid(item.guid));

  final String kind;
  final String title;
  final int? year;
  final String? guid;
  final ExternalIds ids;

  Iterable<String> get keys sync* {
    if (guid != null) yield '$kind:guid:$guid';
    if (ids.imdb != null) yield '$kind:imdb:${ids.imdb}';
    if (ids.tmdb != null) yield '$kind:tmdb:${ids.tmdb}';
    if (ids.tvdb != null) yield '$kind:tvdb:${ids.tvdb}';
    if (ids.anidb != null) yield '$kind:anidb:${ids.anidb}';
    if (title.isNotEmpty && year != null) yield '$kind:title:$title:$year';
  }
}
