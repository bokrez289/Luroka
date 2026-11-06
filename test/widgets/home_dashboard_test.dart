import 'dart:io';
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/focus/locked_hub_controller.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/home_layout.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_hub.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/services/device_performance.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/home_dashboard.dart';
import 'package:luroka/widgets/mobile_home_carousel.dart';
import 'package:luroka/widgets/cycling_media_backdrop.dart';
import 'package:luroka/widgets/hub_section.dart';
import 'package:luroka/widgets/media_card.dart';
import 'package:luroka/widgets/studio_card.dart';
import 'package:luroka/widgets/tv_screen_insets.dart';

import '../test_helpers/media_items.dart';
import '../test_helpers/prefs.dart';

MediaItem movie(String id, String title) =>
    testMediaItem(id: id, backend: MediaBackend.plex, kind: MediaKind.movie, title: title).copyWith(
      year: 2026,
      durationMs: 7200000,
      rating: 8.4,
      contentRating: 'PG-13',
      genres: ['Adventure'],
      summary: 'The synopsis for $title.',
    );

MediaHub shelf(String id, List<MediaItem> items) => MediaHub(id: id, title: id, type: 'movie', items: items);

void main() {
  setUpAll(() async {
    LocaleSettings.setLocaleSync(AppLocale.en);
    await (FontLoader('Inter')..addFont(rootBundle.load('assets/fonts/Inter-Regular.ttf'))).load();
  });
  setUp(() async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
    DevicePerformance.debugReset();
  });
  tearDown(() {
    TvDetectionService.debugSetAppleTVOverride(null);
    DevicePerformance.debugReset();
  });

  final a = movie('a', 'The quiet horizon');
  final b = movie('b', 'Beyond the blue');
  final episode =
      testMediaItem(
        id: 'episode',
        backend: MediaBackend.plex,
        kind: MediaKind.episode,
        title: 'The secret revealed',
      ).copyWith(
        grandparentTitle: 'The long journey',
        parentIndex: 2,
        index: 4,
        summary: 'An episode-specific synopsis.',
        durationMs: 2700000,
        viewOffsetMs: 900000,
        artPath: 'episode-art',
        grandparentArtPath: 'series-art',
      );

  Future<GlobalKey<HomeDashboardState>> mount(
    WidgetTester tester, {
    Size size = const Size(1280, 720),
    bool tv = true,
    double textScale = 1,
    bool light = false,
    bool showFeature = true,
    List<MediaHub>? rows,
    List<MediaItem> trendingItems = const [],
    bool featureLoading = false,
    ValueChanged<MediaItem>? onPlay,
    ValueChanged<MediaItem>? onDetails,
    ValueChanged<MediaItem>? onResume,
    ValueChanged<MediaItem>? onStudioTap,
    bool tvShell = false,
  }) async {
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    TvDetectionService.debugSetAppleTVOverride(tv);
    final key = GlobalKey<HomeDashboardState>();
    final theme = monoTheme(light ? MonoPalette.light : MonoPalette.dark);
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: theme,
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(textScale)),
            child: child!,
          ),
          home: RepaintBoundary(
            key: const ValueKey('dashboard_preview'),
            child: TvScreenInsets(
              child: Column(
                children: [
                  if (tvShell) const SizedBox(height: 72),
                  Expanded(
                    child: HomeDashboard(
                      key: key,
                      rows:
                          rows ??
                          [
                            shelf('Movie night', [a, b]),
                            MediaHub(
                              id: homeContinueWatchingId,
                              title: t.discover.continueWatching,
                              type: 'mixed',
                              items: [episode],
                            ),
                          ],
                      onDeck: [episode],
                      trendingItems: trendingItems,
                      featureLoading: featureLoading,
                      toolbar: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Icon(Icons.tune_rounded), SizedBox(width: 24), Icon(Icons.account_circle_outlined)],
                      ),
                      focusMemory: HubFocusMemory(),
                      resolveClient: (_) => null,
                      onPlay: onPlay ?? (_) {},
                      onDetails: onDetails ?? (_) {},
                      onResume: onResume ?? (_) {},
                      onStudioTap: onStudioTap,
                      onSidebar: () {},
                      onToolbar: () {},
                      onRefresh: (_) {},
                      onRemoveFromContinueWatching: () {},
                      loadMoreItems: (_) => null,
                      showFeature: showFeature,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    return key;
  }

  String text(WidgetTester tester, String key) =>
      tester.widget<Text>(find.byKey(ValueKey(key), skipOffstage: false)).data!;

  testWidgets('pending trends do not flash a recently added title as the featured recommendation', (tester) async {
    await mount(
      tester,
      featureLoading: true,
      rows: [
        shelf('Recently added', [a]),
      ],
    );
    expect(find.byKey(const ValueKey('home_feature_loading')), findsOneWidget);
    expect(find.text('Recently added'), findsOneWidget);
  });

  testWidgets('late trending content cannot stack its hero below a focused studio preview', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    final rows = [
      MediaHub(id: homeStudiosId, title: 'Studios', type: 'studio', items: [movie('studio', 'Disney')]),
    ];
    final key = GlobalKey<HomeDashboardState>();
    final trends = ValueNotifier<List<MediaItem>>([]);
    addTearDown(trends.dispose);
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: ValueListenableBuilder<List<MediaItem>>(
            valueListenable: trends,
            builder: (_, items, _) => HomeDashboard(
              key: key,
              rows: rows,
              onDeck: const [],
              trendingItems: items,
              featureLoading: items.isEmpty,
              toolbar: const SizedBox(),
              focusMemory: HubFocusMemory(),
              resolveClient: (_) => null,
              onPlay: (_) {},
              onDetails: (_) {},
              onResume: (_) {},
              onSidebar: () {},
              onToolbar: () {},
              onRefresh: (_) {},
              onRemoveFromContinueWatching: () {},
              loadMoreItems: (_) => null,
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(key.currentState!.requestContentFocus(), isTrue);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('home_feature_loading')), findsOneWidget);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('home_browse_description')), findsOneWidget);
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'hub_custom_studios');
    trends.value = [a];
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('home_browse_description')), findsOneWidget);
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'hub_custom_studios');
    expect(find.byKey(const ValueKey('home_feature_billboard')), findsNothing);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('home_feature_billboard')), findsOneWidget);
    expect(find.byKey(const ValueKey('home_browse_description')), findsNothing);
  });

  testWidgets('Plex recently added episodes use show posters while Continue Watching uses episode stills', (
    tester,
  ) async {
    final plexEpisode = episode.copyWith(thumbPath: '/episode-still', grandparentThumbPath: '/show-poster');
    await mount(
      tester,
      rows: [
        MediaHub(id: 'tv.recentlyadded', title: 'Recently Added in Anime', type: 'episode', items: [plexEpisode]),
        MediaHub(id: homeContinueWatchingId, title: 'Continue Watching', type: 'episode', items: [plexEpisode]),
      ],
    );
    final recent = tester
        .widgetList<HubSection>(find.byType(HubSection))
        .firstWhere((row) => row.hub.id == 'tv.recentlyadded');
    expect(plexEpisode.posterThumb(mode: recent.episodePosterModeOverride!), '/show-poster');
    expect(plexEpisode.usesWideAspectRatio(recent.episodePosterModeOverride!), isFalse);
    await tester.drag(find.byType(CustomScrollView).first, const Offset(0, -500));
    await tester.pumpAndSettle();
    final continuing = tester
        .widgetList<HubSection>(find.byType(HubSection))
        .firstWhere((row) => row.hub.id == homeContinueWatchingId);
    expect(plexEpisode.posterThumb(mode: continuing.episodePosterModeOverride!), '/episode-still');
  });

  for (final size in [const Size(960, 540), const Size(1280, 720), const Size(1920, 1080), const Size(3840, 2160)]) {
    testWidgets('active poster artwork fits fully inside the safe TV viewport at $size', (tester) async {
      final key = await mount(tester, size: size, tvShell: true);
      key.currentState!.requestContentFocus();
      await tester.pumpAndSettle();
      expect(FocusManager.instance.primaryFocus?.debugLabel, 'dashboard_play');
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pumpAndSettle();
      final viewport = tester.getRect(find.byType(CustomScrollView));
      final first = tester.getRect(find.byType(MediaCard).first);
      expect(first.bottom, lessThanOrEqualTo(viewport.bottom - 4));
      expect(first.top, greaterThanOrEqualTo(viewport.top));
      expect(first.bottom, lessThan(size.height * 0.97));
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('cinematic Home opens on a large billboard above unboxed shelves', (tester) async {
    await mount(tester);
    expect(text(tester, 'home_preview_title'), a.title);
    expect(text(tester, 'home_preview_summary'), a.summary);
    expect(text(tester, 'home_preview_metadata'), contains('2026'));
    expect(find.text('8.4', findRichText: true), findsWidgets);
    expect(find.text(t.dashboard.jumpBackIn), findsNothing);
    expect(tester.widgetList<HubSection>(find.byType(HubSection)).every((hub) => !hub.showHeaderIcon), isTrue);
    expect(
      tester
          .widgetList<MediaCard>(find.byType(MediaCard))
          .where((card) => card.item is MediaItem && (card.item as MediaItem).kind == MediaKind.movie)
          .every((card) => card.cinemaArtwork),
      isTrue,
    );
    expect(tester.takeException(), isNull);
    final preview = Platform.environment['PLEZY_DASHBOARD_PREVIEW'];
    if (preview != null) {
      final boundary = tester.renderObject<RenderRepaintBoundary>(find.byKey(const ValueKey('dashboard_preview')));
      await tester.runAsync(() async {
        final image = await boundary.toImage(pixelRatio: 1);
        final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
        await File(preview).writeAsBytes(bytes!.buffer.asUint8List());
        image.dispose();
      });
    }
  });

  testWidgets('idle spotlight rotates, pauses on input and hidden tabs, and retains the session selection', (
    tester,
  ) async {
    await SettingsService.instance.write(SettingsService.homeSpotlightInterval, 12);
    final key = await mount(tester, trendingItems: [a, b]);
    final first = text(tester, 'home_preview_title');
    await tester.pump(const Duration(seconds: 13));
    await tester.pump(const Duration(milliseconds: 400));
    expect(text(tester, 'home_preview_title'), isNot(first));
    final second = text(tester, 'home_preview_title');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pump(const Duration(seconds: 13));
    expect(text(tester, 'home_preview_title'), second);
    key.currentState!.setPreviewActive(false);
    await tester.pump(const Duration(seconds: 40));
    expect(text(tester, 'home_preview_title'), second);
    key.currentState!.setPreviewActive(true);
    await tester.pump(const Duration(seconds: 26));
    await tester.pump(const Duration(milliseconds: 400));
    expect(text(tester, 'home_preview_title'), first);
    final navigator = Navigator.of(tester.element(find.byType(HomeDashboard)));
    unawaited(navigator.push(MaterialPageRoute<void>(builder: (_) => const Scaffold(body: Text('Detail page')))));
    await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds: 40));
    navigator.pop();
    await tester.pumpAndSettle();
    expect(text(tester, 'home_preview_title'), first);
    await tester.pump(const Duration(seconds: 26));
    await tester.pump(const Duration(milliseconds: 400));
    expect(text(tester, 'home_preview_title'), second);
    await SettingsService.instance.write(SettingsService.homeSpotlightAutoRotate, false);
    await tester.pump(const Duration(seconds: 40));
    expect(text(tester, 'home_preview_title'), second);
  });

  testWidgets('weekly library trends take billboard priority and actions keep the real library identity', (
    tester,
  ) async {
    MediaItem? played;
    final trending = b.copyWith(serverId: 'real-server', libraryId: 'real-library');
    await mount(tester, trendingItems: [trending], onPlay: (item) => played = item);
    expect(text(tester, 'home_preview_title'), b.title);
    expect(find.text(t.lurokaDiscovery.weeklyLibrary), findsOneWidget);
    await tester.tap(find.text(t.common.play));
    expect(played?.id, b.id);
    expect(played?.serverId, 'real-server');
    expect(played?.libraryId, 'real-library');
    expect(tester.takeException(), isNull);
  });

  testWidgets('a featured library show exposes Play and preserves its server identity', (tester) async {
    MediaItem? played;
    final show = b.copyWith(kind: MediaKind.show, serverId: 'real-server', libraryId: 'series');
    await mount(tester, trendingItems: [show], onPlay: (item) => played = item);
    await tester.tap(find.text(t.common.play));
    expect(played?.kind, MediaKind.show);
    expect(played?.serverId, 'real-server');
  });

  testWidgets('studio tiles activate their browser callback with the remote without opening a collection', (
    tester,
  ) async {
    MediaItem? selected;
    final studio = MediaItem(
      id: 'a24',
      backend: MediaBackend.plex,
      kind: MediaKind.collection,
      title: 'A24',
      raw: const {'customStudio': 'a24'},
    );
    final key = await mount(
      tester,
      rows: [
        MediaHub(id: homeStudiosId, title: t.studios.title, type: 'studio', items: [studio]),
      ],
      onStudioTap: (item) => selected = item,
    );
    expect(find.byType(StudioCard), findsOneWidget);
    expect(find.byType(MediaCard), findsNothing);
    key.currentState!.requestContentFocus();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    expect(selected?.raw?['customStudio'], 'a24');
  });

  testWidgets('D-pad focus leaves the curated billboard stable while its actions stay on the billboard', (
    tester,
  ) async {
    MediaItem? played;
    MediaItem? details;
    final key = await mount(tester, onPlay: (item) => played = item, onDetails: (item) => details = item);
    key.currentState!.requestContentFocus();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'hub_Movie night');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pump();
    expect(text(tester, 'home_browse_title'), b.title);
    expect(text(tester, 'home_browse_summary'), b.summary);
    expect(find.byKey(const ValueKey('home_feature_billboard')), findsNothing);
    expect(played, isNull);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'dashboard_play');
    expect(text(tester, 'home_preview_title'), a.title);
    expect(text(tester, 'home_preview_summary'), a.summary);
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    expect(played?.globalKey, a.globalKey);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    expect(details?.globalKey, a.globalKey);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'hub_Movie night');
  });

  testWidgets('focusing Continue Watching shows its preview without stacking the billboard', (tester) async {
    final key = await mount(tester);
    key.currentState!.requestContentFocus();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'hub_$homeContinueWatchingId');
    expect(find.byKey(const ValueKey('home_feature_billboard')), findsNothing);
    expect(
      tester.getBottomLeft(find.byKey(const ValueKey('home_browse_summary'))).dy,
      lessThanOrEqualTo(tester.getTopLeft(find.byType(CustomScrollView)).dy),
    );
  });

  testWidgets('Resume targets the billboard episode rather than its series', (tester) async {
    MediaItem? selected;
    final key = await mount(
      tester,
      rows: [
        MediaHub(id: homeContinueWatchingId, title: t.discover.continueWatching, type: 'episode', items: [episode]),
      ],
      onResume: (item) => selected = item,
    );
    key.currentState!.requestContentFocus();
    await tester.pumpAndSettle();
    expect(text(tester, 'home_preview_title'), episode.grandparentTitle);
    expect(text(tester, 'home_preview_episode'), contains('S2 · E4'));
    expect(text(tester, 'home_preview_episode'), contains(episode.title!));
    expect(text(tester, 'home_preview_summary'), episode.summary);
    expect(text(tester, 'home_preview_metadata'), contains('30 min left'));
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    expect(selected?.globalKey, episode.globalKey);
    expect(selected?.viewOffsetMs, episode.viewOffsetMs);
  });

  testWidgets('spoiler preference masks episode title, synopsis and episode artwork', (tester) async {
    await SettingsService.instance.write(SettingsService.hideSpoilers, true);
    await mount(
      tester,
      rows: [
        shelf('Episodes', [episode]),
      ],
    );
    await tester.pump(const Duration(milliseconds: 240));
    expect(text(tester, 'home_preview_episode'), 'S2 · E4');
    expect(text(tester, 'home_preview_summary'), t.dashboard.spoilerHidden);
    final image = tester.widget<CyclingMediaBackdrop>(find.byType(CyclingMediaBackdrop));
    expect(image.imagePaths, isNot(contains('episode-art')));
    expect(image.imagePaths, contains('series-art'));
  });

  testWidgets('a protected episode without a series name cannot expose its title in the preview heading', (
    tester,
  ) async {
    await SettingsService.instance.write(SettingsService.hideSpoilers, true);
    await mount(
      tester,
      rows: [
        shelf('Episodes', [episode.copyWith(grandparentTitle: null)]),
      ],
    );
    expect(text(tester, 'home_preview_title'), t.dashboard.episodeFallback);
  });

  testWidgets('mouse hover leaves the billboard alone and does not steal keyboard focus', (tester) async {
    final key = await mount(tester);
    key.currentState!.requestContentFocus();
    await tester.pumpAndSettle();
    final originalFocus = FocusManager.instance.primaryFocus;
    final mouse = await tester.createGesture(kind: ui.PointerDeviceKind.mouse);
    await mouse.addPointer(location: Offset.zero);
    addTearDown(mouse.removePointer);
    final card = find.byType(MediaCard).at(1);
    await mouse.moveTo(tester.getCenter(card));
    await tester.pumpAndSettle();
    expect(text(tester, 'home_preview_title'), a.title);
    expect(FocusManager.instance.primaryFocus, same(originalFocus));
  });

  for (final light in [false, true]) {
    testWidgets('small phone with large text fits ${light ? 'light' : 'dark'} cinematic Home', (tester) async {
      await mount(tester, size: const Size(320, 640), tv: false, textScale: 1.5, light: light);
      expect(find.byType(MobileHomeCarousel), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('the phone hero and toolbar scroll away so later shelves use the full viewport', (tester) async {
    await mount(
      tester,
      size: const Size(390, 844),
      tv: false,
      rows: [
        for (var i = 0; i < 8; i++) shelf('Shelf $i', [a, b, movie('third-$i', 'Another title')]),
      ],
    );
    final scroll = find.byKey(const PageStorageKey('mobile_home_scroll'));
    final header = find.byKey(const ValueKey('mobile_home_header'));
    expect(tester.getTopLeft(header).dy, greaterThanOrEqualTo(0));
    final firstCard = tester.getSize(find.byType(MediaCard).first);
    expect(firstCard.width, greaterThan(130), reason: 'phone shelves show wider cards with a next-card peek');
    await tester.drag(scroll, const Offset(0, -1100));
    await tester.pumpAndSettle();
    expect(header.hitTestable(), findsNothing);
    expect(find.byType(HubSection).hitTestable(), findsWidgets);
    expect(tester.takeException(), isNull);
  });

  testWidgets('mobile Home resets shelf positions and scrolls to the top', (tester) async {
    final key = await mount(
      tester,
      size: const Size(390, 844),
      tv: false,
      showFeature: false,
      rows: [
        for (var i = 0; i < 8; i++) shelf('Shelf $i', [for (var j = 0; j < 12; j++) movie('$i-$j', 'Title $i-$j')]),
      ],
    );
    final shelfList = find.descendant(of: find.byType(HubSection).first, matching: find.byType(ListView));
    await tester.drag(shelfList, const Offset(-600, 0));
    await tester.pumpAndSettle();
    final controller = tester.widget<ListView>(shelfList).controller!;
    expect(controller.offset, greaterThan(0));
    key.currentState!.resetMobileShelves();
    await tester.pumpAndSettle();
    expect(controller.offset, 0);
    final homeScroll = find.byKey(const PageStorageKey('mobile_home_scroll'));
    await tester.drag(homeScroll, const Offset(0, -1100));
    await tester.pumpAndSettle();
    final vertical = tester.widget<CustomScrollView>(homeScroll).controller!;
    expect(vertical.offset, greaterThan(0));
    key.currentState!.scrollToTop();
    await tester.pumpAndSettle();
    expect(vertical.offset, 0);
  });

  testWidgets('TV without Spotlight enters the first row', (tester) async {
    final key = await mount(tester, showFeature: false);
    expect(key.currentState!.requestContentFocus(), isTrue);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'hub_Movie night');
    expect(find.byKey(const ValueKey('home_feature_billboard')), findsNothing);
    expect(find.byKey(const ValueKey('home_browse_description')), findsOneWidget);
    expect(text(tester, 'home_browse_title'), a.title);
  });

  testWidgets('TV vertical movement always starts the next shelf at its first item', (tester) async {
    final key = await mount(
      tester,
      showFeature: false,
      rows: [
        shelf('First', [a, b]),
        shelf('Second', [a, b]),
      ],
    );
    key.currentState!.requestContentFocus();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    expect(text(tester, 'home_browse_title'), b.title);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(text(tester, 'home_browse_title'), a.title);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(text(tester, 'home_browse_title'), a.title);
  });

  for (final size in [const Size(360, 640), const Size(390, 740)]) {
    testWidgets('the complete phone hero action panel fits the body viewport at $size', (tester) async {
      await mount(tester, size: size, tv: false);
      final action = find.byKey(ValueKey('mobile_feature_open_${a.globalKey}'));
      final caption = find.byKey(ValueKey('mobile_feature_caption_${a.globalKey}'));
      expect(action.hitTestable(), findsOneWidget);
      expect(tester.getRect(caption).bottom, lessThanOrEqualTo(size.height - 40));
      expect(tester.getRect(action).bottom, lessThanOrEqualTo(size.height - 40));
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('landscape phone leaves a browsable shelf viewport', (tester) async {
    await mount(tester, size: const Size(640, 320), tv: false);
    expect(tester.getSize(find.byType(CustomScrollView)).height, greaterThanOrEqualTo(150));
    expect(tester.takeException(), isNull);
  });

  testWidgets('deep browsing keeps the focused synopsis visible and UP restores the billboard', (tester) async {
    final rows = [
      for (var i = 0; i < 20; i++) shelf('Row $i', [movie('m$i', 'Movie $i')]),
    ];
    final key = await mount(tester, rows: rows);
    expect(find.byType(HubSection).evaluate().length, lessThan(20));
    key.currentState!.requestContentFocus();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    for (var i = 1; i <= 7; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pumpAndSettle();
      expect(FocusManager.instance.primaryFocus?.debugLabel, 'hub_Row $i');
      expect(find.byKey(const ValueKey('home_feature_billboard')), findsNothing);
      expect(text(tester, 'home_browse_title'), 'Movie $i');
      expect(text(tester, 'home_browse_summary'), 'The synopsis for Movie $i.');
      expect(
        tester.getBottomLeft(find.byKey(const ValueKey('home_browse_summary'))).dy,
        lessThanOrEqualTo(tester.getTopLeft(find.byType(CustomScrollView)).dy),
      );
    }
    for (var i = 0; i < 8; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
      await tester.pumpAndSettle();
    }
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'dashboard_play');
    expect(text(tester, 'home_preview_title'), 'Movie 0');
    expect(find.byKey(const ValueKey('home_browse_description')), findsNothing);
    expect(
      tester.getTopLeft(find.byKey(const ValueKey('home_feature_billboard'))).dy,
      tester.getTopLeft(find.byType(CustomScrollView)).dy,
    );
    expect(tester.takeException(), isNull);
  });

  testWidgets('featured controls change the title without playing and actions target that title', (tester) async {
    MediaItem? played;
    final key = await mount(tester, onPlay: (item) => played = item);
    key.currentState!.requestContentFocus();
    await tester.pumpAndSettle();
    for (var i = 0; i < 3; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
      await tester.pumpAndSettle();
    }
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'home_next_feature');
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(text(tester, 'home_preview_title'), b.title);
    expect(played, isNull);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowLeft);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowLeft);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowLeft);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    expect(played?.globalKey, b.globalKey);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Continue Watching groups movie copies and chooses the exact resume source', (tester) async {
    final hd = a.copyWith(libraryId: 'hd', libraryTitle: 'HD Library', viewOffsetMs: 10000);
    final uhd = a.copyWith(id: 'a4k', libraryId: '4k', libraryTitle: '4K Library', viewOffsetMs: 90000);
    MediaItem? resumed;
    final key = await mount(
      tester,
      showFeature: false,
      rows: [
        MediaHub(id: homeContinueWatchingId, title: t.discover.continueWatching, type: 'movie', items: [hd, uhd]),
      ],
      onResume: (item) => resumed = item,
    );
    expect(tester.widget<HubSection>(find.byType(HubSection)).hub.items.length, 1);
    key.currentState!.requestContentFocus();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(resumed, isNull);
    expect(find.text('HD Library'), findsOneWidget);
    expect(find.text('4K Library'), findsOneWidget);
    await tester.tap(find.text('4K Library'));
    await tester.pumpAndSettle();
    expect(resumed?.id, 'a4k');
    expect(resumed?.viewOffsetMs, 90000);
    expect(tester.takeException(), isNull);
  });

  testWidgets('reduced mode disables artwork transitions and the preview can be hidden', (tester) async {
    DevicePerformance.debugReset(autoReduced: true, fireStickMode: true);
    final key = await mount(tester);
    final image = tester.widget<CyclingMediaBackdrop>(find.byType(CyclingMediaBackdrop));
    expect(image.fadeDuration, Duration.zero);
    expect(image.active, isFalse);
    key.currentState!.requestContentFocus();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'dashboard_play');
    expect(tester.takeException(), isNull);
    await mount(tester, showFeature: false);
    expect(find.byKey(const ValueKey('home_live_details')), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('compact TV with enlarged text keeps feature controls and focused shelf in bounds', (tester) async {
    final key = await mount(tester, size: const Size(960, 540), textScale: 1.3, tvShell: true);
    key.currentState!.requestContentFocus();
    await tester.pumpAndSettle();
    final feature = tester.getRect(find.byKey(const ValueKey('home_feature_billboard')));
    final details = tester.getRect(find.byKey(const ValueKey('home_live_details')));
    expect(details.bottom, lessThanOrEqualTo(feature.bottom));
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    final card = tester.getRect(find.byType(MediaCard).first);
    final viewport = tester.getRect(find.byType(CustomScrollView));
    expect(card.bottom, lessThanOrEqualTo(viewport.bottom));
    expect(card.top, greaterThanOrEqualTo(viewport.top));
    expect(tester.takeException(), isNull);
  });

  testWidgets('shelf synopsis masks spoilers and remains available with the feature disabled', (tester) async {
    await SettingsService.instance.write(SettingsService.hideSpoilers, true);
    final key = await mount(
      tester,
      showFeature: false,
      rows: [
        shelf('Episodes', [episode]),
      ],
    );
    key.currentState!.requestContentFocus();
    await tester.pumpAndSettle();
    expect(text(tester, 'home_browse_title'), episode.grandparentTitle);
    expect(text(tester, 'home_browse_summary'), t.dashboard.spoilerHidden);
    expect(text(tester, 'home_browse_metadata'), contains('S2 · E4'));
    expect(find.text(episode.summary!), findsNothing);
    expect(tester.takeException(), isNull);
  });
}
