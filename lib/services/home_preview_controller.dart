import 'dart:async';

import 'package:flutter/foundation.dart';

import '../media/media_item.dart';
import '../media/media_kind.dart';
import '../media/media_server_client.dart';
import '../media/media_rating.dart';
import '../utils/app_logger.dart';
import '../utils/media_server_http_client.dart';
import 'kids_profile_service.dart';

class HomePreview {
  const HomePreview({
    required this.item,
    required this.artwork,
    required this.rowTitle,
    this.usesContinueWatchingAction = false,
  });

  final MediaItem item;
  final MediaItem artwork;
  final String rowTitle;
  final bool usesContinueWatchingAction;
}

/// Immediate title/episode feedback, settled artwork and optional metadata
/// hydration. One request at a time; a late reply can never replace a newer
/// selection. This controller belongs to one profile's Home widget.
class HomePreviewController extends ValueNotifier<HomePreview?> {
  HomePreviewController({
    required this.resolveClient,
    this.canFetch,
    this.settleDelay = const Duration(milliseconds: 220),
    this.requestTimeout = const Duration(seconds: 8),
    this.includeRatings = false,
    this.includeShowMetadata = false,
    this.lookupImdb,
  }) : super(null);

  final MediaServerClient? Function(MediaItem) resolveClient;
  final bool Function()? canFetch;
  final Duration settleDelay;
  final Duration requestTimeout;

  /// Studio catalogs can carry a synopsis/runtime but omit year and attributed
  /// scores. Enrich only the settled selection, retaining the bounded cache.
  final bool includeRatings;
  /// Home shelves need descriptive fields even when the row already has a
  /// synopsis. For episodes, the series can supply missing show-level fields.
  final bool includeShowMetadata;
  final Future<MediaRatingSource?> Function(MediaItem item, MediaServerClient client, bool Function() isCurrent)?
      lookupImdb;
  final Map<(MediaServerClient, String), MediaItem> _cache = {};
  Timer? _timer;
  MediaItem? _source;
  int _generation = 0;
  int? _readyGeneration;
  bool _fetching = false;
  AbortController? _requestAbort;
  bool _active = true;
  bool _disposed = false;

  MediaServerClient? _clientFor(MediaItem item) {
    if (item.serverId == null) return null;
    try {
      final client = resolveClient(item);
      return client?.serverId == item.serverId ? client : null;
    } catch (_) {
      return null;
    }
  }

  void select(MediaItem item, {required String rowTitle, bool usesContinueWatchingAction = false}) {
    if (_disposed) return;
    if (!KidsProfileService.instance.allows(item)) {
      clear();
      return;
    }
    if (identical(_source, item) &&
        value?.rowTitle == rowTitle &&
        value?.usesContinueWatchingAction == usesContinueWatchingAction) {
      return;
    }
    _source = item;
    _requestAbort?.abort();
    final generation = ++_generation;
    _timer?.cancel();
    _readyGeneration = null;
    final client = _clientFor(item);
    final cached = client == null ? null : _cache[(client, item.globalKey)];
    final described = cached == null ? item : _describe(item, cached);
    value = HomePreview(
      item: described,
      artwork: value?.artwork ?? described,
      rowTitle: rowTitle,
      usesContinueWatchingAction: usesContinueWatchingAction,
    );
    _schedule(generation);
  }

  void _schedule(int generation) {
    if (!_active || _disposed) return;
    _timer = Timer(settleDelay, () {
      _timer = null;
      if (_disposed || !_active || generation != _generation || value == null) return;
      final preview = value!;
      value = HomePreview(
        item: preview.item,
        artwork: preview.item,
        rowTitle: preview.rowTitle,
        usesContinueWatchingAction: preview.usesContinueWatchingAction,
      );
      _readyGeneration = generation;
      unawaited(_hydrate());
    });
  }

  void setActive(bool active) {
    if (_disposed || _active == active) return;
    _active = active;
    if (!active) _requestAbort?.abort();
    _timer?.cancel();
    _readyGeneration = null;
    if (active && value != null) _schedule(_generation);
  }

  Future<void> _hydrate() async {
    if (_fetching || _disposed || !_active || _readyGeneration == null || !(canFetch?.call() ?? true)) return;
    final generation = _readyGeneration!;
    _readyGeneration = null;
    final source = _source;
    if (source == null || !const {MediaKind.movie, MediaKind.episode, MediaKind.show}.contains(source.kind)) {
      return;
    }
    final visible = value!.item;
    final hasSummary = visible.summary?.trim().isNotEmpty == true;
    final hasRuntime = visible.kind == MediaKind.show || (visible.durationMs ?? 0) > 0;
    final hasEpisodeIdentity =
        visible.kind != MediaKind.episode ||
        (visible.parentIndex != null && visible.index != null && visible.grandparentTitle?.trim().isNotEmpty == true);
    final hasRatings = !(includeRatings || includeShowMetadata) ||
        (visible.year != null && visible.ratings?.isNotEmpty == true &&
            (!includeShowMetadata || visible.genres?.isNotEmpty == true));
    final hasImdb = visible.ratings?.any((rating) => rating.source == 'imdb') == true;
    if (hasSummary && hasRuntime && hasEpisodeIdentity && hasRatings && (lookupImdb == null || hasImdb)) return;
    final client = _clientFor(source);
    if (client == null || _cache.containsKey((client, source.globalKey))) return;
    _fetching = true;
    final abort = _requestAbort = AbortController();
    try {
      // Legacy clients retain the single-flight gate until their request really
      // completes: a UI timeout alone cannot cancel an HTTP request.
      Future<MediaItem?> fetch(String id) => client is PreviewMetadataClient
          ? (client as PreviewMetadataClient).fetchPreviewItem(id, abort: abort).timeout(
              requestTimeout,
              onTimeout: () {
                abort.abort();
                throw TimeoutException('Home preview timed out', requestTimeout);
              },
            )
          : client.fetchItem(id);
      final fresh = await fetch(source.id);
      if (!_disposed &&
          generation == _generation &&
          KidsProfileService.instance.isActiveKids &&
          (fresh == null || !KidsProfileService.instance.allows(fresh))) {
        clear();
        return;
      }
      if (_disposed ||
          !_active ||
          generation != _generation ||
          fresh == null ||
          fresh.id != source.id ||
          fresh.backend != source.backend ||
          (fresh.serverId != null && fresh.serverId != source.serverId) ||
          !identical(client, _clientFor(source))) {
        return;
      }
      var enriched = fresh;
      final seriesId = fresh.grandparentId ?? source.grandparentId;
      if (includeShowMetadata && source.kind == MediaKind.episode && seriesId != null && seriesId.isNotEmpty &&
          (fresh.genres?.isNotEmpty != true || fresh.ratings?.isNotEmpty != true)) {
        try {
          final series = await fetch(seriesId);
          if (_disposed || !_active || generation != _generation || abort.isAborted ||
              !identical(client, _clientFor(source))) {
            return;
          }
          if (series != null && series.id == seriesId && series.kind == MediaKind.show &&
              series.backend == source.backend && (series.serverId == null || series.serverId == source.serverId) &&
              KidsProfileService.instance.allows(series)) {
            enriched = fresh.copyWith(
              genres: fresh.genres?.isNotEmpty == true ? fresh.genres : series.genres,
              directors: fresh.directors?.isNotEmpty == true ? fresh.directors : series.directors,
              ratings: fresh.ratings?.isNotEmpty == true ? fresh.ratings : series.ratings,
              rating: fresh.rating ?? series.rating,
              year: fresh.year ?? series.year,
            );
          }
        } catch (error) {
          if (!abort.isAborted) appLogger.d('Home series preview metadata unavailable', error: error);
        }
      }
      if (lookupImdb != null && enriched.ratings?.any((rating) => rating.source == 'imdb') != true) {
        final lookupItem = source.kind == MediaKind.episode && seriesId != null && seriesId.isNotEmpty
            ? MediaItem(id: seriesId, kind: MediaKind.show, backend: source.backend, serverId: source.serverId,
                title: enriched.grandparentTitle ?? source.grandparentTitle)
            : source;
        if (lookupItem.kind == MediaKind.movie || lookupItem.kind == MediaKind.show) {
          bool current() => !_disposed && _active && generation == _generation && !abort.isAborted &&
              (canFetch?.call() ?? true) && identical(client, _clientFor(source));
          try {
            final rating = await lookupImdb!(lookupItem, client, current);
            if (!current()) return;
            if (rating != null && rating.source == 'imdb') {
              enriched = enriched.copyWith(ratings: [rating, ...?enriched.ratings]);
            }
          } catch (error) {
            if (!abort.isAborted) appLogger.d('Home IMDb lookup unavailable', error: error);
          }
        }
      }
      _cache[(client, source.globalKey)] = enriched;
      if (_cache.length > 32) _cache.remove(_cache.keys.first);
      final preview = value!;
      final described = _describe(source, enriched);
      value = HomePreview(
        item: described,
        artwork: described,
        rowTitle: preview.rowTitle,
        usesContinueWatchingAction: preview.usesContinueWatchingAction,
      );
    } catch (error) {
      if (!abort.isAborted) appLogger.d('Home preview metadata unavailable', error: error);
    } finally {
      if (identical(_requestAbort, abort)) _requestAbort = null;
      _fetching = false;
      if (!_disposed && _readyGeneration != null) unawaited(_hydrate());
    }
  }

  // Metadata enriches the current row; never resurrect fetched watch/progress
  // state or route an action using another server's identity.
  static MediaItem _describe(MediaItem current, MediaItem fresh) => current.copyWith(
    title: current.title?.trim().isNotEmpty == true ? current.title : fresh.title,
    summary: current.summary?.trim().isNotEmpty == true ? current.summary : fresh.summary,
    genres: current.genres?.isNotEmpty == true ? current.genres : fresh.genres,
    directors: current.directors?.isNotEmpty == true ? current.directors : fresh.directors,
    year: current.year ?? fresh.year,
    contentRating: current.contentRating ?? fresh.contentRating,
    rating: current.rating ?? fresh.rating,
    ratings: fresh.ratings?.isNotEmpty == true ? fresh.ratings : current.ratings,
    durationMs: (current.durationMs ?? 0) > 0 ? current.durationMs : fresh.durationMs,
    artPath: current.artPath ?? fresh.artPath,
    backdropPaths: current.backdropPaths ?? fresh.backdropPaths,
    clearLogoPath: current.clearLogoPath ?? fresh.clearLogoPath,
    grandparentTitle: current.grandparentTitle?.trim().isNotEmpty == true
        ? current.grandparentTitle
        : fresh.grandparentTitle,
    grandparentArtPath: current.grandparentArtPath ?? fresh.grandparentArtPath,
    grandparentBackdropPaths: current.grandparentBackdropPaths ?? fresh.grandparentBackdropPaths,
    parentIndex: current.parentIndex ?? fresh.parentIndex,
    index: current.index ?? fresh.index,
  );

  void clear() {
    if (_disposed) return;
    _requestAbort?.abort();
    _generation++;
    _timer?.cancel();
    _readyGeneration = null;
    _source = null;
    value = null;
  }

  @override
  void dispose() {
    _requestAbort?.abort();
    _disposed = true;
    _generation++;
    _timer?.cancel();
    _cache.clear();
    super.dispose();
  }
}
