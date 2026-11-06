import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_rating.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/studio_spotlight.dart';
import 'package:luroka/widgets/studio_cinematic_spotlight.dart';
import 'package:luroka/widgets/media_rating_badge.dart';

import '../test_helpers/prefs.dart';

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    await StorageService.getInstance();
    await SettingsService.getInstance();
  });

  final item = MediaItem(
    id: 'title',
    backend: MediaBackend.plex,
    kind: MediaKind.movie,
    title: 'A very long title that still needs to be completely readable when opening its overview',
    year: 2025,
    rating: 8.5,
    durationMs: 7200000,
    summary: List.generate(
      55,
      (i) => 'Paragraph $i: A long story deserves room to breathe, with every word available to read.',
    ).join('\n\n'),
  );

  for (final collapsed in [false, true]) {
    testWidgets('studio ratings keep IMDb attribution in ${collapsed ? "compact" : "expanded"} preview', (
      tester,
    ) async {
      final focus = FocusNode();
      addTearDown(focus.dispose);
      final rated = item.copyWith(
        ratings: const [
          MediaRatingSource(source: 'rottenTomatoesCritic', value: 9.2),
          MediaRatingSource(source: 'imdb', value: 8.3),
          MediaRatingSource(source: 'tmdb', value: 8.1),
        ],
      );
      await tester.pumpWidget(
        InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: Scaffold(
              body: SizedBox(
                height: collapsed ? 88 : 200,
                child: StudioCinematicSpotlight(
                  item: rated,
                  artwork: rated,
                  client: null,
                  tint: Colors.red,
                  overviewFocus: focus,
                  onOverview: () {},
                  onNavigateUp: () {},
                  onNavigateDown: () {},
                  collapsed: collapsed,
                ),
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final badges = tester.widget<InlineRatingBadges>(find.byKey(const ValueKey('studio_preview_ratings')));
      expect(badges.ratings.first.source, 'imdb');
      expect(badges.ratings.first.value, 8.3);
      expect(badges.ratings, hasLength(2));
      expect(find.textContaining('2025'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('overview scrolls with the remote and restores spotlight focus on close', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1280, 720);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final overview = FocusNode(debugLabel: 'test_studio_overview');
    addTearDown(overview.dispose);
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: Scaffold(
            body: Builder(
              builder: (context) => SizedBox(
                height: 280,
                child: StudioSpotlight(
                  item: item,
                  artwork: item,
                  studioName: 'Disney+',
                  tint: Colors.blue,
                  overviewFocus: overview,
                  onOverview: () async {
                    await showDialog<void>(
                      context: context,
                      builder: (_) => StudioOverviewDialog(item: item, tint: Colors.blue),
                    );
                    overview.requestFocus();
                  },
                  onNavigateDown: () {},
                  onNavigateUp: () {},
                ),
              ),
            ),
          ),
        ),
      ),
    );
    overview.requestFocus();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'studio_overview_reader');
    final text = tester.widget<Text>(find.byKey(const ValueKey('studio_full_synopsis')));
    expect(text.data, item.summary);
    expect(text.maxLines, isNull);
    expect(text.overflow, isNull);
    final scroll = tester
        .widget<SingleChildScrollView>(find.byKey(const ValueKey('studio_overview_scroll')))
        .controller!;
    expect(scroll.position.maxScrollExtent, greaterThan(0));
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pump();
    expect(scroll.offset, 80);
    await tester.sendKeyEvent(LogicalKeyboardKey.pageDown);
    await tester.pump();
    expect(scroll.offset, greaterThan(160));
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pump();
    final before = scroll.offset;
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pump();
    expect(scroll.offset, lessThan(before));
    scroll.jumpTo(scroll.position.maxScrollExtent);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'studio_overview_close');
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(find.byType(StudioOverviewDialog), findsNothing);
    expect(overview.hasFocus, isTrue);
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    expect(find.byType(StudioOverviewDialog), findsNothing);
    expect(overview.hasFocus, isTrue);
    expect(tester.takeException(), isNull);
  });

  for (final (size, height, scale, compact) in [
    (const Size(960, 540), 185.0, 1.0, false),
    (const Size(1280, 720), 250.0, 1.0, false),
    (const Size(1920, 1080), 300.0, 1.0, false),
    (const Size(320, 640), 90.0, 1.5, true),
    (const Size(640, 320), 64.0, 1.0, true),
  ]) {
    testWidgets('spotlight and complete overview fit $size at text scale $scale', (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = size;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      final focus = FocusNode();
      addTearDown(focus.dispose);
      await tester.pumpWidget(
        InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            builder: (context, child) => MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(scale)),
              child: child!,
            ),
            home: Scaffold(
              body: Builder(
                builder: (context) => SizedBox(
                  height: height,
                  child: StudioSpotlight(
                    item: item,
                    artwork: item,
                    studioName: 'Disney+',
                    tint: Colors.blue,
                    overviewFocus: focus,
                    compact: compact,
                    onOverview: () => showDialog<void>(
                      context: context,
                      builder: (_) => StudioOverviewDialog(item: item, tint: Colors.blue),
                    ),
                    onNavigateDown: () {},
                    onNavigateUp: () {},
                  ),
                ),
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      if (!compact) {
        expect(find.byKey(const ValueKey('studio_visible_synopsis')), findsOneWidget);
      }
      await tester.tap(find.text(t.fileInfo.overview));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      final scroll = tester
          .widget<SingleChildScrollView>(find.byKey(const ValueKey('studio_overview_scroll')))
          .controller!;
      scroll.jumpTo(scroll.position.maxScrollExtent);
      await tester.pump();
      final fullText = tester.getRect(find.byKey(const ValueKey('studio_full_synopsis')));
      final viewport = tester.getRect(find.byKey(const ValueKey('studio_overview_scroll')));
      expect(fullText.bottom, lessThanOrEqualTo(viewport.bottom));
      expect(find.text(t.common.close).hitTestable(), findsOneWidget);
      await tester.tap(find.text(t.common.close));
      await tester.pumpAndSettle();
      expect(find.byType(StudioOverviewDialog), findsNothing);
    });
  }

  testWidgets('editorial synopsis stays visible and scrolls inline with the remote', (tester) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1280, 720);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final focus = FocusNode(debugLabel: 'editorial_reader');
    addTearDown(focus.dispose);
    var returnedToGrid = false;
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: Scaffold(
            body: SizedBox(
              width: 500,
              height: 560,
              child: StudioEditorialSpotlight(
                item: item,
                studioName: 'Disney+',
                tint: Colors.blue,
                overviewFocus: focus,
                onOverview: () {},
                onNavigateUp: () {},
                onNavigateDown: () {},
                onNavigateRight: () => returnedToGrid = true,
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    final summary = tester.widget<Text>(find.byKey(const ValueKey('studio_visible_synopsis')));
    expect(summary.data, item.summary);
    expect(summary.maxLines, isNull);
    expect(summary.overflow, isNull);
    expect(find.byType(StudioOverviewDialog), findsNothing);
    final scroll = tester
        .widget<SingleChildScrollView>(find.byKey(const ValueKey('studio_inline_overview_scroll')))
        .controller!;
    expect(scroll.position.viewportDimension, greaterThan(100));
    focus.requestFocus();
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pump();
    expect(scroll.offset, 70);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    expect(returnedToGrid, isTrue);
    scroll.jumpTo(scroll.position.maxScrollExtent);
    await tester.pump();
    final summaryRect = tester.getRect(find.byKey(const ValueKey('studio_visible_synopsis')));
    final viewportRect = tester.getRect(find.byKey(const ValueKey('studio_inline_overview_scroll')));
    expect(summaryRect.bottom, lessThanOrEqualTo(viewportRect.bottom));
    // Changing the selected title resets reading to its beginning.
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: Scaffold(
            body: SizedBox(
              width: 500,
              height: 560,
              child: StudioEditorialSpotlight(
                item: item.copyWith(id: 'next', summary: 'The next movie synopsis.'),
                studioName: 'Disney+',
                tint: Colors.blue,
                overviewFocus: focus,
                onOverview: () {},
                onNavigateUp: () {},
                onNavigateDown: () {},
                onNavigateRight: () {},
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('The next movie synopsis.'), findsOneWidget);
    expect(scroll.offset, 0);
    expect(tester.takeException(), isNull);
  });
}
