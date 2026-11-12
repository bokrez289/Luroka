import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../exceptions/media_server_exceptions.dart';
import '../i18n/strings.g.dart';
import '../media/ids.dart';
import '../media/library_query.dart';
import '../media/media_filter.dart';
import '../media/media_item.dart';
import '../media/catalog_item_ref.dart';
import '../models/catalog/catalog_item.dart';
import '../media/movie_copy_groups.dart';
import '../widgets/movie_copy_picker.dart';
import '../utils/media_navigation_helper.dart';
import '../media/media_kind.dart';
import '../media/media_library.dart';
import '../media/media_server_client.dart';
import '../mixins/refreshable.dart';
import '../mixins/tab_visibility_aware.dart';
import '../providers/libraries_provider.dart';
import '../providers/home_favorites_snapshot.dart';
import '../providers/hidden_libraries_provider.dart';
import '../providers/multi_server_provider.dart';
import '../providers/catalog_sources_provider.dart';
import '../services/catalog/catalog_source.dart';
import '../utils/app_logger.dart';
import '../utils/error_message_utils.dart';
import '../utils/media_server_http_client.dart';
import '../widgets/favorites_catalog_view.dart';
import 'main_screen.dart';
import '../navigation/main_screen_scope.dart' show MobileScrollToTop;

/// Jellyfin/Emby favorites plus the active Plex user's universal watchlist.
class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen>
    with TabVisibilityAware, Refreshable, FullRefreshable, FocusableTab
    implements MobileScrollToTop {
  final _catalogKey = GlobalKey<FavoritesCatalogViewState>();

  @override
  void scrollToTop() => _catalogKey.currentState?.scrollToTop();

  List<MediaItem> _items = const [];
  MovieCopyGroups _copies = MovieCopyGroups(const []);
  bool _choosingCopy = false;
  bool _isLoading = true;
  bool _hasLoaded = false;
  String? _errorMessage;
  final Map<String, List<MediaItem>> _sourceRows = {};
  ValueNotifier<MovieCopySearchState>? _copySearch;
  MediaItem? _copySearchItem;
  bool _incomplete = false;
  final Set<String> _failedSources = {};

  int _loadGeneration = 0;
  AbortController? _abortController;
  LibrariesProvider? _librariesProvider;
  HiddenLibrariesProvider? _sources;
  CatalogSourcesProvider? _catalogSources;
  CatalogSource? _plexWatchlist;
  Timer? _watchlistRefresh;
  String? _librariesSignature;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final catalogSources = context.read<CatalogSourcesProvider?>();
    if (_catalogSources != catalogSources) {
      _catalogSources?.removeListener(_catalogSourcesChanged);
      _catalogSources = catalogSources;
      catalogSources?.addListener(_catalogSourcesChanged);
      _syncPlexWatchlist();
    }
    final sources = context.read<HiddenLibrariesProvider?>();
    if (sources != _sources) {
      _sources?.removeListener(_sourcesChanged);
      _sources = sources;
      sources?.addListener(_sourcesChanged);
    }

    final libraries = context.read<LibrariesProvider>();
    if (libraries != _librariesProvider) {
      _librariesProvider?.removeListener(_handleLibrariesChanged);
      _librariesProvider = libraries;
      _librariesProvider!.addListener(_handleLibrariesChanged);
    }

    final signature = _librarySignature(libraries.libraries);
    if (_librariesSignature == null) {
      _librariesSignature = signature;
      unawaited(_load());
    } else if (signature != _librariesSignature) {
      _librariesSignature = signature;
      unawaited(_load(showSpinner: !_hasLoaded));
    }
  }

  @override
  void dispose() {
    _sources?.removeListener(_sourcesChanged);
    _catalogSources?.removeListener(_catalogSourcesChanged);
    _plexWatchlist?.watchlistChanges.removeListener(_watchlistChanged);
    _watchlistRefresh?.cancel();
    _librariesProvider?.removeListener(_handleLibrariesChanged);
    _abortController?.abort();
    super.dispose();
  }

  void _syncPlexWatchlist() {
    final next = _catalogSources?.connectedSources.where((source) => source.id == CatalogSourceId.plex).firstOrNull;
    if (identical(next, _plexWatchlist)) return;
    _plexWatchlist?.watchlistChanges.removeListener(_watchlistChanged);
    _plexWatchlist = next;
    next?.watchlistChanges.addListener(_watchlistChanged);
  }

  void _catalogSourcesChanged() {
    final before = _plexWatchlist;
    _syncPlexWatchlist();
    if (!identical(before, _plexWatchlist) && mounted) unawaited(_load(showSpinner: false));
  }

  void _watchlistChanged() {
    _watchlistRefresh?.cancel();
    _watchlistRefresh = Timer(const Duration(milliseconds: 500), () {
      if (mounted) unawaited(_load(showSpinner: false));
    });
  }

  void _sourcesChanged() {
    if (mounted) unawaited(_load(showSpinner: false));
  }

  String _librarySignature(List<MediaLibrary> libraries) =>
      libraries.map((library) => library.globalKey).join('\u0000');

  void _handleLibrariesChanged() {
    if (!mounted) return;
    final signature = _librarySignature(_librariesProvider?.libraries ?? const []);
    if (signature == _librariesSignature) return;
    _librariesSignature = signature;
    unawaited(_load(showSpinner: !_hasLoaded));
  }

  @override
  void onTabShown() {
    _catalogKey.currentState?.setActive(true);
    if (_hasLoaded && !_isLoading) {
      unawaited(_load(showSpinner: false));
    }
  }

  @override
  void onTabHidden() {
    _catalogKey.currentState?.setActive(false);
    if (_isLoading) {
      ++_loadGeneration;
      _abortController?.abort();
      if (mounted) {
        setState(() {
          _isLoading = false;
          _incomplete = true;
          _hasLoaded = true;
        });
        _updateCopySearch();
      }
    }
  }

  @override
  void refresh() {
    unawaited(_load(showSpinner: _items.isEmpty));
  }

  @override
  void fullRefresh() {
    unawaited(_load(showSpinner: _items.isEmpty));
  }

  @override
  void focusActiveTabIfReady() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _catalogKey.currentState?.focusContent();
    });
  }

  Future<void> _load({bool showSpinner = true}) async {
    context.read<HomeFavoritesSnapshot?>()?.cancelBackground();
    final generation = ++_loadGeneration;
    _abortController?.abort();
    final abort = AbortController();
    _abortController = abort;

    setState(() {
      _isLoading = true;
      _incomplete = false;
      _failedSources.clear();
      _errorMessage = null;
    });
    _updateCopySearch();

    await _sources?.ensureInitialized();
    if (!mounted || generation != _loadGeneration) return;
    final excluded = _sources?.hiddenLibraryKeys ?? const <String>{};
    final libraries = (_librariesProvider?.libraries ?? const <MediaLibrary>[])
        .where((library) => !excluded.contains(library.globalKey))
        .toList();
    final multiServer = context.read<MultiServerProvider>();
    final plexWatchlist = _plexWatchlist;
    final allowedKeys = {
      for (final library in libraries) library.globalKey,
      if (plexWatchlist != null) 'plex-watchlist',
    };
    _sourceRows.removeWhere((key, _) => !allowedKeys.contains(key));
    if (_sourceRows.isNotEmpty || _items.isNotEmpty) _publishSources();

    try {
      final failures = await _fetchFavorites(libraries, multiServer, abort, plexWatchlist, generation);
      if (!mounted || generation != _loadGeneration) return;
      _sourceRows.removeWhere((key, _) => _failedSources.contains(key));
      if (_failedSources.isNotEmpty) _publishSources();
      setState(() {
        _isLoading = false;
        _hasLoaded = true;
        _incomplete = failures.isNotEmpty;
        _errorMessage = failures.isEmpty ? null : t.studios.partialFavorites;
      });
      _updateCopySearch();
    } catch (error, stackTrace) {
      if (!mounted || generation != _loadGeneration) return;
      if (error is MediaServerHttpException && error.isCancellation) return;
      setState(() {
        _isLoading = false;
        _hasLoaded = true;
        _incomplete = true;
        if (_items.isEmpty) {
          _errorMessage = localizedLoadErrorMessage(error, stackTrace, context: t.libraries.filterCategories.favorites);
        }
      });
      _updateCopySearch();
    }
  }

  void _publishSources() {
    if (!mounted) return;
    final all = <String, MediaItem>{
      for (final rows in _sourceRows.values)
        for (final item in rows) item.globalKey: item,
    };
    // Keep the same representative when a later library contributes a copy.
    final ordered = <MediaItem>[
      for (final previous in _items)
        if (all.containsKey(previous.globalKey)) all.remove(previous.globalKey)!,
      ...all.values,
    ];
    final loadTimer = Stopwatch()..start();
    setState(() {
      _copies = MovieCopyGroups(ordered);
      _items = _copies.items;
    });
    context.read<HomeFavoritesSnapshot?>()?.replace(ordered);
    appLogger.d('Favorites timing: published ${_items.length} titles in ${loadTimer.elapsedMilliseconds}ms');
    _updateCopySearch();
  }

  void _updateCopySearch() {
    final notifier = _copySearch;
    final item = _copySearchItem;
    if (notifier == null || item == null) return;
    notifier.value = MovieCopySearchState(
      copies: _copies.copiesFor(item),
      searching: _isLoading,
      incomplete: _incomplete,
    );
  }

  Future<List<Object>> _fetchFavorites(
    List<MediaLibrary> libraries,
    MultiServerProvider multiServer,
    AbortController abort,
    CatalogSource? plexWatchlist,
    int generation,
  ) async {
    final failures = <Object>[];
    final requests = <Future<void> Function()>[];

    void publish(String key, List<MediaItem> items) {
      if (!mounted || abort.isAborted || generation != _loadGeneration) return;
      _sourceRows[key] = List.of(items);
      _publishSources();
    }

    if (plexWatchlist != null) {
      requests.add(() async {
        try {
          final items = <MediaItem>[];
          final timer = Stopwatch()..start();
          for (var page = 1; page <= 50; page++) {
            abort.throwIfAborted();
            final result = await plexWatchlist.fetchRow(CatalogRowId.watchlist, page: page, limit: 100);
            items.addAll(
              result.items
                  .where((item) => item.kind == MediaKind.movie || item.kind == MediaKind.show)
                  .map((item) => item.toMediaItem()),
            );
            publish('plex-watchlist', items);
            appLogger.d('Favorites timing: Plex watchlist page $page in ${timer.elapsedMilliseconds}ms');
            if (!result.hasMore || result.items.isEmpty) break;
          }
        } catch (error, stackTrace) {
          if (error is MediaServerHttpException && error.isCancellation) rethrow;
          if (abort.isAborted || generation != _loadGeneration) return;
          failures.add(error);
          _failedSources.add('plex-watchlist');
          appLogger.w('Favorites: Plex watchlist failed', error: error, stackTrace: stackTrace);
        }
      });
    }

    for (final library in libraries) {
      final rawServerId = library.serverId;
      if (rawServerId == null) continue;
      final client = multiServer.getClientForServer(ServerId(rawServerId));
      if (client == null || !client.capabilities.userFavorites) continue;

      requests.add(() async {
        try {
          final timer = Stopwatch()..start();
          final items = await _fetchLibraryFavorites(
            client,
            library,
            abort,
            (items) => publish(library.globalKey, items),
          );
          publish(library.globalKey, items);
          appLogger.d('Favorites timing: library ${library.globalKey} completed in ${timer.elapsedMilliseconds}ms');
        } catch (error, stackTrace) {
          if (error is MediaServerHttpException && error.isCancellation) rethrow;
          if (abort.isAborted || generation != _loadGeneration) return;
          failures.add(error);
          _failedSources.add(library.globalKey);
          appLogger.w('Favorites: failed to load ${library.title}', error: error, stackTrace: stackTrace);
        }
      });
    }

    abort.throwIfAborted();
    var next = 0;
    Future<void> worker() async {
      while (next < requests.length) {
        abort.throwIfAborted();
        await requests[next++]();
      }
    }

    await Future.wait(List.generate(requests.length.clamp(0, 3), (_) => worker()));
    abort.throwIfAborted();
    return failures;
  }

  Future<List<MediaItem>> _fetchLibraryFavorites(
    MediaServerClient client,
    MediaLibrary library,
    AbortController abort,
    void Function(List<MediaItem>) onPage,
  ) async {
    const favoriteFilter = LibraryFilter(field: MediaFilterField.favorite, values: ['1']);
    final includeKinds = library.defaultBrowseKinds.where((kind) => kind != MediaKind.unknown).toList(growable: false);

    List<MediaItem> stamped(List<MediaItem> items) => [
      for (final item in items)
        item.copyWith(
          libraryId: item.libraryId ?? library.id,
          libraryTitle: item.libraryTitle ?? library.title,
          serverId: item.serverId ?? library.serverId,
          serverName: item.serverName ?? library.serverName,
        ),
    ];
    final items = await drainPages<MediaItem>(
      (start, size) => client.fetchLibraryPagedContent(
        library.id,
        query: LibraryQuery(
          kind: library.kind == MediaKind.unknown ? null : library.kind,
          includeKinds: includeKinds,
          offset: start,
          limit: size,
          sort: const LibrarySort(field: 'title', direction: LibrarySortDirection.ascending),
          filters: const [favoriteFilter],
        ),
        libraryKind: library.kind,
        abort: abort,
      ),
      pageSize: 100,
      abort: abort,
      onPage: (items) => onPage(stamped(items)),
    );
    return stamped(items);
  }

  Future<void> _openFavorite(MediaItem item) async {
    if (_choosingCopy) return;
    _choosingCopy = true;
    try {
      if (item.isCatalogItem) {
        await navigateToMediaItem(context, item, onRefresh: (_) => unawaited(_load(showSpinner: false)));
        return;
      }
      final notifier = ValueNotifier(
        MovieCopySearchState(copies: _copies.copiesFor(item), searching: _isLoading, incomplete: _incomplete),
      );
      _copySearch = notifier;
      _copySearchItem = item;
      final selected = await chooseProgressiveMovieCopy(context, notifier, openSingleImmediately: true);
      _copySearch = null;
      _copySearchItem = null;
      notifier.dispose();
      if (!mounted || selected == null || !(_sources?.allowsItem(selected) ?? true)) return;
      await navigateToMediaItem(context, selected, onRefresh: (_) => unawaited(_load(showSpinner: false)));
    } finally {
      _choosingCopy = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FavoritesCatalogView(
        key: _catalogKey,
        items: _items,
        copyCount: (item) => _copies.copiesFor(item).length,
        copiesFor: _copies.copiesFor,
        libraries: (_librariesProvider?.libraries ?? const <MediaLibrary>[])
            .where((library) => !(_sources?.hiddenLibraryKeys.contains(library.globalKey) ?? false))
            .toList(),
        loading: _isLoading,
        errorMessage: _errorMessage,
        resolveClient: (item) => item.serverId == null
            ? null
            : context.read<MultiServerProvider>().getClientForServer(ServerId(item.serverId!)),
        onOpen: _openFavorite,
        onRefresh: refresh,
        onNavigation: () => MainScreenFocusScope.focusSidebarOf(context),
      ),
    );
  }
}
