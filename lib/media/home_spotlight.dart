import 'home_layout.dart';
import 'catalog_item_ref.dart';
import 'home_progress.dart';
import 'home_taste.dart';
import 'media_hub.dart';
import 'media_item.dart';
import 'media_kind.dart';
import 'studio_titles.dart';
import 'title_copies.dart' show contradicts;
import '../utils/external_ids.dart';

/// One actual library item and its presentation/action provenance.
typedef HomeSpotlightItem = (MediaItem, MediaHub);

/// Select from already loaded, profile-filtered Home snapshots. No network or
/// device-wide playback history is consulted here.
List<HomeSpotlightItem> selectPersonalSpotlight({
  required HomeSpotlightSource source,
  required List<MediaHub> visibleRows,
  required List<MediaItem> onDeck,
  required List<MediaItem> trending,
  List<MediaItem> favoritesSnapshot = const [],
  Set<String>? onlineServerIds,
  List<HomeViewingSignal> viewingSignals = const [],
  required String continueTitle,
  required String nextTitle,
  required String favoritesTitle,
  required String recentTitle,
  required String trendingTitle,
  String? inspiredTitle,
  int limit = 6,
}) {
  if (source == HomeSpotlightSource.trending || limit <= 0) return const [];
  bool playable(MediaItem item) =>
      item.id.isNotEmpty &&
      item.serverId?.isNotEmpty == true &&
      (onlineServerIds == null || onlineServerIds.contains(item.serverId)) &&
      const {MediaKind.movie, MediaKind.show, MediaKind.episode}.contains(item.kind);

  final progress = onDeck.where(playable).toList();
  final visibleContents = visibleRows
      .where(
        (row) =>
            !row.isContinueWatchingHub &&
            row.id != homeNextUpId &&
            row.id != homeStudiosId &&
            row.id != homePinnedCollectionsId,
      )
      .expand((row) => row.items)
      .where(playable)
      .toList();
  // A verified library favorite can be useful even if no Home shelf happened
  // to include it. Resumable favorites still go through the visible on-deck
  // list, so hiding Continue Watching cannot leak a hidden progress item.
  final directFavorites = favoritesSnapshot.where(playable).where((item) => (item.viewOffsetMs ?? 0) <= 0);
  final contents = [...visibleContents, ...directFavorites];
  final trends = trending.where(playable).toList();
  final groups = StudioTitles()
    ..addAll(
      [
        ...progress,
        ...contents,
        ...trends,
      ].where((item) => item.kind == MediaKind.movie || item.kind == MediaKind.show),
    );
  final seen = <String>{};
  final result = <HomeSpotlightItem>[];
  String identity(MediaItem item) {
    final key = item.kind == MediaKind.episode ? item.seriesGlobalKey : item.globalKey;
    if (key == null) return item.globalKey;
    if (item.kind == MediaKind.episode) {
      final show = [
        ...contents,
        ...trends,
      ].where((other) => other.kind == MediaKind.show && other.globalKey == key).firstOrNull;
      if (show != null) return groups.copiesFor(show).first.globalKey;
      return key;
    }
    return groups.copiesFor(item).first.globalKey;
  }

  final resumeRow = MediaHub(id: homeContinueWatchingId, title: continueTitle, type: 'mixed', items: progress);
  final nextRow = MediaHub(id: homeNextUpId, title: nextTitle, type: 'mixed', items: progress);
  final favoriteRow = MediaHub(id: 'spotlight.favorites', title: favoritesTitle, type: 'mixed', items: contents);
  final favoriteResumeRow = MediaHub(
    id: 'spotlight.favorite.ondeck',
    title: favoritesTitle,
    type: 'mixed',
    items: contents,
  );
  final recentRow = MediaHub(id: 'spotlight.recent', title: recentTitle, type: 'mixed', items: contents);
  final trendRow = MediaHub(id: 'luroka:weekly', title: trendingTitle, type: 'mixed', items: trends);
  final inspiredRow = MediaHub(
    id: 'spotlight.inspired',
    title: inspiredTitle ?? recentTitle,
    type: 'mixed',
    items: contents,
  );
  bool addFirst(Iterable<MediaItem> candidates, MediaHub row) {
    for (final item in candidates) {
      if (result.length >= limit) return false;
      if (seen.add(identity(item))) {
        result.add((item, row));
        return true;
      }
    }
    return false;
  }

  if (source == HomeSpotlightSource.continueWatching) {
    for (final item in progress) {
      addFirst([item], isHomeNextUp(item) ? nextRow : resumeRow);
    }
    return result;
  }

  final resumes = progress.where((item) => (item.viewOffsetMs ?? 0) > 0);
  final next = progress.where(isHomeNextUp);
  bool knownUnfinished(MediaItem item) {
    if (item.kind == MediaKind.movie) {
      if (item.hasActiveProgress) return true;
      // MediaBrowser's mapper defaults a missing UserData.Played to zero; that
      // is not evidence the movie is unwatched.
      if (item.backend.usesMediaBrowserApi && item.raw != null) {
        final data = item.raw?['UserData'];
        if (data is! Map || data['Played'] is! bool) return false;
      }
      return item.viewCount == 0;
    }
    return item.kind == MediaKind.show && item.leafWatchFraction != null && item.leafWatchFraction! < 1;
  }

  final favoriteKeys = {
    for (final item in favoritesSnapshot)
      if (item.serverId?.isNotEmpty == true && !item.isCatalogItem) item.globalKey,
  };
  final catalogFavorites = [for (final item in favoritesSnapshot) ?item.catalogItem];
  bool savedFavorite(MediaItem item) {
    if (item.isFavorite == true || (item.isFavorite != false && favoriteKeys.contains(item.globalKey))) return true;
    if (catalogFavorites.isEmpty) return false;
    final ids =
        ExternalIds.fromJellyfinProviderIds(Map<String, Object?>.from(item.raw?['ProviderIds'] as Map? ?? const {}))
            .fillFrom(ExternalIds.fromGuids(item.raw?['Guid'] as List? ?? const []))
            .fillFrom(ExternalIds.fromLegacyPlexGuid(item.guid));
    return catalogFavorites.any((candidate) {
      if (candidate.kind != item.kind || candidate.season != null) return false;
      final other = candidate.ids.toExternalIds();
      if (contradicts(ids, other)) return false;
      return ids.intersects(other) ||
          (candidate.title.trim().isNotEmpty &&
              candidate.year != null &&
              candidate.year == item.year &&
              candidate.title.trim().toLowerCase() == item.title?.trim().toLowerCase());
    });
  }

  final favorites = contents.where((item) => knownUnfinished(item) && savedFavorite(item));
  bool recentHub(MediaHub row) {
    final key = (row.identifier ?? row.id).toLowerCase();
    return key.contains('recentlyadded') || RegExp(r'(^|[./_\-])recent$').hasMatch(key);
  }

  final recent = visibleRows
      .where(recentHub)
      .expand((row) => row.items)
      .where(playable)
      .where((item) => (item.kind == MediaKind.movie || item.kind == MediaKind.show) && !item.isWatched);
  final affinity = homeGenreAffinities(
    signals: viewingSignals,
    visibleRows: visibleRows,
    onDeck: progress,
    onlineServerIds: onlineServerIds,
  );
  final availableMovies = {
    for (final item in [...progress, ...contents, ...trends])
      if (item.kind == MediaKind.movie && item.serverId != null) (item.serverId!, item.id): item,
  };
  final watchedMovieDurations = <String, int>{};
  for (final signal in viewingSignals) {
    if (signal.episode || signal.durationMs <= 0) continue;
    final item = availableMovies[(signal.serverId, signal.itemId)];
    if (item != null) {
      final key = identity(item);
      watchedMovieDurations[key] = (watchedMovieDurations[key] ?? 0) + signal.durationMs;
    }
  }
  final watchedMovies = {
    for (final entry in watchedMovieDurations.entries)
      if (entry.value >= const Duration(minutes: 5).inMilliseconds) entry.key,
  };
  bool addInspired(Iterable<MediaItem> candidates) {
    if (affinity.isEmpty || inspiredTitle == null) return false;
    int score(MediaItem item) => (item.genres ?? const <String>[])
        .map((genre) => genre.trim().toLowerCase())
        .toSet()
        .fold(0, (sum, genre) => sum + (affinity[genre] ?? 0));
    final ranked = candidates.where((item) => !watchedMovies.contains(identity(item)) && score(item) > 0).toList();
    // Preserve server ordering when scores tie.
    final positions = {for (final (index, item) in ranked.indexed) item.globalKey: index};
    ranked.sort((a, b) {
      final comparison = score(b).compareTo(score(a));
      return comparison != 0 ? comparison : positions[a.globalKey]!.compareTo(positions[b.globalKey]!);
    });
    return addFirst(ranked, inspiredRow);
  }

  addFirst(resumes, resumeRow);
  bool addFavorite() {
    for (final item in favorites) {
      if (addFirst([item], (item.viewOffsetMs ?? 0) > 0 ? favoriteResumeRow : favoriteRow)) return true;
    }
    return false;
  }

  addFavorite();
  final inspiredRecent = addInspired(recent);
  if (!inspiredRecent) addFirst(recent, recentRow);
  addFirst(next, nextRow);
  final inspiredTrend = !inspiredRecent && addInspired(trends);
  if (!inspiredTrend) addFirst(trends, trendRow);
  addFavorite();
  while (result.length < limit) {
    final addedRecent = addFirst(recent, recentRow);
    final addedTrend = result.length < limit && addFirst(trends, trendRow);
    if (!addedRecent && !addedTrend) break;
  }
  return result;
}
