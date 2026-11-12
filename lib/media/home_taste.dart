import 'media_hub.dart';
import 'media_item.dart';
import 'media_kind.dart';
import 'studio_titles.dart';
import 'title_copies.dart' show foldTitle;

/// Profile-scoped, device-local activity. It contains no title or genre data.
typedef HomeViewingSignal = ({String serverId, String itemId, int durationMs, bool episode});

/// Infer only repeated genres from exact server/item matches already in the
/// visible Home data. Two distinct titles must each have five minutes of
/// actual playback and share a genre; multiple episodes of one show count once.
Map<String, int> homeGenreAffinities({
  required List<HomeViewingSignal> signals,
  required List<MediaHub> visibleRows,
  required List<MediaItem> onDeck,
  Set<String>? onlineServerIds,
}) {
  if (signals.isEmpty) return const {};
  final byKey = <(String, String), MediaItem>{};
  for (final item in [...onDeck, ...visibleRows.expand((row) => row.items)]) {
    final server = item.serverId;
    if (server == null ||
        server.isEmpty ||
        item.id.isEmpty ||
        (onlineServerIds != null && !onlineServerIds.contains(server))) {
      continue;
    }
    byKey.putIfAbsent((server, item.id), () => item);
  }
  final copies = StudioTitles()
    ..addAll(byKey.values.where((item) => item.kind == MediaKind.movie || item.kind == MediaKind.show));
  final durations = <String, int>{};
  final genres = <String, Set<String>>{};
  final titleNames = <String, String>{};
  for (final signal in signals) {
    final item = byKey[(signal.serverId, signal.itemId)];
    if (item == null || (signal.episode ? item.kind != MediaKind.episode : item.kind != MediaKind.movie)) continue;
    final seriesId = item.grandparentId;
    if (signal.episode && (seriesId == null || seriesId.isEmpty)) continue;
    final show = signal.episode ? byKey[(signal.serverId, seriesId!)] : null;
    if (signal.episode && (show == null || show.kind != MediaKind.show)) continue;
    final title = show ?? item;
    final name = foldTitle(title.title ?? '');
    if (name.isEmpty) continue;
    final titleKey = copies.copiesFor(title).first.globalKey;
    final source = item.genres?.isNotEmpty == true ? item : show;
    final tags = source?.genres;
    if (tags == null || tags.isEmpty) continue;
    final normalized = tags
        .map((genre) => genre.trim().toLowerCase())
        .where((genre) => genre.isNotEmpty && genre.length <= 80)
        .take(8)
        .toSet();
    if (normalized.isEmpty) continue;
    durations[titleKey] = (durations[titleKey] ?? 0) + signal.durationMs;
    genres.putIfAbsent(titleKey, () => {}).addAll(normalized);
    titleNames[titleKey] = name;
  }
  final counts = <String, int>{};
  final countedNames = <String>{};
  for (final entry in genres.entries) {
    if ((durations[entry.key] ?? 0) < const Duration(minutes: 5).inMilliseconds) continue;
    if (!countedNames.add(titleNames[entry.key]!)) continue;
    for (final genre in entry.value) {
      counts.update(genre, (value) => value + 1, ifAbsent: () => 1);
    }
  }
  return Map.unmodifiable({
    for (final entry in counts.entries)
      if (entry.value >= 2) entry.key: entry.value,
  });
}
