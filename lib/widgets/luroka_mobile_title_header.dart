import 'package:flutter/material.dart';

import '../media/media_item.dart';
import '../media/media_item_types.dart';
import '../media/media_rating.dart';
import '../media/media_server_client.dart';
import '../utils/content_utils.dart';
import '../utils/formatters.dart';
import '../utils/media_image_helper.dart';
import 'media_rating_badge.dart';
import 'optimized_media_image.dart';

/// Full-bleed handheld feature, followed by the title's real playback actions.
class LurokaMobileTitleHeader extends StatelessWidget {
  const LurokaMobileTitleHeader({
    super.key,
    required this.item,
    required this.client,
    required this.actions,
    required this.ratings,
    this.offlinePoster,
    this.offlineBackdrop,
    this.hideSpoilers = false,
  });
  final MediaItem item;
  final MediaServerClient? client;
  final Widget actions;
  final List<MediaRatingSource> ratings;
  final Widget? offlinePoster, offlineBackdrop;
  final bool hideSpoilers;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final hidden = hideSpoilers && item.isEpisode && item.shouldHideSpoiler;
    final title = item.isEpisode ? item.grandparentTitle ?? item.displayTitle : item.displayTitle;
    final art = hidden ? item.grandparentArtPath : (item.isEpisode ? item.thumbPath ?? item.artPath : item.artPath);
    final poster = hidden ? item.grandparentThumbPath : item.thumbPath;
    final metadata = [
      if (item.year != null) '${item.year}',
      if (!item.isShow && (item.durationMs ?? 0) > 0) formatDurationTextual(item.durationMs!),
      if (item.contentRating?.isNotEmpty == true) formatContentRating(item.contentRating!),
      if (item.genres?.isNotEmpty == true) item.genres!.first,
    ];
    final size = MediaQuery.sizeOf(context);
    final factor = (MediaQuery.textScalerOf(context).scale(16) / 16).clamp(1.0, 2.0);
    final height = (size.width * 0.9).clamp(260.0, 430.0) + (factor - 1) * 110;
    return Column(
      key: const ValueKey('luroka_mobile_title_header'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: height,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ExcludeSemantics(
                child:
                    (hidden
                        ? null
                        : item.isEpisode
                        ? offlinePoster
                        : offlineBackdrop) ??
                    (!hidden && art == null ? offlinePoster : null) ??
                    OptimizedMediaImage(
                      client: client,
                      imagePath: art ?? poster,
                      imageType: item.isEpisode && !hidden && item.thumbPath != null
                          ? ImageType.thumb
                          : art == null
                          ? ImageType.poster
                          : ImageType.art,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                      placeholder: (_, _) => ColoredBox(color: colors.surface),
                    ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0x55000000),
                      const Color(0x08000000),
                      const Color(0x99000000),
                      theme.scaffoldBackgroundColor,
                    ],
                    stops: const [0, 0.3, 0.64, 1],
                  ),
                ),
              ),
              Positioned(
                left: 22,
                right: 22,
                bottom: 18,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (item.clearLogoPath != null && !item.isEpisode)
                      ClearLogoImage(
                        client: client,
                        logoPath: item.clearLogoPath,
                        width: 270,
                        height: 82,
                        fallbackWidth: size.width - 44,
                        alignment: Alignment.centerLeft,
                        fallbackBuilder: (_) => Text(
                          title,
                          style: const TextStyle(color: Colors.white, fontSize: 34, fontWeight: FontWeight.w800),
                        ),
                      )
                    else
                      Text(
                        title,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -1,
                          height: 1.06,
                          shadows: [Shadow(color: Colors.black54, blurRadius: 10)],
                        ),
                      ),
                    if (item.isEpisode && !hidden) ...[
                      const SizedBox(height: 6),
                      Text(
                        [
                          ?formatSeasonEpisodeLabel(item.parentIndex, item.index),
                          item.displayTitle,
                        ].where((part) => part.isNotEmpty).join(' · '),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ],
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 12,
                      runSpacing: 8,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        if (metadata.isNotEmpty)
                          Text(
                            metadata.join('  ·  '),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.white70, fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                        if (ratings.isNotEmpty)
                          InlineRatingBadges(
                            ratings: ratings,
                            textStyle: const TextStyle(color: Colors.white, fontSize: 12),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(padding: const EdgeInsets.fromLTRB(20, 16, 20, 20), child: actions),
      ],
    );
  }
}
