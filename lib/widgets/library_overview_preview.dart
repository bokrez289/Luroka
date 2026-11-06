import 'package:flutter/material.dart';
import '../media/media_item.dart';
import '../media/media_item_types.dart';
import '../media/media_server_client.dart';
import '../utils/formatters.dart';
import '../utils/media_image_helper.dart';
import '../i18n/strings.g.dart';
import 'cycling_media_backdrop.dart';
import 'media_rating_badge.dart';

/// A self-contained hero below the library navigation, never behind it.
class LibraryOverviewPreview extends StatelessWidget {
  const LibraryOverviewPreview({super.key, required this.item, this.client, required this.hideSpoilers});
  final MediaItem item;
  final MediaServerClient? client;
  final bool hideSpoilers;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final hidden = hideSpoilers && item.shouldHideSpoiler;
    final artwork = hidden && item.isEpisode
        ? <String>[?item.grandparentArtPath]
        : item.heroArtCandidates(containerAspectRatio: 16 / 9);
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: LayoutBuilder(
          builder: (context, bounds) => Stack(
            fit: StackFit.expand,
            children: [
              ColoredBox(color: colors.surfaceContainerLow),
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                width: bounds.maxWidth * .60,
                child: CyclingMediaBackdrop(
                  mediaKey: item.globalKey,
                  imagePaths: artwork,
                  client: client,
                  active: false,
                  width: bounds.maxWidth * .60,
                  height: bounds.maxHeight,
                  imageType: ImageType.featureArt,
                  fallbackColor: colors.surfaceContainerLow,
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      colors.surfaceContainerLow,
                      colors.surfaceContainerLow.withValues(alpha: .94),
                      colors.surfaceContainerLow.withValues(alpha: .15),
                    ],
                    stops: const [0, .43, 1],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: bounds.maxWidth * .58,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          item.isEpisode ? item.grandparentTitle ?? item.displayTitle : item.displayTitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700, letterSpacing: -.5),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          [
                            if (item.year != null) '${item.year}',
                            if (item.durationMs != null) formatDurationTextual(item.durationMs!),
                            if (item.isEpisode) ?formatSeasonEpisodeLabel(item.parentIndex, item.index),
                          ].join(' · '),
                          maxLines: 1,
                          style: TextStyle(fontSize: 12, color: colors.onSurfaceVariant),
                        ),
                        if (mediaRatingsFor(item).isNotEmpty) ...[
                          const SizedBox(height: 5),
                          InlineRatingBadges(ratings: mediaRatingsFor(item), textStyle: const TextStyle(fontSize: 12)),
                        ],
                        const SizedBox(height: 8),
                        Flexible(
                          child: Text(
                            hidden ? t.dashboard.spoilerHidden : item.summary ?? t.dashboard.synopsisUnavailable,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14, height: 1.4, color: colors.onSurface.withValues(alpha: .85)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
