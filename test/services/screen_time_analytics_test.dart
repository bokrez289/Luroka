import 'package:drift/drift.dart' show Value;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/services/screen_time_analytics.dart';
import 'package:luroka/services/screen_time_service.dart';

/// Deterministic analytics fixtures: all data is seeded straight into the
/// tables (no live service), so every expectation is a function of the seeded
/// dates alone. Wall-clock conversion in hour-of-day stays local↔local, so
/// results do not depend on the machine's timezone.
void main() {
  late AppDatabase db;

  setUp(() {
    db = AppDatabase.forTesting(NativeDatabase.memory());
  });

  tearDown(() => db.close());

  ScreenTimeDateRange range(String start, String end) => ScreenTimeAnalytics.range(start, end);

  Future<void> seedDaily(String profileId, String localDate, int ms) =>
      db.addScreenTime(profileId: profileId, localDate: localDate, durationMs: ms, updatedAt: 1);

  ScreenTimeSessionsCompanion sessionRow({
    required String profileId,
    required String localDate,
    required DateTime start,
    required DateTime end,
    required ScreenTimeMediaKind kind,
    String? itemKey,
    String? itemTitle,
    String? showTitle,
    int? seasonIndex,
    int? episodeIndex,
  }) => ScreenTimeSessionsCompanion.insert(
    profileId: profileId,
    localDate: localDate,
    startUtcMs: start.millisecondsSinceEpoch,
    endUtcMs: end.millisecondsSinceEpoch,
    durationMs: end.difference(start).inMilliseconds,
    mediaKind: kind.code,
    serverKey: const Value('srv'),
    itemKey: Value(itemKey),
    itemTitle: Value(itemTitle),
    showTitle: Value(showTitle),
    seasonIndex: Value(seasonIndex),
    episodeIndex: Value(episodeIndex),
  );

  test('dailySeries zero-fills missing days inside the range', () async {
    await seedDaily('p1', '2026-03-12', 5000);
    await seedDaily('p1', '2026-03-14', 7000);

    final series = await ScreenTimeAnalytics.dailySeries(db, 'p1', range('2026-03-12', '2026-03-15'));

    expect(series.length, 4);
    expect(series.map((point) => point.localDate).toList(), [
      '2026-03-12',
      '2026-03-13',
      '2026-03-14',
      '2026-03-15',
    ]);
    expect(series.map((point) => point.durationMs).toList(), [5000, 0, 7000, 0]);
  });

  test('totals sums every seeded day in the window', () async {
    await seedDaily('p1', '2026-03-12', 5000);
    await seedDaily('p1', '2026-03-14', 7000);

    expect(await ScreenTimeAnalytics.totals(db, 'p1', range('2026-03-12', '2026-03-31')), 12000);
  });

  test('streaks skip gap days and survive a still-empty last day', () async {
    for (final entry in {0: 3000, 1: 3000, 3: 3000, 4: 3000, 5: 3000}.entries) {
      await seedDaily('p1', '2026-04-${(1 + entry.key).toString().padLeft(2, '0')}', entry.value);
    }

    final streaks = await ScreenTimeAnalytics.streaks(db, 'p1', range('2026-04-01', '2026-04-06'));
    expect(streaks.longestDays, 3);
    expect(streaks.currentDays, 3);

    // Nothing watched on the 7th yet — the streak must not read as broken.
    final midDay = await ScreenTimeAnalytics.streaks(db, 'p1', range('2026-04-01', '2026-04-07'));
    expect(midDay.currentDays, 3);
  });

  test('records find the best day, best rolling week, and busiest weekday', () async {
    await seedDaily('p1', '2026-03-02', 4000); // Monday
    await seedDaily('p1', '2026-03-06', 9000); // Friday
    await seedDaily('p1', '2026-03-07', 2000); // Saturday
    await seedDaily('p1', '2026-03-09', 1000); // Monday

    final records = await ScreenTimeAnalytics.records(db, 'p1', range('2026-03-02', '2026-03-15'));

    expect(records.longestDay.localDate, '2026-03-06');
    expect(records.longestDay.durationMs, 9000);
    expect(records.longestWeek.startLocalDate, '2026-03-02');
    expect(records.longestWeek.durationMs, 15000);
    expect(records.busiestWeekday.weekday, 5); // Friday
    expect(records.busiestWeekday.durationMs, 9000);
  });

  test('records over an empty range report zeros', () async {
    final records = await ScreenTimeAnalytics.records(db, 'p1', range('2026-03-01', '2026-03-15'));
    expect(records.longestDay.durationMs, 0);
    expect(records.longestWeek.durationMs, 0);
    expect(records.busiestWeekday.durationMs, 0);
  });

  test('weekdayBreakdown buckets by local weekday, Monday first', () async {
    await seedDaily('p1', '2026-03-11', 5000); // Wednesday
    final week = await ScreenTimeAnalytics.weekdayBreakdown(db, 'p1', range('2026-03-09', '2026-03-15'));

    expect(week[0], 0);
    expect(week[2], 5000);
  });

  test('kindBreakdown aggregates per kind and orders by time', () async {
    await db.addScreenTimeSessions([
      sessionRow(
        profileId: 'p1',
        localDate: '2026-03-12',
        start: DateTime(2026, 3, 12, 10),
        end: DateTime(2026, 3, 12, 10, 30),
        kind: ScreenTimeMediaKind.movie,
      ),
      sessionRow(
        profileId: 'p1',
        localDate: '2026-03-13',
        start: DateTime(2026, 3, 13, 20),
        end: DateTime(2026, 3, 13, 20, 10),
        kind: ScreenTimeMediaKind.episode,
      ),
      sessionRow(
        profileId: 'p1',
        localDate: '2026-03-13',
        start: DateTime(2026, 3, 13, 21),
        end: DateTime(2026, 3, 13, 21, 5),
        kind: ScreenTimeMediaKind.other,
      ),
      // Another profile must stay out of p1's totals.
      sessionRow(
        profileId: 'p2',
        localDate: '2026-03-13',
        start: DateTime(2026, 3, 13, 22),
        end: DateTime(2026, 3, 13, 23),
        kind: ScreenTimeMediaKind.movie,
      ),
    ]);

    final breakdown = await ScreenTimeAnalytics.kindBreakdown(db, 'p1', range('2026-03-10', '2026-03-15'));

    expect(breakdown.map((share) => share.kind), [
      ScreenTimeMediaKind.movie,
      ScreenTimeMediaKind.episode,
      ScreenTimeMediaKind.other,
    ]);
    expect(breakdown.first.durationMs, 1800000);
  });

  test('topTitles aggregates plays of the same item and honors the cap', () async {
    await db.addScreenTimeSessions([
      sessionRow(
        profileId: 'p1',
        localDate: '2026-03-12',
        start: DateTime(2026, 3, 12, 10),
        end: DateTime(2026, 3, 12, 11),
        kind: ScreenTimeMediaKind.movie,
        itemKey: '100',
        itemTitle: 'Movie A',
      ),
      sessionRow(
        profileId: 'p1',
        localDate: '2026-03-13',
        start: DateTime(2026, 3, 13, 12),
        end: DateTime(2026, 3, 13, 12, 30),
        kind: ScreenTimeMediaKind.movie,
        itemKey: '100',
        itemTitle: 'Movie A',
      ),
      sessionRow(
        profileId: 'p1',
        localDate: '2026-03-14',
        start: DateTime(2026, 3, 14, 9),
        end: DateTime(2026, 3, 14, 9, 40),
        kind: ScreenTimeMediaKind.episode,
        itemKey: '200',
        itemTitle: 'Pilot',
        showTitle: 'Show B',
        seasonIndex: 1,
        episodeIndex: 1,
      ),
      // A second episode of the same show aggregates into one series entry.
      sessionRow(
        profileId: 'p1',
        localDate: '2026-03-14',
        start: DateTime(2026, 3, 14, 10),
        end: DateTime(2026, 3, 14, 10, 10),
        kind: ScreenTimeMediaKind.episode,
        itemKey: '201',
        itemTitle: 'Second act',
        showTitle: 'Show B',
        seasonIndex: 1,
        episodeIndex: 2,
      ),
      // Unidentified playback (no title) must not surface as a card.
      sessionRow(
        profileId: 'p1',
        localDate: '2026-03-14',
        start: DateTime(2026, 3, 14, 18),
        end: DateTime(2026, 3, 14, 19),
        kind: ScreenTimeMediaKind.liveTv,
      ),
    ]);

    final titles = await ScreenTimeAnalytics.topTitles(db, 'p1', range('2026-03-10', '2026-03-15'));

    expect(titles, hasLength(2));
    expect(titles.first.itemKey, '100');
    expect(titles.first.title, 'Movie A');
    expect(titles.first.durationMs, 5400000);
    expect(titles.first.kind, ScreenTimeMediaKind.movie);
    // Episodes roll up into their series, not per-episode rows.
    expect(titles.last.title, 'Show B');
    expect(titles.last.itemKey, isNull);
    expect(titles.last.durationMs, 3000000);
    expect(titles.last.kind, ScreenTimeMediaKind.episode);

    final capped = await ScreenTimeAnalytics.topTitles(db, 'p1', range('2026-03-10', '2026-03-15'), limit: 1);
    expect(capped.single.title, 'Movie A');
  });

  test('hourOfDayBins splits sessions at bin boundaries', () async {
    await db.addScreenTimeSessions([
      sessionRow(
        profileId: 'p1',
        localDate: '2026-03-12',
        start: DateTime(2026, 3, 12, 13, 50),
        end: DateTime(2026, 3, 12, 14, 30),
        kind: ScreenTimeMediaKind.movie,
      ),
    ]);

    final bins = await ScreenTimeAnalytics.hourOfDayBins(db, 'p1', range('2026-03-12', '2026-03-12'));

    expect(bins, hasLength(12));
    expect(bins[6], (startMinuteOfDay: 720, durationMs: 600000)); // 12–14 gets 10m
    expect(bins[7], (startMinuteOfDay: 840, durationMs: 1800000)); // 14–16 gets 30m
    final filled = bins.where((bin) => bin.durationMs > 0).toList();
    expect(filled, hasLength(2));
  });

  test('hourOfDayBins wraps sessions past local midnight into the next bin', () async {
    await db.addScreenTimeSessions([
      sessionRow(
        profileId: 'p1',
        localDate: '2026-03-12',
        start: DateTime(2026, 3, 12, 23, 50),
        end: DateTime(2026, 3, 12).add(const Duration(days: 1, minutes: 20)), // 00:20 next day
        kind: ScreenTimeMediaKind.liveTv,
      ),
    ]);

    final bins = await ScreenTimeAnalytics.hourOfDayBins(
      db,
      'p1',
      range('2026-03-12', '2026-03-13'),
      binMinutes: 60,
    );

    expect(bins[23].durationMs, 600000);
    expect(bins[0].durationMs, 1200000);
  });

  test('sessions pages newest-first', () async {
    await db.addScreenTimeSessions([
      sessionRow(
        profileId: 'p1',
        localDate: '2026-03-12',
        start: DateTime(2026, 3, 12, 10),
        end: DateTime(2026, 3, 12, 10, 30),
        kind: ScreenTimeMediaKind.movie,
        itemKey: '100',
        itemTitle: 'Movie A',
      ),
      sessionRow(
        profileId: 'p1',
        localDate: '2026-03-13',
        start: DateTime(2026, 3, 13, 20),
        end: DateTime(2026, 3, 13, 20, 30),
        kind: ScreenTimeMediaKind.episode,
        itemKey: '200',
        itemTitle: 'Show B',
      ),
      sessionRow(
        profileId: 'p1',
        localDate: '2026-03-14',
        start: DateTime(2026, 3, 14, 9),
        end: DateTime(2026, 3, 14, 9, 30),
        kind: ScreenTimeMediaKind.music,
        itemKey: '300',
        itemTitle: 'Track C',
      ),
    ]);

    final firstPage = await ScreenTimeAnalytics.sessions(db, 'p1', range('2026-03-12', '2026-03-14'), pageSize: 2);
    expect(firstPage.map((row) => row.itemTitle).toList(), ['Track C', 'Show B']);

    final secondPage = await ScreenTimeAnalytics.sessions(
      db,
      'p1',
      range('2026-03-12', '2026-03-14'),
      page: 1,
      pageSize: 2,
    );
    expect(secondPage.single.itemTitle, 'Movie A');
  });
}
