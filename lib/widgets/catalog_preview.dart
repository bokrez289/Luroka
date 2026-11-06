import 'package:flutter/material.dart';

import '../i18n/strings.g.dart';
import '../media/media_item.dart';
import '../media/media_item_types.dart';
import '../utils/content_utils.dart';
import '../utils/formatters.dart';
import '../media/media_server_client.dart';
import '../utils/media_image_helper.dart';
import 'cycling_media_backdrop.dart';
import 'media_rating_badge.dart';

/// A readable catalog preview: artwork has its own frame, text a solid surface.
/// Never scales the entire information block down to squeeze in more content.
class CatalogPreview extends StatelessWidget {
  const CatalogPreview({
    super.key,
    required this.item,
    required this.artwork,
    this.client,
    this.action,
    this.hideSpoilers = false,
    this.titleKey,
    this.summaryKey,
  });
  final MediaItem item, artwork;
  final MediaServerClient? client;
  final Widget? action;
  final bool hideSpoilers;
  final Key? titleKey, summaryKey;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hidden = hideSpoilers && item.shouldHideSpoiler;
    final title = item.isEpisode
        ? item.grandparentTitle ?? (hidden ? t.dashboard.episodeFallback : item.displayTitle)
        : item.displayTitle;
    final paths = hideSpoilers && artwork.isEpisode && artwork.shouldHideSpoiler
        ? <String>[...?artwork.grandparentBackdropPaths, ?artwork.grandparentArtPath]
        : artwork.heroArtCandidates(containerAspectRatio: 16 / 9);
    return LayoutBuilder(
      builder: (context, bounds) {
        final scale = (bounds.maxWidth / 1200).clamp(0.85, 1.6);
        final compact = bounds.maxHeight < 200 * scale;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 28 * scale, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: bounds.maxWidth * 0.30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: CyclingMediaBackdrop(
                    mediaKey: artwork.globalKey,
                    imagePaths: paths,
                    client: client,
                    width: bounds.maxWidth * 0.30,
                    height: bounds.maxHeight - 24,
                    fallbackColor: theme.colorScheme.surfaceContainerHighest,
                    imageType: ImageType.featureArt,
                    active: false,
                  ),
                ),
              ),
              SizedBox(width: 28 * scale),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      key: titleKey,
                      maxLines: compact ? 1 : 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineMedium?.copyWith(
                        fontSize: ((compact ? 24 : 30) * scale).clamp(24.0, 48.0),
                        height: 1.1,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.6,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      [
                        if (item.year != null) '${item.year}',
                        if (item.durationMs != null) formatDurationTextual(item.durationMs!),
                        if (item.contentRating?.isNotEmpty == true) formatContentRating(item.contentRating!),
                        if (item.genres?.isNotEmpty == true) item.genres!.take(2).join(' · '),
                      ].join('   ·   '),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontSize: (13 * scale).clamp(13.0, 21.0),
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 10),
                    if (mediaRatingsFor(item).isNotEmpty) ...[
                      InlineRatingBadges(ratings: mediaRatingsFor(item), textStyle: theme.textTheme.bodyMedium),
                      const SizedBox(height: 8),
                    ],
                    Flexible(
                      child: Text(
                        hidden
                            ? t.dashboard.spoilerHidden
                            : item.summary?.trim().isNotEmpty == true
                            ? item.summary!
                            : t.dashboard.synopsisUnavailable,
                        key: summaryKey,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          fontSize: (16 * scale).clamp(16.0, 26.0),
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (action != null) ...[
                const SizedBox(width: 16),
                Align(alignment: Alignment.bottomRight, child: action!),
              ],
            ],
          ),
        );
      },
    );
  }
}
