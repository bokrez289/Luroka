import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/services/screen_time_service.dart';
import 'package:luroka/services/viewing_activity_summary.dart';

void main() {
  test('shared viewing summary flushes playback and isolates the owning profile', () async {
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    final now = DateTime.now();
    var elapsed = Duration.zero;
    final service = ScreenTimeService(
      database: db,
      profileId: 'alex',
      wallClock: () => DateTime(now.year, now.month, now.day, 12),
      monotonicClock: () => elapsed,
    );
    addTearDown(() async {
      service.dispose();
      await service.flush();
      await db.close();
    });
    await db.addScreenTime(profileId: 'alex', localDate: localDateKey(now), durationMs: 60000, updatedAt: 0);
    await db.addScreenTime(profileId: 'mia', localDate: localDateKey(now), durationMs: 3600000, updatedAt: 0);
    final lease = service.acquireLease();
    elapsed = const Duration(minutes: 2);
    final summary = await loadViewingActivitySummary(service);
    expect(summary!.profileId, 'alex');
    expect(summary.todayMs, 180000);
    expect(summary.weekMs, 180000);
    expect(summary.monthMs, 180000);
    await lease.close();
  });
}
