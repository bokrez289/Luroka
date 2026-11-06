import 'package:flutter/material.dart';
import '../media/media_item.dart';
import '../i18n/strings.g.dart';
import '../utils/formatters.dart';
import '../focus/card_focus_scope.dart';

String showScheduleDate(String date) {
  final parsed = DateTime.tryParse(date)?.toLocal();
  if (parsed == null) return '';
  final now = DateTime.now();
  final day = DateUtils.dateOnly(parsed);
  final formatted = formatAbbreviatedDate(date);
  if (day == DateUtils.dateOnly(now)) return '${t.showSchedule.today} · $formatted';
  if (day == DateTime(now.year, now.month, now.day + 1)) return '${t.showSchedule.tomorrow} · $formatted';
  return formatted;
}

/// Informational schedule entries never own a server-backed context menu.
class ShowScheduleCard extends StatelessWidget {
  const ShowScheduleCard({
    super.key,
    required this.item,
    required this.width,
    required this.height,
    required this.scale,
  });
  final MediaItem item;
  final double width, height, scale;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final upcoming = item.raw?['scheduleFuture'] == true;
    return Container(
      width: width,
      height: height,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: colors.surfaceContainer,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: CardFocusScope.maybeOf(context) == true ? colors.primary : Colors.transparent,
          width: 3,
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (item.thumbPath != null)
            Image.network(
              item.thumbPath!,
              fit: BoxFit.cover,
              cacheWidth: 640,
              errorBuilder: (_, _, _) => const SizedBox.shrink(),
            ),
          const DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0x44000000), Color(0xf5111720)],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12 * scale),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  upcoming ? t.showSchedule.upcoming : t.showSchedule.latestEpisode,
                  style: TextStyle(color: colors.primary, fontSize: 12 * scale, fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                Text(
                  '${formatSeasonEpisodeLabel(item.parentIndex, item.index) ?? ''} · ${item.title ?? ''}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white, fontSize: 15 * scale, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5 * scale),
                Text(
                  showScheduleDate(item.originallyAvailableAt ?? ''),
                  style: TextStyle(color: Colors.white, fontSize: 12 * scale),
                ),
                SizedBox(height: 4 * scale),
                Text(
                  item.raw?['scheduleAvailable'] == true
                      ? t.showSchedule.inLibrary
                      : upcoming
                      ? t.showSchedule.notYetAired
                      : t.showSchedule.notInLibrary,
                  style: TextStyle(color: Colors.white70, fontSize: 11 * scale),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
