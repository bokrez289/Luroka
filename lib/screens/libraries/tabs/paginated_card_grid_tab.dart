import 'package:flutter/material.dart';
import '../../../media/library_query.dart';
import '../../../media/media_playlist.dart';
import '../../../utils/media_server_http_client.dart';
import '../../../focus/focusable_button.dart';
import '../../../i18n/strings.g.dart';
import '../../../focus/input_mode_tracker.dart';
import '../../../media/media_item.dart';
import '../../../mixins/grid_focus_node_mixin.dart';
import '../../../mixins/library_tab_focus_mixin.dart';
import '../../../mixins/paginated_item_loader.dart';
import '../../../mixins/standard_paginated_view.dart';
import '../../../services/settings_service.dart';
import '../../../utils/error_message_utils.dart';
import '../../../utils/layout_constants.dart';
import '../../../utils/platform_detector.dart';
import '../../../widgets/card_inflation_budget.dart';
import '../../../widgets/focusable_media_card.dart';
import '../../../widgets/media_card_sliver_layout.dart';
import '../../../widgets/nested_tab_scrollbar.dart';
import '../../../widgets/settings_builder.dart';
import '../../../widgets/skeleton_media_card.dart';
import '../../../widgets/sliver_child_memo.dart';
import '../../main_screen.dart';
import 'base_library_tab.dart';

/// Library tabs whose whole body is one paginated grid of media cards.
///
/// Owns the grid: sparse page loading, the card widget memo, the inflation
/// budget and skeleton-upgrade handshake, and first-item/sidebar focus wiring.
/// Subclasses supply only what differs per tab — [pageSize], [fetchPage],
/// [usesSquareCards], [idOf], and the empty/error chrome from
/// [BaseLibraryTabState].
abstract class PaginatedCardGridTabState<T extends Object, W extends BaseLibraryTab<T>>
    extends BaseLibraryTabState<T, W>
    with
        GridFocusNodeMixin<W>,
        LibraryTabFocusMixin<W>,
        PaginatedItemLoader<T, W>,
        StandardPaginatedView<T, W>,
        SkeletonUpgradeScheduler<W> {
  static const double _focusDecorationPadding = 3.0;
  String _query = '';
  bool _descending = false;
  bool _prefix = false;
  List<T>? _catalogue;
  String? _catalogueLibrary;
  final _searchFocus = FocusNode(debugLabel: 'container_search');
  final _focusedTitle = ValueNotifier<String>('');
  String? get scopeDescription => null;
  bool get wideContainerCards => false;
  bool get hasCatalogueQuery => _query.isNotEmpty;
  String _titleOf(T item) => item is MediaItem ? item.displayTitle : (item as MediaPlaylist).title;
  Future<LibraryPage<T>> fetchRawPage(int start, int size, AbortController? abort);

  @override
  Future<LibraryPage<T>> fetchPage(int start, int size, AbortController? abort) async {
    if (_query.isEmpty && !_descending) return fetchRawPage(start, size, abort);
    final key = widget.library.globalKey;
    var all = _catalogueLibrary == key ? _catalogue : null;
    all ??= await drainPages<T>((offset, count) => fetchRawPage(offset, count, abort), pageSize: 200, abort: abort);
    if (mounted && widget.library.globalKey == key) {
      _catalogue = all;
      _catalogueLibrary = key;
    }
    final filtered =
        all
            .where(
              (item) => _prefix
                  ? (_query == '#'
                        ? !RegExp(r'^[a-z]', caseSensitive: false).hasMatch(_titleOf(item))
                        : _titleOf(item).toLowerCase().startsWith(_query.toLowerCase()))
                  : _titleOf(item).toLowerCase().contains(_query.toLowerCase()),
            )
            .toList()
          ..sort((a, b) => _titleOf(a).toLowerCase().compareTo(_titleOf(b).toLowerCase()) * (_descending ? -1 : 1));
    return LibraryPage(items: filtered.skip(start).take(size).toList(), totalCount: filtered.length, offset: start);
  }

  Future<void> _searchCatalogue() async {
    final controller = TextEditingController(text: _query);
    final result = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(wideContainerCards ? t.libraryPolish.searchPlaylists : t.libraryPolish.searchCollections),
        content: TextField(
          controller: controller,
          autofocus: true,
          decoration: InputDecoration(hintText: t.libraryPolish.searchHint),
          onSubmitted: (value) => Navigator.pop(context, value),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, ''), child: Text(t.common.clear)),
          TextButton(onPressed: () => Navigator.pop(context, controller.text), child: Text(t.common.search)),
        ],
      ),
    );
    // Let the closing route finish using its text controller.
    await Future<void>.delayed(const Duration(milliseconds: 250));
    controller.dispose();
    if (!mounted || result == null || result.trim() == _query) return;
    setState(() {
      _query = result.trim();
      _prefix = false;
    });
    await loadItems();
  }

  Future<void> _jumpLetter() async {
    final letter = await showDialog<String>(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(t.libraryPolish.searchHint),
        children: [
          Wrap(
            children: [
              for (final letter in ['#', ...List.generate(26, (i) => String.fromCharCode(65 + i))])
                TextButton(onPressed: () => Navigator.pop(context, letter), child: Text(letter)),
            ],
          ),
        ],
      ),
    );
    if (!mounted || letter == null) return;
    setState(() {
      _query = letter;
      _prefix = true;
    });
    await loadItems();
  }

  Widget _tools() => Padding(
    padding: const EdgeInsets.fromLTRB(24, 6, 24, 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (scopeDescription != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(scopeDescription!, style: Theme.of(context).textTheme.bodySmall),
          ),
        Row(
          children: [
            FocusableButton(
              focusNode: _searchFocus,
              onPressed: _searchCatalogue,
              onNavigateDown: focusFirstItem,
              onNavigateUp: widget.onBack,
              child: TextButton.icon(
                onPressed: _searchCatalogue,
                icon: const Icon(Icons.search),
                label: Text(_query.isEmpty ? t.common.search : _query),
              ),
            ),
            const SizedBox(width: 10),
            FocusableButton(
              onNavigateDown: focusFirstItem,
              onNavigateUp: widget.onBack,
              onPressed: _jumpLetter,
              child: TextButton(onPressed: _jumpLetter, child: const Text('A–Z')),
            ),
            FocusableButton(
              onPressed: () {
                setState(() => _descending = !_descending);
                loadItems();
              },
              onNavigateDown: focusFirstItem,
              onNavigateUp: widget.onBack,
              child: TextButton.icon(
                onPressed: () {
                  setState(() => _descending = !_descending);
                  loadItems();
                },
                icon: const Icon(Icons.sort),
                label: Text(_descending ? t.libraryPolish.titleDescending : t.libraryPolish.titleAscending),
              ),
            ),
          ],
        ),
        ValueListenableBuilder<String>(
          valueListenable: _focusedTitle,
          builder: (context, title, _) =>
              Text(title, maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.titleSmall),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    final body = super.build(context);
    if (hasLoadedData && !isLoading && totalSize == 0 && _query.isNotEmpty) return buildContent(const []);
    return body;
  }

  /// Reuses card widgets across delegate swaps so tab-level setStates
  /// (pagination, refreshes) don't rebuild every realized card inside layout.
  final SliverChildMemo<T> _cardMemo = SliverChildMemo<T>();

  /// Items fetched per page.
  int get pageSize;

  /// Whether cards render with the square container silhouette.
  bool get usesSquareCards;

  /// Card key for [item]. The tabs' item types share no common supertype.
  String idOf(T item);

  @override
  int get itemCount => totalSize;

  @override
  Future<void> loadItems() {
    _catalogue = null;
    cleanupGridFocusNodes(0);
    _cardMemo.clear();
    // This pipeline bypasses [beginLibraryLoad]; snapshot here so the commit
    // credits load-start data, not a mid-fetch push. A thrown fetch was the
    // current request (superseded ones report `applied: false` instead), so
    // the error hook is where a failed load settles without credit.
    final epoch = snapshotLibraryContentEpoch();
    return loadStandardPaginatedItems(
      pageSize: pageSize,
      errorMessageFor: (error, stackTrace) {
        releaseLibraryContentEpoch();
        return localizedLoadErrorMessage(error, stackTrace, context: errorContext);
      },
      onLoaded: (_, _) => markItemsLoaded(epoch),
    );
  }

  /// Server push while this grid is visible: refetch the loaded span
  /// in place so the old cards stay rendered — no spinner, no scroll reset,
  /// no focus churn. Item-owned nodes retain active and covered restoration
  /// focus across the merge. The clearing [loadItems] path is reserved for surfaces
  /// with nothing visible to preserve (error or empty states, where it is
  /// also the only way a first item can appear live).
  @override
  Future<void> performLiveLibraryRefresh() async {
    _catalogue = null;
    if (isLoading) return;
    if (!hasLoadedData || loadedItems.isEmpty || totalSize == 0) return loadItems();
    final epoch = snapshotLibraryContentEpoch();
    final result = await repopulateLoadedRange(idOf: idOf);
    if (!mounted) return;
    if (result == null) {
      // Failed or superseded: nothing landed, so nothing is credited.
      releaseLibraryContentEpoch();
      return;
    }
    recordLibraryContentEpoch(epoch);
    setState(() => items = loadedItems.values.toList());
    reconcileGridFocusNodes({for (final entry in loadedItems.entries) idOf(entry.value): entry.key});
  }

  /// Index currently holding the item with [id], or null when it is no longer
  /// loaded.
  int? _loadedIndexOfId(String id) {
    for (final entry in loadedItems.entries) {
      if (idOf(entry.value) == id) return entry.key;
    }
    return null;
  }

  @override
  Widget buildContent(List<T> items) {
    return SettingsBuilder(
      prefs: const [SettingsService.viewMode, SettingsService.libraryDensity, SettingsService.tvFullCardLayout],
      builder: (context) {
        final settings = SettingsService.instance;
        final viewMode = settings.read(SettingsService.viewMode);
        final density = PlatformDetector.isTV() ? 4 : settings.read(SettingsService.libraryDensity);
        final fullCardLayout = PlatformDetector.isTV() && settings.read(SettingsService.tvFullCardLayout);
        return NestedTabScrollbar(
          child: CustomScrollView(
            clipBehavior: Clip.none,
            slivers: [
              SliverOverlapInjector(handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
              if (PlatformDetector.isTV())
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24, 16, 24, 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            errorContext,
                            style: Theme.of(
                              context,
                            ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w700, letterSpacing: -0.6),
                          ),
                        ),
                        Text(
                          t.explore.totalResults(n: totalSize),
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                        ),
                      ],
                    ),
                  ),
                ),
              if (PlatformDetector.isTV()) SliverToBoxAdapter(child: _tools()),
              _buildItemsSliver(viewMode, density, fullCardLayout: fullCardLayout),
            ],
          ),
        );
      },
    );
  }

  EdgeInsets get _effectivePadding {
    final base = GridLayoutConstants.gridPadding;
    if (PlatformDetector.isTV()) return const EdgeInsets.fromLTRB(24, 4, 24, 24);
    return base.copyWith(top: base.top + _focusDecorationPadding);
  }

  Widget _buildItemsSliver(ViewMode viewMode, int density, {required bool fullCardLayout}) {
    final shape = usesSquareCards
        ? CardShape.square
        : wideContainerCards
        ? CardShape.wide
        : null;
    final useFullCardLayout = fullCardLayout && !PlatformDetector.isTV() && shape != CardShape.square;
    return MediaCardSliverLayout(
      viewMode: viewMode,
      itemCount: totalSize,
      density: density,
      findChildIndexCallback: (key) => _loadedIndexOfId((key as ValueKey<String>).value),
      padding: _effectivePadding,
      fullBleedImage: useFullCardLayout,
      shape: shape,
      listEpoch: (ViewMode.list, totalSize, density, shape, widget.onNavigateLibraryMenu != null),
      gridEpochBuilder: (geometry) => (
        ViewMode.grid,
        geometry.columnCount,
        totalSize,
        useFullCardLayout,
        density,
        shape,
        widget.onNavigateLibraryMenu != null,
      ),
      itemBuilder: (context, position) {
        final index = position.index;
        final item = loadedItems[index];
        if (item == null) {
          ensureIndexLoaded(index, pageSize: pageSize);
          return const SkeletonMediaCard();
        }
        if (!position.isGrid) {
          return _cardMemo.widgetFor(index, item, epoch: position.layoutEpoch!, build: () => _buildCard(position));
        }

        return realizeBudgeted(
          _cardMemo,
          context,
          index,
          item,
          epoch: position.layoutEpoch!,
          keyboardMode: InputModeTracker.isKeyboardMode(context, listen: false),
          isOnScreen: position.isOnScreen,
          build: () => _buildCard(position, fullBleedImage: useFullCardLayout),
        );
      },
    );
  }

  Widget _buildCard(MediaCardSliverPosition position, {bool fullBleedImage = false}) {
    final index = position.index;
    final item = loadedItems[index];
    if (item == null) {
      ensureIndexLoaded(index, pageSize: pageSize);
      return const SkeletonMediaCard();
    }

    // Explicit navigation instead of default directional traversal. This grid
    // lives inside the libraries screen's NestedScrollView (floating chips
    // header); framework traversal scrolls the found node into view via
    // Scrollable.ensureVisible, whose outer-scrollable pass routes through the
    // nested-scroll coordinator and resets the inner position to zero on UP —
    // snapping the list back to the top and dropping focus onto the header.
    final columnCount = position.columnCount;
    final navigateUp = position.isFirstRow
        ? (PlatformDetector.isTV() ? _searchFocus.requestFocus : widget.onBack)
        : () => _focusGridItem(index - columnCount);
    final navigateDown = index + columnCount < totalSize ? () => _focusGridItem(index + columnCount) : null;
    final wrap = PlatformDetector.isTV() && position.isGrid;
    final navigateLeft = position.isFirstColumn && (widget.onNavigateLibraryMenu != null || !wrap || index == 0)
        ? _navigateToSidebar
        : () => _focusGridItem(index - 1);
    final navigateRight = (!position.isLastColumn || wrap) && index + 1 < totalSize
        ? () => _focusGridItem(index + 1)
        : null;

    return FocusableMediaCard(
      key: Key(idOf(item)),
      item: item,
      focusNode: _cardFocusNode(index),
      disableScale: position.disableScale,
      fullBleedImage: fullBleedImage,
      cardShapeOverride: usesSquareCards
          ? CardShape.square
          : wideContainerCards
          ? CardShape.wide
          : null,
      onListRefresh: loadItems,
      onNavigateUp: navigateUp,
      onNavigateDown: navigateDown,
      onNavigateLeft: navigateLeft,
      onNavigateRight: navigateRight,
      onBack: widget.onBack,
      onFocusChange: (hasFocus) {
        trackGridItemFocus(index, hasFocus);
        if (hasFocus) _focusedTitle.value = _titleOf(item);
      },
    );
  }

  FocusNode _cardFocusNode(int index) => focusNodeForIndex(
    index,
    firstItemFocusNode,
    prefix: 'paginated_grid_item',
    itemIdentity: loadedItems[index] == null ? null : idOf(loadedItems[index]!),
  );

  /// Move focus to the grid item at [targetIndex]. When the target card is
  /// not yet mounted (being built this frame, or still an unloaded skeleton),
  /// the pending request lands once its card attaches the node.
  void _focusGridItem(int targetIndex) {
    if (targetIndex < 0 || targetIndex >= totalSize) return;
    final node = _cardFocusNode(targetIndex);
    if (node.context != null) {
      node.requestFocus();
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) node.requestFocus();
      });
    }
  }

  void _navigateToSidebar() {
    if (widget.onNavigateLibraryMenu case final callback?) {
      callback();
      return;
    }
    MainScreenFocusScope.focusSidebarOf(context);
  }

  @override
  void dispose() {
    _searchFocus.dispose();
    _focusedTitle.dispose();
    disposePagination();
    disposeGridFocusNodes();
    super.dispose();
  }
}
