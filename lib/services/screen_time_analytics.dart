import '../database/app_database.dart';
import 'screen_time_service.dart';

/// Inclusive local-date window in the same `YYYY-MM-DD` key space that
/// [ScreenTimeDaily] and the session ledger use.
typedef ScreenTimeDateRange = ({String startLocalDate, String endLocalDate});

/// One forward-filled day of [ScreenTimeDaily] data.
typedef ScreenTimeDailyPoint = ({String localDate, int durationMs});

/// Consecutive positive-activity day runs, in whole days.
class ScreenTimeStreaks {
  const ScreenTimeStreaks({required this.currentDays, required this.longestDays});
  final int currentDays;
  final int longestDays;
}

/// Personal bests over the queried window (all-time when the window spans it).
class ScreenTimeRecords {
  const ScreenTimeRecords({required this.longestDay, required this.longestWeek, required this.busiestWeekday});
  final ScreenTimeDailyPoint longestDay;
  final ({String startLocalDate, int durationMs}) longestWeek;
  final ({int weekday, int durationMs}) busiestWeekday;
}

/// Media-kind split of the queried window, ordered by time descending.
typedef ScreenTimeKindShare = ({ScreenTimeMediaKind kind, int durationMs});

/// Aggregated play history for one title, ordered by time descending.
/// One most-watched entry. Episodes aggregate into their series: `title` is
/// the show name and `itemKey` is null (the ledger has no series id). Other
/// kinds keep the item's own title and key.
typedef ScreenTimeTopTitle = ({
  ScreenTimeMediaKind kind,
  String title,
  String? subtitle,
  int durationMs,
  String? thumbPath,
  String? itemKey,
});

/// Local wall-clock play time bucketed by segment of day.
typedef ScreenTimeHourBin = ({int startMinuteOfDay, int durationMs});

/// Pure aggregation layer over the screen-time tables. No widgets, no service
/// state: every function takes the already-open [AppDatabase] plus a profile
/// and an inclusive local-date window, so results are trivially testable.
///
/// The today/week/month hub chips remain the domain of
/// [loadViewingActivitySummary]; nothing here re-derives them.
class ScreenTimeAnalytics {
  ScreenTimeAnalytics._();

  static final RegExp _dateKey = RegExp(r'^\d{4}-\d{2}-\d{2}$');

  /// Parses an ISO local-date key onto midnight of that day.
  static DateTime dayFromKey(String localDate) {
    if (!_dateKey.hasMatch(localDate)) {
      throw ArgumentError.value(localDate, 'localDate', 'expected YYYY-MM-DD');
    }
    return DateTime.parse('$localDate 00:00:00');
  }

  /// The [localDateKey] of midnight on [day].
  static String dayToKey(DateTime day) => localDateKey(day);

  /// Builds an inclusive range spanning both dates.
  static ScreenTimeDateRange range(String startLocalDate, String endLocalDate) =>
      (startLocalDate: startLocalDate, endLocalDate: endLocalDate);

  /// All-time range when no strict bounds are wanted.
  static ScreenTimeDateRange get all => const (startLocalDate: '0000-01-01', endLocalDate: '9999-12-31');

  // ---------------------------------------------------------------------------
  // Daily series, totals, streaks, records
  // ---------------------------------------------------------------------------

  /// One point per day between the range edges (inclusive), zero-filled for
  /// days without a [ScreenTimeDaily] row.
  static Future<List<ScreenTimeDailyPoint>> dailySeries(
    AppDatabase db,
    String profileId,
    ScreenTimeDateRange range_,
  ) async {
    final rows = await db.getScreenTimeRange(
      profileId: profileId,
      startLocalDate: range_.startLocalDate,
      endLocalDate: range_.endLocalDate,
    );
    final byDate = {for (final row in rows) row.localDate: row.durationMs};
    var cursor = dayFromKey(range_.startLocalDate);
    final end = dayFromKey(range_.endLocalDate);
    if (cursor.isAfter(end)) return const [];
    final series = <ScreenTimeDailyPoint>[];
    while (!cursor.isAfter(end)) {
      final key = localDateKey(cursor);
      series.add((localDate: key, durationMs: byDate[key] ?? 0));
      // Step by calendar components: a fixed 24-hour duration double-counts
      // (or skips) a day across a DST change.
      cursor = DateTime(cursor.year, cursor.month, cursor.day + 1);
    }
    return series;
  }

  /// Total watch time recorded in [ScreenTimeDaily] for the window.
  static Future<int> totals(AppDatabase db, String profileId, ScreenTimeDateRange range_) async {
    var totalMs = 0;
    for (final row in await db.getScreenTimeRange(
      profileId: profileId,
      startLocalDate: range_.startLocalDate,
      endLocalDate: range_.endLocalDate,
    )) {
      totalMs += row.durationMs;
    }
    return totalMs;
  }

  /// Current and longest runs of consecutive days with positive watch time.
  ///
  /// The current streak is anchored to the latest positive day: if the range
  /// ends on a still-empty day (nothing watched yet today), the streak may
  /// end on the previous day instead — watching daily and opening the screen
  /// mid-morning must not report a broken streak.
  static Future<ScreenTimeStreaks> streaks(AppDatabase db, String profileId, ScreenTimeDateRange range_) async {
    final series = await dailySeries(db, profileId, range_);
    var longest = 0;
    var running = 0;
    for (final point in series) {
      if (point.durationMs > 0) {
        running += 1;
        if (running > longest) longest = running;
      } else {
        running = 0;
      }
    }
    var current = 0;
    for (var i = series.length - 1; i >= 0; i--) {
      if (series[i].durationMs > 0) {
        current += 1;
      } else if (i == series.length - 1) {
        continue;
      } else {
        break;
      }
    }
    return ScreenTimeStreaks(currentDays: current, longestDays: longest);
  }

  /// Personal bests: longest single day, highest rolling seven-day span, and
  /// the weekday (1 = Monday … 7 = Sunday) with the greatest watch time.
  static Future<ScreenTimeRecords> records(AppDatabase db, String profileId, ScreenTimeDateRange range_) async {
    final series = await dailySeries(db, profileId, range_);
    if (series.isEmpty) {
      return ScreenTimeRecords(
        longestDay: (localDate: range_.startLocalDate, durationMs: 0),
        longestWeek: (startLocalDate: range_.startLocalDate, durationMs: 0),
        busiestWeekday: (weekday: DateTime.monday, durationMs: 0),
      );
    }

    ScreenTimeDailyPoint bestDay = series.first;
    final weekdayTotals = List<int>.filled(7, 0);
    for (final point in series) {
      if (point.durationMs > bestDay.durationMs) bestDay = point;
      if (point.durationMs > 0) weekdayTotals[dayFromKey(point.localDate).weekday - 1] += point.durationMs;
    }
    var busiest = 0;
    for (var i = 1; i < 7; i++) {
      if (weekdayTotals[i] > weekdayTotals[busiest]) busiest = i;
    }

    var bestWeekMs = 0;
    var bestWeekStart = series.first.localDate;
    for (var i = 0; i < series.length; i++) {
      var windowMs = 0;
      for (var j = i; j < series.length && j < i + 7; j++) {
        windowMs += series[j].durationMs;
      }
      if (windowMs > bestWeekMs) {
        bestWeekMs = windowMs;
        bestWeekStart = series[i].localDate;
      }
    }

    return ScreenTimeRecords(
      longestDay: bestDay,
      longestWeek: (startLocalDate: bestWeekStart, durationMs: bestWeekMs),
      busiestWeekday: (weekday: busiest + 1, durationMs: weekdayTotals[busiest]),
    );
  }

  /// Watch time by weekday, index 0 = Monday … 6 = Sunday, summed over the
  /// daily aggregates for the window.
  static Future<List<int>> weekdayBreakdown(AppDatabase db, String profileId, ScreenTimeDateRange range_) async {
    final series = await dailySeries(db, profileId, range_);
    final week = List<int>.filled(7, 0);
    for (final point in series) {
      if (point.durationMs > 0) week[dayFromKey(point.localDate).weekday - 1] += point.durationMs;
    }
    return week;
  }

  // ---------------------------------------------------------------------------
  // Session-ledger breakdowns
  // ---------------------------------------------------------------------------

  /// Media-kind split of the closed sessions in the window, largest first.
  /// Kinds never played are omitted, and durations come from the session
  /// ledger — not the daily aggregates.
  static Future<List<ScreenTimeKindShare>> kindBreakdown(
    AppDatabase db,
    String profileId,
    ScreenTimeDateRange range_,
  ) async {
    final byCode = await db.getScreenTimeSessionKindTotals(
      profileId: profileId,
      startLocalDate: range_.startLocalDate,
      endLocalDate: range_.endLocalDate,
    );
    return byCode.entries
        .map((entry) => (kind: ScreenTimeMediaKind.fromCode(entry.key), durationMs: entry.value))
        .toList()
      ..sort((a, b) => b.durationMs.compareTo(a.durationMs));
  }

  /// Local wall-clock play time cut into [binMinutes] slices of the day
  /// (12 bins for the default 120). Sessions split at bin boundaries, so a
  /// 13:50–14:30 playback fills both the 12–14 and the 14–16 bin.
  static Future<List<ScreenTimeHourBin>> hourOfDayBins(
    AppDatabase db,
    String profileId,
    ScreenTimeDateRange range_, {
    int binMinutes = 120,
  }) async {
    if (binMinutes < 1) {
      throw ArgumentError.value(binMinutes, 'binMinutes', 'must be positive');
    }
    final binMinutesPerDay = Duration.minutesPerDay;
    final binCount = binMinutesPerDay ~/ binMinutes;
    final bins = List<int>.filled(binCount, 0);
    // Closed rows only, so every read row has a real end; 9999 covers any
    // plausible ledger without unbounded growth.
    final rows = await db.getScreenTimeSessions(
      profileId: profileId,
      startLocalDate: range_.startLocalDate,
      endLocalDate: range_.endLocalDate,
      limit: 9999,
    );
    for (final row in rows) {
      final start = row.startUtcMs;
      final end = row.endUtcMs;
      if (end <= start) continue;
      var cursor = start;
      while (cursor < end) {
        final wall = DateTime.fromMillisecondsSinceEpoch(cursor);
        final binSeconds = binMinutes * Duration.secondsPerMinute;
        final secondOfDay = wall.hour * Duration.secondsPerHour + wall.minute * Duration.secondsPerMinute + wall.second;
        final binIndex = secondOfDay ~/ binSeconds;
        final msToBinEnd = ((binIndex + 1) * binSeconds - secondOfDay) * Duration.millisecondsPerSecond;
        final segmentMs = (end - cursor).clamp(0, msToBinEnd);
        final index = binIndex < binCount ? binIndex : binCount - 1;
        bins[index] += segmentMs;
        cursor += segmentMs;
        if (segmentMs <= 0) break;
      }
    }
    return [for (var i = 0; i < binCount; i++) (startMinuteOfDay: i * binMinutes, durationMs: bins[i])];
  }

  /// Most-watched titles in the window. Episodes aggregate into their series
  /// (a binge reads as one entry), other kinds stay per item. Sessions without
  /// item identity (e.g. raw live TV) are excluded — a mislabeled card is
  /// worse than a shorter list.
  static Future<List<ScreenTimeTopTitle>> topTitles(
    AppDatabase db,
    String profileId,
    ScreenTimeDateRange range_, {
    int limit = 5,
  }) async {
    final results = await Future.wait([
      db.getScreenTimeTitleTotals(
        profileId: profileId,
        startLocalDate: range_.startLocalDate,
        endLocalDate: range_.endLocalDate,
        // Episodes arrive through the series totals below; the item query only
        // has to cover the other kinds, but a fixed over-fetch bound keeps the
        // merge deterministic without a second round trip.
        limit: limit * 4,
      ),
      db.getScreenTimeSeriesTotals(
        profileId: profileId,
        startLocalDate: range_.startLocalDate,
        endLocalDate: range_.endLocalDate,
        limit: limit,
      ),
    ]);
    final itemTotals = results[0] as List<ScreenTimeTitleTotal>;
    final seriesTotals = results[1] as List<ScreenTimeSeriesTotal>;

    final entries = <ScreenTimeTopTitle>[
      for (final series in seriesTotals)
        (
          kind: ScreenTimeMediaKind.episode,
          title: series.showTitle,
          subtitle: null,
          durationMs: series.durationMs,
          thumbPath: series.thumbPath,
          itemKey: null,
        ),
      for (final row in itemTotals)
        if (ScreenTimeMediaKind.fromCode(row.mediaKind) != ScreenTimeMediaKind.episode)
          (
            kind: ScreenTimeMediaKind.fromCode(row.mediaKind),
            title: row.itemTitle,
            subtitle: null,
            durationMs: row.durationMs,
            thumbPath: null,
            itemKey: row.itemKey,
          ),
    ]..sort((a, b) => b.durationMs.compareTo(a.durationMs));
    return entries.take(limit).toList();
  }

  /// Paged play history, newest first. [page] starts at zero.
  static Future<List<ScreenTimeSessionRow>> sessions(
    AppDatabase db,
    String profileId,
    ScreenTimeDateRange range_, {
    int page = 0,
    int pageSize = 50,
  }) {
    return db.getScreenTimeSessions(
      profileId: profileId,
      startLocalDate: range_.startLocalDate,
      endLocalDate: range_.endLocalDate,
      limit: pageSize,
      offset: page < 0 ? 0 : page * pageSize,
    );
  }

  /// Recent identifiable titles with paused/resumed intervals combined over
  /// the selected period. Pagination applies after grouping, not to raw rows.
  static Future<List<ScreenTimeSessionRow>> viewingTotals(
    AppDatabase db,
    String profileId,
    ScreenTimeDateRange range_, {
    int limit = 50,
    int offset = 0,
  }) => db.getScreenTimeViewingTotals(
    profileId: profileId,
    startLocalDate: range_.startLocalDate,
    endLocalDate: range_.endLocalDate,
    limit: limit,
    offset: offset,
  );
}
