import 'dart:async';
import 'dart:math' as math;

import 'package:cached_network_image_ce/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../widgets/settings_builder.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../focus/focusable_button.dart';
import '../focus/focus_theme.dart';
import '../focus/key_event_utils.dart';
import '../i18n/strings.g.dart';
import '../media/ids.dart';
import '../media/media_item.dart';
import '../media/media_item_merge.dart';
import '../media/media_kind.dart';
import '../media/studio_brands.dart';
import '../media/studio_discovery.dart';
import '../media/studio_sort.dart';
import '../media/studio_titles.dart';
import '../mixins/grid_focus_node_mixin.dart';
import '../providers/studios_provider.dart';
import '../services/home_preview_controller.dart';
import '../services/settings_service.dart';
import '../services/storage_service.dart';
import '../utils/media_image_helper.dart';
import '../utils/media_navigation_helper.dart';
import '../utils/media_server_http_client.dart';
import '../utils/app_logger.dart';
import '../utils/platform_detector.dart';
import '../utils/text_measure_cache.dart';
import '../widgets/app_icon.dart';
import '../widgets/app_menu.dart';
import '../widgets/focusable_list_tile.dart';
import '../widgets/focusable_media_card.dart';
import '../widgets/focusable_tab_chip.dart';
import '../widgets/optimized_media_image.dart';
import '../widgets/overlay_sheet.dart';
import '../widgets/tv_screen_insets.dart';
import '../widgets/studio_spotlight.dart';
import '../widgets/studio_discovery_view.dart';
import '../widgets/movie_copy_picker.dart';

class StudioBrowserScreen extends StatefulWidget {
  const StudioBrowserScreen({super.key, required this.studioKey});
  final String studioKey;
  @override
  State<StudioBrowserScreen> createState() => _StudioBrowserScreenState();
}

class _StudioBrowserScreenState extends State<StudioBrowserScreen> with GridFocusNodeMixin<StudioBrowserScreen> {
  late final StudiosProvider _studios;
  late final HomePreviewController _preview;
  StorageService? _storage;
  final _scroll = ScrollController();
  final _filters = List.generate(3, (index) => FocusNode(debugLabel: 'studio_filter_$index'));
  final _sortFocus = FocusNode(debugLabel: 'studio_sort');
  final _gridFocus = FocusNode(debugLabel: 'studio_grid_view');
  final _listFocus = FocusNode(debugLabel: 'studio_list_view');
  final _moreFocus = FocusNode(debugLabel: 'studio_more');
  final _backFocus = FocusNode(debugLabel: 'studio_back');
  final _overviewFocus = FocusNode(debugLabel: 'studio_overview');
  int _selectedIndex = 0;
  MediaKind? _kind;
  StudioSort _sort = StudioSort.titleAscending;
  bool _list = false;
  StudioItemsCursor? _cursor;
  AbortController _abort = AbortController();
  AbortController _titleLookupAbort = AbortController();
  List<MediaItem> _items = [];
  StudioTitles _titles = StudioTitles();
  Future<void>? _loadTask;
  bool _opening = false;
  bool _sourcesChangedWhileOpening = false;
  bool _loading = false;
  bool _failed = false;
  bool _browseAll = false;
  bool _presentationInitialized = false;
  bool _collapsedHero = false;
  bool _landingInteracted = false;
  bool _cursorHasPublished = false;
  StudioDiscovery _discovery = StudioDiscovery(const []);
  Object? _sourcesKey;
  String _name = '';
  int _columns = 1;
  double _rowExtent = 250;
  double _cardExtent = 230;
  double _gridTopInset = 12;
  Object? _gridGeometry;
  int _focusGeneration = 0;
  int? _pendingFocus;
  FocusNode? _pendingOrigin;
  int get _filterIndex => _kind == MediaKind.movie
      ? 1
      : _kind == MediaKind.show
      ? 2
      : 0;

  @override
  void initState() {
    super.initState();
    _scroll.addListener(_onCatalogScroll);
    for (final node in [..._filters, _sortFocus, _gridFocus, _listFocus, _backFocus, _overviewFocus]) {
      node.addListener(_expandPreviewForControls);
    }
    _studios = context.read<StudiosProvider>();
    _preview = HomePreviewController(
      includeRatings: true,
      resolveClient: (item) => _sourceFor(item)?.client,
      canFetch: () => mounted && (ModalRoute.of(context)?.isCurrent ?? false),
    );
    _studios.addListener(_changed);
    unawaited(_restoreSort());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !PlatformDetector.isTV()) _filters.first.requestFocus();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_presentationInitialized) {
      _presentationInitialized = true;
      if (PlatformDetector.isMobile(context)) _browseAll = true;
    }
  }

  void _onCatalogScroll() {
    if (!mounted || !PlatformDetector.isMobile(context) || !_browseAll || !_scroll.hasClients) return;
    if (_scroll.position.extentAfter < _scroll.position.viewportDimension && !_loading && !_failed) {
      unawaited(_load());
    }
  }

  void _expandPreviewForControls() {
    if (mounted &&
        _collapsedHero &&
        [..._filters, _sortFocus, _gridFocus, _listFocus, _backFocus, _overviewFocus].any((node) => node.hasFocus)) {
      setState(() => _collapsedHero = false);
    }
  }

  Future<void> _restoreSort() async {
    final storage = await StorageService.getInstance();
    if (!mounted) return;
    _storage = storage;
    _sort = storage.getStudioSort(kind: _kind);
    _changed();
  }

  StudioSource? _sourceFor(MediaItem item) => _studios
      .group(widget.studioKey)
      ?.sources
      .where(
        (source) =>
            source.library.serverId == item.serverId &&
            source.library.id == item.libraryId &&
            _studios.sourceIsVisible(source),
      )
      .firstOrNull;

  void _changed() {
    if (_storage == null) return;
    if (_opening) {
      _sourcesChangedWhileOpening = true;
      return;
    }
    final group = _studios.group(widget.studioKey);
    if (group != null) _name = group.name;
    final sources =
        group?.sources
            .where((source) => _studios.sourceIsVisible(source) && (_kind == null || source.kind == _kind))
            .toList() ??
        <StudioSource>[];
    final key = (
      _sort,
      Object.hashAll(sources.map((source) => (source.library.globalKey, source.client, source.kind, source.studio.id))),
    );
    if (key == _sourcesKey) return;
    _sourcesKey = key;
    _abort.abort();
    _titleLookupAbort.abort();
    _titleLookupAbort = AbortController();
    _abort = AbortController();
    _focusGeneration++;
    _pendingFocus = null;
    _cursor = _studios.createCursor(sources, sort: _sort);
    _loadTask = null;
    _titles = StudioTitles();
    _cursorHasPublished = false;
    _items = [];
    _discovery = StudioDiscovery(const []);
    _selectedIndex = 0;
    _loading = false;
    _failed = false;
    _preview.clear();
    gridContentVersion++;
    reconcileGridFocusNodes({});
    if (_scroll.hasClients) _scroll.jumpTo(0);
    if (mounted) setState(() {});
    final previewAbort = _abort;
    final previewCursor = _cursor;
    final previewTimer = Stopwatch()..start();
    unawaited(
      _studios.loadPreviewPages(sources, _sort, previewAbort, (items) {
        if (!mounted || previewAbort.isAborted || previewCursor != _cursor || _cursorHasPublished || _opening) return;
        setState(() {
          _titles.addAll(items);
          _items = [
            for (final item in _titles.items)
              item.copyWith(raw: {...?item.raw, 'lurokaCopyCount': _titles.copiesFor(item).length}),
          ]..sort(_sort.compare);
          reconcileGridFocusNodes({for (final (index, item) in _items.indexed) item.globalKey: index});
          _discovery = StudioDiscovery(_items);
        });
        appLogger.d('Studio timing: ${_items.length} preview titles in ${previewTimer.elapsedMilliseconds}ms');
        if (_preview.value == null && _items.isNotEmpty) _select(_items.first);
      }),
    );
    unawaited(_load());
  }

  Future<void> _load() => _loadTask ??= _loadAll();

  Future<void> _loadAll() async {
    final cursor = _cursor;
    if (_loading || cursor == null || !cursor.hasMore) return;
    final abort = _abort;
    setState(() {
      _loading = true;
      _failed = false;
    });
    try {
      while (cursor.hasMore) {
        final previousCount = _items.length;
        final items = await cursor.next(abort);
        if (!mounted || abort.isAborted || cursor != _cursor) return;
        setState(() {
          if (!_cursorHasPublished) {
            _cursorHasPublished = true;
          }
          _titles.addAll(items);
          _items = [
            for (final item in _titles.items)
              item.copyWith(raw: {...?item.raw, 'lurokaCopyCount': _titles.copiesFor(item).length}),
          ]..sort(_sort.compare);
          reconcileGridFocusNodes({for (final (index, item) in _items.indexed) item.globalKey: index});
          if (_discovery.featured == null) _discovery = StudioDiscovery(_items);
        });
        if (_preview.value == null && _items.isNotEmpty) {
          _select(PlatformDetector.isTV() && !_browseAll ? _discovery.featured! : _items.first);
        }
        final pending = _pendingFocus;
        if (pending != null && FocusManager.instance.primaryFocus == _pendingOrigin) {
          if (pending < _items.length || !cursor.hasMore) {
            _pendingFocus = null;
            if (_items.isNotEmpty) _focusIndex(math.min(pending, _items.length - 1));
          }
        } else if (_moreFocus.hasFocus && _items.isNotEmpty) {
          // The retry footer disappears once loading resumes. Move focus to
          // its destination before focus history falls back to a filter.
          _focusGeneration++;
          final next = math.min(previousCount, _items.length - 1);
          getGridItemFocusNode(next, debugLabel: 'studio_item_$next').requestFocus();
        } else {
          _pendingFocus = null;
        }
        // Paint the first posters immediately, then keep draining in bounded
        // batches without requiring scrolling or allocating the whole grid.
        await Future<void>.delayed(Duration.zero);
        if (!mounted || abort.isAborted || cursor != _cursor) return;
        // The landing shelves need only a preview. Once Browse All is open,
        // keep paging in the background; opening a title cancels the drain.
        if (PlatformDetector.isMobile(context) && !_browseAll) break;
      }
      setState(() {
        _loading = false;
        _discovery = StudioDiscovery(_items);
      });
      if (PlatformDetector.isTV() && !_browseAll && !_landingInteracted && _discovery.featured != null) {
        _select(_discovery.featured!);
      }
    } catch (_) {
      if (!mounted || abort.isAborted) return;
      setState(() {
        _loading = false;
        _failed = true;
      });
    } finally {
      if (identical(cursor, _cursor)) _loadTask = null;
    }
  }

  Future<void> _open(MediaItem item) async {
    if (_opening) return;
    _opening = true;
    final abort = _titleLookupAbort;
    final origin = FocusManager.instance.primaryFocus;
    try {
      // Search this title within each studio source; waiting for the entire
      // studio catalog can take minutes on large libraries.
      final group = _studios.group(widget.studioKey);
      if (group == null) return;
      final known = _titles.copiesFor(item);
      // Stop the speculative full-catalog drain while the user opens a title.
      // Its cursor can continue after returning to this page.
      final previousLoad = _loadTask;
      _abort.abort();
      _abort = AbortController();
      setState(() => _loading = false);
      if (previousLoad != null) unawaited(previousLoad);
      if (!mounted || abort.isAborted) return;
      final visibleSources = group.sources
          .where((source) => source.kind == item.kind && _studios.sourceIsVisible(source))
          .length;
      final lookup = AbortController();
      unawaited(abort.trigger.then((_) => lookup.abort()));
      final state = ValueNotifier(
        MovieCopySearchState(
          copies: known.where((copy) => _sourceFor(copy) != null).toList(),
          searching: visibleSources > 1,
        ),
      );
      if (visibleSources > 1) {
        unawaited(
          _studios
              .findTitleCopies(
                group,
                item,
                lookup,
                known: known,
                onPartial: (copies) {
                  if (!lookup.isAborted && mounted) {
                    state.value = MovieCopySearchState(
                      copies: copies.where((copy) => _sourceFor(copy) != null).toList(),
                      searching: true,
                    );
                  }
                },
              )
              .then((copies) {
                if (!lookup.isAborted && mounted) {
                  state.value = MovieCopySearchState(copies: copies.where((copy) => _sourceFor(copy) != null).toList());
                }
              })
              .catchError((Object error, StackTrace stackTrace) {
                if (lookup.isAborted || !mounted) return;
                appLogger.w('Studio title lookup failed', error: error, stackTrace: stackTrace);
                final copies = error is StudioCopyLookupException ? error.copies : known;
                state.value = MovieCopySearchState(
                  copies: copies.where((copy) => _sourceFor(copy) != null).toList(),
                  incomplete: true,
                );
              }),
        );
      }
      final selected = await chooseProgressiveMovieCopy(context, state, openSingleImmediately: true);
      lookup.abort();
      state.dispose();
      if (!mounted || abort.isAborted || selected == null || _sourceFor(selected) == null) return;
      await navigateToMediaItem(context, selected, onRefresh: (source) => unawaited(_refreshItem(source)));
    } catch (error, stackTrace) {
      if (mounted && !abort.isAborted) {
        appLogger.w('Studio title lookup failed', error: error, stackTrace: stackTrace);
        setState(() => _failed = true);
      }
    } finally {
      _opening = false;
      if (mounted && _sourcesChangedWhileOpening) {
        _sourcesChangedWhileOpening = false;
        _changed();
      }
      if (mounted && !abort.isAborted && !_failed && (!PlatformDetector.isMobile(context) || _browseAll)) {
        final pending = _loadTask;
        if (pending != null) {
          unawaited(
            pending.then((_) {
              if (mounted && !abort.isAborted && !_failed) unawaited(_load());
            }),
          );
        } else {
          unawaited(_load());
        }
      }
      if (mounted &&
          !abort.isAborted &&
          !_failed &&
          (ModalRoute.of(context)?.isCurrent ?? false) &&
          origin?.context?.mounted == true) {
        origin!.requestFocus();
      }
    }
  }

  void _filter(MediaKind? kind) {
    if (_kind == kind) return;
    _kind = kind;
    _sort = _storage?.getStudioSort(kind: kind) ?? StudioSort.titleAscending;
    _changed();
  }

  void _select(MediaItem item) {
    final index = _items.indexWhere((current) => current.globalKey == item.globalKey);
    if (index >= 0) _selectedIndex = index;
    _preview.select(item, rowTitle: _name);
  }

  void _focusOverview() {
    if (_collapsedHero) setState(() => _collapsedHero = false);
    if (_preview.value == null) {
      _backFocus.requestFocus();
    } else {
      _overviewFocus.requestFocus();
    }
  }

  Future<void> _showOverview() async {
    final item = _preview.value?.item;
    if (item == null) return;
    final origin = FocusManager.instance.primaryFocus;
    await showDialog<void>(
      context: context,
      builder: (_) =>
          StudioOverviewDialog(item: item, tint: Color(studioBrandForKey(widget.studioKey)?.tint ?? 0xff5289ad)),
    );
    if (mounted && (ModalRoute.of(context)?.isCurrent ?? false) && origin?.context?.mounted == true) {
      origin!.requestFocus();
    }
  }

  Future<void> _refreshItem(MediaItem source) async {
    final client = _sourceFor(source)?.client;
    if (client == null || source.serverId == null) return;
    try {
      final fresh = await client.fetchItem(source.id);
      if (!mounted || fresh == null || !identical(client, _sourceFor(source)?.client)) return;
      final item = mergeFetchedMediaItem(
        fetched: fresh,
        fallbackServerId: ServerId(source.serverId!),
        existing: source,
      );
      _studios.invalidatePages();
      setState(() {
        _titles.replace(item);
        _items = [
          for (final item in _titles.items)
            item.copyWith(raw: {...?item.raw, 'lurokaCopyCount': _titles.copiesFor(item).length}),
        ];
        _discovery = StudioDiscovery(_items);
      });
      if (_preview.value?.item.globalKey == item.globalKey) _select(item);
    } catch (_) {
      /* Keep the last accepted library state on a refresh failure. */
    }
  }

  String _sortLabel(StudioSort value) => switch (value) {
    StudioSort.titleAscending => t.studios.sortTitleAscending,
    StudioSort.titleDescending => t.studios.sortTitleDescending,
    StudioSort.newest => t.studios.sortNewest,
    StudioSort.oldest => t.studios.sortOldest,
    StudioSort.recentlyAdded => t.studios.sortAdded,
    StudioSort.rating => t.studios.sortRating,
    StudioSort.recentlyAddedEpisode => t.studios.sortEpisodeAdded,
  };

  Future<void> _chooseSort() async {
    final picked = await showAdaptiveAppMenu<StudioSort>(
      context,
      title: t.studios.sort,
      position: Offset(MediaQuery.sizeOf(context).width / 2, 160),
      focusFirstItem: true,
      entries: [
        for (final value in StudioSort.values)
          if (value.availableFor(_kind)) AppMenuItem(value: value, label: _sortLabel(value), selected: value == _sort),
      ],
    );
    if (!mounted || picked == null) return;
    if (_sort != picked) {
      _sort = picked;
      unawaited(_storage!.saveStudioSort(picked, kind: _kind));
      _changed();
    }
    _sortFocus.requestFocus();
  }

  void _focusIndex(int index) {
    if (index < 0) return;
    if (_items.isEmpty) {
      if (_failed || (_cursor?.hasMore == true && !_loading)) _moreFocus.requestFocus();
      return;
    }
    if (index >= _items.length && _cursor?.hasMore == true) {
      _pendingFocus = index;
      _pendingOrigin = FocusManager.instance.primaryFocus;
      unawaited(_load());
      return;
    }
    index = index.clamp(0, _items.length - 1);
    final generation = ++_focusGeneration;
    final origin = FocusManager.instance.primaryFocus;
    final target = index;
    final node = getGridItemFocusNode(target, debugLabel: 'studio_item_$target');
    if (node.context?.mounted == true && node.context?.findRenderObject()?.attached == true) {
      node.requestFocus();
      return;
    }
    if (_scroll.hasClients) {
      _scroll.jumpTo(((target ~/ _columns) * _rowExtent).clamp(0.0, _scroll.position.maxScrollExtent));
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted ||
          generation != _focusGeneration ||
          FocusManager.instance.primaryFocus != origin ||
          !(ModalRoute.of(context)?.isCurrent ?? false)) {
        return;
      }
      node.requestFocus();
    });
  }

  void _revealCard(int index) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !_scroll.hasClients || gridItemFocusNodes[index]?.hasFocus != true) return;
      final position = _scroll.position;
      final rowTop = _gridTopInset + (index ~/ _columns) * _rowExtent;
      final target =
          (PlatformDetector.isTV() ? rowTop - _gridTopInset : rowTop + _cardExtent / 2 - position.viewportDimension / 2)
              .clamp(position.minScrollExtent, position.maxScrollExtent);
      if ((target - position.pixels).abs() < 1) return;
      unawaited(_scroll.animateTo(target, duration: FocusTheme.navigationScrollDuration(), curve: Curves.easeOutCubic));
    });
  }

  void _view(bool list) {
    if (_list == list) return;
    _focusGeneration++;
    _pendingFocus = null;
    setState(() => _list = list);
    if (_scroll.hasClients) _scroll.jumpTo(0);
  }

  void _showCatalog() {
    setState(() {
      _browseAll = true;
      _collapsedHero = false;
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _filters[_filterIndex].requestFocus();
      final pending = _loadTask;
      if (pending == null) {
        unawaited(_load());
      } else {
        unawaited(
          pending.then((_) {
            if (mounted && _browseAll && !_opening && !_failed) unawaited(_load());
          }),
        );
      }
    });
  }

  Widget _mobileCatalogControls(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final compact = MediaQuery.sizeOf(context).height < 400;
    return Padding(
      key: const ValueKey('mobile_studio_catalog_controls'),
      padding: const EdgeInsets.fromLTRB(16, 2, 16, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (!compact)
            SegmentedButton<bool>(
              key: const ValueKey('mobile_studio_mode'),
              style: SegmentedButton.styleFrom(
                minimumSize: const Size(0, 34),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                visualDensity: VisualDensity.compact,
              ),
              segments: [
                ButtonSegment(value: true, label: Text(t.studios.browseAll)),
                ButtonSegment(value: false, label: Text(t.libraryPolish.overview)),
              ],
              selected: const {true},
              onSelectionChanged: (_) => setState(() => _browseAll = false),
            ),
          if (!compact) const SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (final (index, (kind, label)) in [
                  (null, t.studios.all),
                  (MediaKind.movie, t.studios.movies),
                  (MediaKind.show, t.studios.shows),
                ].indexed)
                  FocusableTabChip(
                    key: ValueKey('mobile_studio_filter_$index'),
                    editorial: true,
                    label: label,
                    isSelected: _kind == kind,
                    focusNode: _filters[index],
                    onSelect: () => _filter(kind),
                    onNavigateLeft: index == 0 ? _backFocus.requestFocus : _filters[index - 1].requestFocus,
                    onNavigateRight: index == 2 ? _sortFocus.requestFocus : _filters[index + 1].requestFocus,
                    onNavigateDown: () => _focusIndex(0),
                    onNavigateUp: _backFocus.requestFocus,
                  ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                child: FocusableButton(
                  focusNode: _sortFocus,
                  onPressed: _chooseSort,
                  onNavigateLeft: _filters.last.requestFocus,
                  onNavigateRight: _gridFocus.requestFocus,
                  onNavigateDown: () => _focusIndex(0),
                  onNavigateUp: () => _filters[_filterIndex].requestFocus(),
                  child: OutlinedButton.icon(
                    key: const ValueKey('mobile_studio_sort'),
                    onPressed: _chooseSort,
                    style: OutlinedButton.styleFrom(
                      backgroundColor: colors.surface,
                      foregroundColor: colors.onSurface,
                      side: BorderSide(color: colors.onSurface.withValues(alpha: 0.12)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
                    ),
                    icon: const AppIcon(Symbols.sort_rounded, size: 18),
                    label: Text(
                      '${t.mobileLibrary.sort}: ${_sortLabel(_sort)}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              if (compact)
                TextButton(onPressed: () => setState(() => _browseAll = false), child: Text(t.libraryPolish.overview)),
              const SizedBox(width: 8),
              FocusableButton(
                focusNode: _gridFocus,
                onPressed: () => _view(!_list),
                onNavigateLeft: _sortFocus.requestFocus,
                onNavigateDown: () => _focusIndex(0),
                child: IconButton.filledTonal(
                  key: const ValueKey('mobile_studio_view'),
                  onPressed: () => _view(!_list),
                  tooltip: _list ? t.settings.gridView : t.settings.listView,
                  icon: AppIcon(_list ? Symbols.grid_view_rounded : Symbols.view_list_rounded, size: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _back() {
    if (PlatformDetector.isMobile(context) && !_browseAll) {
      _showCatalog();
      return;
    }
    if (PlatformDetector.isTV() && _browseAll) {
      setState(() {
        _browseAll = false;
        _collapsedHero = false;
      });
      if (_kind != null) {
        _kind = null;
        _sort = _storage?.getStudioSort() ?? StudioSort.titleAscending;
        _changed();
      }
      return;
    }
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _focusGeneration++;
    _abort.abort();
    _titleLookupAbort.abort();
    _studios.removeListener(_changed);
    _preview.dispose();
    _scroll.dispose();
    for (final node in [..._filters, _sortFocus, _gridFocus, _listFocus, _moreFocus, _backFocus, _overviewFocus]) {
      node.dispose();
    }
    disposeGridFocusNodes();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SettingValueBuilder<bool>(
      pref: SettingsService.posterDetails,
      builder: (context, _, _) => _buildStudioContent(context),
    );
  }

  Widget _buildStudioContent(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final brand = studioBrandForKey(widget.studioKey);
    final tv = PlatformDetector.isTV();
    final mobile = PlatformDetector.isMobile(context);
    return PopScope<void>(
      canPop: !PlatformDetector.isMobile(context) || _browseAll,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _back();
      },
      child: OverlaySheetHost(
        canPop: true,
        child: Focus(
          canRequestFocus: false,
          onKeyEvent: (_, event) => handleBackKeyAction(event, _back),
          child: Scaffold(
            body: (tv || PlatformDetector.isMobile(context)) && !_browseAll
                ? StudioDiscoveryView(
                    name: _name,
                    brand: brand,
                    items: _items,
                    discovery: _discovery,
                    loading: _loading,
                    failed: _failed,
                    preview: _preview,
                    resolveClient: (item) => _sourceFor(item)?.client,
                    onSelect: (item) {
                      _landingInteracted = true;
                      _select(item);
                    },
                    onOpen: (item) => unawaited(_open(item)),
                    onRefresh: (item) => unawaited(_refreshItem(item)),
                    onOverview: () => unawaited(_showOverview()),
                    onBrowseAll: _showCatalog,
                    onRetry: () => unawaited(_load()),
                    onBack: _back,
                  )
                : Stack(
                    children: [
                      if (!tv && !mobile)
                        Positioned.fill(
                          child: IgnorePointer(
                            child: ExcludeSemantics(
                              child: ValueListenableBuilder<HomePreview?>(
                                valueListenable: _preview,
                                builder: (context, preview, _) => Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    ColoredBox(color: colors.surface),
                                    if (preview?.artwork.artPath case final path?)
                                      Opacity(
                                        opacity: 0.65,
                                        child: OptimizedMediaImage(
                                          key: ValueKey(preview!.artwork.globalKey),
                                          client: _sourceFor(preview.artwork)?.client,
                                          imagePath: path,
                                          imageType: ImageType.art,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    DecoratedBox(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            colors.surface.withValues(alpha: 0.12),
                                            colors.surface.withValues(alpha: 0.97),
                                          ],
                                        ),
                                      ),
                                    ),
                                    DecoratedBox(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          stops: const [0, 0.34, 1],
                                          colors: [
                                            colors.surface.withValues(alpha: 0.98),
                                            colors.surface.withValues(alpha: 0.88),
                                            Colors.transparent,
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      TvScreenInsets(
                        child: SafeArea(
                          child: LayoutBuilder(
                            builder: (context, viewport) {
                              final compact = viewport.maxHeight < 500;
                              final scale = MediaQuery.textScalerOf(context).scale(14) / 14;
                              final gallery = !tv && !mobile && viewport.maxWidth >= 1000 && viewport.maxHeight >= 600;
                              final tablet = mobile && MediaQuery.sizeOf(context).shortestSide >= 600;
                              final showBrandLogo = !compact && viewport.maxWidth >= 600 && brand?.logoUrl != null;
                              final compactSpotlight =
                                  !tv && (viewport.maxWidth < 700 || viewport.maxHeight < 420 || scale > 1.5);
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  if (tv)
                                    StudioTvHeader(
                                      name: _name,
                                      brand: brand,
                                      count: _items.length,
                                      backFocus: _backFocus,
                                      onBack: _back,
                                      onNavigateDown: () => _filters[_filterIndex].requestFocus(),
                                    )
                                  else
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                        gallery ? 28 : 16,
                                        tv || compact || mobile ? 0 : 10,
                                        gallery ? 36 : 24,
                                        tv || compact || mobile ? 0 : 10,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(color: colors.onSurface.withValues(alpha: 0.06)),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          FocusableButton(
                                            focusNode: _backFocus,
                                            onPressed: _back,
                                            onNavigateDown: () => _filters[_filterIndex].requestFocus(),
                                            child: IconButton(
                                              onPressed: _back,
                                              tooltip: t.common.back,
                                              icon: const AppIcon(Symbols.arrow_back_rounded),
                                            ),
                                          ),
                                          SizedBox(width: mobile ? 4 : 16),
                                          if (showBrandLogo) ...[
                                            Container(
                                              width: 96,
                                              height: 46,
                                              padding: const EdgeInsets.all(12),
                                              child: Semantics(
                                                label: _name,
                                                image: true,
                                                child: ExcludeSemantics(
                                                  child: CachedNetworkImage(
                                                    imageUrl: brand!.logoUrl!,
                                                    fit: BoxFit.contain,
                                                    memCacheWidth: (96 * MediaQuery.devicePixelRatioOf(context))
                                                        .round()
                                                        .clamp(96, 384),
                                                    color: colors.onSurface,
                                                    colorBlendMode: BlendMode.srcIn,
                                                    fadeInDuration: Duration.zero,
                                                    placeholder: (_, _) =>
                                                        Text(_name, maxLines: 1, overflow: TextOverflow.ellipsis),
                                                    errorBuilder: (_, _, _) =>
                                                        Text(_name, maxLines: 1, overflow: TextOverflow.ellipsis),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 20),
                                          ],
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                if (!tv && !compact && !gallery && !mobile)
                                                  Text(
                                                    t.studios.collection,
                                                    style: theme.textTheme.labelSmall?.copyWith(
                                                      letterSpacing: 2,
                                                      color: colors.onSurfaceVariant,
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                if (!showBrandLogo)
                                                  Text(
                                                    _name,
                                                    maxLines: 1,
                                                    overflow: TextOverflow.ellipsis,
                                                    style:
                                                        (gallery || tv || mobile
                                                                ? theme.textTheme.titleLarge
                                                                : compact
                                                                ? theme.textTheme.headlineMedium
                                                                : theme.textTheme.headlineLarge)
                                                            ?.copyWith(
                                                              fontWeight: FontWeight.w600,
                                                              letterSpacing: -0.5,
                                                            ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                          if (viewport.maxWidth > 700 || mobile)
                                            Container(
                                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                                              child: Text(
                                                _loading && _items.isEmpty
                                                    ? ''
                                                    : t.discover.titleCount(n: _items.length),
                                                style: theme.textTheme.labelMedium?.copyWith(
                                                  color: colors.onSurfaceVariant,
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  if (!gallery && !mobile)
                                    ValueListenableBuilder<HomePreview?>(
                                      valueListenable: _preview,
                                      builder: (context, preview, _) {
                                        if (preview == null) return const SizedBox.shrink();
                                        final spotlight = StudioSpotlight(
                                          item: preview.item,
                                          artwork: preview.artwork,
                                          client: _sourceFor(preview.artwork)?.client,
                                          studioName: _name,
                                          tint: Color(brand?.tint ?? 0xff5289ad),
                                          compact: compactSpotlight,
                                          collapsed: tv && _collapsedHero,
                                          overviewFocus: _overviewFocus,
                                          onOverview: () => unawaited(_showOverview()),
                                          onNavigateUp: _backFocus.requestFocus,
                                          onNavigateDown: () => _focusIndex(_selectedIndex),
                                        );
                                        return compactSpotlight
                                            ? spotlight
                                            : AnimatedContainer(
                                                duration: MediaQuery.disableAnimationsOf(context)
                                                    ? Duration.zero
                                                    : const Duration(milliseconds: 240),
                                                curve: Curves.easeOutCubic,
                                                onEnd: () => _revealCard(_selectedIndex),
                                                height: tv && _collapsedHero
                                                    ? 88
                                                    : (viewport.maxHeight * (tv ? 0.32 : 0.36)).clamp(
                                                        tv && viewport.maxHeight < 460 ? 100.0 : 160.0,
                                                        tv ? 360.0 : 300.0,
                                                      ),
                                                child: spotlight,
                                              );
                                      },
                                    ),
                                  if (mobile)
                                    _mobileCatalogControls(context)
                                  else
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: gallery ? 36 : 20, vertical: 8),
                                      child: _StudioControls(
                                        tv: tv,
                                        sortLabel: _sortLabel(_sort),
                                        children: [
                                          for (final (index, (kind, label)) in [
                                            (null, t.studios.all),
                                            (MediaKind.movie, t.studios.movies),
                                            (MediaKind.show, t.studios.shows),
                                          ].indexed) ...[
                                            if (index > 0) const SizedBox(width: 8),
                                            FocusableTabChip(
                                              editorial: tv,
                                              label: label,
                                              isSelected: _kind == kind,
                                              focusNode: _filters[index],
                                              onSelect: () => _filter(kind),
                                              onNavigateLeft: index > 0
                                                  ? _filters[index - 1].requestFocus
                                                  : _backFocus.requestFocus,
                                              onNavigateRight: index < 2
                                                  ? _filters[index + 1].requestFocus
                                                  : _sortFocus.requestFocus,
                                              onNavigateDown: () => _focusIndex(0),
                                              onNavigateUp: _focusOverview,
                                            ),
                                          ],
                                          const SizedBox(width: 22),
                                          if (tv) const Spacer(),
                                          FocusableButton(
                                            focusNode: _sortFocus,
                                            onPressed: _chooseSort,
                                            onNavigateLeft: _filters.last.requestFocus,
                                            onNavigateRight: _gridFocus.requestFocus,
                                            onNavigateDown: () => _focusIndex(0),
                                            onNavigateUp: _focusOverview,
                                            child: TextButton.icon(
                                              onPressed: _chooseSort,
                                              style: TextButton.styleFrom(foregroundColor: colors.onSurface),
                                              icon: const AppIcon(Symbols.sort_rounded, size: 18),
                                              label: Text(_sortLabel(_sort)),
                                            ),
                                          ),
                                          const SizedBox(width: 18),
                                          if (tv)
                                            FocusableButton(
                                              focusNode: _gridFocus,
                                              autoScroll: false,
                                              onPressed: () => _view(!_list),
                                              onNavigateLeft: _sortFocus.requestFocus,
                                              onNavigateDown: () => _focusIndex(0),
                                              onNavigateUp: _focusOverview,
                                              child: IconButton(
                                                onPressed: () => _view(!_list),
                                                tooltip: _list ? t.settings.gridView : t.settings.listView,
                                                icon: AppIcon(
                                                  _list ? Symbols.grid_view_rounded : Symbols.view_list_rounded,
                                                  size: 21,
                                                ),
                                              ),
                                            )
                                          else
                                            FocusableTabChip(
                                              editorial: tv,
                                              label: t.settings.gridView,
                                              isSelected: !_list,
                                              focusNode: _gridFocus,
                                              onSelect: () => _view(false),
                                              onNavigateLeft: _sortFocus.requestFocus,
                                              onNavigateRight: _listFocus.requestFocus,
                                              onNavigateDown: () => _focusIndex(0),
                                              onNavigateUp: _focusOverview,
                                            ),
                                          if (!tv) const SizedBox(width: 8),
                                          if (!tv)
                                            FocusableTabChip(
                                              editorial: tv,
                                              label: t.settings.listView,
                                              isSelected: _list,
                                              focusNode: _listFocus,
                                              onSelect: () => _view(true),
                                              onNavigateLeft: _gridFocus.requestFocus,
                                              onNavigateDown: () => _focusIndex(0),
                                              onNavigateUp: _focusOverview,
                                            ),
                                        ],
                                      ),
                                    ),
                                  SizedBox(
                                    height: 2,
                                    child: _loading ? const LinearProgressIndicator(minHeight: 2) : null,
                                  ),
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        if (gallery)
                                          SizedBox(
                                            width: math.min(viewport.maxWidth * 0.40, 720),
                                            child: ValueListenableBuilder<HomePreview?>(
                                              valueListenable: _preview,
                                              builder: (context, preview, _) {
                                                if (preview == null) return const SizedBox.shrink();
                                                return StudioEditorialSpotlight(
                                                  item: preview.item,
                                                  studioName: _name,
                                                  tint: Color(brand?.tint ?? 0xff5289ad),
                                                  overviewFocus: _overviewFocus,
                                                  onOverview: () => unawaited(_showOverview()),
                                                  onNavigateUp: _backFocus.requestFocus,
                                                  onNavigateDown: () => _focusIndex(_selectedIndex),
                                                  onNavigateRight: () => _focusIndex(_selectedIndex),
                                                );
                                              },
                                            ),
                                          ),
                                        Expanded(
                                          child: LayoutBuilder(
                                            builder: (context, constraints) {
                                              final inset = mobile
                                                  ? 16.0
                                                  : gallery
                                                  ? 28.0
                                                  : 20.0;
                                              final gap = tv
                                                  ? 18.0
                                                  : gallery
                                                  ? 24.0
                                                  : mobile
                                                  ? 10.0
                                                  : 16.0;
                                              final width = constraints.maxWidth - inset * 2;
                                              final scale = MediaQuery.textScalerOf(context).scale(14) / 14;
                                              _columns = _list
                                                  ? 1
                                                  : gallery
                                                  ? (viewport.maxWidth >= 1700 ? 4 : 3)
                                                  : (width /
                                                            (tv
                                                                ? 200
                                                                : tablet
                                                                ? 150
                                                                : mobile
                                                                ? 110
                                                                : 160))
                                                        .floor()
                                                        .clamp(1, tv ? 5 : 6);
                                              final topInset = gallery ? 24.0 : 12.0;
                                              const bottomInset = 24.0;
                                              // Keep the whole focused card (including its caption and
                                              // scale animation) inside the actual overscan-safe viewport.
                                              // Cap its width within the existing spacious columns rather
                                              // than adding more posters when vertical room is tight.
                                              final maxExtent = math.max(
                                                1.0,
                                                (constraints.maxHeight - topInset - bottomInset) /
                                                        FocusTheme.focusScale -
                                                    4,
                                              );
                                              final captionExtent =
                                                  tv &&
                                                      !_list &&
                                                      !SettingsService.instance.read(SettingsService.posterDetails)
                                                  ? 0.0
                                                  : 48 * math.max(1.0, scale);
                                              // Pack columns around the actual height-limited poster width.
                                              // Fixed sparse columns left large empty gutters when posters
                                              // shrank to fit below the spotlight and filter controls.
                                              if (tv && !_list) {
                                                _columns = 5;
                                              }
                                              final cellWidth = (width - (_columns - 1) * gap) / _columns;
                                              final posterWidth = mobile
                                                  ? cellWidth
                                                  : math.min(
                                                      cellWidth,
                                                      math.max(1.0, (maxExtent - captionExtent) / 1.5),
                                                    );
                                              final extent = _list
                                                  ? (tv ? 112.0 : 104.0) * math.max(1.0, scale)
                                                  : posterWidth * 1.5 + captionExtent;
                                              _rowExtent = extent + (gallery ? 28 : 20);
                                              _cardExtent = extent;
                                              _gridTopInset = topInset;
                                              final geometry = (_columns, extent, constraints.maxHeight, topInset);
                                              if (_gridGeometry != geometry) {
                                                _gridGeometry = geometry;
                                                if (lastFocusedGridIndex case final index?) _revealCard(index);
                                              }
                                              return CustomScrollView(
                                                key: ValueKey(_list ? 'studio_list' : 'studio_grid'),
                                                controller: _scroll,
                                                slivers: [
                                                  if (_items.isEmpty && _loading)
                                                    SliverPadding(
                                                      padding: EdgeInsets.fromLTRB(inset, topInset, inset, bottomInset),
                                                      sliver: SliverGrid.builder(
                                                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisCount: _columns,
                                                          mainAxisExtent: extent,
                                                          crossAxisSpacing: gap,
                                                          mainAxisSpacing: gallery ? 28 : 20,
                                                        ),
                                                        itemCount: _columns,
                                                        itemBuilder: (context, index) => Align(
                                                          alignment: Alignment.topCenter,
                                                          child: SizedBox(
                                                            width: _list ? cellWidth : posterWidth,
                                                            child: ExcludeSemantics(
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Expanded(
                                                                    child: Container(
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(14),
                                                                        color: colors.onSurface.withValues(alpha: 0.06),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(height: 12),
                                                                  Container(
                                                                    height: 12,
                                                                    width: posterWidth * 0.7,
                                                                    decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(6),
                                                                      color: colors.onSurface.withValues(alpha: 0.06),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(height: 28),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  if (_items.isEmpty && !_loading && !_failed)
                                                    SliverToBoxAdapter(
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(32),
                                                        child: Text(t.studios.empty),
                                                      ),
                                                    ),
                                                  SliverPadding(
                                                    padding: EdgeInsets.fromLTRB(inset, topInset, inset, bottomInset),
                                                    sliver: SliverGrid.builder(
                                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: _columns,
                                                        mainAxisExtent: extent,
                                                        crossAxisSpacing: gap,
                                                        mainAxisSpacing: gallery ? 28 : 20,
                                                      ),
                                                      itemCount: _items.length,
                                                      findChildIndexCallback: (key) {
                                                        if (key is! ValueKey<String> ||
                                                            !key.value.startsWith('studio-row:')) {
                                                          return null;
                                                        }
                                                        final index = _items.indexWhere(
                                                          (item) => 'studio-row:${item.globalKey}' == key.value,
                                                        );
                                                        return index < 0 ? null : index;
                                                      },
                                                      itemBuilder: (context, index) {
                                                        final item = _items[index];
                                                        final node = focusNodeForIndex(
                                                          index,
                                                          getGridItemFocusNode(0, debugLabel: 'studio_item_0'),
                                                          prefix: 'studio_item',
                                                          itemIdentity: item.globalKey,
                                                        );
                                                        return MouseRegion(
                                                          key: ValueKey('studio-row:${item.globalKey}'),
                                                          onEnter: (_) => _select(item),
                                                          child: Align(
                                                            alignment: Alignment.topCenter,
                                                            child: SizedBox(
                                                              width: _list ? cellWidth : posterWidth,
                                                              height: extent,
                                                              child: FocusableMediaCard(
                                                                key: ValueKey(item.globalKey),
                                                                item: item.copyWith(
                                                                  raw: {...?item.raw, 'lurokaLibraryCaptions': true},
                                                                ),
                                                                fullBleedImage:
                                                                    tv &&
                                                                    !_list &&
                                                                    !SettingsService.instance.read(
                                                                      SettingsService.posterDetails,
                                                                    ),
                                                                onTap: () => unawaited(_open(item)),
                                                                focusNode: node,
                                                                viewModeOverride: _list ? ViewMode.list : ViewMode.grid,
                                                                showServerName: _list,
                                                                libraryName: _list ? item.libraryTitle : null,
                                                                disableScale: _list,
                                                                autoScroll: false,
                                                                onRefresh: (source) => unawaited(_refreshItem(source)),
                                                                onFocusChange: (focused) {
                                                                  trackGridItemFocus(index, focused);
                                                                  if (!focused) return;
                                                                  if (tv && !_collapsedHero) {
                                                                    setState(() => _collapsedHero = true);
                                                                  }
                                                                  _revealCard(index);
                                                                  _select(item);
                                                                  evictDistantFocusNodes(index);
                                                                },
                                                                onNavigateUp: index < _columns
                                                                    ? () {
                                                                        if (_collapsedHero) {
                                                                          setState(() => _collapsedHero = false);
                                                                        }
                                                                        _filters[_filterIndex].requestFocus();
                                                                      }
                                                                    : () => _focusIndex(index - _columns),
                                                                onNavigateDown: () {
                                                                  if (index + _columns < _items.length ||
                                                                      _cursor?.hasMore == true) {
                                                                    _focusIndex(index + _columns);
                                                                  } else if (_failed) {
                                                                    _moreFocus.requestFocus();
                                                                  }
                                                                },
                                                                onNavigateLeft: index % _columns == 0
                                                                    ? _focusOverview
                                                                    : () => _focusIndex(index - 1),
                                                                onNavigateRight:
                                                                    ((index + 1) % _columns != 0 || (tv && !_list)) &&
                                                                        index + 1 < _items.length
                                                                    ? () => _focusIndex(index + 1)
                                                                    : () {},
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  if (_failed)
                                                    SliverToBoxAdapter(
                                                      child: FocusableListTile(
                                                        focusNode: _moreFocus,
                                                        title: Text(t.studios.retry),
                                                        onTap: _load,
                                                      ),
                                                    ),
                                                ],
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}

class _StudioControls extends StatelessWidget {
  const _StudioControls({required this.tv, required this.sortLabel, required this.children});
  final bool tv;
  final String sortLabel;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, bounds) {
      final scale = MediaQuery.textScalerOf(context).scale(14) / 14;
      if (PlatformDetector.isMobile(context) && bounds.maxWidth < 600) {
        final controls = children.where((child) => child is! SizedBox && child is! Spacer).toList();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Wrap(spacing: 8, runSpacing: 4, children: controls.take(3).toList()),
            Wrap(spacing: 8, runSpacing: 4, children: controls.skip(3).toList()),
          ],
        );
      }
      double labelWidth(String label) => cachedSingleLineTextSize(
        label,
        style: Theme.of(context).textTheme.labelLarge ?? const TextStyle(fontSize: 14),
        textScaler: MediaQuery.textScalerOf(context),
        textDirection: Directionality.of(context),
      ).width;
      final extraSortWidth = math.max(0.0, labelWidth(sortLabel) - labelWidth(t.studios.sortTitleAscending));
      if (tv && bounds.maxWidth >= 650 * scale + extraSortWidth) return Row(children: children);
      return TabChipStrip(children: children.where((child) => child is! Spacer).toList());
    },
  );
}
