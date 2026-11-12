import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../i18n/strings.g.dart';
import '../media/home_layout.dart';
import '../media/home_spotlight.dart';
import '../media/ids.dart';
import '../media/media_hub.dart';
import '../media/media_item.dart';
import '../media/media_item_types.dart';
import '../providers/discover_provider.dart';
import '../providers/home_layout_provider.dart';
import '../providers/home_favorites_snapshot.dart';
import '../providers/home_taste_provider.dart';
import '../providers/multi_server_provider.dart';
import '../providers/studios_provider.dart';
import '../providers/trending_spotlight_provider.dart';
import '../services/settings_service.dart';
import '../utils/provider_extensions.dart';
import '../utils/platform_detector.dart';
import '../utils/formatters.dart';
import 'luroka_mark.dart';
import 'optimized_media_image.dart';
import 'settings_builder.dart';
import 'mobile_home_carousel.dart';
import 'studio_card.dart';
import 'home_dashboard.dart';
import '../focus/locked_hub_controller.dart';

/// Non-interactive miniature of the current profile's already-loaded Home.
/// Draft overrides let onboarding preview choices without saving them.
class LiveHomePreview extends StatelessWidget {
  const LiveHomePreview({
    super.key,
    this.layout,
    this.showSpotlight,
    this.posterDetails,
    this.episodeThumbnails,
    this.previewKey,
  });

  final HomeLayout? layout;
  final bool? showSpotlight;
  final bool? posterDetails;
  final bool? episodeThumbnails;
  final Key? previewKey;

  @override
  Widget build(BuildContext context) {
    final discover = context.watch<DiscoverProvider?>();
    final savedLayout = context.watch<HomeLayoutProvider?>()?.layout;
    final favorites = context.watch<HomeFavoritesSnapshot?>()?.items ?? const <MediaItem>[];
    final taste = context.watch<HomeTasteProvider?>()?.signals ?? const [];
    final studios = context.watch<StudiosProvider?>()?.groups ?? const <StudioGroup>[];
    final trending = context.watch<TrendingSpotlightProvider?>()?.items ?? const <MediaItem>[];
    final hasLiveTv = context.watch<MultiServerProvider?>()?.hasLiveTv ?? false;
    final phone = PlatformDetector.isMobile(context) && MediaQuery.sizeOf(context).shortestSide < 600;
    final home = layout ?? savedLayout ?? HomeLayout();
    final groups = home.arrangeStudios(studios, (group) => group.key);
    final rows = home.arrange(
      buildHomeRows(
        hubs: discover?.hubs ?? const [],
        onDeck: discover?.onDeck ?? const [],
        pins: home.pins,
        studios: groups.map((group) => group.homeItem).toList(),
        continueWatchingTitle: t.discover.continueWatching,
        nextUpTitle: t.discover.nextUp,
        pinnedTitle: t.homeLayout.pinnedCollections,
        studiosTitle: t.studios.title,
        splitContinueWatching: home.splitContinueWatching,
      ),
    );
    // Empty libraries still need a neutral illustration of the selected layout.
    final placeholderRows = home.arrange(
      buildHomeRows(
        hubs: const [],
        onDeck: const [],
        pins: const [],
        continueWatchingTitle: t.discover.continueWatching,
        nextUpTitle: t.discover.nextUp,
        pinnedTitle: t.homeLayout.pinnedCollections,
        splitContinueWatching: home.splitContinueWatching,
        includeEmpty: true,
      ).where((row) => row.id == homeContinueWatchingId || row.id == homeNextUpId).toList(),
    );
    final visibleRows = rows.isEmpty ? placeholderRows : rows;
    // Keep the studio shelf visible in the miniature even on a long Home page.
    final displayRows = visibleRows.take(phone ? 3 : 4).toList();
    final studioRow = visibleRows.where((row) => row.id == homeStudiosId).firstOrNull;
    if (studioRow != null && !displayRows.contains(studioRow)) {
      displayRows[displayRows.length - 1] = studioRow;
    }
    final progress = rows
        .where((row) => row.id == homeContinueWatchingId || row.id == homeNextUpId)
        .expand((row) => row.items)
        .toList();
    final selected = selectPersonalSpotlight(
      source: home.spotlightSource,
      visibleRows: rows,
      onDeck: progress,
      trending: trending
          .where((item) => rows.any((row) => row.items.any((entry) => entry.globalKey == item.globalKey)))
          .toList(),
      favoritesSnapshot: favorites,
      viewingSignals: taste,
      onlineServerIds: context.watch<MultiServerProvider?>()?.onlineServerIds.toSet(),
      continueTitle: t.discover.continueWatching,
      nextTitle: t.homeLayout.spotlightNextUp,
      favoritesTitle: t.homeLayout.spotlightFavorites,
      recentTitle: t.discover.recentlyAdded,
      trendingTitle: t.homeLayout.spotlightTrending,
      inspiredTitle: t.homeLayout.spotlightInspired,
    );
    final hero = home.spotlightSource == HomeSpotlightSource.trending ? trending.firstOrNull : selected.firstOrNull?.$1;

    return SettingsBuilder(
      prefs: const [
        SettingsService.showHeroSection,
        SettingsService.posterDetails,
        SettingsService.homeEpisodeThumbnails,
        SettingsService.homeHeroSize,
        SettingsService.homePosterSize,
        SettingsService.homeShelfItemCount,
        SettingsService.showExploreTab,
        SettingsService.showLiveTvTab,
      ],
      builder: (context) {
        final settings = SettingsService.instance;
        final colors = Theme.of(context).colorScheme;
        final showHero = showSpotlight ?? settings.read<bool>(SettingsService.showHeroSection);
        final details = posterDetails ?? settings.read<bool>(SettingsService.posterDetails);
        final wide = episodeThumbnails ?? settings.read<bool>(SettingsService.homeEpisodeThumbnails);
        if (PlatformDetector.isTV()) {
          return LayoutBuilder(
            builder: (context, bounds) {
              final width = bounds.maxWidth;
              final size = Size(width, width * 9 / 16);
              return DecoratedBox(
                key: previewKey,
                decoration: BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
                child: SizedBox.fromSize(
                  size: size,
                  child: MediaQuery(
                    data: MediaQuery.of(context).copyWith(size: size),
                    child: ExcludeFocus(
                      child: IgnorePointer(
                        child: HomeDashboard(
                          rows: rows,
                          onDeck: discover?.onDeck ?? const [],
                          toolbar: const SizedBox.shrink(),
                          showToolbar: false,
                          focusMemory: HubFocusMemory(),
                          resolveClient: (item) => item.serverId == null
                              ? null
                              : context.tryGetMediaClientForServer(ServerId(item.serverId!)),
                          onPlay: (_) {},
                          onDetails: (_) {},
                          onResume: (_) {},
                          onSidebar: () {},
                          onToolbar: () {},
                          onRefresh: (_) {},
                          onRemoveFromContinueWatching: () {},
                          loadMoreItems: (_) => null,
                          active: false,
                          previewEpisodeThumbnails: wide,
                          previewPosterDetails: details,
                          showFeature: showHero,
                          spotlightSource: home.spotlightSource,
                          trendingItems: trending,
                          favoriteSnapshot: favorites,
                          viewingSignals: taste,
                          onlineServerIds: context.watch<MultiServerProvider?>()?.onlineServerIds.toSet(),
                          previewScrollController: PrimaryScrollController.maybeOf(context),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        }
        final heroHeight = switch (settings.read(SettingsService.homeHeroSize)) {
          HomeHeroSize.compact => 46.0,
          HomeHeroSize.small => 64.0,
          HomeHeroSize.medium => 82.0,
          HomeHeroSize.large => 100.0,
        };
        return ExcludeFocus(
          child: IgnorePointer(
            child: DecoratedBox(
              key: previewKey,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                border: Border.all(color: colors.outlineVariant),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const LurokaMark(size: 16),
                          const SizedBox(width: 6),
                          Text(
                            'LUROKA',
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: colors.onSurface),
                          ),
                          const Spacer(),
                          if (hasLiveTv && settings.read(SettingsService.showLiveTvTab)) ...[
                            Text(t.navigation.liveTv, style: TextStyle(fontSize: 8, color: colors.onSurfaceVariant)),
                            const SizedBox(width: 6),
                          ],
                          if (settings.read(SettingsService.showExploreTab))
                            Icon(Icons.explore_outlined, size: 14, color: colors.onSurfaceVariant),
                          const SizedBox(width: 6),
                          Icon(Icons.search, size: 15, color: colors.onSurface),
                        ],
                      ),
                      if (showHero) ...[
                        const SizedBox(height: 8),
                        PlatformDetector.isMobile(context)
                            ? _phoneHero(context, hero, home.spotlightSource, selected.firstOrNull?.$2.title)
                            : _hero(context, hero, heroHeight, home.spotlightSource),
                      ],
                      for (final row in displayRows) ...[
                        const SizedBox(height: 8),
                        Text(
                          row.title,
                          key: ValueKey('live-home-row-${row.id}'),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: colors.onSurface, fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        if (row.id == homeStudiosId) _studios(context, groups) else _cards(context, row, details, wide),
                      ],
                      const SizedBox(height: 6),
                      Text(
                        t.tvSettingsV2.previewShelfCount(count: settings.read(SettingsService.homeShelfItemCount)),
                        key: const ValueKey('home-preview-shelf-count'),
                        style: TextStyle(fontSize: 9, color: colors.onSurfaceVariant),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Mirrors the phone carousel's portrait poster and separate caption rather
  /// than cropping the artwork into the landscape TV Spotlight.
  Widget _phoneHero(BuildContext context, MediaItem? item, HomeSpotlightSource source, String? selectedLabel) {
    final colors = Theme.of(context).colorScheme;
    final label = switch (source) {
      HomeSpotlightSource.forYou => t.homeLayout.spotlightForYou,
      HomeSpotlightSource.trending => t.homeLayout.spotlightTrending,
      HomeSpotlightSource.continueWatching => t.homeLayout.spotlightContinue,
    };
    if (item != null) {
      return LayoutBuilder(
        builder: (context, bounds) => SizedBox(
          key: const ValueKey('live-home-spotlight'),
          height: MobileHomeCarousel.heightFor(
            context,
            bounds.maxWidth,
            availableHeight: MediaQuery.sizeOf(context).height - 100,
          ),
          child: MobileHomeCarousel(
            key: const ValueKey('live-home-phone-spotlight'),
            items: [item],
            label: selectedLabel ?? label,
            resolveClient: (entry) =>
                entry.serverId == null ? null : context.tryGetMediaClientForServer(ServerId(entry.serverId!)),
            onPlay: (_) {},
            onDetails: (_) {},
            active: false,
          ),
        ),
      );
    }
    final poster = item == null
        ? null
        : item.isEpisode
        ? item.grandparentThumbPath ?? item.parentThumbPath ?? item.thumbPath
        : item.thumbPath ?? item.artPath;
    return Column(
      key: const ValueKey('live-home-spotlight'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: colors.onSurface, fontSize: 9, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 4),
        Center(
          child: FractionallySizedBox(
            widthFactor: .62,
            child: Container(
              key: const ValueKey('live-home-phone-spotlight'),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(color: colors.surfaceContainerLow, borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      height: 108,
                      child: AspectRatio(
                        aspectRatio: 2 / 3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: item == null
                              ? ColoredBox(
                                  color: colors.surfaceContainerHighest,
                                  child: Center(
                                    child: Icon(Icons.movie_outlined, size: 20, color: colors.onSurfaceVariant),
                                  ),
                                )
                              : _image(context, item, poster, fit: BoxFit.contain),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    item?.displayTitle ?? t.tvSettingsV2.previewPlaceholder,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: colors.onSurface, fontSize: 9, fontWeight: FontWeight.w800),
                  ),
                  if (item?.year != null)
                    Text('${item!.year}', style: TextStyle(color: colors.onSurfaceVariant, fontSize: 8)),
                  const SizedBox(height: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    decoration: BoxDecoration(color: colors.primary, borderRadius: BorderRadius.circular(4)),
                    child: Text(
                      item?.hasActiveProgress == true ? t.common.resume : t.common.play,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: colors.onPrimary, fontSize: 8),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 12,
                height: 3,
                decoration: BoxDecoration(color: colors.onSurface, borderRadius: BorderRadius.circular(3)),
              ),
              const SizedBox(width: 3),
              Icon(Icons.circle, size: 3, color: colors.onSurfaceVariant),
              const SizedBox(width: 3),
              Icon(Icons.circle, size: 3, color: colors.onSurfaceVariant),
            ],
          ),
        ),
      ],
    );
  }

  Widget _hero(BuildContext context, MediaItem? item, double height, HomeSpotlightSource source) {
    final colors = Theme.of(context).colorScheme;
    final label = switch (source) {
      HomeSpotlightSource.forYou => t.homeLayout.spotlightForYou,
      HomeSpotlightSource.trending => t.homeLayout.spotlightTrending,
      HomeSpotlightSource.continueWatching => t.homeLayout.spotlightContinue,
    };
    return ClipRRect(
      key: const ValueKey('live-home-spotlight'),
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (item == null)
              ColoredBox(
                color: colors.surfaceContainerHigh,
                child: Center(
                  child: Text(
                    t.tvSettingsV2.previewPlaceholder,
                    style: TextStyle(fontSize: 9, color: colors.onSurfaceVariant),
                  ),
                ),
              )
            else ...[
              _image(
                context,
                item,
                item.isEpisode
                    ? item.grandparentArtPath ?? item.parentThumbPath ?? item.artPath ?? item.thumbPath
                    : item.artPath ?? item.thumbPath,
              ),
              const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black87, Colors.transparent],
                  ),
                ),
              ),
            ],
            Positioned(
              left: 7,
              bottom: 6,
              right: 7,
              child: Text(
                item?.displayTitle ?? label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: item == null ? colors.onSurface : Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _image(BuildContext context, MediaItem item, String? path, {BoxFit fit = BoxFit.cover}) => OptimizedMediaImage(
    client: item.serverId == null ? null : context.tryGetMediaClientForServer(ServerId(item.serverId!)),
    imagePath: path,
    width: 150,
    height: 100,
    fit: fit,
  );

  Widget _cards(BuildContext context, MediaHub row, bool details, bool episodeThumbnails) {
    final colors = Theme.of(context).colorScheme;
    final progress = row.id == homeContinueWatchingId || row.id == homeNextUpId;
    final landscape = progress && episodeThumbnails;
    final count = row.items.isEmpty ? 4 : row.items.length.clamp(0, 4);
    String? episodeLabel(MediaItem item) => progress && !landscape && item.isEpisode
        ? formatSeasonEpisodeLabel(item.parentIndex, item.index) ??
              (item.index != null
                  ? 'E${item.index}'
                  : item.parentIndex != null
                  ? 'S${item.parentIndex}'
                  : null)
        : null;
    final cards = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var i = 0; i < count; i++) ...[
          if (i > 0) const SizedBox(width: 5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: landscape ? 16 / 9 : 2 / 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: row.items.isEmpty
                        ? ColoredBox(color: colors.surfaceContainerHigh)
                        : Stack(
                            fit: StackFit.expand,
                            children: [
                              _image(
                                context,
                                row.items[i],
                                row.items[i].isEpisode && !landscape
                                    ? row.items[i].grandparentThumbPath ??
                                          row.items[i].parentThumbPath ??
                                          row.items[i].thumbPath
                                    : row.items[i].thumbPath,
                              ),
                              if (!details && episodeLabel(row.items[i]) != null)
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: ColoredBox(
                                    color: Colors.black87,
                                    child: Text(
                                      episodeLabel(row.items[i])!,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                  ),
                ),
                if (details) ...[
                  const SizedBox(height: 3),
                  Text(
                    row.items.isEmpty
                        ? t.profileSetupGuide.previewPoster
                        : (episodeLabel(row.items[i]) ??
                              (row.items[i].isEpisode && !landscape
                                  ? row.items[i].grandparentTitle ?? row.items[i].displayTitle
                                  : row.items[i].displayTitle)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 8, color: colors.onSurface),
                  ),
                  if (row.items.isNotEmpty && (row.items[i].year != null || row.items[i].rating != null))
                    Text(
                      [
                        if (row.items[i].year != null) '${row.items[i].year}',
                        if (row.items[i].rating != null) '★ ${row.items[i].rating!.toStringAsFixed(1)}',
                      ].join(' · '),
                      maxLines: 1,
                      style: TextStyle(fontSize: 7, color: colors.onSurfaceVariant),
                    ),
                ],
              ],
            ),
          ),
        ],
        for (var i = count; i < 4; i++) ...[const SizedBox(width: 5), const Expanded(child: SizedBox())],
      ],
    );
    if (!PlatformDetector.isMobile(context)) return cards;
    return LayoutBuilder(
      builder: (context, bounds) => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(width: bounds.maxWidth * 1.6, child: cards),
      ),
    );
  }

  Widget _studios(BuildContext context, List<StudioGroup> groups) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (final group in groups.take(4)) ...[
            StudioCard(
              key: ValueKey('live-home-studio-${group.key}'),
              item: group.homeItem,
              width: 160,
              height: 92,
              onTap: () {},
            ),
          ],
        ],
      ),
    );
  }
}
