import 'dart:async';

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../exceptions/media_server_exceptions.dart';
import '../focus/focusable_text_field.dart';
import '../i18n/strings.g.dart';
import '../media/ids.dart';
import '../media/catalog_item_ref.dart';
import '../media/media_item.dart';
import '../media/media_kind.dart';
import '../media/media_item_merge.dart';
import '../media/media_person.dart';
import '../media/search_hit.dart';
import '../media/search_movie_groups.dart';
import '../media/movie_copy_groups.dart';
import '../widgets/movie_copy_picker.dart';
import '../utils/media_navigation_helper.dart';
import '../widgets/settings_builder.dart';
import '../mixins/debounced_media_search.dart';
import '../mixins/mounted_set_state_mixin.dart';
import '../mixins/refreshable.dart';
import '../providers/hidden_libraries_provider.dart';
import '../providers/libraries_provider.dart';
import '../providers/multi_server_provider.dart';
import '../providers/discover_provider.dart';
import '../providers/catalog_sources_provider.dart';
import '../services/search_suggestions.dart';
import '../services/kids_profile_service.dart';
import '../widgets/mobile_keyboard_scope.dart';
import '../services/home_preview_controller.dart';
import '../widgets/studio_cinematic_spotlight.dart';
import '../widgets/studio_spotlight.dart';
import '../widgets/tv_screen_insets.dart';
import '../utils/provider_extensions.dart';
import '../services/data_aggregation_service.dart';
import '../services/settings_service.dart';
import '../services/storage_service.dart';
import '../utils/app_logger.dart';
import '../utils/platform_detector.dart';
import '../utils/media_server_http_client.dart';
import '../utils/search_relevance.dart';
import '../widgets/desktop_app_bar.dart';
import '../widgets/loading_indicator_box.dart';
import '../widgets/search_input_field.dart';
import '../widgets/focusable_media_card.dart';
import '../widgets/focusable_tab_chip.dart';
import '../widgets/person_search_row.dart';
import '../utils/focus_utils.dart';
import 'libraries/state_messages.dart';
import 'main_screen.dart';
import '../navigation/main_screen_scope.dart' show MobileScrollToTop;

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with
        Refreshable,
        ManualRefreshable,
        FullRefreshable,
        SearchInputFocusable,
        FocusableTab,
        MountedSetStateMixin,
        DebouncedMediaSearch<SearchScreen, SearchHit>
    implements MobileScrollToTop {
  final _mobileScroll = ScrollController();

  @override
  void scrollToTop() {
    if (_mobileScroll.hasClients) {
      unawaited(_mobileScroll.animateTo(0, duration: const Duration(milliseconds: 280), curve: Curves.easeOutCubic));
    }
  }

  String? _focusResultsForQuery;
  String? _rememberSubmittedQuery;
  final _tvTextInputController = TvTextInputController();
  AbortController? _activeSearchAbort;
  ({String query, SearchAggregationResult result})? _pendingSearchOutcome;

  /// Filter over the current results: everything, one media kind, or only
  /// people. Chips and the filtered views derive from [_searchCandidates] and
  /// [_searchPeople] — the pre-rank pools behind the ranked [searchResults] —
  /// so a kind ranked out of the "All" top-N still gets a chip, and selecting
  /// a chip shows everything the servers returned for it.
  _SearchFilter _selectedFilter = const _AllResults();
  List<MediaItem> _searchCandidates = const [];
  List<MediaPerson> _searchPeople = const [];
  List<MediaKind> _candidateKinds = const [];
  List<SearchHit>? _filteredResults;
  bool _partialSearchFailure = false;
  String? _searchErrorMessage;
  MediaItem? _focusedResult;
  late final FocusNode _allChipFocusNode = FocusNode(debugLabel: 'SearchKindChipAll');
  late final FocusNode _peopleChipFocusNode = FocusNode(debugLabel: 'SearchPeopleChip');
  final Map<MediaKind, FocusNode> _kindChipFocusNodes = {};
  final Map<String, FocusNode> _recentSearchFocusNodes = {};
  late final FocusNode _clearHistoryFocusNode = FocusNode(debugLabel: 'SearchClearHistory');
  List<String> _recentSearches = const [];
  final _previewFocus = FocusNode(debugLabel: 'SearchOverview');
  late final HomePreviewController _preview;
  List<MediaItem> _suggestions = const [];
  final _suggestionAbort = AbortController();
  int _suggestionGeneration = 0;
  final _queryCache = <String, ({DateTime at, SearchAggregationResult result})>{};
  String _cacheScope = '';
  bool _forceSearch = false;
  String _requestQuery = '';
  int _searchColumns = 5;
  final _resultNodes = <String, FocusNode>{};
  final _libraryScopeFocus = FocusNode(debugLabel: 'SearchScopeLibrary');
  final _seerrScopeFocus = FocusNode(debugLabel: 'SearchScopeSeerr');
  bool _searchSeerr = false;
  Object? _seerrScopeIdentity;

  @override
  Duration get debounceDuration => const Duration(milliseconds: 250);

  HiddenLibrariesProvider? _hiddenLibraries;
  Set<String> _lastSeenHiddenKeys = const {};
  String _lastSeenSources = '';
  String _sourceScope(HiddenLibrariesProvider provider) =>
      provider.selectedSourceLibraries == null ? 'all' : (provider.selectedSourceLibraries!.toList()..sort()).join(',');

  @override
  void initState() {
    super.initState();
    _preview = HomePreviewController(
      includeRatings: true,
      resolveClient: (item) => context.tryGetMediaClientForServer(serverIdOrNull(item.serverId)),
      canFetch: () => mounted && TickerMode.valuesOf(context).enabled && (ModalRoute.of(context)?.isCurrent ?? false),
    );
    FocusUtils.requestFocusAfterBuild(this, searchFocusNode);
    unawaited(_bindHiddenLibraries());
    unawaited(_loadRecentSearches());
    unawaited(_loadSuggestions());
  }

  @override
  void dispose() {
    _mobileScroll.dispose();
    _suggestionAbort.abort();
    _suggestionGeneration++;
    _preview.dispose();
    _previewFocus.dispose();
    _libraryScopeFocus.dispose();
    _seerrScopeFocus.dispose();
    for (final node in _resultNodes.values) {
      node.dispose();
    }
    _hiddenLibraries?.removeListener(_onHiddenLibrariesChanged);
    _allChipFocusNode.dispose();
    _peopleChipFocusNode.dispose();
    for (final node in _kindChipFocusNodes.values) {
      node.dispose();
    }
    for (final node in _recentSearchFocusNodes.values) {
      node.dispose();
    }
    _clearHistoryFocusNode.dispose();
    super.dispose();
  }

  Future<void> _loadSuggestions() async {
    final generation = ++_suggestionGeneration;
    final hidden = context.read<HiddenLibrariesProvider>();
    final home = context.read<DiscoverProvider?>();
    final multi = context.read<MultiServerProvider?>();
    final libraries = context.read<LibrariesProvider?>();
    await hidden.ensureInitialized();
    if (!mounted || generation != _suggestionGeneration) return;
    bool visible(MediaItem item) =>
        (item.kind == MediaKind.movie || item.kind == MediaKind.show) &&
        KidsProfileService.instance.allows(item) &&
        hidden.allowsItem(item);
    final seen = <String>{};
    final cached = <MediaItem>[
      for (final hub in home?.hubs ?? const []) ...hub.items,
    ].where(visible).where((item) => seen.add(item.globalKey)).take(18).toList();
    if (cached.isNotEmpty) {
      setState(() => _suggestions = cached);
    } else if (multi != null && libraries != null) {
      final fetched = await loadSearchSuggestions(
        libraries.libraries.where((library) => !hidden.hiddenLibraryKeys.contains(library.globalKey)).toList(),
        (id) => multi.getClientForServer(ServerId(id)),
        _suggestionAbort,
      );
      if (!mounted || generation != _suggestionGeneration) return;
      setState(() => _suggestions = fetched.where(visible).toList());
    }
    if (!mounted || _suggestions.isEmpty || searchController.text.trim().isNotEmpty) return;
    _selectPreview(_suggestions.first);
  }

  void _selectPreview(MediaItem item) {
    _focusedResult = item;
    _preview.select(item, rowTitle: t.common.search);
  }

  @override
  void onSearchTextChanged(String query) {
    if (query == _requestQuery) return;
    _requestQuery = query;
    if (_searchSeerr) return;
    if (query.isNotEmpty && query != lastSearchedQuery) {
      final matches = rankMediaSearchResults(
        _suggestions.where((item) => item.displayTitle.toLowerCase().contains(query.toLowerCase())).toList(),
        query,
        limit: 12,
      );
      if (matches.isEmpty) return;
      setState(() {
        // Immediate, local suggestions bridge the debounce/network interval.
        searchResults = [for (final item in matches) MediaSearchHit(item)];
        _filteredResults = null;
      });
    }
  }

  Future<void> _showOverview() async {
    final item = _preview.value?.item;
    if (item == null) return;
    final origin = FocusManager.instance.primaryFocus;
    await showDialog<void>(
      context: context,
      builder: (_) => StudioOverviewDialog(item: item, tint: Theme.of(context).colorScheme.primary),
    );
    if (mounted && origin?.context?.mounted == true) origin!.requestFocus();
  }

  Future<void> _loadRecentSearches() async {
    final storage = await StorageService.getInstance();
    if (!mounted) return;
    setState(() => _recentSearches = storage.getRecentSearches());
  }

  void _rememberSearch(String query) {
    final updated = [
      query,
      for (final previous in _recentSearches)
        if (previous.toLowerCase() != query.toLowerCase()) previous,
    ].take(8).toList(growable: false);
    setState(() => _recentSearches = updated);
    unawaited(StorageService.getInstance().then((storage) => storage.saveRecentSearches(updated)));
  }

  Future<void> _clearRecentSearches() async {
    setState(() => _recentSearches = const []);
    _focusInputForNavigation();
    final storage = await StorageService.getInstance();
    await storage.clearRecentSearches();
  }

  void _selectRecentSearch(String query) {
    searchController.text = query;
    handleSearchSubmit();
  }

  /// Re-run the visible query when a library is hidden or unhidden while
  /// results are on screen. The listener is attached only after the provider
  /// has hydrated, so its initial load notification cannot race the first
  /// query — which awaits that same hydration — into running twice.
  Future<void> _bindHiddenLibraries() async {
    final hiddenLibraries = context.read<HiddenLibrariesProvider>();
    await hiddenLibraries.ensureInitialized();
    if (!mounted) return;
    _lastSeenHiddenKeys = Set.of(hiddenLibraries.hiddenLibraryKeys);
    _lastSeenSources = _sourceScope(hiddenLibraries);
    _hiddenLibraries = hiddenLibraries..addListener(_onHiddenLibrariesChanged);
  }

  void _onHiddenLibrariesChanged() {
    final hiddenLibraries = _hiddenLibraries;
    if (hiddenLibraries == null || !mounted) return;
    final currentKeys = hiddenLibraries.hiddenLibraryKeys;
    final sourceScope = _sourceScope(hiddenLibraries);
    if (sourceScope == _lastSeenSources &&
        currentKeys.length == _lastSeenHiddenKeys.length &&
        currentKeys.containsAll(_lastSeenHiddenKeys)) {
      return;
    }
    _lastSeenHiddenKeys = Set.of(currentKeys);
    _lastSeenSources = sourceScope;
    _queryCache.clear();
    _suggestions = const [];
    unawaited(_loadSuggestions());
    final query = searchController.text.trim();
    if (query.isEmpty || !hasSearched) return;
    unawaited(runSearch(query));
  }

  @override
  String get searchDebugLabel => 'Search';

  @override
  Future<List<SearchHit>> performSearchQuery(String query) async {
    if (_searchSeerr) {
      final source = context.read<CatalogSourcesProvider?>()?.seerrSource;
      if (source == null) throw const _SearchUnavailableException();
      final items = await source.search(query);
      return [for (final item in items) MediaSearchHit(item.toMediaItem())];
    }
    final multiServerProvider = Provider.of<MultiServerProvider>(context, listen: false);
    if (!multiServerProvider.hasConnectedServers) {
      throw const _SearchUnavailableException();
    }

    // Hidden-library keys must be hydrated before the first query, or a cold
    // start would filter nothing. Read before any await: the profile subtree
    // can be torn down mid-search.
    final hiddenLibraries = context.read<HiddenLibrariesProvider>();
    await hiddenLibraries.ensureInitialized();
    if (!mounted) return const [];

    final scope =
        '${multiServerProvider.onlineServerIds.map((id) => '$id:${identityHashCode(multiServerProvider.getClientForServer(ServerId(id)))}').join(',')}/${hiddenLibraries.hiddenLibraryKeys.join(',')}/${_sourceScope(hiddenLibraries)}';
    if (_cacheScope != scope) {
      _cacheScope = scope;
      _queryCache.clear();
    }
    final saved = _forceSearch ? null : _queryCache[query.toLowerCase()];
    final cached = saved != null && DateTime.now().difference(saved.at) < const Duration(minutes: 2)
        ? saved.result
        : null;
    _forceSearch = false;
    if (cached != null) {
      _pendingSearchOutcome = (query: query, result: cached);
      return cached.hits;
    }

    final abort = AbortController();
    _activeSearchAbort = abort;
    try {
      final result = await multiServerProvider.aggregationService.searchAcrossServers(
        query,
        hiddenLibraryKeys: hiddenLibraries.hiddenLibraryKeys,
        selectedSourceLibraries: hiddenLibraries.selectedSourceLibraries,
        abort: abort,
        onProgress: (partial) {
          if (!mounted || abort.isAborted || searchController.text.trim() != query || partial.hits.isEmpty) return;
          setState(() {
            searchResults = partial.hits;
            _applyOutcome(query, partial);
          });
          if (_focusResultsForQuery == query) {
            _focusResultsForQuery = null;
            FocusUtils.requestFocusAfterBuild(this, firstResultFocusNode);
          }
        },
      );
      abort.throwIfAborted();
      if (result.succeededServerIds.isEmpty && result.failedServerIds.isNotEmpty) {
        throw const _SearchUnavailableException();
      }
      if (result.succeededServerIds.isEmpty && result.cancelledServerIds.isNotEmpty) {
        throw MediaServerHttpException(
          type: MediaServerHttpErrorType.cancelled,
          message: 'Search was cancelled before any server completed',
        );
      }
      _pendingSearchOutcome = (query: query, result: result);
      if (result.failedServerIds.isEmpty && result.cancelledServerIds.isEmpty) {
        _queryCache[query.toLowerCase()] = (at: DateTime.now(), result: result);
        if (_queryCache.length > 12) _queryCache.remove(_queryCache.keys.first);
      }
      return result.hits;
    } finally {
      if (identical(_activeSearchAbort, abort)) _activeSearchAbort = null;
    }
  }

  @override
  void onSearchInvalidated() {
    _activeSearchAbort?.abort();
    _activeSearchAbort = null;
    _pendingSearchOutcome = null;
  }

  @override
  void onSearchError(Object error) {
    _focusResultsForQuery = null;
    _focusedResult = null;
    _preview.clear();
    _pendingSearchOutcome = null;
    _resetFilter();
    _partialSearchFailure = false;
    _searchErrorMessage = error is _SearchUnavailableException
        ? t.errors.searchUnavailable
        : t.errors.searchFailed(error: error);
  }

  @override
  void onSearchCleared() {
    _focusResultsForQuery = null;
    _focusedResult = null;
    _pendingSearchOutcome = null;
    _resetFilter();
    _partialSearchFailure = false;
    _searchErrorMessage = null;
    if (!_searchSeerr && _suggestions.isNotEmpty) _selectPreview(_suggestions.first);
  }

  void _applyOutcome(String query, SearchAggregationResult result) {
    _searchCandidates = result.candidates;
    _searchPeople = result.people;
    _candidateKinds = _kindsIn(_searchCandidates);
    // Partial title results say nothing about people still being checked.
    // Only the completed response may reset a now-empty selected filter.
    _filteredResults = _rankFilteredResults(_selectedFilter, query);
    final first = _firstMediaResult;
    if (first != null &&
        (_focusedResult == null || !_visibleResults.any((hit) => hit.globalKey == _focusedResult!.globalKey))) {
      _selectPreview(first);
    }
  }

  @override
  void onSearchCompleted(String query, List<SearchHit> results) {
    final outcome = _pendingSearchOutcome;
    _pendingSearchOutcome = null;
    final matched = outcome != null && outcome.query == query ? outcome.result : null;

    // Committed alongside the results the pending setState renders (build has
    // not run yet): the pre-rank pools the filter chips derive from. A selected
    // filter survives a refined query as long as it still has candidates;
    // otherwise it falls back to "All".
    _searchCandidates =
        matched?.candidates ??
        [
          for (final hit in results)
            if (hit case MediaSearchHit(:final item)) item,
        ];
    _searchPeople =
        matched?.people ??
        [
          for (final hit in results)
            if (hit case PersonSearchHit(:final person)) person,
        ];
    _candidateKinds = _kindsIn(_searchCandidates);
    if (!_hasCandidatesFor(_selectedFilter)) _selectedFilter = const _AllResults();
    _filteredResults = _rankFilteredResults(_selectedFilter, query);
    final first = _firstMediaResult;
    if (first != null) {
      _selectPreview(first);
    } else {
      _focusedResult = null;
      _preview.clear();
    }
    if (_rememberSubmittedQuery == query) {
      _rememberSearch(query);
      _rememberSubmittedQuery = null;
    }

    _partialSearchFailure = matched?.failedServerIds.isNotEmpty ?? false;

    if (_focusResultsForQuery == null || _focusResultsForQuery != query) return;
    _focusResultsForQuery = null;
    if (results.isEmpty) return;
    if (searchController.text.trim() != query) return; // user kept editing
    FocusUtils.requestFocusAfterBuild(this, firstResultFocusNode);
  }

  /// OSK "Search" / hardware Enter on TV additionally focuses the results
  /// when the forced search lands.
  @override
  void handleSearchSubmit() {
    final query = searchController.text.trim();
    if (query.isEmpty) return;
    if (query == lastSearchedQuery && searchResults.isNotEmpty) {
      _rememberSearch(query);
    } else {
      _rememberSubmittedQuery = query;
    }
    if (searchResults.isEmpty || isSearching || query != lastSearchedQuery) {
      _focusResultsForQuery = query;
    }
    super.handleSearchSubmit();
  }

  @override
  void refresh() {
    if (!mounted) return;
    _forceSearch = true;
    runSearch(searchController.text.trim());
  }

  /// Cmd+R / Ctrl+R re-runs the query currently on screen; `runSearch` no-ops
  /// on an empty field.
  @override
  void manualRefresh() => refresh();

  /// Focus the search input field
  @override
  void focusSearchInput() {
    if (!mounted) return;
    searchFocusNode.requestFocus();
  }

  void _focusInputForNavigation() {
    if (!mounted) return;
    if (PlatformDetector.isTV()) {
      _tvTextInputController.focusInputWithoutOpening();
    } else {
      searchFocusNode.requestFocus();
    }
  }

  @override
  void focusActiveTabIfReady() {
    if (!mounted) return;
    searchFocusNode.requestFocus();
  }

  /// Apply a complete query submitted from the Luroka companion remote: set the
  /// text, dismiss any open on-screen keyboard, land focus on the input without
  /// (re)opening the OSK, and run the search now — the first result takes focus
  /// when it lands (via onSearchCompleted). The user already typed the query on
  /// their phone, so the TV keyboard must never be up afterwards.
  @override
  void submitSearchQuery(String query) {
    if (!mounted) return;
    final trimmed = query.trim();
    searchController.text = trimmed; // listener arms the debounce / resets state

    // Focusing the field normally auto-opens the OSK; a remote search must not
    // show it, and must dismiss one the TV user already had open (the phone's
    // Search chip sends tabSearch before the query arrives).
    _tvTextInputController.closeTextInput();
    if (trimmed.isEmpty) return;

    // Land focus on the (visible) input immediately so the D-pad remote is
    // never stranded on the hidden previous tab — while the search is in
    // flight, when it fails, and when it returns nothing.
    _tvTextInputController.focusInputWithoutOpening();

    // Same path as the OSK Search key: jumps straight to already-matching
    // results, or cancels the debounce and runs now; the screen override arms
    // _focusResultsForQuery so results take focus when they land.
    handleSearchSubmit();
  }

  // Public method to fully reload all content (for profile switches)
  @override
  void fullRefresh() {
    if (!mounted) return;
    appLogger.d('SearchScreen.fullRefresh() called - clearing search and reloading');
    // Clearing the field resets the search state through the text listener.
    _focusResultsForQuery = null;
    _queryCache.clear();
    if (_searchSeerr) {
      setState(() {
        _searchSeerr = false;
        _seerrScopeIdentity = null;
      });
    }
    searchController.clear();
  }

  Future<void> updateItem(MediaItem source) async {
    if (!mounted) return;
    final serverId = source.serverId;
    if (serverId == null) return;

    try {
      final multiServer = context.read<MultiServerProvider>();
      final updated = await multiServer.getClientForServer(ServerId(serverId))?.fetchItem(source.id);
      if (!mounted || updated == null) return;
      // A fresh Jellyfin `fetchItem` carries no library field, and a
      // library-less row would lose its label; keep the identity
      // and library context the search stamped on the original row.
      final merged = mergeFetchedMediaItem(fetched: updated, fallbackServerId: ServerId(serverId), existing: source);
      // The same row can sit in the ranked "All" list, the filtered view,
      // and the candidate pool; refresh every copy so a later chip switch
      // cannot resurrect the stale row.
      var replaced = _replaceHitByGlobalKey(searchResults, source.globalKey, merged);
      replaced = _replaceByGlobalKey(_searchCandidates, source.globalKey, merged) || replaced;
      final filtered = _filteredResults;
      if (filtered != null) {
        replaced = _replaceHitByGlobalKey(filtered, source.globalKey, merged) || replaced;
      }
      if (_focusedResult?.globalKey == source.globalKey) _selectPreview(merged);
      if (replaced) setState(() {});
    } catch (e) {
      appLogger.d('Search item refresh skipped for ${source.globalKey}', error: e);
    }
  }

  void _navigateToSidebar() {
    MainScreenFocusScope.focusSidebarOf(context);
  }

  /// Chip and section order. `folder`/`unknown` are not search kinds; clips
  /// and photos are uncommon but remain explicit when a backend returns them.
  static const List<MediaKind> _kindFilterOrder = [
    MediaKind.movie,
    MediaKind.show,
    MediaKind.season,
    MediaKind.episode,
    MediaKind.artist,
    MediaKind.album,
    MediaKind.track,
    MediaKind.collection,
    MediaKind.playlist,
    MediaKind.clip,
    MediaKind.photo,
  ];

  static List<MediaKind> _kindsIn(List<MediaItem> candidates) {
    if (candidates.isEmpty) return const [];
    final present = {for (final item in candidates) item.kind};
    return [
      for (final kind in _kindFilterOrder)
        if (present.contains(kind)) kind,
    ];
  }

  static bool _replaceByGlobalKey(List<MediaItem> items, String globalKey, MediaItem replacement) {
    final index = items.indexWhere((item) => item.globalKey == globalKey);
    if (index == -1) return false;
    items[index] = replacement;
    return true;
  }

  static bool _replaceHitByGlobalKey(List<SearchHit> hits, String globalKey, MediaItem replacement) {
    final index = hits.indexWhere((hit) => hit is MediaSearchHit && hit.globalKey == globalKey);
    if (index == -1) return false;
    hits[index] = MediaSearchHit(replacement);
    return true;
  }

  /// The list the results sliver renders: the aggregation's ranked list, or
  /// the selected filter's pool re-ranked with the full display budget.
  List<SearchHit> get _visibleResults {
    final hits = _filteredResults ?? searchResults;
    final kids = KidsProfileService.instance;
    if (!kids.isActiveKids) return groupSearchMovies(hits, _searchCandidates);
    return groupSearchMovies(
      hits.where((hit) => hit is MediaSearchHit && kids.allows(hit.item)).toList(),
      _searchCandidates.where(kids.allows).toList(),
    );
  }

  bool _openingResult = false;
  Future<void> _openSearchResult(MediaItem item) async {
    if (_openingResult) return;
    _openingResult = true;
    final origin = FocusManager.instance.primaryFocus;
    try {
      MediaItem? selected = item;
      if (!item.isCatalogItem && (item.kind == MediaKind.movie || item.kind == MediaKind.show)) {
        final hidden = _hiddenLibraries?.hiddenLibraryKeys ?? const <String>{};
        final groups = MovieCopyGroups(
          [
            ..._searchCandidates,
            ..._suggestions,
            ...searchResults.whereType<MediaSearchHit>().map((hit) => hit.item),
            item,
          ].where(
            (copy) =>
                (copy.kind == MediaKind.movie || copy.kind == MediaKind.show) &&
                !hidden.contains(copy.libraryGlobalKey) &&
                KidsProfileService.instance.allows(copy),
          ),
        );
        selected = await chooseMovieCopy(context, groups.copiesFor(item));
      }
      if (!mounted || selected == null) return;
      await navigateToMediaItem(context, selected, onRefresh: (source) => unawaited(updateItem(source)));
    } finally {
      _openingResult = false;
      if (mounted && origin?.context?.mounted == true && (ModalRoute.of(context)?.isCurrent ?? false)) {
        origin!.requestFocus();
      }
    }
  }

  MediaItem? get _firstMediaResult => _visibleResults.whereType<MediaSearchHit>().firstOrNull?.item;

  /// Chip order: All, the media kinds present, then People.
  List<_SearchFilter> get _filterOptions => [
    const _AllResults(),
    for (final kind in _candidateKinds) _KindResults(kind),
    if (_searchPeople.isNotEmpty) const _PeopleResults(),
  ];

  /// "All" plus a single other option (one kind, or only people) has nothing
  /// to filter.
  bool get _showFilterChips => _candidateKinds.length + (_searchPeople.isEmpty ? 0 : 1) > 1;

  bool _hasCandidatesFor(_SearchFilter filter) => switch (filter) {
    _AllResults() => true,
    _KindResults(:final kind) => _candidateKinds.contains(kind),
    _PeopleResults() => _searchPeople.isNotEmpty,
  };

  /// The selected filter's pool re-ranked with the full display budget, or
  /// null for "All" (the aggregation's ranked list).
  List<SearchHit>? _rankFilteredResults(_SearchFilter filter, String query) {
    switch (filter) {
      case _AllResults():
        return null;
      case _KindResults(:final kind):
        final ofKind = [
          for (final candidate in _searchCandidates)
            if (candidate.kind == kind) candidate,
        ];
        return [
          for (final item in rankMediaSearchResults(ofKind, query, limit: defaultMediaSearchLimit))
            MediaSearchHit(item),
        ];
      case _PeopleResults():
        return [
          for (final person in rankPeopleSearchResults(_searchPeople, query, limit: defaultMediaSearchLimit))
            PersonSearchHit(person),
        ];
    }
  }

  void _selectFilter(_SearchFilter filter) {
    if (filter == _selectedFilter) return;
    setState(() {
      _selectedFilter = filter;
      _filteredResults = _rankFilteredResults(filter, lastSearchedQuery);
      final first = _firstMediaResult;
      if (first != null) _selectPreview(first);
    });
  }

  void _resetFilter() {
    _selectedFilter = const _AllResults();
    _searchCandidates = const [];
    _searchPeople = const [];
    _candidateKinds = const [];
    _filteredResults = null;
    _focusedResult = null;
  }

  FocusNode _chipFocusNode(_SearchFilter filter) => switch (filter) {
    _AllResults() => _allChipFocusNode,
    _KindResults(:final kind) => _kindChipFocusNodes.putIfAbsent(
      kind,
      () => FocusNode(debugLabel: 'SearchKindChip_${kind.id}'),
    ),
    _PeopleResults() => _peopleChipFocusNode,
  };

  /// D-pad landing point for the chip row: the chip that is currently active.
  void _focusFilterChips() => _chipFocusNode(_selectedFilter).requestFocus();

  void _focusFirstResult() {
    if (_visibleResults.isNotEmpty) firstResultFocusNode.requestFocus();
  }

  void _selectSearchScope(bool seerr) {
    if (_searchSeerr == seerr) return;
    final query = searchController.text.trim();
    cancelPendingSearch();
    onSearchInvalidated();
    setState(() {
      _searchSeerr = seerr;
      _seerrScopeIdentity = seerr ? context.read<CatalogSourcesProvider?>()?.seerrSource : null;
      searchResults = [];
      hasSearched = query.isNotEmpty;
      isSearching = false;
      lastSearchFailed = false;
      lastSearchedQuery = '';
      _partialSearchFailure = false;
      _searchErrorMessage = null;
      _resetFilter();
      _preview.clear();
    });
    if (query.isNotEmpty) unawaited(runSearch(query));
  }

  void _focusSearchScopeOrInput() {
    if (context.read<CatalogSourcesProvider?>()?.seerrSource != null) {
      (_searchSeerr ? _seerrScopeFocus : _libraryScopeFocus).requestFocus();
    } else {
      _focusInputForNavigation();
    }
  }

  void _focusContentBelowScope() {
    if (_showRecentSearches) {
      _recentSearchFocusNodes[_recentSearches.first]?.requestFocus();
    } else if (_visibleResults.isNotEmpty) {
      if (_showFilterChips) {
        _focusFilterChips();
      } else {
        firstResultFocusNode.requestFocus();
      }
    } else if (!_searchSeerr && searchController.text.trim().isEmpty && _suggestions.isNotEmpty) {
      firstResultFocusNode.requestFocus();
    }
  }

  bool get _showRecentSearches =>
      !_searchSeerr && !hasSearched && searchController.text.trim().isEmpty && _recentSearches.isNotEmpty;

  void _focusAboveSuggestions() {
    if (_showRecentSearches) {
      _recentSearchFocusNodes[_recentSearches.first]?.requestFocus();
    } else {
      _focusSearchScopeOrInput();
    }
  }

  Widget _buildSearchScope() => SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      child: Row(
        children: [
          FocusableTabChip(
            editorial: PlatformDetector.isTV(),
            label: t.navigation.libraries,
            isSelected: !_searchSeerr,
            focusNode: _libraryScopeFocus,
            onSelect: () => _selectSearchScope(false),
            onNavigateLeft: _navigateToSidebar,
            onNavigateRight: _seerrScopeFocus.requestFocus,
            onNavigateUp: _focusInputForNavigation,
            onNavigateDown: _focusContentBelowScope,
            onBack: _navigateToSidebar,
          ),
          const SizedBox(width: 8),
          FocusableTabChip(
            editorial: PlatformDetector.isTV(),
            label: 'Seerr',
            isSelected: _searchSeerr,
            focusNode: _seerrScopeFocus,
            onSelect: () => _selectSearchScope(true),
            onNavigateLeft: _libraryScopeFocus.requestFocus,
            onNavigateUp: _focusInputForNavigation,
            onNavigateDown: _focusContentBelowScope,
            onBack: _navigateToSidebar,
          ),
        ],
      ),
    ),
  );

  String _filterLabel(_SearchFilter filter) => switch (filter) {
    _AllResults() => t.libraries.groupings.all,
    _KindResults(:final kind) => _kindFilterLabel(kind),
    _PeopleResults() => t.search.people,
  };

  String _kindFilterLabel(MediaKind kind) => switch (kind) {
    MediaKind.movie => t.libraries.groupings.movies,
    MediaKind.show => t.libraries.groupings.shows,
    MediaKind.season => t.libraries.groupings.seasons,
    MediaKind.episode => t.libraries.groupings.episodes,
    MediaKind.artist => t.libraries.groupings.artists,
    MediaKind.album => t.libraries.groupings.albums,
    MediaKind.track => t.libraries.groupings.tracks,
    MediaKind.collection => t.libraries.tabs.collections,
    MediaKind.playlist => t.libraries.tabs.playlists,
    MediaKind.clip || MediaKind.photo => kind.label,
    // Unreachable: excluded from _kindFilterOrder.
    MediaKind.folder || MediaKind.unknown => kind.label,
  };

  Widget _buildRecentSearches() {
    final labels = [..._recentSearches, t.search.clearHistory];
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(t.search.recentSearches, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),
            TabChipStrip(
              children: [
                for (final (index, label) in labels.indexed) ...[
                  if (index > 0) const SizedBox(width: 8),
                  FocusableTabChip(
                    key: ValueKey(index == labels.length - 1 ? 'clear_search_history' : 'recent_search_$label'),
                    label: label,
                    isSelected: false,
                    focusNode: index == labels.length - 1
                        ? _clearHistoryFocusNode
                        : _recentSearchFocusNodes.putIfAbsent(
                            label,
                            () => FocusNode(debugLabel: 'RecentSearch_$label'),
                          ),
                    onSelect: index == labels.length - 1
                        ? () => unawaited(_clearRecentSearches())
                        : () => _selectRecentSearch(label),
                    onNavigateLeft: index == 0
                        ? _navigateToSidebar
                        : () {
                            final previous = labels[index - 1];
                            (index - 1 == labels.length - 1
                                    ? _clearHistoryFocusNode
                                    : _recentSearchFocusNodes[previous])
                                ?.requestFocus();
                          },
                    onNavigateRight: index == labels.length - 1
                        ? null
                        : () {
                            final next = labels[index + 1];
                            (index + 1 == labels.length - 1 ? _clearHistoryFocusNode : _recentSearchFocusNodes[next])
                                ?.requestFocus();
                          },
                    onNavigateUp: _focusSearchScopeOrInput,
                    onNavigateDown: _suggestions.isNotEmpty ? firstResultFocusNode.requestFocus : null,
                    onBack: _navigateToSidebar,
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterChips() {
    // Chips trap RIGHT to keep focus inside the strip (see
    // FocusableChipStateMixin), so left/right neighbors are wired explicitly,
    // like every other tab-chip strip.
    final filters = _filterOptions;
    return SliverToBoxAdapter(
      child: Padding(
        // The search field's own bottom padding provides the gap above; the
        // results sliver below shrinks its top padding to match (16/16 visual
        // rhythm around the strip instead of the default 24/24).
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TabChipStrip(
          children: [
            for (final (index, filter) in filters.indexed) ...[
              if (index > 0) const SizedBox(width: 8),
              FocusableTabChip(
                editorial: PlatformDetector.isTV(),
                label: _filterLabel(filter),
                isSelected: _selectedFilter == filter,
                focusNode: _chipFocusNode(filter),
                onSelect: () => _selectFilter(filter),
                onNavigateLeft: index == 0
                    ? _navigateToSidebar
                    : () => _chipFocusNode(filters[index - 1]).requestFocus(),
                onNavigateRight: index < filters.length - 1
                    ? () => _chipFocusNode(filters[index + 1]).requestFocus()
                    : null,
                onNavigateUp: _focusSearchScopeOrInput,
                onNavigateDown: _focusFirstResult,
                onBack: _navigateToSidebar,
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildResultsShelf(
    BuildContext context, {
    bool suggestions = false,
    List<SearchHit>? results,
    bool ownsFirstFocus = true,
  }) {
    final multiServer = context.watch<MultiServerProvider>();
    final libraries = context.watch<LibrariesProvider>();
    final showServerName = multiServer.totalServerCount > 1;
    final showChips = _showFilterChips;
    final kids = KidsProfileService.instance;
    final candidatePool = suggestions ? _suggestions : _searchCandidates;
    final visible = groupSearchMovies(
      results ?? (suggestions ? [for (final item in _suggestions) MediaSearchHit(item)] : _visibleResults),
      kids.isActiveKids ? candidatePool.where(kids.allows) : candidatePool,
    );
    final isTv = PlatformDetector.isTV();
    if (isTv && visible.any((hit) => hit is PersonSearchHit) && visible.any((hit) => hit is MediaSearchHit)) {
      final peopleFirst = visible.first is PersonSearchHit;
      final people = _buildResultsShelf(
        context,
        results: visible.whereType<PersonSearchHit>().toList(),
        ownsFirstFocus: peopleFirst,
      );
      final media = _buildResultsShelf(
        context,
        results: visible.whereType<MediaSearchHit>().toList(),
        ownsFirstFocus: !peopleFirst,
      );
      return SliverMainAxisGroup(slivers: peopleFirst ? [people, media] : [media, people]);
    }
    if (!isTv || visible.any((hit) => hit is PersonSearchHit)) {
      return buildResultsSliver(
        childCount: visible.length,
        // Half the default top padding when the chip strip sits directly above:
        // the strip already separates results from the search field.
        padding: showChips ? const EdgeInsets.fromLTRB(16, 8, 16, 16) : const EdgeInsets.all(16),
        (context, index) {
          final isFirst = index == 0;
          final onNavigateUp = isFirst
              ? (suggestions ? _focusAboveSuggestions : (showChips ? _focusFilterChips : _focusSearchScopeOrInput))
              : null;
          return switch (visible[index]) {
            MediaSearchHit(:final item) => FocusableMediaCard(
              key: Key(item.globalKey),
              item: item,
              onTap: () => unawaited(_openSearchResult(item)),
              viewModeOverride: ViewMode.list,
              compactList: PlatformDetector.isMobile(context) && MobileKeyboardScope.isVisibleOf(context),
              disableScale: true,
              focusNode: isFirst && ownsFirstFocus ? firstResultFocusNode : null,
              onRefresh: updateItem,
              onListRefresh: refresh,
              onNavigateLeft: _navigateToSidebar,
              onNavigateUp: onNavigateUp,
              showServerName: showServerName && (item.raw?['lurokaCopyCount'] as int? ?? 1) == 1,
              libraryName: (item.raw?['lurokaCopyCount'] as int? ?? 1) > 1 ? null : libraries.libraryLabelFor(item),
            ),
            PersonSearchHit(:final person) => PersonSearchRow(
              key: Key(person.globalKey),
              person: person,
              focusNode: isFirst && ownsFirstFocus ? firstResultFocusNode : null,
              showServerName: showServerName,
              onNavigateLeft: _navigateToSidebar,
              onNavigateUp: onNavigateUp,
            ),
          };
        },
      );
    }
    final mediaItems = visible.whereType<MediaSearchHit>().map((hit) => hit.item).toList();

    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
      sliver: SliverLayoutBuilder(
        builder: (context, constraints) {
          _searchColumns = (constraints.crossAxisExtent / 150).floor().clamp(2, 6);
          FocusNode nodeFor(int index) => index == 0 && ownsFirstFocus
              ? firstResultFocusNode
              : _resultNodes.putIfAbsent(
                  mediaItems[index].globalKey,
                  () => FocusNode(debugLabel: 'SearchResult_$index'),
                );
          return SliverGrid.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: _searchColumns,
              childAspectRatio: SettingsService.instance.read(SettingsService.posterDetails) ? 2 / 3.5 : 2 / 3,
              crossAxisSpacing: 18,
              mainAxisSpacing: 20,
            ),
            itemCount: mediaItems.length,
            itemBuilder: (context, index) {
              final item = mediaItems[index];
              return FocusableMediaCard(
                key: Key(item.globalKey),
                item: item,
                showPosterDetails: SettingsService.instance.read(SettingsService.posterDetails),
                fullBleedImage: !SettingsService.instance.read(SettingsService.posterDetails),
                onTap: () => unawaited(_openSearchResult(item)),
                viewModeOverride: ViewMode.grid,
                focusNode: nodeFor(index),
                onRefresh: updateItem,
                onListRefresh: refresh,
                onNavigateLeft: index % _searchColumns == 0 ? _navigateToSidebar : null,
                onNavigateUp: index < _searchColumns
                    ? (suggestions
                          ? _focusAboveSuggestions
                          : (!_showFilterChips ? _focusSearchScopeOrInput : _focusFilterChips))
                    : null,
                onFocusChange: (focus) {
                  if (focus) _selectPreview(item);
                },
                showServerName: showServerName && (item.raw?['lurokaCopyCount'] as int? ?? 1) == 1,
                libraryName: (item.raw?['lurokaCopyCount'] as int? ?? 1) > 1 ? null : libraries.libraryLabelFor(item),
              );
            },
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SettingValueBuilder<bool>(
      pref: SettingsService.posterDetails,
      builder: (context, _, _) => _buildSearchContent(context),
    );
  }

  Widget _buildSearchContent(BuildContext context) {
    final seerr = context.watch<CatalogSourcesProvider?>()?.seerrSource;
    if (_searchSeerr && !identical(seerr, _seerrScopeIdentity)) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted &&
            _searchSeerr &&
            !identical(context.read<CatalogSourcesProvider?>()?.seerrSource, _seerrScopeIdentity)) {
          _selectSearchScope(false);
        }
      });
    }
    return Scaffold(
      body: TvScreenInsets(
        child: SafeArea(
          child: CustomScrollView(
            controller: _mobileScroll,
            primary: false,
            slivers: [
              DesktopSliverAppBar(title: Text(t.common.search), floating: true),
              SliverToBoxAdapter(
                child: SearchInputField(
                  controller: searchController,
                  focusNode: searchFocusNode,
                  debugLabel: searchDebugLabel,
                  hintText: t.search.hint,
                  tvTextInputController: _tvTextInputController,
                  onNavigateLeft: _navigateToSidebar,
                  onNavigateUp: PlatformDetector.isTV() ? _navigateToSidebar : null,
                  onNavigateDown: seerr != null ? _focusSearchScopeOrInput : _focusContentBelowScope,
                  onEditingComplete: PlatformDetector.isTV() ? handleSearchSubmit : null,
                  onBack: () {
                    if (searchController.text.isNotEmpty) {
                      searchController.clear();
                    } else {
                      _navigateToSidebar();
                    }
                  },
                ),
              ),
              if (seerr != null) _buildSearchScope(),
              if (PlatformDetector.isTV() &&
                  (_focusedResult != null ||
                      (!_searchSeerr && searchController.text.trim().isEmpty && _suggestions.isNotEmpty)))
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.viewInsetsOf(context).bottom > 0
                        ? 88
                        : (MediaQuery.sizeOf(context).height * 0.26).clamp(130.0, 210.0),
                    child: ValueListenableBuilder<HomePreview?>(
                      valueListenable: _preview,
                      builder: (context, value, _) {
                        if (value == null) return const SizedBox.shrink();
                        return StudioCinematicSpotlight(
                          collapsed: MediaQuery.viewInsetsOf(context).bottom > 0,
                          item: value.item,
                          artwork: value.artwork,
                          client: context.tryGetMediaClientForServer(serverIdOrNull(value.artwork.serverId)),
                          tint: Theme.of(context).colorScheme.primary,
                          overviewFocus: _previewFocus,
                          onOverview: () => unawaited(_showOverview()),
                          onNavigateUp: _focusInputForNavigation,
                          onNavigateDown: firstResultFocusNode.requestFocus,
                        );
                      },
                    ),
                  ),
                ),
              if (isSearching && searchResults.isNotEmpty)
                const SliverToBoxAdapter(child: LinearProgressIndicator(minHeight: 2)),
              if (isSearching && searchResults.isEmpty)
                LoadingIndicatorBox.sliver
              else if (_searchSeerr && !hasSearched && searchController.text.trim().isEmpty)
                SliverFillRemaining(
                  child: StateMessageWidget(
                    message: t.explore.searchPrompt(source: 'Seerr'),
                    icon: Symbols.search_rounded,
                    iconSize: 80,
                  ),
                )
              else if (!hasSearched && searchController.text.trim().isEmpty) ...[
                if (_recentSearches.isNotEmpty) _buildRecentSearches(),
                if (_suggestions.isNotEmpty) ...[
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
                      child: Text(t.searchDiscovery.suggestions, style: Theme.of(context).textTheme.titleMedium),
                    ),
                  ),
                  _buildResultsShelf(context, suggestions: true),
                ] else if (_recentSearches.isEmpty)
                  SliverFillRemaining(
                    child: StateMessageWidget(
                      message: t.search.searchYourMedia,
                      subtitle: t.search.enterTitleActorOrKeyword,
                      icon: Symbols.search_rounded,
                      iconSize: 80,
                    ),
                  ),
              ] else if (lastSearchFailed)
                SliverFillRemaining(
                  child: StateMessageWidget(
                    message: t.explore.searchFailed,
                    subtitle: _searchErrorMessage,
                    icon: Symbols.error_rounded,
                    iconSize: 80,
                  ),
                )
              else if (searchResults.isEmpty)
                SliverFillRemaining(
                  child: StateMessageWidget(
                    message: t.messages.noResultsFound,
                    subtitle: t.search.tryDifferentTerm,
                    icon: Symbols.search_off_rounded,
                    iconSize: 80,
                  ),
                )
              else ...[
                if (_partialSearchFailure)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Text(t.messages.searchPartialResults),
                    ),
                  ),
                if (_showFilterChips) _buildFilterChips(),
                _buildResultsShelf(context),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

final class _SearchUnavailableException implements Exception {
  const _SearchUnavailableException();
}

/// One chip of the search results filter strip.
sealed class _SearchFilter {
  const _SearchFilter();
}

final class _AllResults extends _SearchFilter {
  const _AllResults();
}

final class _KindResults extends _SearchFilter {
  final MediaKind kind;

  const _KindResults(this.kind);

  @override
  bool operator ==(Object other) => other is _KindResults && other.kind == kind;

  @override
  int get hashCode => kind.hashCode;
}

final class _PeopleResults extends _SearchFilter {
  const _PeopleResults();
}
