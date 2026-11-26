import 'media_item.dart';

/// Local provenance on server-returned Home rows. Untagged rows (for example
/// Plex On Deck) remain in Continue Watching instead of guessing their role.
const homeProgressRoleKey = 'lurokaHomeProgressRole';
const homeProgressRankKey = 'lurokaHomeProgressRank';
const homeProgressStreamKey = 'lurokaHomeProgressStream';
const embyHomeResumeStream = 'embyHomeResume';
const embyLegacyResumeStream = 'embyResume';

bool isEmbyHomeResumeItem(MediaItem item) => item.raw?[homeProgressStreamKey] == embyHomeResumeStream;

bool hasNativeEmbyHomeOrder(List<MediaItem> items) =>
    items.isNotEmpty && items.every((item) => isEmbyHomeResumeItem(item) && item.serverId == items.first.serverId);

/// Owned by one account-scoped client. Stores ordering evidence, never shelf
/// membership: an authoritative empty response remains empty.
class HomeProgressDates {
  final Map<String, int> _dates = {};

  List<MediaItem> restore(List<MediaItem> items) {
    for (final item in items) {
      final key = item.seriesGlobalKey ?? item.globalKey;
      final date = item.lastViewedAt;
      if (date == null) continue;
      final previous = _dates.remove(key);
      _dates[key] = previous != null && previous > date ? previous : date;
    }
    while (_dates.length > 4096) {
      _dates.remove(_dates.keys.first);
    }
    return [
      for (final item in items)
        if (item.lastViewedAt == null && _dates[item.seriesGlobalKey ?? item.globalKey] != null)
          item.copyWith(lastViewedAt: _dates[item.seriesGlobalKey ?? item.globalKey])
        else
          item,
    ];
  }
}

/// Preserve backend order through asynchronous library/server aggregation.
/// Stream identifies independently ordered endpoints (Resume and Next Up on
/// Jellyfin, one shared hide-aware Resume endpoint on Emby).
List<MediaItem> rankHomeProgress(List<MediaItem> items, String stream) => [
  for (var i = 0; i < items.length; i++)
    items[i].copyWith(
      raw: {
        ...?items[i].raw,
        homeProgressRankKey: items[i].raw?[homeProgressRankKey] ?? i,
        homeProgressStreamKey: items[i].raw?[homeProgressStreamKey] ?? stream,
      },
    ),
];

/// Continue Watching must never sort by library ingestion time. Unknown dates
/// inherit an ordering anchor from their backend neighbours, without inventing
/// a watched date on the item itself. This preserves a server's order when its
/// best-effort date enrichment is incomplete.
List<MediaItem> orderHomeProgress(List<MediaItem> items) {
  int rank(MediaItem item) => (item.raw?[homeProgressRankKey] as int?) ?? 0;
  int compareRank(MediaItem a, MediaItem b) {
    final byRank = rank(a).compareTo(rank(b));
    return byRank != 0 ? byRank : a.globalKey.compareTo(b.globalKey);
  }

  if (hasNativeEmbyHomeOrder(items)) return List<MediaItem>.of(items)..sort(compareRank);
  final mergingEmby = items.any(
    (item) => isEmbyHomeResumeItem(item) || item.raw?[homeProgressStreamKey] == embyLegacyResumeStream,
  );
  String source(MediaItem item) {
    final stream = item.raw?[homeProgressStreamKey];
    // With no date evidence either way, resumable content precedes Next Up.
    return '${item.serverId}:${item.libraryId}:${stream == 'nextUp' ? 1 : 0}:$stream';
  }

  final groups = <String, List<MediaItem>>{};
  for (final item in items) {
    groups.putIfAbsent(source(item), () => []).add(item);
  }
  final keys = <String, int>{};
  for (final group in mergingEmby ? const <List<MediaItem>>[] : groups.values) {
    group.sort((a, b) {
      final byRank = rank(a).compareTo(rank(b));
      return byRank != 0 ? byRank : a.globalKey.compareTo(b.globalKey);
    });
    int? nextDate;
    for (final item in group.reversed) {
      nextDate = item.lastViewedAt ?? nextDate;
      if (nextDate != null) keys[item.globalKey] = nextDate;
    }
    var previousDate = 0;
    for (final item in group) {
      previousDate = keys[item.globalKey] ?? previousDate;
      keys[item.globalKey] = previousDate;
    }
  }
  return List<MediaItem>.of(items)..sort((a, b) {
    final byDate = (keys[b.globalKey] ?? b.lastViewedAt ?? 0).compareTo(keys[a.globalKey] ?? a.lastViewedAt ?? 0);
    if (byDate != 0) return byDate;
    final bySource = source(a).compareTo(source(b));
    if (bySource != 0) return bySource;
    final byRank = rank(a).compareTo(rank(b));
    return byRank != 0 ? byRank : a.globalKey.compareTo(b.globalKey);
  });
}

enum HomeProgressRole { resume, nextUp }

MediaItem withHomeProgressRole(MediaItem item, HomeProgressRole role) =>
    item.copyWith(raw: {...?item.raw, homeProgressRoleKey: role.name});

HomeProgressRole? homeProgressRole(MediaItem item) {
  final value = item.raw?[homeProgressRoleKey];
  if (value == HomeProgressRole.resume.name) return HomeProgressRole.resume;
  if (value == HomeProgressRole.nextUp.name) {
    // An optimistic playback patch can start a Next Up item before the next
    // server refresh. Move it to the resumable row immediately.
    return item.hasMeaningfulProgress ? HomeProgressRole.resume : HomeProgressRole.nextUp;
  }
  return null;
}

bool isHomeNextUp(MediaItem item) => homeProgressRole(item) == HomeProgressRole.nextUp;

/// Only hide explicitly short positive progress. Zero/unknown offsets include
/// server-provided Next Up rows and must not be treated as accidental starts.
bool showHomeProgress(MediaItem item) =>
    isHomeNextUp(item) || (item.viewOffsetMs ?? 0) <= 0 || item.hasMeaningfulProgress;

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
