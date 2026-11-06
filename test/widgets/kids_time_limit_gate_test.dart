import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/services/kids_profile_service.dart';
import 'package:luroka/services/playback_coordinator.dart';
import 'package:luroka/services/screen_time_service.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/kids_time_limit_gate.dart';
import 'package:provider/provider.dart';

import '../test_helpers/prefs.dart';
import '../test_helpers/pump.dart';

void main() {
  final kids = KidsProfileService.instance;
  late AppDatabase database;
  late ScreenTimeService time;

  setUp(() async {
    resetSharedPreferencesForTest();
    kids.resetForTesting();
    await kids.initialize();
    await kids.setParentPin('1234');
    database = AppDatabase.forTesting(NativeDatabase.memory());
    time = ScreenTimeService(database: database, profileId: 'child');
    TvDetectionService.debugSetAppleTVOverride(false);
  });

  tearDown(() async {
    time.dispose();
    await database.close();
    kids.resetForTesting();
    TvDetectionService.debugSetAppleTVOverride(null);
  });

  Future<void> pumpGate(WidgetTester tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          Provider<AppDatabase>.value(value: database),
          Provider<ScreenTimeService>.value(value: time),
        ],
        child: MaterialApp(
          theme: ThemeData(platform: TargetPlatform.iOS),
          shortcuts: <ShortcutActivator, Intent>{
            ...WidgetsApp.defaultShortcuts,
            const SingleActivator(LogicalKeyboardKey.select): const ActivateIntent(),
          },
          home: const KidsTimeLimitGate(
            profileId: 'child',
            child: Scaffold(body: Text('Child content')),
          ),
        ),
      ),
    );
    await pumpUntil(tester, () => find.byType(CircularProgressIndicator).evaluate().isEmpty);
  }

  testWidgets('daily limit blocks the active session, pauses video, and parent PIN unlocks temporarily', (
    tester,
  ) async {
    await kids.setChild('child', parentId: 'parent', maxAge: 7, updateTimeLimits: true, dailyWatchMinutes: 1);
    await pumpGate(tester);
    expect(find.text(t.kids.timeLimitReached), findsNothing);
    var pauses = 0;
    Future<void> shutdown() async {}
    PlaybackCoordinator.instance.registerVideoSession(shutdown: shutdown, pauseForRestriction: () async => pauses++);
    addTearDown(() => PlaybackCoordinator.instance.unregisterVideoSession(shutdown));
    await database.addScreenTime(
      profileId: 'child',
      localDate: localDateKey(DateTime.now()),
      durationMs: 60000,
      updatedAt: 1,
    );
    await tester.pump(const Duration(seconds: 5));
    await pumpUntil(tester, () => find.text(t.kids.timeLimitReached).evaluate().isNotEmpty);
    expect(find.text(t.kids.timeLimitReached), findsOneWidget);
    expect(pauses, greaterThan(0));
    await tester.tap(find.text(t.kids.parentUnlock));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).last, '1234');
    await tester.pumpAndSettle();
    expect(find.text(t.kids.timeLimitReached), findsNothing);
    await tester.pumpWidget(const SizedBox.shrink());
    await pumpGate(tester);
    expect(find.text(t.kids.timeLimitReached), findsOneWidget, reason: 'the override does not survive a new session');
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('bedtime blocks immediately, including after app restart', (tester) async {
    final now = DateTime.now();
    final minute = now.hour * 60 + now.minute;
    await kids.setChild(
      'child',
      parentId: 'parent',
      maxAge: 7,
      updateTimeLimits: true,
      bedtimeStart: (minute + 1439) % 1440,
      bedtimeEnd: (minute + 60) % 1440,
    );
    await pumpGate(tester);
    expect(find.text(t.kids.bedtimeReached), findsOneWidget);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('TV remote can unlock bedtime using the parent keypad', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final now = DateTime.now();
    final minute = now.hour * 60 + now.minute;
    await kids.setChild(
      'child',
      parentId: 'parent',
      maxAge: 7,
      updateTimeLimits: true,
      bedtimeStart: (minute + 1439) % 1440,
      bedtimeEnd: (minute + 60) % 1440,
    );
    await pumpGate(tester);
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'KidsTimeLimitUnlock');
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    for (final digit in [
      LogicalKeyboardKey.digit1,
      LogicalKeyboardKey.digit2,
      LogicalKeyboardKey.digit3,
      LogicalKeyboardKey.digit4,
    ]) {
      await tester.sendKeyEvent(digit);
      await tester.pump();
    }
    await tester.pumpAndSettle();
    expect(find.text(t.kids.bedtimeReached), findsNothing);
    expect(find.text('Child content'), findsOneWidget);
    await tester.pumpWidget(const SizedBox.shrink());
  });
}
