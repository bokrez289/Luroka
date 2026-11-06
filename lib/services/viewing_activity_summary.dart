import '../database/app_database.dart';
import '../i18n/strings.g.dart';
import 'screen_time_service.dart';

class ViewingActivitySummary {
  const ViewingActivitySummary({required this.profileId, this.todayMs = 0, this.weekMs = 0, this.monthMs = 0});
  final String profileId;
  final int todayMs, weekMs, monthMs;
}

/// Hub chips for the service's own profile; flushes pending playback time
/// first so the chips reflect an in-progress session.
Future<ViewingActivitySummary?> loadViewingActivitySummary(ScreenTimeService service) async {
  await service.flush();
  return loadViewingActivitySummaryFor(service.database, service.profileId);
}

/// Hub chips for any profile straight off the daily aggregates. Other
/// profiles have no live service, so there is nothing to flush.
Future<ViewingActivitySummary?> loadViewingActivitySummaryFor(AppDatabase db, String? profileId) async {
  if (profileId == null) return null;
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final week = today.subtract(Duration(days: today.weekday - DateTime.monday));
  final month = DateTime(today.year, today.month);
  final rows = await db.getScreenTimeRange(
    profileId: profileId,
    startLocalDate: localDateKey(week.isBefore(month) ? week : month),
    endLocalDate: localDateKey(today),
  );
  int sum(bool Function(String) includes) =>
      rows.where((row) => includes(row.localDate)).fold(0, (total, row) => total + row.durationMs);
  return ViewingActivitySummary(
    profileId: profileId,
    todayMs: sum((date) => date == localDateKey(today)),
    weekMs: sum((date) => date.compareTo(localDateKey(week)) >= 0),
    monthMs: sum((date) => date.compareTo(localDateKey(month)) >= 0),
  );
}

String formatViewingDuration(int milliseconds) {
  final minutes = Duration(milliseconds: milliseconds).inMinutes;
  if (minutes < 1) return t.screenTime.lessThanMinute;
  final hours = minutes ~/ 60;
  if (hours == 0) return t.screenTime.minutes(count: minutes);
  if (minutes % 60 == 0) return t.screenTime.hours(count: hours);
  return t.screenTime.hoursMinutes(hours: hours, minutes: minutes % 60);
}
