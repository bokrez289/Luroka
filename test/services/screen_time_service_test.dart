import 'dart:async';

import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/services/screen_time_service.dart';

void main() {
  late AppDatabase database;
  late DateTime wall;
  late Duration monotonic;
  late List<_FakeTimer> timers;

  setUp(() {
    database = AppDatabase.forTesting(NativeDatabase.memory());
    wall = DateTime(2026, 8, 31, 12);
    monotonic = Duration.zero;
    timers = [];
  });

  tearDown(() => database.close());

  ScreenTimeService createService({String? profileId = 'p1'}) {
    return ScreenTimeService(
      database: database,
      profileId: profileId,
      wallClock: () => wall,
      monotonicClock: () => monotonic,
      periodicTimerFactory: (duration, callback) {
        final timer = _FakeTimer(callback);
        timers.add(timer);
        return timer;
      },
    );
  }

  void advance(Duration duration) {
    wall = wall.add(duration);
    monotonic += duration;
  }

  Future<int> totalFor(String profileId, String date) async {
    final rows = await database.getScreenTimeRange(profileId: profileId, startLocalDate: date, endLocalDate: date);
    return rows.isEmpty ? 0 : rows.single.durationMs;
  }

  test('overlapping leases count one active interval', () async {
    final service = createService();
    final first = service.acquireLease();
    advance(const Duration(seconds: 10));
    final second = service.acquireLease();
    advance(const Duration(seconds: 5));
    await first.close();
    advance(const Duration(seconds: 5));
    await second.close();

    expect(await totalFor('p1', '2026-08-31'), 20000);
    service.dispose();
  });

  test('periodic and final flushes do not double count', () async {
    final service = createService();
    final lease = service.acquireLease();
    advance(const Duration(seconds: 30));
    timers.single.fire();
    await service.flush();
    advance(const Duration(seconds: 10));
    await lease.close();

    expect(await totalFor('p1', '2026-08-31'), 40000);
    service.dispose();
  });

  test('active interval is split at local midnight', () async {
    wall = DateTime(2026, 8, 31, 23, 59, 50);
    final service = createService();
    final lease = service.acquireLease();
    advance(const Duration(seconds: 20));
    await lease.close();

    expect(await totalFor('p1', '2026-08-31'), 10000);
    expect(await totalFor('p1', '2026-09-01'), 10000);
    service.dispose();
  });

  test('null profile is a no-op', () async {
    final service = createService(profileId: null);
    final lease = service.acquireLease();
    advance(const Duration(minutes: 1));
    await lease.close();

    expect(timers, isEmpty);
    expect(await database.select(database.screenTimeDaily).get(), isEmpty);
    service.dispose();
  });

  group('session ledger', () {
    Future<List<ScreenTimeSessionRow>> sessions() async => database.getScreenTimeSessions(profileId: 'p1');

    test('closing a lease writes one ledger row with default identity', () async {
      final service = createService();
      final lease = service.acquireLease();
      advance(const Duration(seconds: 15));
      await lease.close();

      final rows = await sessions();
      expect(rows.single.mediaKind, ScreenTimeMediaKind.other.code);
      expect(rows.single.localDate, '2026-08-31');
      expect(rows.single.startUtcMs, DateTime(2026, 8, 31, 12).millisecondsSinceEpoch);
      expect(rows.single.endUtcMs, DateTime(2026, 8, 31, 12, 0, 15).millisecondsSinceEpoch);
      expect(rows.single.durationMs, 15000);
      service.dispose();
    });

    test('session identity comes from the source', () async {
      final service = createService();
      final lease = service.acquireLease(
        sessionKeySource: () => const ScreenTimeSessionKey(
          mediaKind: ScreenTimeMediaKind.movie,
          itemKey: '100',
          itemTitle: 'Movie',
          serverKey: 'srv1',
        ),
      );
      advance(const Duration(seconds: 5));
      await lease.close();
      service.dispose();

      final row = (await sessions()).single;
      expect(row.mediaKind, ScreenTimeMediaKind.movie.code);
      expect(row.itemKey, '100');
      expect(row.itemTitle, 'Movie');
      expect(row.serverKey, 'srv1');
    });

    test('periodic flushes keep one open row per identity', () async {
      final service = createService();
      final lease = service.acquireLease();
      advance(const Duration(seconds: 30));
      timers.single.fire();
      await service.flush();
      advance(const Duration(seconds: 10));
      await lease.close();
      service.dispose();

      expect((await sessions()).single.durationMs, 40000);
    });

    test('identity change mid-session closes the old row and opens a new one', () async {
      var key = const ScreenTimeSessionKey(mediaKind: ScreenTimeMediaKind.movie, itemKey: '100', itemTitle: 'Movie');
      final service = createService();
      final lease = service.acquireLease(sessionKeySource: () => key);
      advance(const Duration(seconds: 10));
      timers.single.fire();
      await service.flush();

      key = const ScreenTimeSessionKey(mediaKind: ScreenTimeMediaKind.episode, itemKey: '200', itemTitle: 'Show');
      advance(const Duration(seconds: 5));
      timers.single.fire();
      await service.flush();
      advance(const Duration(seconds: 10));
      await lease.close();
      service.dispose();

      final rows = await sessions();
      expect(rows, hasLength(2));
      expect(rows.first.mediaKind, ScreenTimeMediaKind.episode.code);
      expect(rows.first.durationMs, 10000);
      expect(rows.last.mediaKind, ScreenTimeMediaKind.movie.code);
      expect(rows.last.durationMs, 15000);
    });

    test('active session splits into two rows at local midnight', () async {
      wall = DateTime(2026, 8, 31, 23, 59, 50);
      final service = createService();
      final lease = service.acquireLease();
      advance(const Duration(seconds: 20));
      await lease.close();
      service.dispose();

      final rows = await sessions();
      expect(rows, hasLength(2));
      expect(rows.first.localDate, '2026-09-01');
      expect(rows.first.durationMs, 10000);
      expect(rows.last.localDate, '2026-08-31');
      expect(rows.last.durationMs, 10000);
    });

    test('overlapping leases write one session', () async {
      final service = createService();
      final first = service.acquireLease();
      advance(const Duration(seconds: 10));
      final second = service.acquireLease();
      advance(const Duration(seconds: 5));
      await first.close();
      advance(const Duration(seconds: 5));
      await second.close();
      service.dispose();

      expect((await sessions()).single.durationMs, 20000);
    });

    test('null profile writes no sessions', () async {
      final service = createService(profileId: null);
      final lease = service.acquireLease();
      advance(const Duration(minutes: 1));
      await lease.close();
      service.dispose();

      expect(await database.select(database.screenTimeSessions).get(), isEmpty);
    });

    test('session ledger does not feed the daily aggregates', () async {
      final service = createService();
      final lease = service.acquireLease(
        sessionKeySource: () => const ScreenTimeSessionKey(mediaKind: ScreenTimeMediaKind.movie),
      );
      advance(const Duration(seconds: 90));
      timers.single.fire();
      await service.flush();
      advance(const Duration(seconds: 30));
      await lease.close();
      service.dispose();

      final daily = await database.getScreenTimeRange(
        profileId: 'p1',
        startLocalDate: '2026-08-31',
        endLocalDate: '2026-08-31',
      );
      expect(daily.single.durationMs, 120000);
    });
  });
}

class _FakeTimer implements Timer {
  _FakeTimer(this._callback);

  final void Function(Timer timer) _callback;
  bool _active = true;
  int _tick = 0;

  void fire() {
    if (!_active) return;
    _tick++;
    _callback(this);
  }

  @override
  void cancel() => _active = false;

  @override
  bool get isActive => _active;

  @override
  int get tick => _tick;
}
