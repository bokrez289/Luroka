import 'package:flutter/material.dart';
import '../media/media_item.dart';
import '../media/media_kind.dart';
import '../i18n/strings.g.dart';
import '../utils/formatters.dart';

typedef PersonTitleSelection = ({MediaItem item, int copies});

class PersonFilmographyInfo extends SliverPersistentHeaderDelegate {
  PersonFilmographyInfo({
    required this.selection,
    required this.fallback,
    required this.count,
    required this.inset,
    required this.extent,
  });
  final ValueNotifier<PersonTitleSelection?> selection;
  final PersonTitleSelection? fallback;
  final int count;
  final double inset, extent;
  @override
  double get minExtent => extent;
  @override
  double get maxExtent => extent;
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) => ColoredBox(
    color: Theme.of(context).scaffoldBackgroundColor,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: inset, vertical: 6),
      child: ValueListenableBuilder<PersonTitleSelection?>(
        valueListenable: selection,
        builder: (context, focused, _) {
          final selected = focused ?? fallback;
          final item = selected?.item;
          final theme = Theme.of(context);
          final metadata = item == null
              ? ''
              : [
                  if (item.year != null) '${item.year}',
                  item.kind == MediaKind.show ? t.discover.tvShow : t.discover.movie,
                  if (item.isWatched) t.detailComposition.watched,
                  if (item.kind == MediaKind.show && (item.unwatchedCount ?? 0) > 0)
                    t.personSpotlight.unwatchedEpisodes(n: item.unwatchedCount!),
                  if (selected!.copies > 1) t.personSpotlight.copies(n: selected.copies),
                  if (item.mediaVersions != null && item.mediaVersions!.length > 1)
                    t.personSpotlight.versions(n: item.mediaVersions!.length),
                  if (item.durationMs != null && item.kind == MediaKind.movie) formatDurationTextual(item.durationMs!),
                ].join(' · ');
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                t.personSpotlight.libraryTitles(n: count),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.labelSmall?.copyWith(color: theme.colorScheme.onSurfaceVariant),
              ),
              if (item != null) ...[
                Text(
                  item.displayTitle,
                  key: const ValueKey('person_focused_title'),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
                ),
                Text(
                  metadata,
                  key: const ValueKey('person_focused_metadata'),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                ),
              ],
            ],
          );
        },
      ),
    ),
  );
  @override
  bool shouldRebuild(covariant PersonFilmographyInfo oldDelegate) =>
      oldDelegate.selection != selection ||
      oldDelegate.fallback != fallback ||
      oldDelegate.count != count ||
      oldDelegate.inset != inset ||
      oldDelegate.extent != extent;
}
