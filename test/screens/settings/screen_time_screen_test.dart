import 'package:drift/drift.dart' show Value;
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/screens/settings/screen_time_screen.dart';
import 'package:luroka/screens/settings/widgets/viewing_activity_charts.dart';
import 'package:luroka/services/screen_time_service.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:provider/provider.dart';
import '../../test_helpers/pump.dart';
import '../../test_helpers/profile_stack.dart';
import '../../test_helpers/prefs.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/active_profile_provider.dart';
import 'package:luroka/profiles/profile_avatar.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/focus/focusable_wrapper.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/widgets/optimized_media_image.dart';
import '../../test_helpers/multi_server_fixtures.dart';

void main() {
  setUpAll(() => initializeDateFormatting('en'));

  late AppDatabase db;
  late ScreenTimeService service;

  setUp(() {
    LocaleSettings.setLocaleSync(AppLocale.en);
  });

  // The database and service must be created inside the test body: drift's
  // async open path never completes when constructed outside the test's
  // FakeAsync zone.
  void initTargets() {
    db = AppDatabase.forTesting(NativeDatabase.memory());
    service = ScreenTimeService(database: db, profileId: 'p1');
    addTearDown(service.dispose);
    addTearDown(db.close);
  }

  Future<void> seedDaily(String localDate, int ms) =>
      db.addScreenTime(profileId: 'p1', localDate: localDate, durationMs: ms, updatedAt: 1);

  ScreenTimeSessionsCompanion sessionRow({
    String profileId = 'p1',
    required String localDate,
    required DateTime start,
    required DateTime end,
    required ScreenTimeMediaKind kind,
    String? itemKey,
    String? itemTitle,
    String? showTitle,
    int? seasonIndex,
    int? episodeIndex,
    String? thumbPath,
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
    thumbPath: Value(thumbPath),
  );

  Future<void> pumpScreen(WidgetTester tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [Provider<ScreenTimeService>.value(value: service)],
        child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: const ScreenTimeScreen()),
      ),
    );
    await tester.pumpAndSettle();
  }

  String dayKey(DateTime day) => localDateKey(DateTime(day.year, day.month, day.day));

  testWidgets('populates hero chips, sections, and session rows from seeded data', (tester) async {
    initTargets();
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1000, 3200);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);

    final now = DateTime.now();
    await seedDaily(dayKey(now), 45 * 60000);
    await seedDaily(dayKey(now.subtract(const Duration(days: 1))), 30 * 60000);
    await seedDaily(dayKey(now.subtract(const Duration(days: 3))), 90 * 60000);
    await db.addScreenTimeSessions([
      sessionRow(
        localDate: dayKey(now),
        start: DateTime(now.year, now.month, now.day, 10),
        end: DateTime(now.year, now.month, now.day, 11),
        kind: ScreenTimeMediaKind.movie,
        itemKey: '100',
        itemTitle: 'Movie A',
      ),
      sessionRow(
        localDate: dayKey(now),
        start: DateTime(now.year, now.month, now.day, 12),
        end: DateTime(now.year, now.month, now.day, 12, 20),
        kind: ScreenTimeMediaKind.episode,
        itemKey: '200',
        itemTitle: 'Winter is coming',
        showTitle: 'Show B',
        seasonIndex: 1,
        episodeIndex: 2,
        thumbPath: '/thumb/200',
      ),
    ]);

    await pumpScreen(tester);

    // Stat cards render as card labels, not separate group titles.
    expect(find.text(t.screenTime.today), findsOneWidget);
    expect(find.text(t.activityStats.heroAllTime), findsOneWidget);
    // Daily average is a subtitle inside the All Time card.
    expect(find.textContaining(t.activityStats.heroDailyAverage), findsOneWidget);
    // Section headers that exist in the new layout.
    expect(find.text(t.activityStats.trendTitle), findsOneWidget);
    expect(find.text(t.activityStats.topTitlesTitle), findsOneWidget);
    expect(find.text(t.activityStats.sessionsTitle), findsOneWidget);
    expect(find.text('45 min'), findsWidgets); // today's chip + default footer
    // "Movie A" renders twice: a Most-watched poster card and its session row.
    expect(find.text('Movie A'), findsNWidgets(2));
    // The episode session row leads with the series and its S/E position,
    // with the episode title underneath; the rail aggregates the series.
    expect(find.textContaining('S1 · E2'), findsAtLeastNWidgets(1));
    expect(find.textContaining('Winter is coming'), findsAtLeastNWidgets(1));
    expect(find.textContaining('Show B'), findsAtLeastNWidgets(2));
    expect(find.text(t.activityStats.kindMovie), findsOneWidget);
  });

  testWidgets('period summary reports the selected period rather than the all-time total', (tester) async {
    initTargets();
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1000, 3200);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);

    final now = DateTime.now();
    await seedDaily(dayKey(now), 45 * 60000);
    await seedDaily(dayKey(now.subtract(const Duration(days: 45))), 90 * 60000);

    await pumpScreen(tester);

    String summary() => tester.widget<Text>(find.byKey(const ValueKey('activity_period_summary'))).data!;
    expect(summary(), contains('45 min'));
    await tester.tap(find.byKey(const ValueKey('activity_period_all')));
    await pumpUntil(tester, () => summary().contains('2 hr 15 min'));
    expect(summary(), contains(t.activityStats.allTime));
    await tester.tap(find.byKey(const ValueKey('activity_period_last7')));
    await pumpUntil(tester, () => summary().contains(t.activityStats.last7Days));
    expect(summary(), contains('45 min'));
  });

  testWidgets('period chips re-window the chart without breaking the chips', (tester) async {
    initTargets();
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1000, 3200);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);

    final now = DateTime.now();
    await seedDaily(dayKey(now), 45 * 60000);

    await pumpScreen(tester);

    await tester.tap(find.text(t.activityStats.last7Days));
    await tester.pumpAndSettle();

    expect(find.text('45 min'), findsWidgets);
    await pumpUntil(
      tester,
      () => tester.widget<StatsDailyBarChart>(find.byType(StatsDailyBarChart)).segments.length == 7,
    );
    expect(tester.widget<StatsDailyBarChart>(find.byType(StatsDailyBarChart)).segments, hasLength(7));
  });

  testWidgets('Year means the current calendar year and All includes older history', (tester) async {
    initTargets();
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1000, 3200);
    addTearDown(tester.view.reset);
    final now = DateTime.now();
    await seedDaily(dayKey(now), 45 * 60000);
    await seedDaily(dayKey(DateTime(now.year - 1, 12, 31)), 90 * 60000);
    await seedDaily(dayKey(DateTime(now.year - 3)), 60 * 60000);
    await pumpScreen(tester);
    String summary() => tester.widget<Text>(find.byKey(const ValueKey('activity_period_summary'))).data!;
    await tester.tap(find.byKey(const ValueKey('activity_period_year')));
    await pumpUntil(tester, () => summary().contains(t.activityStats.thisYear));
    expect(summary(), contains('45 min'));
    await tester.tap(find.byKey(const ValueKey('activity_period_all')));
    await pumpUntil(tester, () => summary().contains('3 hr 15 min'));
    expect(summary(), contains(t.activityStats.allTime));
  });

  testWidgets('viewing trend supports touch selection and reports the selected day', (tester) async {
    initTargets();
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1000, 3200);
    addTearDown(tester.view.reset);
    final now = DateTime.now();
    await seedDaily(dayKey(now), 45 * 60000);
    await seedDaily(dayKey(now.subtract(const Duration(days: 3))), 90 * 60000);
    await pumpScreen(tester);
    final rect = tester.getRect(find.byType(StatsDailyBarChart));
    await tester.tapAt(Offset(rect.left + rect.width * (26.5 / 30), rect.center.dy));
    await tester.pump();
    expect(tester.widget<Text>(find.byKey(const ValueKey('activity_trend_selection'))).data, contains('1 hr 30 min'));
  });

  testWidgets('viewing trend exposes the selected day to screen readers', (tester) async {
    initTargets();
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1000, 3200);
    addTearDown(tester.view.reset);
    final handle = tester.ensureSemantics();
    await seedDaily(dayKey(DateTime.now()), 45 * 60000);
    await pumpScreen(tester);
    final chart = find.byType(StatsDailyBarChart);
    final semantics = tester.widget<Semantics>(find.descendant(of: chart, matching: find.byType(Semantics)).first);
    expect(semantics.properties.label, t.activityStats.trendTitle);
    expect(semantics.properties.value, contains('45 min'));
    expect(semantics.properties.onIncrease, isNotNull);
    expect(semantics.properties.onDecrease, isNotNull);
    handle.dispose();
  });

  testWidgets('a profile with no data shows the designed empty state', (tester) async {
    initTargets();
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1000, 3200);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);

    await pumpScreen(tester);

    expect(find.text(t.activityStats.emptyTitle), findsOneWidget);
    expect(find.text(t.activityStats.emptyBody), findsOneWidget);
    expect(find.text(t.activityStats.trendTitle), findsNothing);
  });

  testWidgets('show more loads the remaining session rows', (tester) async {
    initTargets();
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1000, 3200);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);

    final now = DateTime.now();
    await seedDaily(dayKey(now), 45 * 60000);
    await db.addScreenTimeSessions([
      for (var i = 0; i < 9; i++)
        sessionRow(
          localDate: dayKey(now),
          start: DateTime(now.year, now.month, now.day, 8 + i),
          end: DateTime(now.year, now.month, now.day, 8 + i, 30),
          kind: ScreenTimeMediaKind.episode,
          itemKey: '20$i',
          itemTitle: 'Episode $i',
        ),
    ]);

    await pumpScreen(tester);

    expect(find.text(t.activityStats.showMore), findsOneWidget);
    expect(find.textContaining('Episode 8'), findsOneWidget);

    await tester.tap(find.text(t.activityStats.showMore));
    await pumpUntil(tester, () => find.text(t.activityStats.showMore).evaluate().isEmpty);

    expect(find.textContaining('Episode 8'), findsOneWidget);
    expect(find.text(t.activityStats.showMore), findsNothing);
  });

  testWidgets('profile override renders another person’s ledger, not the active one', (tester) async {
    initTargets();
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1000, 3200);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);

    final now = DateTime.now();
    await seedDaily(dayKey(now), 60 * 60000);
    // The active profile's data must stay out of the overridden view.
    await db.addScreenTime(profileId: 'p1', localDate: dayKey(now), durationMs: 6 * 60000, updatedAt: 1);
    await db.addScreenTime(profileId: 'p2', localDate: dayKey(now), durationMs: 60 * 60000, updatedAt: 1);
    await db.addScreenTimeSessions([
      sessionRow(
        profileId: 'p2',
        localDate: dayKey(now),
        start: DateTime(now.year, now.month, now.day, 10),
        end: DateTime(now.year, now.month, now.day, 11),
        kind: ScreenTimeMediaKind.movie,
        itemKey: '100',
        itemTitle: 'Movie A',
      ),
    ]);

    await tester.pumpWidget(
      MultiProvider(
        providers: [Provider<ScreenTimeService>.value(value: service)],
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: const ScreenTimeScreen(profileId: 'p2'),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('1 hr'), findsWidgets); // p2's hero tile + footer
    expect(find.textContaining('Movie A'), findsAtLeastNWidgets(1));
    expect(find.text('6 min'), findsNothing); // p1's time stays out
  });

  testWidgets('profile override uses the selected profile avatar and name', (tester) async {
    resetSharedPreferencesForTest();
    initTargets();
    final graph = await ProfileStack.create(db: db);
    addTearDown(graph.dispose);
    final parent = Profile.local(id: 'p1', displayName: 'Parent', createdAt: DateTime(2026));
    final child = Profile.local(id: 'p2', displayName: 'Alex', createdAt: DateTime(2026));
    await graph.profiles.upsert(parent);
    await graph.profiles.upsert(child);
    await graph.storage.setActiveProfileId(parent.id);
    await graph.active.initialize();
    await db.addScreenTime(profileId: 'p2', localDate: dayKey(DateTime.now()), durationMs: 3600000, updatedAt: 1);
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          Provider<ScreenTimeService>.value(value: service),
          ChangeNotifierProvider<ActiveProfileProvider>.value(value: graph.active),
        ],
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: const ScreenTimeScreen(profileId: 'p2'),
        ),
      ),
    );
    await pumpUntil(tester, () => find.byKey(const ValueKey('activity_hero')).evaluate().isNotEmpty);
    expect(find.text('Alex'), findsOneWidget);
    expect(tester.widget<ProfileAvatar>(find.byType(ProfileAvatar)).profile?.id, 'p2');
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('most-watched artwork uses the matching session server and remains optional', (tester) async {
    initTargets();
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(960, 800);
    addTearDown(tester.view.reset);
    final client = _ArtworkClient();
    final servers = testMultiServer(clients: [client]);
    final now = DateTime.now();
    await seedDaily(dayKey(now), 60000);
    await db.addScreenTimeSessions([
      sessionRow(
        localDate: dayKey(now),
        start: now.subtract(const Duration(minutes: 1)),
        end: now,
        kind: ScreenTimeMediaKind.movie,
        itemKey: '100',
        itemTitle: 'Movie A',
        thumbPath: '/art/100',
      ),
    ]);
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          Provider<ScreenTimeService>.value(value: service),
          ChangeNotifierProvider<MultiServerProvider>.value(value: servers.provider),
        ],
        child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: const ScreenTimeScreen()),
      ),
    );
    await pumpUntil(tester, () => find.byKey(const ValueKey('activity_hero')).evaluate().isNotEmpty);
    final image = tester.widget<OptimizedMediaImage>(
      find.descendant(of: find.byKey(const ValueKey('activity_hero')), matching: find.byType(OptimizedMediaImage)),
    );
    expect(image.imagePath, '/art/100');
    expect(image.client, same(client));
    final rail = tester.widget<StatsTopTitlesRail>(find.byType(StatsTopTitlesRail));
    expect(rail.artworkFor!(rail.entries.single)?.client, same(client));
    expect(rail.onOpenFor!(rail.entries.single), isNotNull);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  for (final viewport in [const Size(320, 700), const Size(768, 1024), const Size(960, 540)]) {
    testWidgets('dashboard fits $viewport with enlarged text', (tester) async {
      initTargets();
      final tv = viewport.width == 960;
      TvDetectionService.debugSetAppleTVOverride(tv);
      addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = viewport;
      addTearDown(tester.view.reset);
      await seedDaily(dayKey(DateTime.now()), 90 * 60000);
      await tester.pumpWidget(
        Provider<ScreenTimeService>.value(
          value: service,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            builder: (context, child) => MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.3)),
              child: child!,
            ),
            home: const ScreenTimeScreen(),
          ),
        ),
      );
      await pumpUntil(tester, () => find.byKey(const ValueKey('activity_hero')).evaluate().isNotEmpty);
      await tester.ensureVisible(find.text(t.activityStats.hoursTitle).last);
      await tester.pumpAndSettle();
      await tester.pumpWidget(const SizedBox.shrink());
    });
  }

  testWidgets('light TV dashboard stays readable with doubled text', (tester) async {
    initTargets();
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(960, 540);
    addTearDown(tester.view.reset);
    await seedDaily(dayKey(DateTime.now()), 90 * 60000);
    await tester.pumpWidget(
      Provider<ScreenTimeService>.value(
        value: service,
        child: MaterialApp(
          theme: monoTheme(MonoPalette.light),
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(2)),
            child: child!,
          ),
          home: const ScreenTimeScreen(),
        ),
      ),
    );
    await pumpUntil(tester, () => find.byKey(const ValueKey('activity_hero')).evaluate().isNotEmpty);
    await tester.ensureVisible(find.text(t.activityStats.hoursTitle).last);
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('TV remote can focus poster cards and use the page back button', (tester) async {
    initTargets();
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(960, 540);
    addTearDown(tester.view.reset);
    final now = DateTime.now();
    await seedDaily(dayKey(now), 60000);
    await db.addScreenTimeSessions([
      for (var i = 0; i < 5; i++)
        sessionRow(
          localDate: dayKey(now),
          start: now.subtract(Duration(minutes: i + 2)),
          end: now.subtract(Duration(minutes: i + 1)),
          kind: ScreenTimeMediaKind.movie,
          itemKey: 'movie_$i',
          itemTitle: 'Movie $i',
        ),
    ]);
    await tester.pumpWidget(
      Provider<ScreenTimeService>.value(
        value: service,
        child: InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: Builder(
              builder: (context) => Scaffold(
                body: TextButton(
                  onPressed: () =>
                      Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const ScreenTimeScreen())),
                  child: const Text('Open activity'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Open activity'));
    await pumpUntil(tester, () => find.byKey(const ValueKey('activity_top_title_0')).evaluate().isNotEmpty);
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'ViewingActivityBack');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, isNot('ViewingActivityBack'));
    final chart = find.byType(StatsDailyBarChart);
    await tester.ensureVisible(chart);
    final chartFocus = tester.widget<Focus>(find.descendant(of: chart, matching: find.byType(Focus)).first).focusNode!;
    chartFocus.requestFocus();
    await tester.pumpAndSettle();
    final before = tester.widget<Text>(find.byKey(const ValueKey('activity_trend_selection'))).data;
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowLeft);
    await tester.pumpAndSettle();
    expect(tester.widget<Text>(find.byKey(const ValueKey('activity_trend_selection'))).data, isNot(before));
    final card = find.byKey(const ValueKey('activity_top_title_0'));
    await tester.ensureVisible(card);
    final focus = tester.widget<Focus>(find.descendant(of: card, matching: find.byType(Focus)).first).focusNode!;
    focus.requestFocus();
    await tester.pumpAndSettle();
    expect(focus.hasFocus, isTrue);
    expect(tester.widget<FocusableWrapper>(card).canRequestFocus, isTrue);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    final next = find.byKey(const ValueKey('activity_top_title_1'));
    final nextFocus = tester.widget<Focus>(find.descendant(of: next, matching: find.byType(Focus)).first).focusNode!;
    expect(nextFocus.hasFocus, isTrue);
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    expect(find.text('Open activity'), findsOneWidget);
  });

  testWidgets('TV layout shows the viewing trend and hour strip', (tester) async {
    initTargets();
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(960, 540);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));

    final now = DateTime.now();
    await seedDaily(dayKey(now), 45 * 60000);
    final threeDaysAgo = dayKey(now.subtract(const Duration(days: 3)));
    await seedDaily(threeDaysAgo, 90 * 60000);

    await pumpScreen(tester);

    expect(find.byType(StatsDailyBarChart), findsOneWidget);
    expect(find.byType(StatsActivityHeatmap), findsNothing);
    expect(find.text(t.activityStats.hoursTitle), findsOneWidget);
  });
}

class _ArtworkClient implements MediaServerClient {
  @override
  ServerId get serverId => ServerId('srv');
  @override
  MediaBackend get backend => MediaBackend.plex;
  @override
  String thumbnailUrl(String? path, {int? width, int? height, bool cover = true}) => '';
  @override
  void close() {}
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
