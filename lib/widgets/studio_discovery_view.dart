import 'dart:math' as math;

import 'package:cached_network_image_ce/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../services/settings_service.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../focus/focusable_button.dart';
import '../focus/locked_hub_controller.dart';
import '../i18n/strings.g.dart';
import '../media/media_hub.dart';
import '../media/media_item.dart';
import '../media/media_server_client.dart';
import '../media/studio_brands.dart';
import '../media/studio_discovery.dart';
import '../services/home_preview_controller.dart';
import 'app_icon.dart';
import 'hub_section.dart';
import 'studio_spotlight.dart';
import 'tv_screen_insets.dart';
import '../utils/platform_detector.dart';
import 'poster_loading_placeholder.dart';
import 'studio_cinematic_spotlight.dart';

class StudioTvHeader extends StatelessWidget {
  const StudioTvHeader({
    super.key,
    required this.name,
    required this.brand,
    required this.count,
    required this.backFocus,
    required this.onBack,
    required this.onNavigateDown,
  });

  final String name;
  final StudioBrand? brand;
  final int count;
  final FocusNode backFocus;
  final VoidCallback onBack;
  final VoidCallback onNavigateDown;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final fallback = Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: Row(
        children: [
          FocusableButton(
            focusNode: backFocus,
            autoScroll: false,
            onPressed: onBack,
            onNavigateDown: onNavigateDown,
            onNavigateRight: onNavigateDown,
            child: IconButton(
              onPressed: onBack,
              tooltip: t.common.back,
              icon: const AppIcon(Symbols.arrow_back_rounded, size: 22),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: brand?.logoUrl == null
                  ? fallback
                  : SizedBox(
                      width: 115,
                      height: 32,
                      child: CachedNetworkImage(
                        imageUrl: brand!.logoUrl!,
                        fit: BoxFit.contain,
                        alignment: Alignment.centerLeft,
                        color: theme.colorScheme.onSurface,
                        colorBlendMode: BlendMode.srcIn,
                        memCacheWidth: (160 * MediaQuery.devicePixelRatioOf(context)).round().clamp(160, 640),
                        fadeInDuration: Duration.zero,
                        placeholder: (_, _) => fallback,
                        errorBuilder: (_, _, _) => fallback,
                      ),
                    ),
            ),
          ),
          Text(
            t.studios.titleCount(count: count),
            style: theme.textTheme.labelMedium?.copyWith(color: theme.colorScheme.onSurfaceVariant),
          ),
        ],
      ),
    );
  }
}

/// A studio's landing destination. Shelves share the app's locked D-pad rows,
/// including per-row focus memory, context menus and lazy horizontal artwork.
class StudioDiscoveryView extends StatefulWidget {
  const StudioDiscoveryView({
    super.key,
    required this.name,
    required this.brand,
    required this.items,
    required this.discovery,
    required this.loading,
    required this.failed,
    required this.preview,
    required this.resolveClient,
    required this.onSelect,
    required this.onOpen,
    required this.onRefresh,
    required this.onOverview,
    required this.onBrowseAll,
    required this.onRetry,
    required this.onBack,
  });

  final String name;
  final StudioBrand? brand;
  final List<MediaItem> items;
  final StudioDiscovery discovery;
  final bool loading;
  final bool failed;
  final HomePreviewController preview;
  final MediaServerClient? Function(MediaItem) resolveClient;
  final ValueChanged<MediaItem> onSelect;
  final ValueChanged<MediaItem> onOpen;
  final ValueChanged<MediaItem> onRefresh;
  final VoidCallback onOverview;
  final VoidCallback onBrowseAll;
  final VoidCallback onRetry;
  final VoidCallback onBack;

  @override
  State<StudioDiscoveryView> createState() => _StudioDiscoveryViewState();
}

class _StudioDiscoveryViewState extends State<StudioDiscoveryView> {
  final _back = FocusNode(debugLabel: 'studio_landing_back');
  final _overview = FocusNode(debugLabel: 'studio_landing_overview');
  final _browse = FocusNode(debugLabel: 'studio_browse_all');
  final _retry = FocusNode(debugLabel: 'studio_landing_retry');
  final _memory = HubFocusMemory();
  final _scroll = ScrollController();
  final _shelfKeys = <String, GlobalKey<HubSectionState>>{};
  bool _collapsed = false;
  String? _activeShelf;

  List<MediaHub> get _hubs {
    final data = widget.discovery;
    return [
      if (data.continueWatching.isNotEmpty)
        MediaHub(id: 'studio_resume', title: t.discover.continueWatching, type: 'mixed', items: data.continueWatching),
      if (data.recentlyAdded.isNotEmpty)
        MediaHub(id: 'studio_recent', title: t.discover.recentlyAdded, type: 'mixed', items: data.recentlyAdded),
      if (data.topRated.isNotEmpty)
        MediaHub(id: 'studio_rated', title: t.studios.topRated, type: 'mixed', items: data.topRated),
      if (data.mostWatched.isNotEmpty)
        MediaHub(id: 'studio_watched', title: t.studios.mostWatched, type: 'mixed', items: data.mostWatched),
      if (data.featured != null &&
          data.recentlyAdded.isEmpty &&
          data.topRated.isEmpty &&
          data.continueWatching.isEmpty &&
          data.mostWatched.isEmpty)
        MediaHub(
          id: 'studio_titles',
          title: t.lurokaDiscovery.allTitles,
          type: 'mixed',
          items: widget.items.take(20).toList(),
        ),
    ];
  }

  @override
  void initState() {
    super.initState();
    for (final node in [_back, _overview, _browse]) {
      node.addListener(_expandPreviewForControls);
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && PlatformDetector.isTV()) _browse.requestFocus();
    });
  }

  void _expandPreviewForControls() {
    if (mounted && _collapsed && [_back, _overview, _browse].any((node) => node.hasFocus)) {
      setState(() {
        _collapsed = false;
        _activeShelf = null;
      });
    }
  }

  @override
  void didUpdateWidget(StudioDiscoveryView oldWidget) {
    super.didUpdateWidget(oldWidget);
    // A late page or playback refresh can remove a shelf (notably Resume).
    // Restore a reachable row rather than leaving focus on a disposed node.
    if (_activeShelf != null && !_hubs.any((hub) => hub.id == _activeShelf)) {
      _activeShelf = null;
      _collapsed = false;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _focusShelf(0);
      });
    }
  }

  void _focusShelf(int index) {
    final hubs = _hubs;
    if (index < 0 || index >= hubs.length) {
      _focusBrowse();
      return;
    }
    _activeShelf = hubs[index].id;
    if (!_collapsed) setState(() => _collapsed = true);
    _shelfKeys[hubs[index].id]?.currentState?.requestFocusFromMemory();
  }

  void _focusBrowse() {
    if (_collapsed) setState(() => _collapsed = false);
    _activeShelf = null;
    _browse.requestFocus();
    if (_scroll.hasClients) {
      _scroll.animateTo(0, duration: const Duration(milliseconds: 200), curve: Curves.easeOutCubic);
    }
  }

  void _focusOverview() {
    _focusBrowse();
    _overview.requestFocus();
  }

  @override
  void dispose() {
    for (final node in [_back, _overview, _browse, _retry]) {
      node.dispose();
    }
    _scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (PlatformDetector.isMobile(context)) return _buildMobile(context);
    final theme = Theme.of(context);
    final hubs = _hubs;
    final tint = Color(widget.brand?.tint ?? 0xff5289ad);
    return TvScreenInsets(
      child: SafeArea(
        child: LayoutBuilder(
          builder: (context, bounds) {
            final reducedMotion = MediaQuery.disableAnimationsOf(context);
            final heroHeight = _collapsed ? 88.0 : (bounds.maxHeight * 0.36).clamp(125.0, 310.0);
            // Include the header, collection toolbar, shelf heading and the
            // scaled card's bottom outline. Percentage-only poster sizing can
            // put the first shelf below the screen before it ever has focus.
            final shelfChrome =
                156.0 +
                MediaQuery.textScalerOf(context).scale(22) * 1.6 +
                (SettingsService.instance.read(SettingsService.posterDetails)
                    ? MediaQuery.textScalerOf(context).scale(48)
                    : 0);
            final posterHeight = math.max(
              48.0,
              math.min(bounds.maxHeight * 0.31, bounds.maxHeight - heroHeight - shelfChrome),
            );
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                StudioTvHeader(
                  name: widget.name,
                  brand: widget.brand,
                  count: widget.items.length,
                  backFocus: _back,
                  onBack: widget.onBack,
                  onNavigateDown: _focusBrowse,
                ),
                AnimatedContainer(
                  key: const ValueKey('studio_landing_hero'),
                  height: heroHeight,
                  duration: reducedMotion ? Duration.zero : const Duration(milliseconds: 240),
                  curve: Curves.easeOutCubic,
                  onEnd: () {
                    if (mounted && _activeShelf != null) {
                      _shelfKeys[_activeShelf]?.currentState?.requestFocusFromMemory();
                    }
                  },
                  child: ValueListenableBuilder<HomePreview?>(
                    valueListenable: widget.preview,
                    builder: (context, preview, _) {
                      if (preview == null) return const SizedBox.shrink();
                      return StudioSpotlight(
                        item: preview.item,
                        artwork: preview.artwork,
                        client: widget.resolveClient(preview.artwork),
                        studioName: widget.name,
                        tint: tint,
                        collapsed: _collapsed,
                        overviewFocus: _overview,
                        onOverview: widget.onOverview,
                        onNavigateUp: _back.requestFocus,
                        onNavigateDown: _focusBrowse,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 4),
                  child: Row(
                    children: [
                      Container(width: 3, height: 15, color: tint),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          t.studios.collection,
                          style: theme.textTheme.labelSmall?.copyWith(
                            letterSpacing: 1.8,
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                      FocusableButton(
                        focusNode: _browse,
                        autoScroll: false,
                        onPressed: widget.onBrowseAll,
                        onNavigateUp: _focusOverview,
                        onNavigateLeft: _focusOverview,
                        onNavigateDown: () => hubs.isNotEmpty
                            ? _focusShelf(0)
                            : widget.failed
                            ? _retry.requestFocus()
                            : null,
                        child: TextButton.icon(
                          onPressed: widget.onBrowseAll,
                          style: TextButton.styleFrom(foregroundColor: theme.colorScheme.onSurface),
                          icon: const AppIcon(Symbols.grid_view_rounded, size: 18),
                          label: Text('${t.studios.browseAll}  ›'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2, child: widget.loading ? const LinearProgressIndicator(minHeight: 2) : null),
                Expanded(
                  child: SingleChildScrollView(
                    key: const PageStorageKey('studio_discovery_shelves'),
                    controller: _scroll,
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        for (final (index, hub) in hubs.indexed)
                          HubSection(
                            key: _shelfKeys.putIfAbsent(hub.id, () => GlobalKey<HubSectionState>()),
                            hub: hub,
                            focusMemory: _memory,
                            icon: Symbols.movie_rounded,
                            showHeaderIcon: false,
                            cinemaArtwork: true,
                            maxPosterHeight: posterHeight.clamp(48.0, 235.0),
                            onItemTap: widget.onOpen,
                            onRefresh: widget.onRefresh,
                            onFocusedItemChanged: (item) {
                              _activeShelf = hub.id;
                              if (!_collapsed) setState(() => _collapsed = true);
                              widget.onSelect(item);
                            },
                            onVerticalNavigation: (up) {
                              if (up && index == 0) {
                                _focusBrowse();
                              } else if (!up && index == hubs.length - 1) {
                                if (widget.failed) _retry.requestFocus();
                              } else {
                                _focusShelf(index + (up ? -1 : 1));
                              }
                              return true;
                            },
                            onNavigateToSidebar: _focusOverview,
                            onNavigateUp: _focusBrowse,
                            onBack: widget.onBack,
                          ),
                        if (widget.failed)
                          Center(
                            child: FocusableButton(
                              focusNode: _retry,
                              onPressed: widget.onRetry,
                              onNavigateUp: () => hubs.isEmpty ? _focusBrowse() : _focusShelf(hubs.length - 1),
                              child: TextButton(onPressed: widget.onRetry, child: Text(t.studios.retry)),
                            ),
                          ),
                        if (hubs.isEmpty && !widget.loading && !widget.failed)
                          Padding(padding: const EdgeInsets.all(28), child: Text(t.studios.empty)),
                        if (hubs.isEmpty && widget.loading)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
                            child: Row(
                              children: List.generate(
                                5,
                                (index) => Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 16),
                                    child: AspectRatio(
                                      aspectRatio: 2 / 3,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.onSurface.withValues(alpha: 0.06),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildMobile(BuildContext context) {
    final scale = MediaQuery.textScalerOf(context).scale(16) / 16;
    return SafeArea(
      child: CustomScrollView(
        key: const PageStorageKey('mobile_studio_landing'),
        controller: _scroll,
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: StudioTvHeader(
              name: widget.name,
              brand: widget.brand,
              count: widget.items.length,
              backFocus: _back,
              onBack: widget.onBack,
              onNavigateDown: _focusBrowse,
            ),
          ),
          if (widget.items.isNotEmpty)
            SliverToBoxAdapter(
              child: SizedBox(
                key: const ValueKey('studio_landing_hero'),
                height: 190 + (scale - 1).clamp(0, 2) * 100,
                child: ValueListenableBuilder<HomePreview?>(
                  valueListenable: widget.preview,
                  builder: (context, preview, _) => preview == null
                      ? const SizedBox.shrink()
                      : StudioCinematicSpotlight(
                          item: preview.item,
                          artwork: preview.artwork,
                          client: widget.resolveClient(preview.artwork),
                          tint: Color(widget.brand?.tint ?? 0xff5289ad),
                          overviewFocus: _overview,
                          onOverview: widget.onOverview,
                          onNavigateUp: _back.requestFocus,
                          onNavigateDown: _focusBrowse,
                        ),
                ),
              ),
            ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
              child: SegmentedButton<bool>(
                key: const ValueKey('mobile_studio_browse_all'),
                segments: [
                  ButtonSegment(value: true, label: Text(t.studios.browseAll)),
                  ButtonSegment(value: false, label: Text(t.libraryPolish.overview)),
                ],
                selected: const {false},
                onSelectionChanged: (_) => widget.onBrowseAll(),
              ),
            ),
          ),
          if (widget.loading && widget.items.isNotEmpty)
            const SliverToBoxAdapter(child: LinearProgressIndicator(minHeight: 2)),
          if (widget.loading && widget.items.isEmpty) const PosterLoadingSliver(),
          SliverList.builder(
            itemCount: _hubs.length,
            itemBuilder: (context, index) {
              final hub = _hubs[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: HubSection(
                  key: _shelfKeys.putIfAbsent(hub.id, () => GlobalKey<HubSectionState>()),
                  hub: hub,
                  focusMemory: _memory,
                  icon: Symbols.movie_rounded,
                  showHeaderIcon: false,
                  streamingHome: true,
                  onItemTap: widget.onOpen,
                  onRefresh: widget.onRefresh,
                  onFocusedItemChanged: widget.onSelect,
                ),
              );
            },
          ),
          if (widget.failed)
            SliverToBoxAdapter(
              child: Center(
                child: TextButton(onPressed: widget.onRetry, child: Text(t.studios.retry)),
              ),
            ),
          if (!widget.loading && widget.items.isEmpty && !widget.failed)
            SliverFillRemaining(hasScrollBody: false, child: Center(child: Text(t.studios.empty))),
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
        ],
      ),
    );
  }
}
