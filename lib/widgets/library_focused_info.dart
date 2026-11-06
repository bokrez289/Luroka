import 'package:flutter/material.dart';
import '../media/media_item.dart';
import '../utils/formatters.dart';
import 'media_rating_badge.dart';

class LibraryFocusedInfo extends SliverPersistentHeaderDelegate {
  LibraryFocusedInfo(this.selection, this.fallback);
  final ValueNotifier<MediaItem?> selection;
  final MediaItem? fallback;
  @override
  double get minExtent => 58;
  @override
  double get maxExtent => 58;
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) => SizedBox.expand(
    child: ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: ValueListenableBuilder<MediaItem?>(
        valueListenable: selection,
        builder: (context, selected, _) {
          final item = selected ?? fallback;
          if (item == null) return const SizedBox.shrink();
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.displayTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Text(
                      [
                        if (item.year != null) '${item.year}',
                        if (item.durationMs != null) formatDurationTextual(item.durationMs!),
                      ].join(' · '),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(width: 12),
                    if (mediaRatingsFor(item).isNotEmpty)
                      Flexible(
                        child: InlineRatingBadges(
                          ratings: mediaRatingsFor(item),
                          textStyle: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
  @override
  bool shouldRebuild(covariant LibraryFocusedInfo oldDelegate) =>
      oldDelegate.fallback != fallback || oldDelegate.selection != selection;
}
