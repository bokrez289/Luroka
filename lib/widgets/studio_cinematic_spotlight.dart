import 'package:flutter/material.dart';

import '../focus/focusable_button.dart';
import '../i18n/strings.g.dart';
import '../media/media_item.dart';
import '../media/media_kind.dart';
import '../media/media_server_client.dart';
import '../utils/formatters.dart';
import '../utils/media_image_helper.dart';
import 'cycling_media_backdrop.dart';
import 'optimized_media_image.dart';
import 'media_rating_badge.dart';

/// The same title treatment in the studio landing page and the full catalog.
/// Its artwork stays mounted as the browsing header contracts.
class StudioCinematicSpotlight extends StatelessWidget {
  const StudioCinematicSpotlight({
    super.key,
    required this.item,
    required this.artwork,
    required this.client,
    required this.tint,
    required this.overviewFocus,
    required this.onOverview,
    required this.onNavigateUp,
    required this.onNavigateDown,
    this.collapsed = false,
  });

  final MediaItem item;
  final MediaItem artwork;
  final MediaServerClient? client;
  final Color tint;
  final FocusNode overviewFocus;
  final VoidCallback onOverview;
  final VoidCallback onNavigateUp;
  final VoidCallback onNavigateDown;
  final bool collapsed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final metadata = [
      if (item.year != null) '${item.year}',
      if (item.kind == MediaKind.movie) t.discover.movie,
      if (item.kind == MediaKind.show) t.discover.tvShow,
      if (item.contentRating?.isNotEmpty == true) item.contentRating!,
      if ((item.durationMs ?? 0) > 0) formatDurationTextual(item.durationMs!),
    ].join('  ·  ');
    final ratings = mediaRatingsFor(item).toList()
      ..sort((a, b) {
        if (a.source == 'imdb' && b.source != 'imdb') return -1;
        if (b.source == 'imdb' && a.source != 'imdb') return 1;
        return 0;
      });
    return LayoutBuilder(
      builder: (context, bounds) {
        final short = collapsed || bounds.maxHeight < 130;
        final narrow = bounds.maxWidth < 600;
        final title = Text(
          item.displayTitle,
          key: const ValueKey('studio_spotlight_title'),
          maxLines: short || narrow ? 1 : 2,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.headlineMedium?.copyWith(
            fontSize: short || narrow ? 23 : 32,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.8,
            height: 1.08,
          ),
        );
        final logoFallback = Text(
          item.displayTitle,
          key: const ValueKey('studio_spotlight_title'),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700, height: 1.05),
        );
        return ClipRect(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                width: bounds.maxWidth * 0.76,
                child: ExcludeSemantics(
                  child: IgnorePointer(
                    child: CyclingMediaBackdrop(
                      mediaKey: artwork.globalKey,
                      imagePaths: artwork.heroArtCandidates(containerAspectRatio: 16 / 9),
                      fallbackImagePaths: [?artwork.artPath],
                      client: client,
                      width: bounds.maxWidth * 0.76,
                      height: bounds.maxHeight,
                      fallbackColor: colors.surface,
                      alignment: Alignment.centerRight,
                      active: false,
                      imageType: ImageType.featureArt,
                    ),
                  ),
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: const [0, 0.30, 0.66, 1],
                    colors: [
                      colors.surface,
                      colors.surface.withValues(alpha: 0.95),
                      colors.surface.withValues(alpha: 0.25),
                      colors.surface.withValues(alpha: 0.08),
                    ],
                  ),
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0, 0.45, 1],
                    colors: [colors.surface.withValues(alpha: 0.15), Colors.transparent, colors.surface],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(28, 8, 28, short ? 8 : 40),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: bounds.maxWidth * (short ? 0.68 : 0.57),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (!short) ...[Container(width: 24, height: 3, color: tint), const SizedBox(height: 12)],
                        Flexible(
                          child: !short && item.clearLogoPath != null
                              ? SizedBox(
                                  height: 48,
                                  width: 270,
                                  child: OptimizedMediaImage(
                                    client: client,
                                    imagePath: item.clearLogoPath,
                                    imageType: ImageType.logo,
                                    logoToneTarget: colors.onSurface,
                                    logoToneRemapMixed: false,
                                    fit: BoxFit.contain,
                                    alignment: Alignment.centerLeft,
                                    placeholder: (_, _) => Align(alignment: Alignment.centerLeft, child: logoFallback),
                                    errorWidget: (_, _, _) =>
                                        Align(alignment: Alignment.centerLeft, child: logoFallback),
                                  ),
                                )
                              : title,
                        ),
                        if (metadata.isNotEmpty || ratings.isNotEmpty) ...[
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              if (ratings.isNotEmpty) ...[
                                InlineRatingBadges(
                                  key: const ValueKey('studio_preview_ratings'),
                                  ratings: ratings.take(2).toList(),
                                  textStyle: theme.textTheme.labelMedium,
                                  iconSize: 15,
                                ),
                                if (metadata.isNotEmpty) const SizedBox(width: 16),
                              ],
                              if (metadata.isNotEmpty)
                                Expanded(
                                  child: Text(
                                    metadata,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.labelMedium?.copyWith(
                                      color: colors.onSurface.withValues(alpha: 0.76),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                        if (!short && bounds.maxHeight >= 175) ...[
                          const SizedBox(height: 10),
                          Text(
                            item.summary?.trim().isNotEmpty == true ? item.summary! : t.dashboard.synopsisUnavailable,
                            key: const ValueKey('studio_visible_synopsis'),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              height: 1.4,
                              color: colors.onSurface.withValues(alpha: 0.8),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: short ? null : 28,
                right: short ? 28 : null,
                bottom: short ? 18 : 0,
                child: FocusableButton(
                  focusNode: overviewFocus,
                  autoScroll: false,
                  onPressed: onOverview,
                  onNavigateUp: onNavigateUp,
                  onNavigateDown: onNavigateDown,
                  onNavigateRight: onNavigateDown,
                  child: TextButton(
                    key: const ValueKey('studio_overview_button'),
                    onPressed: onOverview,
                    style: TextButton.styleFrom(
                      foregroundColor: colors.onSurface,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                    ),
                    child: Text('${t.fileInfo.overview}  ›'),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
