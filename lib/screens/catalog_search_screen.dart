import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../i18n/strings.g.dart';
import '../media/media_item.dart';
import '../media/catalog_item_ref.dart';
import '../mixins/debounced_media_search.dart';
import '../services/catalog/catalog_source.dart';
import '../services/settings_service.dart';
import '../utils/focus_utils.dart';
import '../utils/platform_detector.dart';
import '../widgets/focusable_media_card.dart';
import '../widgets/focused_scroll_scaffold.dart';
import '../widgets/loading_indicator_box.dart';
import '../widgets/optimized_media_image.dart';
import '../widgets/search_input_field.dart';
import 'libraries/state_messages.dart';

/// Free-text search of one catalog source (the Explore tab's active source),
/// pushed from the Explore TV toolbar — touch/pointer builds search inline on
/// the Explore page instead. Results are catalog items rendered through the
/// synthesized-MediaItem card stack, so taps land on the catalog detail
/// screen with library matching, exactly like the Explore rows.
class CatalogSearchScreen extends StatefulWidget {
  final CatalogSource source;

  const CatalogSearchScreen({super.key, required this.source});

  @override
  State<CatalogSearchScreen> createState() => _CatalogSearchScreenState();
}

class _CatalogSearchScreenState extends State<CatalogSearchScreen>
    with DebouncedMediaSearch<CatalogSearchScreen, MediaItem> {
  String? _focusedResultKey;

  @override
  String get searchDebugLabel => 'CatalogSearch';

  @override
  void onSearchTextChanged(String query) => _focusedResultKey = null;

  @override
  Future<List<MediaItem>> performSearchQuery(String query) async {
    final items = await widget.source.search(query);
    return [for (final item in items) item.toMediaItem()];
  }

  @override
  void initState() {
    super.initState();
    FocusUtils.requestFocusAfterBuild(this, searchFocusNode);
  }

  @override
  Widget build(BuildContext context) {
    final sourceName = widget.source.displayName;
    return FocusedScrollScaffold(
      title: Text(t.explore.searchHint(source: sourceName)),
      slivers: [
        SliverToBoxAdapter(
          child: SearchInputField(
            controller: searchController,
            focusNode: searchFocusNode,
            debugLabel: searchDebugLabel,
            hintText: t.explore.searchHint(source: sourceName),
            onNavigateDown: searchResults.isNotEmpty && !isSearching ? firstResultFocusNode.requestFocus : null,
            onEditingComplete: PlatformDetector.isTV() ? handleSearchSubmit : null,
          ),
        ),
        if (isSearching)
          LoadingIndicatorBox.sliver
        else if (!hasSearched)
          SliverFillRemaining(
            child: StateMessageWidget(
              message: t.explore.searchPrompt(source: sourceName),
              icon: Symbols.search_rounded,
              iconSize: 80,
            ),
          )
        else if (lastSearchFailed)
          SliverFillRemaining(
            child: StateMessageWidget(message: t.explore.searchFailed, icon: Symbols.error_rounded, iconSize: 80),
          )
        else if (searchResults.isEmpty)
          SliverFillRemaining(
            child: StateMessageWidget(
              message: t.explore.searchEmpty(query: lastSearchedQuery),
              icon: Symbols.search_off_rounded,
              iconSize: 80,
            ),
          )
        else if (PlatformDetector.isTV()) ...[
          if (MediaQuery.viewInsetsOf(context).bottom == 0) _buildResultPreview(context),
          _buildResultsGrid(),
        ] else
          _buildResultsList(),
      ],
    );
  }

  Widget _buildResultPreview(BuildContext context) {
    var selected = searchResults.first;
    for (final item in searchResults) {
      if (item.globalKey == _focusedResultKey) {
        selected = item;
        break;
      }
    }
    final catalog = selected.catalogItem;
    final theme = Theme.of(context);
    final color = theme.colorScheme;
    final height = (MediaQuery.sizeOf(context).height * .22).clamp(100.0, 180.0);
    final backdrop = catalog?.backdropUrl;
    return SliverPersistentHeader(
      pinned: true,
      delegate: _CatalogPreviewHeader(
        height: height + 8,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              key: const ValueKey('catalog_search_preview'),
              height: height,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ColoredBox(color: color.surfaceContainerHighest),
                  if (backdrop != null)
                    Align(
                      alignment: Alignment.centerRight,
                      child: FractionallySizedBox(
                        widthFactor: .55,
                        heightFactor: 1,
                        child: OptimizedMediaImage.thumb(imagePath: backdrop, fit: BoxFit.cover),
                      ),
                    ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          color.surfaceContainerHighest,
                          color.surfaceContainerHighest.withValues(alpha: .9),
                          color.surfaceContainerHighest.withValues(alpha: .35),
                        ],
                        stops: const [0, .55, 1],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                    child: FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: .68,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            selected.displayTitle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
                          ),
                          if (catalog?.year != null) ...[
                            const SizedBox(height: 4),
                            Text(
                              '${catalog!.year}',
                              style: theme.textTheme.labelLarge?.copyWith(color: color.onSurfaceVariant),
                            ),
                          ],
                          if (catalog?.overview?.trim() case final overview? when overview.isNotEmpty) ...[
                            const SizedBox(height: 6),
                            Flexible(
                              child: Text(
                                overview,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
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
    );
  }

  Widget _buildResultsGrid() {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(32, 12, 32, 48),
      sliver: SliverLayoutBuilder(
        builder: (context, constraints) {
          final columns = (constraints.crossAxisExtent / 140).floor().clamp(2, 8);
          final showDetails = SettingsService.instance.read(SettingsService.posterDetails);
          return SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columns,
              crossAxisSpacing: 20,
              mainAxisSpacing: 24,
              childAspectRatio: showDetails ? 2 / 3.5 : 2 / 3,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final item = searchResults[index];
                return FocusableMediaCard(
                  key: Key(item.globalKey),
                  item: item,
                  viewModeOverride: ViewMode.grid,
                  showPosterDetails: showDetails,
                  fullBleedImage: !showDetails,
                  focusNode: index == 0 ? firstResultFocusNode : null,
                  onNavigateUp: index < columns ? searchFocusNode.requestFocus : null,
                  onFocusChange: (focused) {
                    if (focused && _focusedResultKey != item.globalKey) {
                      setState(() => _focusedResultKey = item.globalKey);
                    }
                  },
                );
              },
              childCount: searchResults.length,
              addAutomaticKeepAlives: false,
            ),
          );
        },
      ),
    );
  }

  Widget _buildResultsList() {
    return buildResultsSliver((context, index) {
      final item = searchResults[index];
      return FocusableMediaCard(
        key: Key(item.globalKey),
        item: item,
        viewModeOverride: ViewMode.list,
        disableScale: true,
        focusNode: index == 0 ? firstResultFocusNode : null,
        onNavigateUp: index == 0 ? searchFocusNode.requestFocus : null,
      );
    });
  }
}

class _CatalogPreviewHeader extends SliverPersistentHeaderDelegate {
  _CatalogPreviewHeader({required this.height, required this.child});

  final double height;
  final Widget child;

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) => child;

  @override
  bool shouldRebuild(covariant _CatalogPreviewHeader oldDelegate) =>
      height != oldDelegate.height || child != oldDelegate.child;
}
