import 'dart:io';

import 'package:drift/drift.dart' show Value;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/services/screen_time_service.dart' show ScreenTimeMediaKind;

void main() {
  late AppDatabase database;

  setUp(() {
    database = AppDatabase.forTesting(NativeDatabase.memory());
  });

  tearDown(() => database.close());

  test('v27 upgrade adds the session ledger alongside daily aggregates', () async {
    final directory = await Directory.systemTemp.createTemp('plezy_screen_time_sessions_migration_');
    final file = File('${directory.path}/database.sqlite');
    AppDatabase? seeded;
    AppDatabase? upgraded;
    try {
      seeded = AppDatabase.forTesting(NativeDatabase(file));
      await seeded.select(seeded.connections).get();
      await seeded.addScreenTime(profileId: 'p1', localDate: '2026-10-27', durationMs: 4321, updatedAt: 1);
      await seeded.customStatement('DROP TABLE screen_time_sessions');
      await seeded.customStatement('DROP INDEX IF EXISTS idx_screen_time_sessions_profile_date');
      await seeded.customStatement('DROP INDEX IF EXISTS idx_screen_time_sessions_profile_kind');
      await seeded.customStatement('PRAGMA user_version = 26');
      await seeded.close();
      seeded = null;

      upgraded = AppDatabase.forTesting(NativeDatabase(file));
      // The daily aggregates survive untouched...
      final daily = await upgraded.getScreenTimeRange(
        profileId: 'p1',
        startLocalDate: '2026-10-27',
        endLocalDate: '2026-10-27',
      );
      expect(daily.single.durationMs, 4321);
      // ...and the new ledger accepts and returns rows.
      await upgraded.addScreenTimeSessions([
        ScreenTimeSessionsCompanion.insert(
          profileId: 'p1',
          localDate: '2026-10-27',
          startUtcMs: 1,
          endUtcMs: 60000,
          durationMs: 60000,
          mediaKind: ScreenTimeMediaKind.movie.code,
          serverKey: const Value('srv1'),
          itemKey: const Value('4'),
          itemTitle: const Value('Movie'),
        ),
      ]);
      final sessions = await upgraded.getScreenTimeSessions(profileId: 'p1');
      expect(sessions, hasLength(1));
      expect(sessions.single.mediaKind, ScreenTimeMediaKind.movie.code);
      expect(sessions.single.itemKey, '4');
      expect(sessions.single.serverKey, 'srv1');

      final indexes = (await upgraded.customSelect("SELECT name FROM sqlite_master WHERE type = 'index'").get()).map(
        (row) => row.read<String>('name'),
      );
      expect(
        indexes,
        containsAll(['idx_screen_time_sessions_profile_date', 'idx_screen_time_sessions_profile_kind']),
      );
    } finally {
      await upgraded?.close();
      await seeded?.close();
      await directory.delete(recursive: true);
    }
  });

  test('v26 upgrade adds screen time without replacing upstream tables or downloads', () async {
    final directory = await Directory.systemTemp.createTemp('plezy_screen_time_migration_');
    final file = File('${directory.path}/database.sqlite');
    AppDatabase? seeded;
    AppDatabase? upgraded;
    try {
      seeded = AppDatabase.forTesting(NativeDatabase(file));
      await seeded.select(seeded.connections).get();
      await seeded.customStatement('DROP TABLE screen_time_daily');
      await seeded.customStatement('PRAGMA user_version = 25');
      await seeded.close();
      seeded = null;

      upgraded = AppDatabase.forTesting(NativeDatabase(file));
      await upgraded.addScreenTime(profileId: 'p1', localDate: '2026-10-27', durationMs: 1234, updatedAt: 1);
      final rows = await upgraded.getScreenTimeRange(
        profileId: 'p1',
        startLocalDate: '2026-10-27',
        endLocalDate: '2026-10-27',
      );
      expect(rows.single.durationMs, 1234);
      final tables = (await upgraded.customSelect("SELECT name FROM sqlite_master WHERE type = 'table'").get()).map(
        (row) => row.read<String>('name'),
      );
      expect(tables, containsAll(['downloaded_media', 'download_collections', 'download_collection_syncs']));
      final columns = (await upgraded.customSelect("PRAGMA table_info('downloaded_media')").get()).map(
        (row) => row.read<String>('name'),
      );
      expect(columns, containsAll(['library_id', 'library_title', 'additional_part_paths']));
    } finally {
      await upgraded?.close();
      await seeded?.close();
      await directory.delete(recursive: true);
    }
  });

  test('additive upsert accumulates per profile and day', () async {
    await database.addScreenTime(profileId: 'p1', localDate: '2026-08-30', durationMs: 1000, updatedAt: 1);
    await database.addScreenTime(profileId: 'p1', localDate: '2026-08-30', durationMs: 2500, updatedAt: 2);
    await database.addScreenTime(profileId: 'p2', localDate: '2026-08-30', durationMs: 9000, updatedAt: 3);

    final rows = await database.getScreenTimeRange(
      profileId: 'p1',
      startLocalDate: '2026-08-01',
      endLocalDate: '2026-08-31',
    );
    expect(rows, hasLength(1));
    expect(rows.single.durationMs, 3500);
    expect(rows.single.updatedAt, 2);
  });

  test('range query is inclusive, ordered, and profile scoped', () async {
    for (final date in ['2026-08-03', '2026-08-01', '2026-08-02']) {
      await database.addScreenTime(profileId: 'p1', localDate: date, durationMs: 1, updatedAt: 1);
    }
    await database.addScreenTime(profileId: 'p2', localDate: '2026-08-02', durationMs: 1, updatedAt: 1);

    final rows = await database.getScreenTimeRange(
      profileId: 'p1',
      startLocalDate: '2026-08-02',
      endLocalDate: '2026-08-03',
    );
    expect(rows.map((row) => row.localDate), ['2026-08-02', '2026-08-03']);
  });

  test('profile cleanup removes only that profile', () async {
    await database.addScreenTime(profileId: 'p1', localDate: '2026-08-30', durationMs: 1, updatedAt: 1);
    await database.addScreenTime(profileId: 'p2', localDate: '2026-08-30', durationMs: 1, updatedAt: 1);

    await database.deleteScreenTimeForProfile('p1');

    expect(
      await database.getScreenTimeRange(profileId: 'p1', startLocalDate: '2026-08-01', endLocalDate: '2026-08-31'),
      isEmpty,
    );
    expect(
      await database.getScreenTimeRange(profileId: 'p2', startLocalDate: '2026-08-01', endLocalDate: '2026-08-31'),
      hasLength(1),
    );
  });

  test('per-profile daily totals group by profile and skip empty sums', () async {
    await database.addScreenTime(profileId: 'p1', localDate: '2026-10-31', durationMs: 45 * 60000, updatedAt: 1);
    await database.addScreenTime(profileId: 'p1', localDate: '2026-10-31', durationMs: 15 * 60000, updatedAt: 1);
    await database.addScreenTime(profileId: 'p2', localDate: '2026-10-31', durationMs: 20 * 60000, updatedAt: 1);
    // Different day and zero-duration rows must not leak into the map.
    await database.addScreenTime(profileId: 'p2', localDate: '2026-10-30', durationMs: 90000, updatedAt: 1);
    await database.addScreenTime(profileId: 'p3', localDate: '2026-10-31', durationMs: 0, updatedAt: 1);

    final today = await database.getScreenTimePerProfileForDate(localDate: '2026-10-31');

    expect(today.keys.toSet(), {'p1', 'p2'});
    expect(today['p1'], 60 * 60000);
    expect(today['p2'], 20 * 60000);
  });
}
