import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'settings_builder.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../focus/focus_theme.dart';
import '../focus/focusable_button.dart';
import '../focus/key_event_utils.dart';
import '../i18n/strings.g.dart';
import '../media/media_item.dart';
import '../media/media_kind.dart';
import '../media/media_server_client.dart';
import '../media/studio_sort.dart';
import '../mixins/grid_focus_node_mixin.dart';
import '../services/home_preview_controller.dart';
import '../services/settings_service.dart';
import '../services/storage_service.dart';
import '../utils/platform_detector.dart';
import '../screens/libraries/content_state_builder.dart';
import 'app_icon.dart';
import 'app_menu.dart';
import 'focusable_media_card.dart';
import 'focusable_tab_chip.dart';
import 'loading_indicator_box.dart';
import 'studio_cinematic_spotlight.dart';
import 'studio_spotlight.dart';
import 'tv_screen_insets.dart';
import 'poster_loading_placeholder.dart';

/// Favorites uses the studio catalog's visual language while retaining its
/// cross-library data source, copy picker and main-navigation escape route.
class FavoritesCatalogView extends StatefulWidget {
  const FavoritesCatalogView({
    super.key,
    required this.items,
    required this.loading,
    required this.errorMessage,
    required this.resolveClient,
    required this.onOpen,
    required this.onRefresh,
    required this.onNavigation,
    this.copyCount,
  });

  final List<MediaItem> items;
  final bool loading;
  final String? errorMessage;
  final MediaServerClient? Function(MediaItem) resolveClient;
  final Future<void> Function(MediaItem) onOpen;
  final VoidCallback onRefresh;
  final VoidCallback onNavigation;
  final int Function(MediaItem)? copyCount;

  @override
  State<FavoritesCatalogView> createState() => FavoritesCatalogViewState();
}

class FavoritesCatalogViewState extends State<FavoritesCatalogView> with GridFocusNodeMixin<FavoritesCatalogView> {
  final _scroll = ScrollController();

  void scrollToTop() {
    if (_scroll.hasClients) {
      unawaited(_scroll.animateTo(0, duration: const Duration(milliseconds: 280), curve: Curves.easeOutCubic));
    }
  }

  final _filters = List.generate(3, (index) => FocusNode(debugLabel: 'favorites_filter_$index'));
  final _overview = FocusNode(debugLabel: 'favorites_overview');
  final _sortFocus = FocusNode(debugLabel: 'favorites_sort');
  final _viewFocus = FocusNode(debugLabel: 'favorites_view');
  final _refreshFocus = FocusNode(debugLabel: 'favorites_refresh');
  final _retryFocus = FocusNode(debugLabel: 'favorites_retry');
  late final HomePreviewController _preview;
  StorageService? _storage;
  List<MediaItem> _visible = const [];
  MediaKind? _kind;
  StudioSort _sort = StudioSort.titleAscending;
  bool _list = false;
  bool _viewInitialized = false;
  bool _collapsed = false;
  bool _active = true;
  bool _showPreview = false;
  int _selected = 0;
  int _columns = 1;
  int _focusGeneration = 0;
  double _rowExtent = 250;
  Object? _geometry;

  int get _filterIndex => _kind == MediaKind.movie
      ? 1
      : _kind == MediaKind.show
      ? 2
      : 0;

  @override
  void initState() {
    super.initState();
    for (final node in [..._filters, _overview, _sortFocus, _viewFocus, _refreshFocus]) {
      node.addListener(_expandPreviewForControls);
    }
    _preview = HomePreviewController(
      includeRatings: true,
      resolveClient: (item) => widget.resolveClient(item),
      canFetch: () =>
          mounted && _active && TickerMode.valuesOf(context).enabled && (ModalRoute.of(context)?.isCurrent ?? false),
    );
    _commitItems();
    unawaited(_restoreSort());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_viewInitialized) {
      _viewInitialized = true;
      _list =
          !PlatformDetector.isMobile(context) &&
          SettingsService.instance.read(SettingsService.viewMode) == ViewMode.list;
    }
  }

  void _expandPreviewForControls() {
    if (mounted &&
        _collapsed &&
        [..._filters, _overview, _sortFocus, _viewFocus, _refreshFocus].any((node) => node.hasFocus)) {
      setState(() => _collapsed = false);
    }
  }

  Future<void> _restoreSort() async {
    final storage = await StorageService.getInstance();
    if (!mounted) return;
    setState(() {
      _storage = storage;
      _sort = storage.getFavoritesSort(kind: _kind);
      _commitItems();
    });
  }

  @override
  void didUpdateWidget(FavoritesCatalogView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.items, widget.items)) _commitItems();
  }

  void setActive(bool active) {
    _active = active;
    _preview.setActive(active);
  }

  void focusContent() {
    if (!mounted || !_active) return;
    _filters[_filterIndex].requestFocus();
  }

  void _commitItems({bool reset = false}) {
    final hadGridFocus = gridItemFocusNodes.values.any((node) => node.hasFocus);
    final followed = _visible.isEmpty ? null : _visible[_selected.clamp(0, _visible.length - 1)].globalKey;
    _visible = widget.items.where((item) => _kind == null || item.kind == _kind).toList()..sort(_sort.compare);
    gridContentVersion++;
    reconcileGridFocusNodes({for (final (index, item) in _visible.indexed) item.globalKey: index});
    final followedIndex = _visible.indexWhere((item) => item.globalKey == followed);
    _selected = reset || _visible.isEmpty
        ? 0
        : followedIndex >= 0
        ? followedIndex
        : _selected.clamp(0, _visible.length - 1);
    if (_visible.isEmpty) {
      _collapsed = false;
      _preview.clear();
    } else {
      _select(_selected);
    }
    if (reset) {
      _focusGeneration++;
      _collapsed = false;
      if (_scroll.hasClients) _scroll.jumpTo(0);
    } else if (hadGridFocus && followedIndex < 0) {
      final generation = ++_focusGeneration;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted || generation != _focusGeneration || !_active || !(ModalRoute.of(context)?.isCurrent ?? false)) {
          return;
        }
        if (_visible.isEmpty) {
          focusContent();
        } else {
          _focusIndex(_selected);
        }
      });
    }
  }

  void _select(int index) {
    _selected = index;
    _preview.select(_visible[index], rowTitle: t.libraries.filterCategories.favorites);
  }

  void _filter(MediaKind? kind) {
    if (_kind == kind) return;
    setState(() {
      _kind = kind;
      _sort = _storage?.getFavoritesSort(kind: kind) ?? StudioSort.titleAscending;
      _commitItems(reset: true);
    });
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
          if (value != StudioSort.recentlyAddedEpisode)
            AppMenuItem(value: value, label: _sortLabel(value), selected: value == _sort),
      ],
    );
    if (!mounted) return;
    if (picked != null && picked != _sort) {
      setState(() {
        _sort = picked;
        _commitItems(reset: true);
      });
      final storage = _storage ?? await StorageService.getInstance();
      if (!mounted) return;
      unawaited(storage.saveFavoritesSort(picked, kind: _kind));
    }
    if (_active && (ModalRoute.of(context)?.isCurrent ?? false)) _sortFocus.requestFocus();
  }

  void _toggleView() {
    setState(() {
      _list = !_list;
      _collapsed = false;
    });
    if (_scroll.hasClients) _scroll.jumpTo(0);
  }

  void _focusOverview() {
    if (_collapsed) setState(() => _collapsed = false);
    if (_showPreview && _preview.value != null) {
      _overview.requestFocus();
    } else {
      _refreshFocus.requestFocus();
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
    if (mounted && _active && (ModalRoute.of(context)?.isCurrent ?? false) && origin?.context?.mounted == true) {
      origin!.requestFocus();
    }
  }

  Future<void> _open(int index) async {
    final item = _visible[index];
    await widget.onOpen(item);
    if (!mounted || !_active || !(ModalRoute.of(context)?.isCurrent ?? false)) return;
    final destination = _visible.indexWhere((candidate) => candidate.globalKey == item.globalKey);
    if (_visible.isEmpty) {
      focusContent();
    } else {
      _focusIndex(destination < 0 ? _selected : destination);
    }
  }

  void _focusIndex(int index) {
    if (_visible.isEmpty) {
      if (widget.errorMessage != null) _retryFocus.requestFocus();
      return;
    }
    final target = index.clamp(0, _visible.length - 1);
    final node = getGridItemFocusNode(target, prefix: 'favorites_item');
    final generation = ++_focusGeneration;
    if (node.context?.mounted == true && node.context?.findRenderObject()?.attached == true) {
      node.requestFocus();
      return;
    }
    if (_scroll.hasClients) {
      _scroll.jumpTo(((target ~/ _columns) * _rowExtent).clamp(0.0, _scroll.position.maxScrollExtent));
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && generation == _focusGeneration && _active && (ModalRoute.of(context)?.isCurrent ?? false)) {
        node.requestFocus();
      }
    });
  }

  void _reveal(int index) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !_scroll.hasClients || gridItemFocusNodes[index]?.hasFocus != true) return;
      final position = _scroll.position;
      final target = ((index ~/ _columns) * _rowExtent).clamp(0.0, position.maxScrollExtent);
      if ((position.pixels - target).abs() < 1) return;
      unawaited(_scroll.animateTo(target, duration: FocusTheme.navigationScrollDuration(), curve: Curves.easeOutCubic));
    });
  }

  Widget _buildControls(BuildContext context, double width) {
    final narrow = !PlatformDetector.isTV() && width < 600;
    final colors = Theme.of(context).colorScheme;
    final chips = <Widget>[
      for (final (index, (kind, label)) in [
        (null, t.studios.all),
        (MediaKind.movie, t.studios.movies),
        (MediaKind.show, t.studios.shows),
      ].indexed)
        FocusableTabChip(
          key: ValueKey('favorites_filter_$index'),
          label: label,
          editorial: true,
          isSelected: _kind == kind,
          focusNode: _filters[index],
          onSelect: () => _filter(kind),
          onNavigateLeft: index == 0 ? widget.onNavigation : _filters[index - 1].requestFocus,
          onNavigateRight: index == 2 ? _sortFocus.requestFocus : _filters[index + 1].requestFocus,
          onNavigateUp: PlatformDetector.isTV() ? widget.onNavigation : _focusOverview,
          onNavigateDown: narrow ? _sortFocus.requestFocus : () => _focusIndex(0),
        ),
    ];
    final filters = narrow ? Wrap(spacing: 8, runSpacing: 4, children: chips) : TabChipStrip(children: chips);
    final actions = [
      ConstrainedBox(
        constraints: BoxConstraints(maxWidth: math.min(250.0, width * (narrow ? 0.7 : 0.4))),
        child: FocusableButton(
          focusNode: _sortFocus,
          autoScroll: false,
          onPressed: () => unawaited(_chooseSort()),
          onNavigateLeft: _filters.last.requestFocus,
          onNavigateRight: _viewFocus.requestFocus,
          onNavigateUp: PlatformDetector.isTV()
              ? widget.onNavigation
              : narrow
              ? _filters[_filterIndex].requestFocus
              : _focusOverview,
          onNavigateDown: () => _focusIndex(0),
          child: TextButton.icon(
            onPressed: () => unawaited(_chooseSort()),
            style: TextButton.styleFrom(foregroundColor: colors.onSurface),
            icon: const AppIcon(Symbols.sort_rounded, size: 18),
            label: Text(_sortLabel(_sort), maxLines: 1, overflow: TextOverflow.ellipsis),
          ),
        ),
      ),
      FocusableButton(
        focusNode: _viewFocus,
        autoScroll: false,
        onPressed: _toggleView,
        onNavigateLeft: _sortFocus.requestFocus,
        onNavigateUp: PlatformDetector.isTV()
            ? widget.onNavigation
            : narrow
            ? _filters[_filterIndex].requestFocus
            : _focusOverview,
        onNavigateDown: () => _focusIndex(0),
        child: IconButton(
          onPressed: _toggleView,
          tooltip: _list ? t.settings.gridView : t.settings.listView,
          icon: AppIcon(_list ? Symbols.grid_view_rounded : Symbols.view_list_rounded, size: 21),
        ),
      ),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: narrow
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                filters,
                Row(mainAxisAlignment: MainAxisAlignment.end, children: actions),
              ],
            )
          : Row(
              children: [
                Expanded(child: filters),
                const SizedBox(width: 8),
                ...actions,
              ],
            ),
    );
  }

  @override
  void dispose() {
    _focusGeneration++;
    _preview.dispose();
    _scroll.dispose();
    for (final node in [..._filters, _overview, _sortFocus, _viewFocus, _refreshFocus, _retryFocus]) {
      node.dispose();
    }
    disposeGridFocusNodes();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SettingValueBuilder<bool>(
      pref: SettingsService.posterDetails,
      builder: (context, _, _) => _buildFavorites(context),
    );
  }

  Widget _buildFavorites(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final tv = PlatformDetector.isTV();
    return Focus(
      canRequestFocus: false,
      onKeyEvent: (_, event) => handleBackKeyAction(event, widget.onNavigation),
      child: TvScreenInsets(
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, viewport) {
              final textScale = MediaQuery.textScalerOf(context).scale(14) / 14;
              _showPreview = viewport.maxWidth >= 700 && viewport.maxHeight >= 400 && textScale <= 1.5;
              final heroHeight = _collapsed ? 88.0 : (viewport.maxHeight * 0.36).clamp(140.0, 280.0);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 4, 20, 0),
                    child: Row(
                      children: [
                        AppIcon(Symbols.favorite_rounded, fill: 1, size: 22, color: colors.primary),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            t.libraries.filterCategories.favorites,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                        if (widget.items.isNotEmpty || (!widget.loading && widget.errorMessage == null))
                          Text(
                            t.discover.titleCount(n: _visible.length),
                            style: theme.textTheme.labelMedium?.copyWith(color: colors.onSurfaceVariant),
                          ),
                        const SizedBox(width: 12),
                        FocusableButton(
                          focusNode: _refreshFocus,
                          autoScroll: false,
                          onPressed: widget.onRefresh,
                          onNavigateUp: widget.onNavigation,
                          onNavigateLeft: widget.onNavigation,
                          onNavigateDown: focusContent,
                          child: IconButton(
                            onPressed: widget.onRefresh,
                            tooltip: t.common.refresh,
                            icon: const AppIcon(Symbols.refresh_rounded, size: 22),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (_showPreview && _visible.isNotEmpty)
                    AnimatedContainer(
                      key: const ValueKey('favorites_hero'),
                      height: heroHeight,
                      duration: MediaQuery.disableAnimationsOf(context)
                          ? Duration.zero
                          : const Duration(milliseconds: 240),
                      curve: Curves.easeOutCubic,
                      onEnd: () => _reveal(_selected),
                      child: ValueListenableBuilder<HomePreview?>(
                        valueListenable: _preview,
                        builder: (context, preview, _) {
                          if (preview == null) return const SizedBox.shrink();
                          return StudioCinematicSpotlight(
                            item: preview.item,
                            artwork: preview.artwork,
                            client: widget.resolveClient(preview.artwork),
                            tint: colors.primary,
                            collapsed: _collapsed,
                            overviewFocus: _overview,
                            onOverview: () => unawaited(_showOverview()),
                            onNavigateUp: _refreshFocus.requestFocus,
                            onNavigateDown: () => _focusIndex(_selected),
                          );
                        },
                      ),
                    ),
                  _buildControls(context, viewport.maxWidth),
                  if (widget.errorMessage != null && widget.items.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                      child: Row(
                        children: [
                          Expanded(child: Text(widget.errorMessage!, style: theme.textTheme.bodySmall)),
                          FocusableButton(
                            focusNode: _retryFocus,
                            onPressed: widget.onRefresh,
                            child: TextButton(onPressed: widget.onRefresh, child: Text(t.common.retry)),
                          ),
                        ],
                      ),
                    ),
                  SizedBox(
                    height: 2,
                    child: widget.loading && _visible.isNotEmpty ? const LinearProgressIndicator(minHeight: 2) : null,
                  ),
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, bounds) {
                        const inset = 20.0;
                        final gap = tv ? 18.0 : 16.0;
                        final width = math.max(1.0, bounds.maxWidth - inset * 2);
                        _columns = _list
                            ? 1
                            : tv
                            ? 5
                            : (width / 160).floor().clamp(1, 6);
                        final cellWidth = (width - (_columns - 1) * gap) / _columns;
                        final caption = _list || (tv && !SettingsService.instance.read(SettingsService.posterDetails))
                            ? 0.0
                            : 56.0 * textScale;
                        final maxHeight = math.max(
                          48.0,
                          (bounds.maxHeight - 40) /
                                  (caption > 0 ? FocusTheme.focusScale : FocusTheme.fullCardFocusScale) -
                              caption -
                              8,
                        );
                        final posterWidth = tv ? math.min(cellWidth, maxHeight / 1.5) : cellWidth;
                        final extent = _list ? (tv ? 112.0 : 104.0) * textScale : posterWidth * 1.5 + caption;
                        _rowExtent = extent + 20;
                        final geometry = (_columns, extent, bounds.maxHeight);
                        if (_geometry != geometry) {
                          _geometry = geometry;
                          _reveal(_selected);
                        }
                        return CustomScrollView(
                          key: ValueKey(_list ? 'favorites_list' : 'favorites_grid'),
                          controller: _scroll,
                          primary: false,
                          slivers: [
                            if (widget.loading && widget.items.isEmpty)
                              if (PlatformDetector.isMobile(context))
                                const PosterLoadingSliver()
                              else
                                LoadingIndicatorBox.sliver
                            else if (widget.errorMessage != null && widget.items.isEmpty)
                              SliverErrorState(
                                message: widget.errorMessage!,
                                onRetry: widget.onRefresh,
                                actionFocusNode: _retryFocus,
                                onActionNavigateUp: focusContent,
                                onActionBack: widget.onNavigation,
                              )
                            else if (_visible.isEmpty)
                              SliverEmptyState(
                                message: t.messages.noItemsAvailable,
                                icon: Symbols.favorite_border_rounded,
                              )
                            else
                              SliverPadding(
                                padding: const EdgeInsets.fromLTRB(inset, 12, inset, 28),
                                sliver: SliverGrid.builder(
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: _columns,
                                    mainAxisExtent: extent,
                                    crossAxisSpacing: gap,
                                    mainAxisSpacing: 20,
                                  ),
                                  itemCount: _visible.length,
                                  findChildIndexCallback: (key) {
                                    if (key is! ValueKey<String>) return null;
                                    final index = _visible.indexWhere((item) => item.globalKey == key.value);
                                    return index < 0 ? null : index;
                                  },
                                  itemBuilder: (context, index) {
                                    final item = _visible[index];
                                    final node = focusNodeForIndex(
                                      index,
                                      getGridItemFocusNode(0, prefix: 'favorites_item'),
                                      prefix: 'favorites_item',
                                      itemIdentity: item.globalKey,
                                    );
                                    return KeyedSubtree(
                                      key: ValueKey(item.globalKey),
                                      child: MouseRegion(
                                        onEnter: (_) => _select(index),
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: SizedBox(
                                            width: _list ? cellWidth : posterWidth,
                                            height: extent,
                                            child: FocusableMediaCard(
                                              item: item.copyWith(
                                                raw: {
                                                  ...?item.raw,
                                                  'lurokaLibraryCaptions': true,
                                                  'lurokaCopyCount': widget.copyCount?.call(item) ?? 1,
                                                },
                                              ),
                                              focusNode: node,
                                              viewModeOverride: _list ? ViewMode.list : ViewMode.grid,
                                              fullBleedImage:
                                                  tv &&
                                                  !_list &&
                                                  !SettingsService.instance.read(SettingsService.posterDetails),
                                              disableScale: _list,
                                              autoScroll: false,
                                              showServerName: _list,
                                              libraryName: _list ? item.libraryTitle : null,
                                              onTap: () => unawaited(_open(index)),
                                              onRefresh: (_) => widget.onRefresh(),
                                              onFocusChange: (focused) {
                                                trackGridItemFocus(index, focused);
                                                if (!focused) return;
                                                if (!_collapsed) setState(() => _collapsed = true);
                                                _select(index);
                                                _reveal(index);
                                                evictDistantFocusNodes(index);
                                              },
                                              onNavigateUp: index < _columns
                                                  ? () {
                                                      if (_collapsed) setState(() => _collapsed = false);
                                                      focusContent();
                                                    }
                                                  : () => _focusIndex(index - _columns),
                                              onNavigateDown: () {
                                                if ((index ~/ _columns + 1) * _columns < _visible.length) {
                                                  _focusIndex(index + _columns);
                                                }
                                              },
                                              onNavigateLeft: index % _columns == 0
                                                  ? _focusOverview
                                                  : () => _focusIndex(index - 1),
                                              onNavigateRight: () {
                                                if (_columns > 1 && index + 1 < _visible.length) {
                                                  _focusIndex(index + 1);
                                                }
                                              },
                                              onBack: widget.onNavigation,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
