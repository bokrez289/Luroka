import '../media/media_item.dart';
import '../media/media_kind.dart';
import '../media/home_layout.dart';
import '../media/show_episode_state.dart';
import '../media/media_server_client.dart';
import 'catalog/cinemeta_catalog_source.dart';

/// Resolve only the show identifier through its own server; send only its IMDb
/// identifier to the public schedule source. Check ownership between network
/// legs so disabling the row cannot start a new external request.
typedef UpcomingShowSchedule = ({String imdb, ShowSchedule schedule});

Future<UpcomingShowSchedule?> fetchUpcomingShowSchedule({
  required MediaItem show,
  required MediaServerClient client,
  required CinemetaCatalogSource source,
  required bool Function() isCurrent,
}) async {
  if (!isCurrent() || show.serverId == null || client.serverId.value != show.serverId) return null;
  final ids = await client.fetchExternalIds(show.id);
  if (!isCurrent() || ids.imdb == null) return null;
  final schedule = await source.fetchShowSchedule(ids.imdb!);
  return isCurrent() ? (imdb: ids.imdb!, schedule: schedule) : null;
}

/// One bounded, cancellable-by-generation schedule pass. The caller supplies
/// profile-filtered shows and owns the server/metadata transport.
class UpcomingEpisodesLoader {
  UpcomingEpisodesLoader({required this.fetchSchedule, DateTime Function()? now}) : _now = now ?? DateTime.now;

  final Future<UpcomingShowSchedule?> Function(MediaItem show) fetchSchedule;
  final DateTime Function() _now;
  static const maxShows = 90;
  static const maxResults = 50;
  static const timeout = Duration(seconds: 8);
  static const cacheLifetime = Duration(hours: 12);
  final Map<String, ({UpcomingShowSchedule result, DateTime fetchedAt})> _cache = {};
  int _generation = 0;

  /// Invalidates in-flight results. An already-started transport may finish,
  /// but no additional show is requested or published after cancellation.
  void cancel() => _generation++;

  Future<List<MediaItem>> load({
    required bool enabled,
    required Iterable<MediaItem> shows,
    void Function(List<MediaItem> items)? onProgress,
  }) async {
    final generation = ++_generation;
    if (!enabled) return const [];
    final unique = <String, MediaItem>{};
    for (final show in shows) {
      if (show.kind != MediaKind.show || show.serverId == null || show.id.isEmpty) continue;
      unique.putIfAbsent(show.globalKey, () => show);
      if (unique.length >= maxShows) break;
    }
    final rows = <MediaItem>[];
    final seenShows = <String>{};
    for (final show in unique.values) {
      if (generation != _generation) return const [];
      try {
        final cached = _cache[show.globalKey];
        final cacheValid = cached != null && _now().difference(cached.fetchedAt) < cacheLifetime;
        final result = cacheValid
            ? cached.result
            : await fetchSchedule(show).timeout(timeout);
        if (generation != _generation) return const [];
        if (result == null) continue;
        if (!cacheValid) _cache[show.globalKey] = (result: result, fetchedAt: _now());
        if (_cache.length > 120) _cache.remove(_cache.keys.first);
        if (!seenShows.add(result.imdb)) continue;
        final now = _now().toLocal();
        final today = DateTime(now.year, now.month, now.day);
        final tomorrow = DateTime(now.year, now.month, now.day + 1);
        final future = result.schedule.episodes.where((episode) => episode.season > 0 && episode.number > 0 &&
            !episode.released.toLocal().isBefore(today)).toList()
          ..sort((a, b) {
            final date = a.released.compareTo(b.released);
            if (date != 0) return date;
            final season = a.season.compareTo(b.season);
            return season != 0 ? season : a.number.compareTo(b.number);
          });
        if (future.isEmpty) continue;
        final firstDate = future.first.released.toLocal();
        final firstDay = DateTime(firstDate.year, firstDate.month, firstDate.day);
        // Keep tomorrow's episodes even when the show also has a release today.
        final lastDay = firstDay.isAfter(tomorrow) ? firstDay : tomorrow;
        final end = DateTime(lastDay.year, lastDay.month, lastDay.day + 1);
        final seenEpisodes = <String>{};
        for (final episode in future) {
          if (!episode.released.toLocal().isBefore(end)) break;
          if (!seenEpisodes.add(episode.key)) continue;
          rows.add(MediaItem(
          id: 'upcoming:${show.id}:${episode.key}', backend: show.backend, kind: MediaKind.episode,
          title: episode.title, parentId: show.id, serverId: show.serverId, serverName: show.serverName,
          libraryId: show.libraryId, libraryTitle: show.libraryTitle, thumbPath: show.thumbPath,
          raw: {'upcomingShow': show},
        ).copyWith(parentIndex: episode.season, index: episode.number, grandparentTitle: show.displayTitle,
          grandparentThumbPath: show.thumbPath, grandparentArtPath: show.artPath,
          originallyAvailableAt: episode.released.toIso8601String()));
        }
        if (onProgress != null && generation == _generation) {
          final ordered = List<MediaItem>.of(rows)
            ..sort((a, b) => DateTime.parse(a.originallyAvailableAt!).compareTo(DateTime.parse(b.originallyAvailableAt!)));
          onProgress(List.unmodifiable(ordered.take(maxResults)));
        }
      } catch (_) {
        // An unavailable show must not block other scheduled shows.
      }
    }
    if (generation != _generation) return const [];
    rows.sort((a, b) => DateTime.parse(a.originallyAvailableAt!).compareTo(DateTime.parse(b.originallyAvailableAt!)));
    return List.unmodifiable(rows.take(maxResults));
  }
}

/// Give each visible library a turn before taking another show from the same
/// library, while keeping the overall discovery pass bounded.
List<MediaItem> interleaveUpcomingLibraries(List<List<MediaItem>> libraries) {
  final result = <MediaItem>[];
  final seen = <String>{};
  for (var index = 0; index < UpcomingEpisodesLoader.maxShows; index++) {
    for (final library in libraries) {
      if (index < library.length && seen.add(library[index].globalKey)) result.add(library[index]);
      if (result.length >= UpcomingEpisodesLoader.maxShows) return List.unmodifiable(result);
    }
  }
  return List.unmodifiable(result);
}

/// Build candidate identities only from the chosen profile-scoped source.
/// In-progress episode rows refer to the series through grandparentId; never
/// infer a series identity from an unrelated library or a title match.
List<MediaItem> upcomingShowCandidates({
  required UpcomingEpisodesSource source,
  required Iterable<MediaItem> favorites,
  required Iterable<MediaItem> watched,
}) {
  final input = switch (source) {
    UpcomingEpisodesSource.favorites => favorites,
    UpcomingEpisodesSource.previouslyWatched => watched,
    UpcomingEpisodesSource.both => [...favorites, ...watched],
  };
  final result = <String, MediaItem>{};
  for (final item in input) {
    MediaItem? show;
    if (item.kind == MediaKind.show) {
      show = item;
    } else if (source != UpcomingEpisodesSource.favorites && item.kind == MediaKind.episode &&
        item.grandparentId != null && item.grandparentId!.isNotEmpty && item.serverId != null) {
      show = MediaItem(
        id: item.grandparentId!, backend: item.backend, kind: MediaKind.show,
        title: item.grandparentTitle, thumbPath: item.grandparentThumbPath,
        artPath: item.grandparentArtPath, serverId: item.serverId, serverName: item.serverName,
        libraryId: item.libraryId, libraryTitle: item.libraryTitle,
      );
    }
    if (show?.serverId == null) continue;
    result.putIfAbsent(show!.globalKey, () => show!);
    if (result.length >= UpcomingEpisodesLoader.maxShows) break;
  }
  return List.unmodifiable(result.values);
}

bool upcomingHasWatchHistory(MediaItem item) =>
    (item.lastViewedAt ?? 0) > 0 || (item.viewedLeafCount ?? 0) > 0 || (item.viewCount ?? 0) > 0 ||
    item.hasActiveProgress;
