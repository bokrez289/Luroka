import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../media/media_item.dart';
import '../../media/media_kind.dart';
import '../../media/media_server_client.dart';
import '../../theme/kids_style.dart';
import '../../utils/content_utils.dart';
import '../../utils/media_image_helper.dart';
import '../optimized_media_image.dart';

/// A display surface, not a focus stop: OK still acts on the selected poster.
class KidsShelfSpotlight extends StatelessWidget {
  const KidsShelfSpotlight({
    super.key,
    required this.item,
    required this.client,
    required this.spoiler,
    required this.resume,
    required this.inset,
    required this.quiet,
  });

  final MediaItem item;
  final MediaServerClient? client;
  final bool spoiler, resume, quiet;
  final double inset;
  static const ink = Color(0xff071529);
  static const artFraction = .75;
  static String? backdrop(MediaItem item, bool spoiler) =>
      spoiler ? item.grandparentArtPath : item.artPath ?? item.grandparentArtPath;

  @override
  Widget build(BuildContext context) {
    final accent = quiet ? const Color(0xff89ecd3) : const Color(0xffffdc55);
    final path = backdrop(item, spoiler);
    final title = item.grandparentTitle ?? item.displayTitle;
    final summary = spoiler ? '' : item.summary?.trim() ?? '';
    final description = summary.split(RegExp(r'(?<=[.!?。！？])\s+')).first;
    final duration = KidsStyle.motion(context);
    final metadata = [
      if (item.kind == MediaKind.episode && item.parentIndex != null) t.common.seasonNumber(number: item.parentIndex!),
      if (item.kind == MediaKind.episode && item.index != null) t.showSchedule.episode(number: item.index!),
      if (item.contentRating?.isNotEmpty == true) formatContentRating(item.contentRating!),
      if (item.year != null) '${item.year}',
    ];
    Widget fallback() => quiet
        ? const ColoredBox(color: Color(0xff1c3143))
        : Image.asset('assets/branding/kids-world-tv.webp', fit: BoxFit.cover, alignment: Alignment.centerRight);
    return LayoutBuilder(
      builder: (context, bounds) {
        final textWidth = bounds.maxWidth * .52;
        return ColoredBox(
          color: ink,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                left: bounds.maxWidth * (1 - artFraction),
                child: path == null
                    ? fallback()
                    : OptimizedMediaImage(
                        client: client,
                        imagePath: path,
                        imageType: ImageType.featureArt,
                        alignment: const Alignment(0, -.32),
                        fadeInDuration: duration,
                        fit: BoxFit.cover,
                        placeholder: (_, _) => fallback(),
                        errorWidget: (_, _, _) => fallback(),
                      ),
              ),
              const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [ink, ink, Color(0xe3071529), Color(0x36071529), Color(0x00071529)],
                    stops: [0, .25, .39, .65, 1],
                  ),
                ),
              ),
              const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0x00071529), Color(0x00071529), ink],
                    stops: [0, .67, 1],
                  ),
                ),
              ),
              Positioned(
                left: inset,
                top: 10,
                bottom: 10,
                width: textWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 1,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: accent.withValues(alpha: .14),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  resume ? Icons.play_arrow_rounded : Icons.auto_awesome_rounded,
                                  size: 15,
                                  color: accent,
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  resume
                                      ? t.kidsHome.keepWatching
                                      : item.kind == MediaKind.movie
                                      ? t.kids.movies
                                      : t.kids.shows,
                                  style: TextStyle(color: accent, fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Flexible(
                      flex: 3,
                      child: ClearLogoImage(
                        client: client,
                        logoPath: item.clearLogoPath,
                        width: math.min(textWidth, 260),
                        height: (bounds.maxHeight * .30).clamp(38, 95),
                        fallbackWidth: textWidth,
                        fadeInDuration: duration,
                        fallbackBuilder: (_) => Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: (bounds.maxWidth * .034).clamp(24, 47),
                              height: 1.05,
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (metadata.isNotEmpty)
                      Flexible(
                        child: Text(
                          metadata.join('  ·  '),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Color(0xffcee1eb), fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                      ),
                    if (description.isNotEmpty) ...[
                      const SizedBox(height: 5),
                      Flexible(
                        flex: 2,
                        child: Text(
                          description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Color(0xffeff4fa), fontSize: 16, height: 1.25),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
