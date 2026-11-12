import 'media_item.dart';

/// Local provenance on server-returned Home rows. Untagged rows (for example
/// Plex On Deck) remain in Continue Watching instead of guessing their role.
const homeProgressRoleKey = 'lurokaHomeProgressRole';

enum HomeProgressRole { resume, nextUp }

MediaItem withHomeProgressRole(MediaItem item, HomeProgressRole role) =>
    item.copyWith(raw: {...?item.raw, homeProgressRoleKey: role.name});

HomeProgressRole? homeProgressRole(MediaItem item) {
  final value = item.raw?[homeProgressRoleKey];
  if (value == HomeProgressRole.resume.name) return HomeProgressRole.resume;
  if (value == HomeProgressRole.nextUp.name) {
    // An optimistic playback patch can start a Next Up item before the next
    // server refresh. Move it to the resumable row immediately.
    return (item.viewOffsetMs ?? 0) > 0 ? HomeProgressRole.resume : HomeProgressRole.nextUp;
  }
  return null;
}

bool isHomeNextUp(MediaItem item) => homeProgressRole(item) == HomeProgressRole.nextUp;

/// Cap each separate shelf independently, preserving the incoming order and
/// an extra probe item per shelf when [limit] includes one.
List<MediaItem> limitHomeProgressRows(List<MediaItem> items, int? limit, {required bool split}) {
  if (limit == null) return items;
  if (limit <= 0) return const [];
  if (!split) return items.length > limit ? items.sublist(0, limit) : items;
  var resume = 0;
  var next = 0;
  return [
    for (final item in items)
      if (isHomeNextUp(item) ? next++ < limit : resume++ < limit) item,
  ];
}
