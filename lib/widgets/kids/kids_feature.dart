import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../focus/focusable_button.dart';
import '../../i18n/strings.g.dart';
import '../../media/media_item.dart';
import '../../media/media_item_types.dart';
import '../../media/media_server_client.dart';
import '../../theme/kids_style.dart';
import '../../utils/content_utils.dart';
import '../../utils/media_image_helper.dart';
import '../optimized_media_image.dart';

/// A stable, artwork-led feature with two clear actions. No auto-rotation.
class KidsFeature extends StatelessWidget {
  const KidsFeature({
    super.key,
    required this.item,
    required this.style,
    required this.onPlay,
    required this.onDetails,
    required this.playFocus,
    required this.detailsFocus,
    this.client,
    this.onDown,
    this.onUp,
    this.onSidebar,
  });
  final MediaItem item;
  final KidsStyle style;
  final MediaServerClient? client;
  final VoidCallback onPlay;
  final VoidCallback onDetails;
  final FocusNode playFocus;
  final FocusNode detailsFocus;
  final VoidCallback? onDown;
  final VoidCallback? onUp;
  final VoidCallback? onSidebar;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      final compact = constraints.maxWidth < 700;
      final colors = Theme.of(context).colorScheme;
      final artwork = ExcludeSemantics(
        child: OptimizedMediaImage(
          client: client,
          imagePath: item.artPath ?? item.thumbPath,
          imageType: item.artPath == null ? ImageType.poster : ImageType.art,
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          fadeInDuration: KidsStyle.motion(context),
          placeholder: (_, _) => ColoredBox(color: style.surface),
          errorWidget: (_, _, _) => ColoredBox(
            color: style.surface,
            child: Icon(Icons.auto_awesome_rounded, size: 64, color: style.teal.withValues(alpha: 0.3)),
          ),
        ),
      );
      Widget details() => Padding(
        padding: EdgeInsets.all(compact ? 22 : 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(style.isOlder ? Icons.bolt_rounded : Icons.auto_awesome_rounded, color: style.accent, size: 20),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    style.isOlder ? t.kids.featuredOlder : t.kids.featured,
                    style: TextStyle(color: style.accent, fontWeight: FontWeight.w700, letterSpacing: 0.6),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              item.isEpisode ? item.grandparentTitle ?? item.displayTitle : item.displayTitle,
              maxLines: compact ? 3 : 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontSize: compact ? 28 : 42,
                fontWeight: FontWeight.w800,
                height: 1.12,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 6,
              children: [
                if (item.contentRating?.isNotEmpty == true)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 3),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      formatContentRating(item.contentRating!),
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                if (item.year != null) Text('${item.year}', style: const TextStyle(color: Color(0xffe0e5f5))),
                if (item.genres?.isNotEmpty == true)
                  Text(item.genres!.take(2).join(' · '), style: const TextStyle(color: Color(0xffe0e5f5))),
              ],
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                FocusableButton(
                  focusNode: playFocus,
                  focusColor: Colors.white,
                  onPressed: onPlay,
                  onNavigateRight: detailsFocus.requestFocus,
                  onNavigateDown: onDown,
                  onNavigateUp: onUp,
                  onNavigateLeft: onSidebar,
                  useBackgroundFocus: false,
                  child: FilledButton.icon(
                    style: FilledButton.styleFrom(
                      backgroundColor: style.accent,
                      foregroundColor: style.background,
                      minimumSize: const Size(128, 54),
                      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
                    ),
                    onPressed: onPlay,
                    icon: const Icon(Icons.play_arrow_rounded),
                    label: Text(t.common.play, style: const TextStyle(fontWeight: FontWeight.w800)),
                  ),
                ),
                FocusableButton(
                  focusNode: detailsFocus,
                  onPressed: onDetails,
                  onNavigateLeft: playFocus.requestFocus,
                  onNavigateDown: onDown,
                  onNavigateUp: onUp,
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: style.surface.withValues(alpha: 0.85),
                      side: BorderSide(color: colors.onSurface.withValues(alpha: 0.5)),
                      minimumSize: const Size(128, 54),
                      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
                    ),
                    onPressed: onDetails,
                    icon: const Icon(Icons.info_outline_rounded),
                    label: Text(t.kids.moreInfo),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
      return Semantics(
        container: true,
        child: Container(
          key: const ValueKey('kids-cinematic-feature'),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(style.radius),
            border: Border.all(color: style.violet.withValues(alpha: 0.3)),
          ),
          clipBehavior: Clip.antiAlias,
          child: compact
              ? ColoredBox(
                  color: style.surface,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AspectRatio(aspectRatio: 16 / 9, child: artwork),
                      details(),
                    ],
                  ),
                )
              : SizedBox(
                  height:
                      math.max(350, MediaQuery.sizeOf(context).height * 0.56) +
                      math.max(0, MediaQuery.textScalerOf(context).scale(16) / 16 - 1) * 160,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      artwork,
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: AlignmentDirectional.centerStart,
                            end: AlignmentDirectional.centerEnd,
                            colors: [
                              style.background,
                              style.background.withValues(alpha: 0.88),
                              style.background.withValues(alpha: 0.12),
                            ],
                            stops: const [0, 0.35, 1],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: SizedBox(width: constraints.maxWidth * 0.65, child: details()),
                      ),
                    ],
                  ),
                ),
        ),
      );
    },
  );
}
