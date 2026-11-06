import 'dart:async';

import 'package:flutter/foundation.dart';

import '../i18n/strings.g.dart';
import '../media/media_hub.dart';
import '../media/ids.dart';
import '../media/media_item.dart';
import '../media/catalog_item_ref.dart';
import '../models/catalog/catalog_item.dart';
import '../mixins/disposable_change_notifier_mixin.dart';
import '../services/catalog/catalog_source.dart';
import '../services/catalog/catalog_library_matcher.dart';
import '../services/catalog/tmdb_catalog_source.dart';
import '../services/catalog/cinemeta_catalog_source.dart';
import '../services/catalog/community_ratings.dart';
import '../services/catalog/discovery_shelves.dart';
import '../services/catalog/wikidata_awards_service.dart';
import 'hidden_libraries_provider.dart';
import 'multi_server_provider.dart';
import '../services/trackers/future_coalescer.dart';
import '../utils/app_logger.dart';
import 'catalog_sources_provider.dart';

enum ExploreLoadState { initial, loading, loaded, error }

/// One rendered Explore shelf, backed by either a fixed catalog row or a
/// provider-defined hub.
class ExploreRowHub {
  final CatalogRowId? row;
  final String? providerHubId;
  final CatalogHubStyle? style;
  final int? totalResults;
  final MediaHub hub;

  const ExploreRowHub.catalogRow({required CatalogRowId this.row, required this.hub, this.totalResults})
    : providerHubId = null,
      style = null;

  const ExploreRowHub.providerHub({
    required String this.providerHubId,
    required this.hub,
    this.style,
    this.totalResults,
  }) : row = null;
}

/// Owns the Explore tab's fixed rows and provider-defined hubs, converted to
/// [MediaHub]s so the existing shelf stack renders them.
///
/// Lives inside the profile-keyed provider subtree. Listens to
/// [CatalogSourcesProvider] for the active source (connect/disconnect/switch)
/// and to the source's watchlist changes so the Watchlist row stays current
/// after mutations from anywhere in the app.
class ExploreProvider extends ChangeNotifier with DisposableChangeNotifierMixin {
  /// Rows reload when the tab is shown after this long.
  static const Duration staleAfter = Duration(minutes: 15);
  static const int rowLimit = 25;
  static const int viewAllPageLimit = 100;
  static const int viewAllMaxPages = 3;

  /// Watchlist mutations notify optimistically before the API call finishes;
  /// the row refetch waits out the burst so it reads settled server state.
  static const Duration _watchlistRefreshDelay = Duration(seconds: 1);

  ExploreProvider(
    this._catalogSources, {
    this.matcher,
    this.hiddenLibraries,
    this.servers,
    this.libraryOnly = false,
    WikidataAwardsService? awards,
  }) : _awards = awards ?? WikidataAwardsService(),
       _ownsAwards = awards == null {
    availableOnly = libraryOnly || matcher != null;
    _catalogSources.addListener(_onSourcesChanged);
    _source = _catalogSources.activeSource;
    _shelvesRevision = _catalogSources.discoveryShelvesRevision;
    _source?.watchlistChanges.addListener(_onWatchlistChanged);
    hiddenLibraries?.addListener(_availabilityScopeChanged);
    servers?.addOnlineServersListener(_onlineServersChanged);
  }

  final CatalogSourcesProvider _catalogSources;
  final WikidataAwardsService _awards;
  final bool _ownsAwards;
  int _shelvesRevision = -1;
  bool get customizableShelves => _source is CinemetaCatalogSource || _source is TmdbCatalogSource;
  bool _rowEnabled(CatalogRowId row) => !customizableShelves || _catalogSources.discoveryShelfIds.contains(row.name);
  final CatalogLibraryMatcher? matcher;
  final HiddenLibrariesProvider? hiddenLibraries;
  final MultiServerProvider? servers;
  final bool libraryOnly;
  final Map<String, List<MediaItem>> _libraryCopies = {};
  final Map<String, MediaItem> _previews = {};
  final Map<String, CatalogItem> _catalogByCopy = {};
  bool availableOnly = false;
  bool checkingAvailability = false;
  bool availabilityIncomplete = false;
  int _availabilityGeneration = 0;
  bool _availabilityServerUnavailable = false;
  bool _active = true;
  final Map<String, Future<void>> _availabilityRequests = {};

  /// Do not continue a bulk catalog sweep after the viewer leaves Explore.
  void setActive(bool active) {
    if (_active == active) return;
    _active = active;
    if (!active) {
      _availabilityGeneration++;
      checkingAvailability = false;
    } else if (availableOnly && matcher != null) {
      _availabilityServerUnavailable = false;
      unawaited(setAvailableOnly(true));
    }
  }

  /// Sliding workers avoid a slow title blocking every subsequent batch. The
  /// shared matcher coalesces titles repeated across awards/popularity shelves.
  Future<void> _checkAvailability(Iterable<MediaItem> source, {bool Function()? current}) async {
    final seen = <String>{};
    final items = source.where((item) => seen.add(item.globalKey)).toList();
    if (matcher != null) {
      try {
        await matcher!.prefetchMatches(
          [
            for (final item in items)
              if (item.catalogItem != null) item.catalogItem!,
          ],
          onBatchComplete: (batch) async {
            if (isDisposed || _availabilityServerUnavailable || !(current?.call() ?? true)) return;
            for (final catalog in batch) {
              if (_availabilityServerUnavailable) break;
              await checkItemAvailability(catalog.toMediaItem());
            }
          },
          current: () => !_availabilityServerUnavailable && (current?.call() ?? true),
        );
      } catch (_) {
        /* Alternate matchers/unsupported servers use normal matching. */
      }
    }
    var next = 0;
    Future<void> worker() async {
      while (next < items.length && !isDisposed && !_availabilityServerUnavailable && (current?.call() ?? true)) {
        await checkItemAvailability(items[next++]);
      }
    }

    await Future.wait(List.generate(items.length.clamp(0, 6), (_) => worker()));
  }

  void _onlineServersChanged(Set<String> _) => _availabilityScopeChanged();
  void _availabilityScopeChanged() {
    _availabilityGeneration++;
    _availabilityServerUnavailable = false;
    _libraryCopies.clear();
    _catalogByCopy.clear();
    checkingAvailability = false;
    _rowsEpoch++;
    safeNotifyListeners();
    if (availableOnly) unawaited(setAvailableOnly(true));
  }

  List<MediaItem> _projectItems(List<MediaItem> items) {
    final projected = <MediaItem>[
      for (final item in items)
        if (!availableOnly || _visibleCopies(item).isNotEmpty)
          libraryOnly
              ? _projectLibraryItem(item)
              : _catalogArtworkFallback(_previews[item.globalKey] ?? item, _visibleCopies(item)).copyWith(
                  raw: {
                    ...?(_previews[item.globalKey] ?? item).raw,
                    if (_visibleCopies(item).isNotEmpty) 'lurokaAvailable': true,
                    'lurokaCopyCount': _visibleCopies(item).length,
                  },
                ),
    ];
    if (!libraryOnly) return projected;
    final seen = <String>{};
    return projected.where((item) => seen.add(item.globalKey)).toList();
  }

  MediaItem _catalogArtworkFallback(MediaItem item, List<MediaItem> copies) {
    if (copies.isEmpty) return item;
    final copy = copies.firstWhere((copy) => copy.thumbPath != null, orElse: () => copies.first);
    final server = copy.serverId;
    final client = server == null ? null : servers?.getClientForServer(ServerId(server));
    if (client == null) return item;
    try {
      return item.copyWith(
        thumbPath: item.thumbPath ?? (copy.thumbPath == null ? null : client.thumbnailUrl(copy.thumbPath, width: 500)),
        artPath: item.artPath ?? (copy.artPath == null ? null : client.thumbnailUrl(copy.artPath, width: 1280)),
      );
    } catch (_) {
      return item;
    }
  }

  MediaItem _projectLibraryItem(MediaItem catalogItem) {
    final copies = _visibleCopies(catalogItem);
    final copy = _previews[copies.first.globalKey] ?? copies.first;
    return copy.copyWith(
      ratings: withCommunityRatings(copy.ratings ?? const [], catalogItem.ratings ?? const []),
      raw: {...?copy.raw, 'lurokaCopies': copies, 'lurokaCopyCount': copies.length},
    );
  }

  Future<List<MediaItem>> librarySearchResults(List<MediaItem> items, {bool Function()? current}) async {
    await _checkAvailability(items, current: current);
    return _projectItems(items);
  }

  /// Award category screens render already-verified titles while the remaining
  /// membership batch is checked, rather than hiding the entire collection.
  List<MediaItem> projectCollection(List<CatalogItem> items) =>
      _projectItems(items.map((item) => item.toMediaItem()).toList());

  Future<void> enrichPreview(MediaItem item) async {
    final source = _source;
    final catalog = item.catalogItem ?? (libraryOnly ? _catalogByCopy[item.globalKey] : null);
    if (catalog == null || _previews.containsKey(item.globalKey)) return;
    final generation = _generation;
    final enriched = await () async {
      try {
        return source is TmdbCatalogSource
            ? await source.enrichPreview(catalog)
            : source is CinemetaCatalogSource
            ? await source.enrichPreview(catalog)
            : catalog;
      } catch (_) {
        return catalog;
      }
    }();
    if (isDisposed || generation != _generation) return;
    _previews[item.globalKey] = libraryOnly
        ? item.copyWith(
            ratings: withCommunityRatings(item.ratings ?? const [], enriched.ratings ?? const []),
            summary: item.summary?.isNotEmpty == true ? item.summary : enriched.overview,
          )
        : enriched.toMediaItem();
    _rowsEpoch++;
    safeNotifyListeners();
  }

  List<MediaItem> _visibleCopies(MediaItem item) => [
    for (final copy in _libraryCopies[item.globalKey] ?? const <MediaItem>[])
      if ((servers?.onlineServerIds.contains(copy.serverId) ?? true) &&
          (!libraryOnly || (hiddenLibraries?.allowsItem(copy) ?? true)))
        copy,
  ];

  Future<void> checkItemAvailability(MediaItem item) {
    final key = '$_availabilityGeneration/${item.globalKey}';
    return _availabilityRequests.putIfAbsent(
      key,
      () => _checkItemAvailability(item).whenComplete(() {
        _availabilityRequests.remove(key)?.ignore();
      }),
    );
  }

  Future<void> _checkItemAvailability(MediaItem item) async {
    final catalog = item.catalogItem;
    if (matcher == null || catalog == null || _libraryCopies.containsKey(item.globalKey)) return;
    final generation = _availabilityGeneration;
    try {
      final result = libraryOnly ? await matcher!.match(catalog) : await matcher!.matchOtherSources(catalog);
      if (isDisposed || generation != _availabilityGeneration) return;
      if (result.failedServerIds.isNotEmpty ||
          result.cancelledServerIds.isNotEmpty ||
          result.unqueriedServerIds.isNotEmpty) {
        availabilityIncomplete = true;
      }
      if (result.failedServerIds.isNotEmpty && result.succeededServerIds.isEmpty) {
        // One failed server-wide lookup is not evidence that hundreds of
        // titles are absent. Stop the bulk sweep until the next refresh or
        // server-scope change instead of multiplying an outage per title.
        _availabilityServerUnavailable = true;
      }
      if (result.items.isEmpty && (result.failedServerIds.isNotEmpty || result.cancelledServerIds.isNotEmpty)) return;
      _libraryCopies[item.globalKey] = result.items;
      for (final copy in result.items) {
        _catalogByCopy[copy.globalKey] = catalog;
      }
      _rowsEpoch++;
      safeNotifyListeners();
    } catch (_) {
      if (generation == _availabilityGeneration) availabilityIncomplete = true;
    }
  }

  Future<void> setAvailableOnly(bool value) async {
    if (libraryOnly || matcher != null) value = true;
    availableOnly = value;
    _rowsEpoch++;
    safeNotifyListeners();
    if (!value || checkingAvailability || matcher == null) return;
    checkingAvailability = true;
    availabilityIncomplete = false;
    safeNotifyListeners();
    final generation = _availabilityGeneration;
    final items = {
      for (final page in _rows.values)
        for (final item in page.items) item.toMediaItem().globalKey: item.toMediaItem(),
      for (final hub in _providerHubs)
        for (final item in hub.page.items) item.toMediaItem().globalKey: item.toMediaItem(),
    }.values.toList();
    try {
      await hiddenLibraries?.ensureInitialized();
      await _checkAvailability(items, current: () => _active && generation == _availabilityGeneration && availableOnly);
    } finally {
      if (!isDisposed && generation == _availabilityGeneration) {
        checkingAvailability = false;
        safeNotifyListeners();
      }
    }
  }

  CatalogSource? _source;

  Map<CatalogRowId, CatalogPage> _rows = {};
  List<CatalogHub> _providerHubs = const [];
  ExploreLoadState _state = ExploreLoadState.initial;
  String? _errorMessage;
  DateTime? _loadedAt;
  final FutureCoalescer<void> _loadCoalescer = FutureCoalescer();
  int _generation = 0;
  Timer? _watchlistRefreshTimer;

  // Watchlist-row freshness: every membership change bumps the mutation
  // epoch; a successful row refetch records which epoch it covered. A tab
  // re-shown with uncovered mutations refetches immediately — the debounced
  // timer alone can lose the race when the user navigates back quickly.
  int _watchlistMutationEpoch = 0;
  int _watchlistRowFetchedEpoch = 0;
  int _watchlistHubRetryEpoch = -1;
  final FutureCoalescer<void> _watchlistRefreshCoalescer = FutureCoalescer();

  List<ExploreRowHub>? _hubsCache;
  (int, String)? _hubsCacheKey;
  int _rowsEpoch = 0;

  CatalogSource? get activeSource => _source;

  ExploreLoadState get state => _state;

  bool get isLoading => _state == ExploreLoadState.initial || _state == ExploreLoadState.loading;

  /// Raw load failure (unlocalized); the screen wraps it for display.
  String? get errorMessage => _errorMessage;

  /// Non-empty rows of the active source in display order. Memoized on row
  /// content (and one localized string, so a locale change busts the cache).
  List<ExploreRowHub> get rowHubs {
    final source = _source;
    if (source == null) return const [];
    final key = (_rowsEpoch, rowTitle(CatalogRowId.watchlist));
    if (_hubsCache != null && key == _hubsCacheKey) return _hubsCache!;
    final hubs = <ExploreRowHub>[
      for (final row in source.supportedRows)
        if (_rowEnabled(row))
          if (_rows[row] case final CatalogPage page)
            if (page.items.isNotEmpty)
              ExploreRowHub.catalogRow(
                row: row,
                totalResults: libraryOnly ? null : page.totalResults,
                hub: MediaHub(
                  id: 'explore:${source.id.name}:${row.name}',
                  identifier: 'explore.${row.name}',
                  title: source.id.name == 'tmdb' && row == CatalogRowId.trendingMovies
                      ? t.lurokaDiscovery.weeklyMovies
                      : source.id.name == 'tmdb' && row == CatalogRowId.trendingShows
                      ? t.lurokaDiscovery.weeklyShows
                      : rowTitle(row),
                  type: 'mixed',
                  items: _projectItems([for (final item in page.items) item.toMediaItem()]),
                  size: libraryOnly
                      ? _projectItems([for (final item in page.items) item.toMediaItem()]).length
                      : page.totalResults ?? page.items.length,
                  more: page.hasMore,
                ),
              ),
      for (final providerHub in _providerHubs)
        if (_rendersProviderHub(providerHub) && providerHub.page.items.isNotEmpty)
          ExploreRowHub.providerHub(
            providerHubId: providerHub.id,
            style: providerHub.style,
            totalResults: libraryOnly ? null : providerHub.page.totalResults,
            hub: MediaHub(
              id: 'explore:${source.id.name}:hub:${providerHub.id}',
              identifier: 'explore.hub.${providerHub.id}',
              title: providerHub.title,
              type: 'mixed',
              items: _projectItems([for (final item in providerHub.page.items) item.toMediaItem()]),
              size: libraryOnly
                  ? _projectItems([for (final item in providerHub.page.items) item.toMediaItem()]).length
                  : providerHub.page.totalResults ?? providerHub.page.items.length,
              more: providerHub.page.hasMore,
            ),
          ),
    ];
    hubs.removeWhere((row) => row.hub.items.isEmpty);
    _hubsCache = hubs;
    _hubsCacheKey = key;
    return hubs;
  }

  static bool _rendersProviderHub(CatalogHub hub) {
    // Plex's availabilityPlatforms entries are streaming services, not
    // titles. Until Explore has a platform-specific row, skipping the hub is
    // preferable to presenting service logos as movie posters.
    return hub.style != CatalogHubStyle.availabilityPlatforms;
  }

  static String rowTitle(CatalogRowId row) => switch (row) {
    CatalogRowId.watchlist => t.explore.rows.watchlist,
    CatalogRowId.recommendedMovies => t.explore.rows.recommendedMovies,
    CatalogRowId.recommendedShows => t.explore.rows.recommendedShows,
    CatalogRowId.trendingMovies => t.explore.rows.trendingMovies,
    CatalogRowId.trendingShows => t.explore.rows.trendingShows,
    CatalogRowId.popularMovies => t.explore.rows.popularMovies,
    CatalogRowId.popularShows => t.explore.rows.popularShows,
    CatalogRowId.trendingAnime => t.explore.rows.trendingAnime,
    CatalogRowId.suggestedAnime => t.explore.rows.suggestedAnime,
    CatalogRowId.airingAnime => t.explore.rows.airingAnime,
    CatalogRowId.popularAnime => t.explore.rows.popularAnime,
    CatalogRowId.trending => t.explore.rows.trending,
    CatalogRowId.upcomingMovies => t.explore.rows.upcomingMovies,
    CatalogRowId.upcomingShows => t.explore.rows.upcomingShows,
  };

  /// Load if never loaded, after an error, or when the content has gone
  /// stale. Called on first build and every time the tab is shown.
  void ensureFresh() {
    if (_source == null) return;
    if (_state == ExploreLoadState.initial || _state == ExploreLoadState.error) {
      unawaited(load());
      return;
    }
    final loadedAt = _loadedAt;
    if (loadedAt != null && DateTime.now().difference(loadedAt) > staleAfter) {
      unawaited(load());
      return;
    }
    if (_watchlistRowFetchedEpoch < _watchlistMutationEpoch) {
      unawaited(_refreshWatchlistRow());
    }
  }

  /// Full reload of every supported row (one request per row). Concurrent
  /// calls coalesce into the in-flight pass; a source switch resets the
  /// coalescer (see [_onSourcesChanged]) so the new source's load starts
  /// instead of joining the doomed one.
  Future<void> load() => _loadCoalescer.run(_loadOnce);

  Future<void> _loadOnce() async {
    // Yield so a load() kicked off during build can't notify mid-build.
    await null;
    if (isDisposed) return;
    final source = _source;
    if (source == null) return;
    final generation = _generation;
    final mutationEpochAtStart = _watchlistMutationEpoch;

    _state = ExploreLoadState.loading;
    _availabilityGeneration++;
    _availabilityServerUnavailable = false;
    // Keep verified results visible during a refresh. Source/profile changes
    // clear these at their own boundaries; refreshing public lists need not
    // blank every shelf while the same library matches are checked again.
    if (libraryOnly) {
      _libraryCopies.removeWhere((_, copies) => copies.isEmpty);
    } else {
      _libraryCopies.clear();
    }
    checkingAvailability = libraryOnly;
    _errorMessage = null;
    safeNotifyListeners();

    final fetched = <CatalogRowId, CatalogPage>{};
    List<CatalogHub>? fetchedProviderHubs;
    Object? firstError;
    final CatalogHubSource? hubSource = source is CatalogHubSource ? source as CatalogHubSource : null;
    await Future.wait<void>([
      for (final row in source.supportedRows)
        if (_rowEnabled(row))
          () async {
            try {
              fetched[row] = await source.fetchRow(row, limit: rowLimit);
              if (libraryOnly) {
                if (isDisposed || generation != _generation) return;
                _rows = {..._rows, row: fetched[row]!};
                _rowsEpoch++;
                safeNotifyListeners();
                final items = fetched[row]!.items.map((item) => item.toMediaItem()).toList();
                await _checkAvailability(items, current: () => generation == _generation);
              }
              if ((source is TmdbCatalogSource || source is CinemetaCatalogSource) &&
                  !isDisposed &&
                  generation == _generation) {
                _rows = {..._rows, row: fetched[row]!};
                _rowsEpoch++;
                safeNotifyListeners();
              }
            } catch (e) {
              appLogger.w('Explore: ${source.id.name} row ${row.name} failed', error: e);
              firstError ??= e;
            }
          }(),
      if (customizableShelves)
        () async {
          final shelves = discoveryShelves
              .where((shelf) => _catalogSources.discoveryShelfIds.contains(shelf.id))
              .toList();
          final loaded = <String, CatalogHub>{};
          var next = 0;
          Future<void> worker() async {
            while (next < shelves.length && !isDisposed && generation == _generation) {
              final shelf = shelves[next++];
              try {
                final hub = await loadDiscoveryShelf(shelf, source.id, _awards);
                if (isDisposed || generation != _generation) return;
                loaded[shelf.id] = hub;
                // Publish and match each shelf independently; a slow public
                // category must not hold back cached charts or other awards.
                _providerHubs = [
                  for (final selected in shelves)
                    if (loaded[selected.id] case final current?)
                      current
                    else
                      ..._providerHubs.where((old) => old.id == selected.id),
                ];
                _rowsEpoch++;
                safeNotifyListeners();
                if (libraryOnly) {
                  await _checkAvailability(
                    hub.page.items.map((item) => item.toMediaItem()),
                    current: () => generation == _generation,
                  );
                }
              } catch (e) {
                firstError ??= e;
                appLogger.w('Explore: discovery shelf ${shelf.id} failed', error: e);
              }
            }
          }

          await Future.wait(List.generate(shelves.length.clamp(0, 3), (_) => worker()));
          fetchedProviderHubs = [
            for (final shelf in shelves)
              if (loaded[shelf.id] case final hub?) hub else ..._providerHubs.where((old) => old.id == shelf.id),
          ];
        }()
      else if (hubSource != null)
        () async {
          try {
            fetchedProviderHubs = await hubSource.fetchHubs(limit: rowLimit);
            if (libraryOnly) {
              if (isDisposed || generation != _generation) return;
              _providerHubs = fetchedProviderHubs!;
              _rowsEpoch++;
              safeNotifyListeners();
              final seen = <String>{};
              final longest = _providerHubs.fold<int>(
                0,
                (n, hub) => hub.page.items.length > n ? hub.page.items.length : n,
              );
              final items = [
                for (var index = 0; index < longest; index++)
                  for (final hub in _providerHubs)
                    if (index < hub.page.items.length) hub.page.items[index].toMediaItem(),
              ].where((item) => seen.add(item.globalKey)).toList();
              await _checkAvailability(items, current: () => generation == _generation);
            }
          } catch (e) {
            appLogger.w('Explore: ${source.id.name} provider hubs failed', error: e);
            firstError ??= e;
          }
        }(),
    ]);
    if (isDisposed || generation != _generation) return;
    checkingAvailability = false;

    // A debounced watchlist refresh that landed while this load was in
    // flight covered later mutations than both the watchlist page and the
    // provider hubs that track it — keep the fresher versions.
    if (_watchlistRowFetchedEpoch > mutationEpochAtStart) {
      fetched.remove(CatalogRowId.watchlist);
      fetchedProviderHubs = null;
    }

    if (fetched.isEmpty && (fetchedProviderHubs == null || (fetchedProviderHubs!.isEmpty && firstError != null))) {
      // Nothing succeeded: keep stale rows if any (they beat an error flash),
      // otherwise surface the failure. A null message falls back to the
      // localized empty-state text in the screen.
      if (_rows.isEmpty && _providerHubs.isEmpty) {
        _state = ExploreLoadState.error;
        _errorMessage = firstError?.toString();
      } else {
        _state = ExploreLoadState.loaded;
      }
    } else {
      // Failed rows and hubs keep their previous content.
      _rows = {..._rows, ...fetched};
      if (fetchedProviderHubs case final hubs?) _providerHubs = hubs;
      _state = ExploreLoadState.loaded;
      _loadedAt = DateTime.now();
      _rowsEpoch++;
      if (fetched.containsKey(CatalogRowId.watchlist) && mutationEpochAtStart > _watchlistRowFetchedEpoch) {
        _watchlistRowFetchedEpoch = mutationEpochAtStart;
      }
    }
    // Mutations that landed while the load was in flight aren't reflected in
    // the page we just stored — schedule the debounced catch-up ourselves
    // (the mutation-time notification skips rows that aren't loaded yet).
    if (_rows.containsKey(CatalogRowId.watchlist) && _watchlistRowFetchedEpoch < _watchlistMutationEpoch) {
      _scheduleWatchlistRefresh();
    }
    safeNotifyListeners();
    if (availableOnly) unawaited(setAvailableOnly(true));
  }

  /// Full item list for a fixed row's View All grid.
  Future<List<MediaItem>> loadAllForRow(CatalogRowId row) async {
    final source = _source;
    if (source == null) return const [];
    return _loadAllPages(row.name, (page) => source.fetchRow(row, page: page, limit: viewAllPageLimit));
  }

  /// Full item list for either a fixed row or a provider-defined hub.
  Future<List<MediaItem>> loadAllForHub(ExploreRowHub rowHub) async {
    if (rowHub.row case final row?) return loadAllForRow(row);
    final source = _source;
    final hubId = rowHub.providerHubId;
    if (customizableShelves && hubId != null) {
      final shelf = discoveryShelves.where((shelf) => shelf.id == hubId).firstOrNull;
      if (shelf != null) {
        final hub = await loadDiscoveryShelf(shelf, source!.id, _awards);
        final items = hub.page.items.map((item) => item.toMediaItem()).toList();
        if (availableOnly) await _checkAvailability(items);
        return _projectItems(items);
      }
    }
    if (source is! CatalogHubSource || hubId == null) return rowHub.hub.items;
    final hubSource = source as CatalogHubSource;
    return _loadAllPages(hubId, (page) => hubSource.fetchHub(hubId, page: page, limit: viewAllPageLimit));
  }

  Future<List<MediaItem>> _loadAllPages(String label, Future<CatalogPage> Function(int page) fetchPage) async {
    final items = <MediaItem>[];
    var page = 1;
    while (true) {
      final result = await fetchPage(page);
      items.addAll([for (final item in result.items) item.toMediaItem()]);
      if (!result.hasMore) break;
      if (page >= viewAllMaxPages) {
        appLogger.w('Explore: $label View All truncated at ${items.length} items ($page pages)');
        break;
      }
      page++;
    }
    if (availableOnly) {
      await _checkAvailability(items);
    }
    return _projectItems(items);
  }

  void _onSourcesChanged() {
    final next = _catalogSources.activeSource;
    final shelvesChanged = _shelvesRevision != _catalogSources.discoveryShelvesRevision;
    _shelvesRevision = _catalogSources.discoveryShelvesRevision;
    if (identical(next, _source)) {
      if (shelvesChanged && customizableShelves) {
        _generation++;
        _loadCoalescer.reset();
        _rows.removeWhere((row, _) => !_rowEnabled(row));
        _providerHubs = _providerHubs.where((hub) => _catalogSources.discoveryShelfIds.contains(hub.id)).toList();
        _rowsEpoch++;
        safeNotifyListeners();
        unawaited(load());
      }
      return;
    }
    _source?.watchlistChanges.removeListener(_onWatchlistChanged);
    _source = next;
    _source?.watchlistChanges.addListener(_onWatchlistChanged);
    _generation++;
    _availabilityGeneration++;
    _libraryCopies.clear();
    _previews.clear();
    _catalogByCopy.clear();
    checkingAvailability = false;
    availableOnly = libraryOnly || matcher != null;
    _watchlistRefreshTimer?.cancel();
    // Detach any in-flight passes for the old source: their generation guard
    // already discards their results, but the new source's load must not
    // coalesce into them (that left the tab stuck on the loading state).
    _loadCoalescer.reset();
    _watchlistRefreshCoalescer.reset();
    _watchlistMutationEpoch = 0;
    _watchlistRowFetchedEpoch = 0;
    _watchlistHubRetryEpoch = -1;
    _rows = {};
    _providerHubs = const [];
    _loadedAt = null;
    _errorMessage = null;
    _state = ExploreLoadState.initial;
    _rowsEpoch++;
    safeNotifyListeners();
    if (next != null) unawaited(load());
  }

  void _onWatchlistChanged() {
    // Always bump: a mutation during the initial full load has no row to
    // patch yet, but the load's completion checks this epoch to catch up.
    _watchlistMutationEpoch++;
    if (!_rows.containsKey(CatalogRowId.watchlist)) return;
    _scheduleWatchlistRefresh();
  }

  void _scheduleWatchlistRefresh() {
    _watchlistRefreshTimer?.cancel();
    _watchlistRefreshTimer = Timer(_watchlistRefreshDelay, () => unawaited(_refreshWatchlistRow()));
  }

  Future<void> _refreshWatchlistRow() => _watchlistRefreshCoalescer.run(_refreshWatchlistRowOnce);

  Future<void> _refreshWatchlistRowOnce() async {
    final source = _source;
    if (source == null || isDisposed) return;
    final generation = _generation;
    final coveredEpoch = _watchlistMutationEpoch;
    CatalogPage? fetchedPage;
    List<CatalogHub>? fetchedProviderHubs;
    final CatalogHubSource? hubSource = source is CatalogHubSource ? source as CatalogHubSource : null;
    var providerHubRefreshFailed = false;
    await Future.wait<void>([
      () async {
        try {
          fetchedPage = await source.fetchRow(CatalogRowId.watchlist, limit: rowLimit);
        } catch (e) {
          appLogger.w('Explore: watchlist row refresh failed', error: e);
        }
      }(),
      if (hubSource != null)
        () async {
          try {
            fetchedProviderHubs = await hubSource.fetchHubs(limit: rowLimit);
          } catch (e) {
            appLogger.w('Explore: ${source.id.name} provider hub refresh failed', error: e);
          }
        }(),
    ]);
    providerHubRefreshFailed = hubSource != null && fetchedProviderHubs == null;
    if (isDisposed || generation != _generation) return;
    if (fetchedPage == null && fetchedProviderHubs == null) return;

    if (fetchedPage case final page?) {
      _rows = {..._rows, CatalogRowId.watchlist: page};
      if (!providerHubRefreshFailed) {
        _watchlistRowFetchedEpoch = coveredEpoch;
        _watchlistHubRetryEpoch = -1;
      }
    }
    if (fetchedProviderHubs case final hubs?) _providerHubs = hubs;
    _rowsEpoch++;
    safeNotifyListeners();

    if (fetchedPage == null) return;
    if (providerHubRefreshFailed) {
      // One automatic retry per mutation epoch avoids leaving derived hubs
      // stale without hammering an unavailable endpoint indefinitely.
      if (_watchlistHubRetryEpoch != coveredEpoch) {
        _watchlistHubRetryEpoch = coveredEpoch;
        _scheduleWatchlistRefresh();
      }
    } else if (_watchlistMutationEpoch > coveredEpoch) {
      // Mutations that arrived during this pass need one more refresh.
      _scheduleWatchlistRefresh();
    } else {
      // Fully caught up: a still-pending debounce would only refetch the same
      // state.
      _watchlistRefreshTimer?.cancel();
    }
  }

  @override
  void dispose() {
    hiddenLibraries?.removeListener(_availabilityScopeChanged);
    servers?.removeOnlineServersListener(_onlineServersChanged);
    _catalogSources.removeListener(_onSourcesChanged);
    _source?.watchlistChanges.removeListener(_onWatchlistChanged);
    _watchlistRefreshTimer?.cancel();
    if (_ownsAwards) _awards.dispose();
    super.dispose();
  }
}
