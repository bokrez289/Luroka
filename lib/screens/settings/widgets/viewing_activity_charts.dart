import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../i18n/app_locale_utils.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../database/app_database.dart';
import '../../../i18n/strings.g.dart';
import '../../../media/media_server_client.dart';
import '../../../services/screen_time_analytics.dart';
import '../../../services/screen_time_service.dart';
import '../../../services/viewing_activity_summary.dart';
import '../../../focus/focusable_wrapper.dart';
import '../../../widgets/focusable_list_tile.dart';
import '../../../theme/mono_motion.dart';
import '../../../theme/mono_tokens.dart';
import '../../../utils/formatters.dart';
import '../../../utils/media_image_helper.dart';
import '../../../utils/platform_detector.dart';
import '../../../widgets/app_icon.dart';
import '../../../widgets/optimized_media_image.dart';

/// Statistics widgets for the viewing-activity screen. All geometry is
/// painted through [CustomPainter] with colors from `tokens(context)` — no
/// chart packages. Plot areas are fixed-height so 200% text scales live
/// outside the painters, and narrow layouts wrap one plot per row below
/// 600dp.

/// One drawable bar of the daily chart: a single day, or an equal-size
/// bucket of days for long ranges.
class StatsBarSegment {
  const StatsBarSegment({required this.label, required this.milliseconds, this.endKey, this.isToday = false});

  /// What a tap on this bar reports: a `YYYY-MM-DD` key for a day bar, or
  /// the bucket's first day key when [endKey] marks a span.
  final String label;

  /// Inclusive last day of a bucket, or null for a single-day bar.
  final String? endKey;
  final int milliseconds;
  final bool isToday;
}

/// Localized display label for a chart segment: one formatted date, or a
/// `Mar 2 – Mar 9` span for buckets.
String statsSegmentDisplayLabel(StatsBarSegment segment) {
  final endKey = segment.endKey;
  if (endKey == null || endKey == segment.label) return formatAbbreviatedDate(segment.label);
  return '${formatAbbreviatedDate(segment.label)} – ${formatAbbreviatedDate(endKey)}';
}

/// Merges a forward-filled daily series into at most [maxSegments]
/// equal-sized buckets (sums from the oldest end) so multi-month ranges stay
/// a readable bar chart. Short series pass through one segment per day.
List<StatsBarSegment> aggregateDailySeries(List<ScreenTimeDailyPoint> series, String todayKey, {int maxSegments = 48}) {
  if (series.isEmpty) return const [];
  if (series.length <= maxSegments) {
    return [
      for (final point in series)
        StatsBarSegment(label: point.localDate, milliseconds: point.durationMs, isToday: point.localDate == todayKey),
    ];
  }
  final bucketSize = (series.length + maxSegments - 1) ~/ maxSegments;
  final segments = <StatsBarSegment>[];
  for (var start = 0; start < series.length; start += bucketSize) {
    final bucketEnd = math.min(start + bucketSize, series.length);
    var total = 0;
    var hasToday = false;
    for (var i = start; i < bucketEnd; i++) {
      total += series[i].durationMs;
      if (series[i].localDate == todayKey) hasToday = true;
    }
    final firstKey = series[start].localDate;
    final lastKey = series[bucketEnd - 1].localDate;
    segments.add(
      StatsBarSegment(
        label: firstKey,
        endKey: firstKey == lastKey ? null : lastKey,
        milliseconds: total,
        isToday: hasToday,
      ),
    );
  }
  return segments;
}

/// Entrance fade for the statistics body. Plays once; on the
/// reduced-performance tier the motion duration collapses to zero so the
/// builder is effectively a no-op.
class StatsEntranceFade extends StatelessWidget {
  const StatsEntranceFade({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(end: 1),
      duration: MonoMotion.fill(context),
      builder: (context, opacity, child) => Opacity(opacity: opacity, child: child),
      child: child,
    );
  }
}

/// A side-by-side stat badge (icon, label, value) for [StatsBadgeRow].
typedef StatsBadge = ({IconData icon, String label, String value});

/// Two or three stat badges laid out horizontally, wrapping to one per row on
/// narrow layouts so every stat keeps a full line for large text.
class StatsBadgeRow extends StatelessWidget {
  const StatsBadgeRow({super.key, required this.badges});

  final List<StatsBadge> badges;

  @override
  Widget build(BuildContext context) {
    if (badges.isEmpty) return const SizedBox.shrink();
    return LayoutBuilder(
      builder: (context, bounds) {
        final slots = [for (final badge in badges) _StatsBadgeSlot(badge: badge)];
        if (bounds.maxWidth < 600) return Column(children: slots);
        return Row(children: [for (final slot in slots) Expanded(child: slot)]);
      },
    );
  }
}

class _StatsBadgeSlot extends StatelessWidget {
  const _StatsBadgeSlot({required this.badge});

  final StatsBadge badge;

  @override
  Widget build(BuildContext context) {
    final mono = tokens(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: Semantics(
        label: '${badge.label}: ${badge.value}',
        excludeSemantics: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                AppIcon(badge.icon, size: 18, color: mono.accent, fill: 1),
                const SizedBox(width: 6),
                Flexible(
                  child: Text(
                    badge.label,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(color: mono.textMuted),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(badge.value, style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}

/// Vertical bars, one per segment of the selected period. The bar covering
/// the current local day paints in the accent color, as does the selected
/// one; tapping selects the hit segment. Day bars tap-report their label via
/// [onSegmentTap]'s index into [segments].
class StatsDailyBarChart extends StatelessWidget {
  const StatsDailyBarChart({
    super.key,
    required this.segments,
    required this.selectedLabel,
    required this.onSegmentTap,
    this.baseColorAlpha = 0.30,
  });

  final List<StatsBarSegment> segments;

  /// The selected segment's label — a single date or a bucket span.
  final String? selectedLabel;
  final ValueChanged<int> onSegmentTap;

  /// Alpha of the subdued fill derived from the token foreground.
  final double baseColorAlpha;

  @override
  Widget build(BuildContext context) {
    final mono = tokens(context);
    if (segments.isEmpty) {
      return Text(
        t.activityStats.noDataInPeriod,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: mono.textMuted),
      );
    }
    final selectedIndex = selectedLabel == null ? -1 : segments.indexWhere((segment) => segment.label == selectedLabel);
    final selected = selectedIndex < 0 ? segments.length - 1 : selectedIndex;
    String description(int index) => t.activityStats.gapDetail(
      stat: formatViewingDuration(segments[index].milliseconds),
      range: statsSegmentDisplayLabel(segments[index]),
    );
    return Semantics(
      label: t.activityStats.trendTitle,
      value: description(selected),
      increasedValue: description((selected + 1).clamp(0, segments.length - 1)),
      decreasedValue: description((selected - 1).clamp(0, segments.length - 1)),
      slider: true,
      onDecrease: () => onSegmentTap((selected - 1).clamp(0, segments.length - 1)),
      onIncrease: () => onSegmentTap((selected + 1).clamp(0, segments.length - 1)),
      child: FocusableWrapper(
        disableScale: true,
        borderRadius: 8,
        onNavigateLeft: () => onSegmentTap((selected - 1).clamp(0, segments.length - 1)),
        onNavigateRight: () => onSegmentTap((selected + 1).clamp(0, segments.length - 1)),
        child: LayoutBuilder(
          builder: (context, bounds) {
            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTapUp: (details) {
                final index = (details.localPosition.dx * segments.length / bounds.maxWidth).floor().clamp(
                  0,
                  segments.length - 1,
                );
                onSegmentTap(index);
              },
              child: SizedBox(
                height: 128,
                child: CustomPaint(
                  size: Size.infinite,
                  painter: _DailyBarsPainter(
                    values: [for (final segment in segments) segment.milliseconds],
                    accentIndex: segments.indexWhere((segment) => segment.isToday),
                    selectedIndex: selectedIndex,
                    accent: mono.accent,
                    base: mono.text.withValues(alpha: baseColorAlpha),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _DailyBarsPainter extends CustomPainter {
  const _DailyBarsPainter({
    required this.values,
    required this.accentIndex,
    required this.selectedIndex,
    required this.accent,
    required this.base,
  });

  final List<int> values;
  final int accentIndex;
  final int selectedIndex;
  final Color accent;
  final Color base;

  @override
  void paint(Canvas canvas, Size size) {
    final peak = values.fold(0, (peakSoFar, value) => math.max<int>(peakSoFar, value));
    final inner = size.height - 2;
    final barWidth = size.width / values.length;
    final fillWidth = math.max(2.0, barWidth - 4);
    for (var i = 0; i < values.length; i++) {
      final value = values[i];
      if (value <= 0) continue;
      // Positive values keep a minimal stub so a low bar stays visible.
      final fillHeight = math.max(2.0, inner * value / peak);
      final radius = math.min(fillWidth / 2, 4.0);
      final paint = Paint()
        ..color = i == selectedIndex || i == accentIndex ? accent : base
        ..style = PaintingStyle.fill;
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(barWidth * i + (barWidth - fillWidth) / 2, inner - fillHeight, fillWidth, fillHeight),
          Radius.circular(radius),
        ),
        paint,
      );
    }
    canvas.drawLine(Offset(0, size.height - 1), Offset(size.width, size.height - 1), Paint()..color = base);
  }

  @override
  bool shouldRepaint(_DailyBarsPainter oldDelegate) {
    return oldDelegate.selectedIndex != selectedIndex ||
        oldDelegate.accentIndex != accentIndex ||
        oldDelegate.accent != accent ||
        oldDelegate.base != base ||
        !listEquals(oldDelegate.values, values);
  }
}

/// Watch time by weekday (Monday first). The peak day paints solid accent,
/// the rest stay subdued; letters localize through [DateFormat.E].
class StatsWeekdayBars extends StatelessWidget {
  const StatsWeekdayBars({super.key, required this.weekdayMs});

  /// Index 0 = Monday … 6 = Sunday, matching the analytics layer.
  final List<int> weekdayMs;

  @override
  Widget build(BuildContext context) {
    final mono = tokens(context);
    final theme = Theme.of(context);
    var peak = 0;
    for (var i = 1; i < 7; i++) {
      if (weekdayMs[i] > weekdayMs[peak]) peak = i;
    }
    final peakMs = weekdayMs[peak];
    const areaHeight = 56.0;
    const barRatio = 0.8;
    return Column(
      children: [
        Semantics(
          label: t.activityStats.weekdayTitle,
          child: SizedBox(
            height: areaHeight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                for (var i = 0; i < 7; i++)
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          color: i == peak && weekdayMs[i] > 0 ? mono.accent : mono.text.withValues(alpha: 0.30),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        height: weekdayMs[i] > 0 && peakMs > 0
                            ? math.max(2.0, areaHeight * barRatio * weekdayMs[i] / peakMs)
                            : 0.0,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            for (var i = 0; i < 7; i++)
              Expanded(
                child: Text(
                  _weekdayLetter(i),
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelSmall?.copyWith(color: mono.textMuted),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

String _weekdayLetter(int weekdayIndex) {
  // 2026-01-05 is a Monday: derive all seven letters from one reference week.
  return DateFormat.E(LocaleSettings.currentLocale.intlLocaleName).format(DateTime(2026, 1, 5 + weekdayIndex));
}

class StatsHourStrip extends StatelessWidget {
  const StatsHourStrip({super.key, required this.bins});

  final List<ScreenTimeHourBin> bins;

  @override
  Widget build(BuildContext context) {
    final mono = tokens(context);
    final theme = Theme.of(context);
    final peakMs = bins.fold(0, (peakSoFar, bin) => math.max<int>(peakSoFar, bin.durationMs));
    const areaHeight = 40.0;
    return Column(
      children: [
        Semantics(
          label: t.activityStats.hoursTitle,
          child: SizedBox(
            height: areaHeight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                for (final bin in bins)
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 1),
                        decoration: BoxDecoration(
                          color: peakMs > 0 && bin.durationMs == peakMs
                              ? mono.accent
                              : mono.text.withValues(alpha: 0.30),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        height: bin.durationMs > 0 ? math.max(2.0, areaHeight * bin.durationMs / peakMs) : 0.0,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            for (final hour in [0, 6, 12, 18])
              Expanded(
                child: Text(
                  TimeOfDay(hour: hour, minute: 0).format(context),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelSmall?.copyWith(color: mono.textMuted),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

/// Icon for a media-kind statistics chip or session row.
IconData statsKindIcon(ScreenTimeMediaKind kind) => switch (kind) {
  ScreenTimeMediaKind.movie => Symbols.movie_rounded,
  ScreenTimeMediaKind.episode => Symbols.tv_rounded,
  ScreenTimeMediaKind.liveTv => Symbols.live_tv_rounded,
  ScreenTimeMediaKind.music => Symbols.music_note_rounded,
  ScreenTimeMediaKind.other => Symbols.play_circle_rounded,
};

/// Human label for a media-kind statistics chip or session row.
String statsKindLabel(ScreenTimeMediaKind kind) => switch (kind) {
  ScreenTimeMediaKind.movie => t.activityStats.kindMovie,
  ScreenTimeMediaKind.episode => t.activityStats.kindTv,
  ScreenTimeMediaKind.liveTv => t.activityStats.kindLiveTv,
  ScreenTimeMediaKind.music => t.activityStats.kindMusic,
  ScreenTimeMediaKind.other => t.activityStats.kindOther,
};

/// Rounded category chips (icon + label + total), one per played kind.
class StatsKindChips extends StatelessWidget {
  const StatsKindChips({super.key, required this.breakdown});

  final List<ScreenTimeKindShare> breakdown;

  @override
  Widget build(BuildContext context) {
    if (breakdown.isEmpty) {
      return Text(
        t.activityStats.noDataInPeriod,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: tokens(context).textMuted),
      );
    }
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final share in breakdown)
          _KindChip(
            icon: statsKindIcon(share.kind),
            label: statsKindLabel(share.kind),
            value: formatViewingDuration(share.durationMs),
          ),
      ],
    );
  }
}

class _KindChip extends StatelessWidget {
  const _KindChip({required this.icon, required this.label, required this.value});

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final mono = tokens(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: mono.outline.withValues(alpha: 0.5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppIcon(icon, size: 16, color: mono.textMuted, fill: 1),
          const SizedBox(width: 6),
          Text(label, style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(width: 6),
          Text(value, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: mono.textMuted)),
        ],
      ),
    );
  }
}

/// One closed session row: "2h 05m · Movie" plus the day and kind.
class StatsSessionTile extends StatelessWidget {
  const StatsSessionTile({super.key, required this.row, this.client, this.onOpen});

  final ScreenTimeSessionRow row;

  /// Resolved media client for [row.serverKey]; artwork renders only when
  /// this is non-null and the row carries a still.
  final MediaServerClient? client;

  /// Opens the item's detail page. Null when the row has no usable identity.
  final VoidCallback? onOpen;

  @override
  Widget build(BuildContext context) {
    final kind = ScreenTimeMediaKind.fromCode(row.mediaKind);
    final isEpisode = kind == ScreenTimeMediaKind.episode && row.showTitle != null;
    final mono = tokens(context);
    final heading = isEpisode
        ? [
            row.showTitle!,
            if (row.seasonIndex != null && row.episodeIndex != null)
              t.dashboard.episodeLabel(season: row.seasonIndex!, episode: row.episodeIndex!),
          ].join(' · ')
        : row.itemTitle ?? t.activityStats.sessionNoTitle;
    final detail = isEpisode
        ? [row.itemTitle, formatAbbreviatedDate(row.localDate)].whereType<String>().join(' · ')
        : '${formatAbbreviatedDate(row.localDate)} · ${statsKindLabel(kind)}';

    return FocusableListTile(
      onTap: onOpen,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(mono.radiusSm),
        child: SizedBox(
          width: 96,
          height: 54,
          child: OptimizedMediaImage(
            client: client,
            imagePath: row.thumbPath,
            fit: BoxFit.cover,
            imageType: ImageType.thumb,
            fallbackIcon: statsKindIcon(kind),
          ),
        ),
      ),
      title: Text(heading, maxLines: 1, overflow: TextOverflow.ellipsis),
      subtitle: Text(detail, maxLines: 1, overflow: TextOverflow.ellipsis),
      trailing: Text(
        formatViewingDuration(row.durationMs),
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: mono.textMuted),
      ),
    );
  }
}

/// Designed empty state for a brand-new installation or a period with
/// nothing recorded.
class StatsEmptyState extends StatelessWidget {
  const StatsEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    final mono = tokens(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          AppIcon(Symbols.bar_chart_rounded, size: 40, color: mono.textMuted, fill: 0),
          const SizedBox(height: 12),
          Text(t.activityStats.emptyTitle, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 4),
          Text(
            t.activityStats.emptyBody,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: mono.textMuted),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

/// Most-watched titles as poster cards: artwork-first, horizontal on both
/// form factors (D-pad travels a rail sideways far faster than a column).
/// Display-only — episodes aggregate into series, and the ledger carries no
/// series id to navigate to.
class StatsTopTitlesRail extends StatelessWidget {
  const StatsTopTitlesRail({super.key, required this.entries, this.artworkFor, this.onOpenFor});

  final List<ScreenTimeTopTitle> entries;
  final ({MediaServerClient? client, String? path})? Function(ScreenTimeTopTitle entry)? artworkFor;
  final VoidCallback? Function(ScreenTimeTopTitle entry)? onOpenFor;

  @override
  Widget build(BuildContext context) {
    final mono = tokens(context);
    final isTv = PlatformDetector.isTV();
    final cardWidth = isTv ? 160.0 : 108.0;
    final posterHeight = cardWidth * 3 / 2;

    Widget card(ScreenTimeTopTitle entry, int index) {
      final artwork = artworkFor?.call(entry);
      final onOpen = onOpenFor?.call(entry);
      final poster = ClipRRect(
        borderRadius: BorderRadius.circular(mono.radiusSm),
        child: SizedBox(
          width: cardWidth,
          height: posterHeight,
          child: Stack(
            fit: StackFit.expand,
            children: [
              OptimizedMediaImage(
                client: artwork?.client,
                imagePath: artwork?.path,
                fit: BoxFit.cover,
                imageType: ImageType.poster,
                fallbackIcon: statsKindIcon(entry.kind),
              ),
              Positioned(
                left: 8,
                bottom: 8,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: .78),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    child: Text(
                      formatViewingDuration(entry.durationMs),
                      style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
      final label = Text(
        entry.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodySmall,
      );
      final content = SizedBox(
        width: cardWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [poster, const SizedBox(height: 8), label],
        ),
      );
      if (isTv || onOpen != null) {
        final description = '${entry.title}, ${formatViewingDuration(entry.durationMs)}';
        return FocusableWrapper(
          key: ValueKey('activity_top_title_$index'),
          borderRadius: mono.radiusSm,
          disableScale: true,
          semanticLabel: onOpen == null ? null : description,
          onSelect: onOpen,
          child: onOpen == null
              ? Semantics(
                  label: description,
                  child: ExcludeSemantics(child: content),
                )
              : GestureDetector(onTap: onOpen, child: content),
        );
      }
      return content;
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final (index, entry) in entries.indexed) ...[
            if (index > 0) const SizedBox(width: 16),
            card(entry, index),
          ],
        ],
      ),
    );
  }
}

/// Contribution-grid view of daily watch time (weeks as columns, weekdays as
/// rows). Read-only — on TV it replaces the focus-per-day list, so scanning
/// three months costs zero D-pad stops. Colors ride the theme accent at
/// quartile alphas of the window's peak.
class StatsActivityHeatmap extends StatelessWidget {
  const StatsActivityHeatmap({super.key, required this.points});

  final List<ScreenTimeDailyPoint> points;

  @override
  Widget build(BuildContext context) {
    final mono = tokens(context);
    final accent = Theme.of(context).colorScheme.primary;
    final cell = PlatformDetector.isTV() ? 18.0 : 13.0;
    final gap = PlatformDetector.isTV() ? 4.0 : 3.0;

    // Monday-led grid; leading blanks pad the first week.
    final peak = points.fold(0, (max, point) => math.max(max, point.durationMs));
    Widget cellFor(int level) {
      final color = switch (level) {
        0 => mono.textMuted.withValues(alpha: 0.15),
        1 => accent.withValues(alpha: 0.30),
        2 => accent.withValues(alpha: 0.55),
        3 => accent.withValues(alpha: 0.80),
        _ => accent,
      };
      return DecoratedBox(
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(3)),
        child: SizedBox(width: cell, height: cell),
      );
    }

    final rows = List.generate(7, (_) => <Widget>[]);
    for (final point in points) {
      final date = DateTime.parse(point.localDate);
      final weekday = date.weekday - 1; // Monday = 0
      final level = peak <= 0 || point.durationMs <= 0 ? 0 : 1 + (4 * point.durationMs / peak).floor().clamp(0, 3);
      rows[weekday].add(cellFor(level));
    }
    final leading = points.isEmpty ? 0 : DateTime.parse(points.first.localDate).weekday - 1;
    for (var i = 0; i < leading; i++) {
      rows[i].insertAll(0, [SizedBox(width: cell + gap, height: cell + gap)]);
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      reverse: true,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final row in rows)
            Row(
              children: [for (final cell in row) Padding(padding: EdgeInsets.all(gap / 2), child: cell)],
            ),
        ],
      ),
    );
  }
}
