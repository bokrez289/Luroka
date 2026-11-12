import 'dart:async';

import 'package:drift/drift.dart' show Value;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/providers/home_taste_provider.dart';
import 'package:luroka/services/screen_time_service.dart';

ScreenTimeSessionRow session({
  required int id,
  required String profile,
  required String item,
  String? server = 'server',
  int minutes = 6,
  int kind = 0,
  String day = '2026-02-01',
}) => ScreenTimeSessionRow(
  id: id,
  profileId: profile,
  localDate: day,
  startUtcMs: id * 1000,
  endUtcMs: id * 1000 + Duration(minutes: minutes).inMilliseconds,
  durationMs: Duration(minutes: minutes).inMilliseconds,
  mediaKind: kind,
  serverKey: server,
  itemKey: item,
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('the real local ledger is read only for the selected profile', () async {
    final database = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(database.close);
    ScreenTimeSessionsCompanion entry(String profile, String id) => ScreenTimeSessionsCompanion.insert(
      profileId: profile,
      localDate: '2026-02-01',
      startUtcMs: 1,
      endUtcMs: 360001,
      durationMs: 360000,
      mediaKind: ScreenTimeMediaKind.movie.code,
      serverKey: const Value('server'),
      itemKey: Value(id),
    );
    await database.addScreenTimeSessions([entry('alice', 'a'), entry('bob', 'b')]);
    final provider = HomeTasteProvider(
      profileId: 'alice',
      now: () => DateTime(2026, 2, 2),
      loadSessions: ({required profileId, required startLocalDate, required limit}) =>
          database.getScreenTimeSessions(profileId: profileId, startLocalDate: startLocalDate, limit: limit),
    );
    addTearDown(provider.dispose);
    await provider.ensureFresh(canRun: () => true);
    expect(provider.signals.map((signal) => signal.itemId), ['a']);
    expect(await database.getScreenTimeSessions(profileId: 'bob'), hasLength(1));
    final other = HomeTasteProvider(
      profileId: 'bob',
      now: () => DateTime(2026, 2, 2),
      loadSessions: ({required profileId, required startLocalDate, required limit}) =>
          database.getScreenTimeSessions(profileId: profileId, startLocalDate: startLocalDate, limit: limit),
    );
    addTearDown(other.dispose);
    await other.ensureFresh(canRun: () => true);
    expect(other.signals.map((signal) => signal.itemId), ['b']);
  });

  test('reads a bounded profile-only local history and coalesces refreshes', () async {
    var now = DateTime(2026, 2, 2);
    var calls = 0;
    final provider = HomeTasteProvider(
      profileId: 'alice',
      now: () => now,
      loadSessions: ({required profileId, required startLocalDate, required limit}) async {
        calls++;
        expect(profileId, 'alice');
        expect(limit, HomeTasteProvider.maxSessions);
        expect(startLocalDate, localDateKey(now.subtract(HomeTasteProvider.lookback)));
        return [
          session(id: 1, profile: 'alice', item: 'film', minutes: 3),
          session(id: 2, profile: 'alice', item: 'film', minutes: 4),
          session(id: 3, profile: 'other', item: 'private'),
          session(id: 4, profile: 'alice', item: 'old', day: '2020-01-01'),
          session(id: 7, profile: 'alice', item: 'future', day: '2027-01-01'),
          session(id: 5, profile: 'alice', item: 'music', kind: ScreenTimeMediaKind.music.code),
          session(id: 6, profile: 'alice', item: 'anonymous', server: null),
        ];
      },
    );
    addTearDown(provider.dispose);
    await provider.ensureFresh(canRun: () => false);
    expect(calls, 0);
    await provider.ensureFresh(canRun: () => true);
    expect(provider.signals, [
      (serverId: 'server', itemId: 'film', durationMs: const Duration(minutes: 7).inMilliseconds, episode: false),
    ]);
    await provider.ensureFresh(canRun: () => true);
    expect(calls, 1);
    now = now.add(HomeTasteProvider.refreshInterval + const Duration(seconds: 1));
    await provider.ensureFresh(canRun: () => true);
    expect(calls, 2);
  });

  test('profile change or disposal discards a late local read', () async {
    final pending = Completer<List<ScreenTimeSessionRow>>();
    var active = true;
    final provider = HomeTasteProvider(
      profileId: 'alice',
      now: () => DateTime(2026, 2, 2),
      loadSessions: ({required profileId, required startLocalDate, required limit}) => pending.future,
    );
    final read = provider.ensureFresh(canRun: () => active);
    active = false;
    provider.dispose();
    pending.complete([session(id: 1, profile: 'alice', item: 'private')]);
    await read;
    expect(provider.signals, isEmpty);
  });
}
