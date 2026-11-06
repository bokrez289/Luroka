import 'dart:async';
import 'package:drift/native.dart';
import 'package:luroka/media/ids.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/focus/focusable_action_bar.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/library_query.dart';
import 'package:luroka/media/library_change_event.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_hub.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/show_theme_music.dart';
import 'package:luroka/mpv/mpv.dart' as mpv;
import 'package:luroka/services/show_theme_playback.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/show_episode_state.dart';
import 'package:luroka/services/catalog/cinemeta_catalog_source.dart';
import 'package:luroka/services/catalog/catalog_source.dart';
import 'package:luroka/utils/external_ids.dart';
import 'package:luroka/media/media_rating.dart';
import 'package:luroka/media/media_version.dart';
import 'package:luroka/media/media_source_info.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/media/server_capabilities.dart';
import 'package:luroka/mixins/deletion_aware.dart';
import 'package:luroka/providers/download_provider.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/providers/catalog_sources_provider.dart';
import 'package:luroka/providers/watch_state_store.dart';
import 'package:luroka/screens/media_detail_screen.dart';
import 'package:luroka/models/download_models.dart';
import 'package:luroka/models/catalog/catalog_item.dart';
import 'package:luroka/navigation/profile_navigation_scope.dart';
import 'package:luroka/services/plex_mappers.dart';

import '../test_helpers/download_fixtures.dart';
import '../test_helpers/paged_fakes.dart';
import 'package:luroka/services/download_manager_service.dart';
import 'package:luroka/services/download_storage_service.dart';
import 'package:luroka/services/jellyfin_api_cache.dart';
import 'package:luroka/services/multi_server_manager.dart';
import 'package:luroka/services/offline_watch_sync_service.dart';
import 'package:luroka/services/plex_api_cache.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/layout_constants.dart';
import 'package:luroka/utils/media_server_http_client.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/utils/watch_state_notifier.dart';
import 'package:luroka/utils/deletion_notifier.dart';
import 'package:luroka/utils/library_content_notifier.dart';
import 'package:luroka/utils/video_player_navigation.dart';
import 'package:luroka/widgets/collapsible_text.dart';
import 'package:luroka/widgets/cycling_media_backdrop.dart';
import 'package:luroka/widgets/episode_card.dart';
import 'package:luroka/widgets/fitting_title_text.dart';
import 'package:luroka/widgets/luroka_mobile_title_header.dart';
import 'package:luroka/widgets/focusable_tab_chip.dart';
import 'package:luroka/widgets/tv_browse_rail.dart';
import 'package:luroka/widgets/media_card.dart';
import 'package:luroka/widgets/media_details_sheet.dart';
import 'package:luroka/widgets/series_season_browser.dart';
import 'package:luroka/widgets/season_episode_page.dart';
import 'package:provider/provider.dart';

import '../test_helpers/prefs.dart';
import '../test_helpers/profile_navigation.dart';
import '../test_helpers/media_items.dart';
import '../test_helpers/multi_server_fixtures.dart';

Future<void> openTitleSeasonPicker(WidgetTester tester) async {
  if (find.byType(SeriesSeasonBrowser).evaluate().isEmpty) {
    final rail = tester.state<TvBrowseRailState>(find.byType(TvBrowseRail));
    unawaited(rail.revealPageSection(null));
    await tester.pumpAndSettle();
  }
  tester.state<SeriesSeasonBrowserState>(find.byType(SeriesSeasonBrowser)).requestFocus();
  await tester.pumpAndSettle();
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    TvDetectionService.debugSetAppleTVOverride(true);
    LocaleSettings.setLocaleSync(AppLocale.en);
  });

  tearDown(() {
    TvDetectionService.debugSetAppleTVOverride(null);
  });

  testWidgets('TV season page loads episodes without waiting for season metadata', (tester) async {
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final season = testMediaItem(
      id: 'season-1',
      kind: MediaKind.season,
      title: 'Season 1',
      parentId: 'show-1',
      serverId: 'server_1',
    );
    final episode = testMediaItem(
      id: 'episode-1',
      kind: MediaKind.episode,
      title: 'Early episode',
      parentId: season.id,
      serverId: 'server_1',
    );
    final client = _FakeMediaServerClient(
      show: season,
      childrenByParent: {
        season.id: [episode],
      },
    )..metadataGate = Completer<void>();
    final provider = testMultiServer(clients: [client]).provider;
    await tester.pumpWidget(
      TranslationProvider(
        child: ChangeNotifierProvider<MultiServerProvider>.value(
          value: provider,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: withProfileNavigationScope(child: MediaDetailScreen(metadata: season)),
          ),
        ),
      ),
    );
    for (var i = 0; i < 12; i++) {
      await tester.pump(const Duration(milliseconds: 50));
    }
    expect(client.metadataGate!.isCompleted, isFalse);
    expect(client.childrenPageCalls.map((call) => call.parentId), contains(season.id));
    expect(find.textContaining('Early episode'), findsOneWidget);
    client.metadataGate!.complete();
    await tester.pumpAndSettle();
    expect(client.childrenPageCalls.where((call) => call.parentId == season.id), hasLength(1));
  });

  testWidgets('a stalled season episode request becomes retryable and ignores a late response', (tester) async {
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final season = testMediaItem(
      id: 'season-1',
      kind: MediaKind.season,
      title: 'Season 1',
      parentId: 'show-1',
      serverId: 'server_1',
    );
    final episode = testMediaItem(
      id: 'episode-1',
      kind: MediaKind.episode,
      title: 'Late episode',
      parentId: season.id,
      serverId: 'server_1',
    );
    final pending = Completer<List<MediaItem>>();
    final client = _FakeMediaServerClient(
      show: season,
      childrenByParent: {
        season.id: [episode],
      },
      childrenPageFuturesByStart: {'${season.id}@0': pending.future},
    );
    final provider = testMultiServer(clients: [client]).provider;
    await tester.pumpWidget(
      TranslationProvider(
        child: ChangeNotifierProvider<MultiServerProvider>.value(
          value: provider,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: withProfileNavigationScope(child: MediaDetailScreen(metadata: season)),
          ),
        ),
      ),
    );
    await tester.pump(const Duration(milliseconds: 500));
    await tester.pump(const Duration(seconds: 21));
    await tester.pump();
    expect(find.text(t.common.retry), findsOneWidget);
    pending.complete([episode]);
    await tester.pump();
    expect(find.textContaining('Late episode'), findsNothing);
    await tester.tap(find.text(t.common.retry));
    await tester.pumpAndSettle();
    expect(find.textContaining('Late episode'), findsOneWidget);
  });

  testWidgets('phone starts seasons while on-deck is pending and never reports a false empty', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(false);
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final show = testMediaItem(id: 'show', kind: MediaKind.show, title: 'Show', serverId: 'server_1');
    final season = testMediaItem(
      id: 'season',
      kind: MediaKind.season,
      title: 'Season 1',
      index: 1,
      serverId: 'server_1',
    );
    final secondSeason = testMediaItem(
      id: 'season-2',
      kind: MediaKind.season,
      title: 'Season 2',
      index: 2,
      serverId: 'server_1',
    );
    final resumed = testMediaItem(
      id: 'resume',
      kind: MediaKind.episode,
      title: 'Resume',
      parentId: 'season-2',
      parentIndex: 2,
      serverId: 'server_1',
    );
    final seasonsGate = Completer<List<MediaItem>>();
    final client =
        _FakeMediaServerClient(
            show: show,
            childrenByParent: {
              show.id: [season, secondSeason],
              secondSeason.id: [resumed],
            },
            childrenFutures: {show.id: seasonsGate.future},
          )
          ..onDeckGate = Completer<void>()
          ..onDeckEpisode = resumed;
    final provider = testMultiServer(clients: [client]).provider;
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    final manager = DownloadManagerService(
      database: db,
      storageService: DownloadStorageService.instance,
      clientResolver: (serverId, {clientScopeId}) => null,
    )..recoveryFuture = Future<void>.value();
    final downloads = DownloadProvider.forTesting(downloadManager: manager, database: db);
    await downloads.ensureInitialized();
    addTearDown(() async {
      downloads.dispose();
      manager.dispose();
      await db.close();
    });
    await tester.pumpWidget(
      TranslationProvider(
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<MultiServerProvider>.value(value: provider),
            ChangeNotifierProvider<DownloadProvider>.value(value: downloads),
          ],
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark).copyWith(platform: TargetPlatform.android),
            home: withProfileNavigationScope(child: MediaDetailScreen(metadata: show)),
          ),
        ),
      ),
    );
    for (var i = 0; i < 8; i++) {
      await tester.pump(const Duration(milliseconds: 40));
    }
    expect(client.childrenCalls, contains(show.id));
    expect(find.text(t.messages.noSeasonsFound), findsNothing);
    seasonsGate.complete([season, secondSeason]);
    await tester.pump(const Duration(milliseconds: 100));
    expect(client.onDeckGate!.isCompleted, isFalse);
    expect(find.text(t.messages.noSeasonsFound), findsNothing);
    client.onDeckGate!.complete();
    await tester.pumpAndSettle();
    expect(client.childrenCalls.where((id) => id == show.id), hasLength(1));
    expect(client.childrenPageCalls.map((call) => call.parentId), contains(secondSeason.id));
  });

  testWidgets('caught-up show replays last watched and schedule follows chapters with safe future details', (
    tester,
  ) async {
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final show = testMediaItem(
      id: 'scheduled-show',
      kind: MediaKind.show,
      title: 'Scheduled show',
      serverId: 'server_1',
    );
    final season = testMediaItem(
      id: 's1',
      kind: MediaKind.season,
      index: 1,
      parentId: show.id,
      serverId: show.serverId,
    );
    final episodes = [
      for (var i = 1; i <= 2; i++)
        testMediaItem(
          id: 'episode$i',
          kind: MediaKind.episode,
          title: 'Title $i',
          parentId: season.id,
          parentIndex: 1,
          index: i,
          grandparentId: show.id,
          serverId: show.serverId,
          durationMs: 2400000,
          viewCount: 1,
        ).copyWith(lastViewedAt: i == 1 ? 200 : 100),
    ];
    final client = _ScheduledShowClient(
      show: show,
      childrenByParent: {
        show.id: [season],
        season.id: episodes,
      },
      mediaSourcesById: {
        episodes.first.id: MediaSourceInfo(
          videoUrl: '',
          audioTracks: [],
          subtitleTracks: [],
          chapters: [MediaChapter(id: 1, title: 'Opening', startTimeOffset: 0)],
        ),
      },
    );
    final source = _ScheduleSource();
    final sources = _ScheduleSources(source);
    addTearDown(source.dispose);
    addTearDown(sources.dispose);
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<MultiServerProvider>.value(value: testMultiServer(clients: [client]).provider),
          ChangeNotifierProvider<CatalogSourcesProvider>.value(value: sources),
        ],
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          builder: (_, child) => withProfileNavigationScope(child: child!),
          home: MediaDetailScreen(metadata: show),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text(t.showSchedule.replay), findsOneWidget);
    expect(find.textContaining(t.showSchedule.caughtUp), findsOneWidget);
    final rail = tester.widget<TvBrowseRail>(find.byType(TvBrowseRail));
    final schedule = rail.hubs.firstWhere((h) => h.id == 'detail_schedule');
    expect(rail.hubs.indexOf(schedule), greaterThan(rail.hubs.indexWhere((h) => h.id == 'detail_chapters')));
    expect(schedule.items.first.raw?['scheduleAvailable'], isTrue);
    expect(schedule.items.last.raw?['scheduleFuture'], isTrue);
    unawaited(Future<bool>.sync(() => rail.onActivateItem!(schedule, schedule.items.last)));
    await tester.pumpAndSettle();
    expect(find.text(t.showSchedule.notYetAired), findsOneWidget);
    expect(find.byType(AlertDialog), findsOneWidget);
    await tester.tap(find.text(t.common.close));
    await tester.pumpAndSettle();
    expect(find.byType(AlertDialog), findsNothing);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  for (final count in [1, 2]) {
    testWidgets('TV exposes version chooser for $count inline versions only when there is a choice', (tester) async {
      await SettingsService.getInstance();
      tester.view.physicalSize = const Size(960, 540);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      final item =
          testMediaItem(
            id: 'versions',
            backend: MediaBackend.jellyfin,
            kind: MediaKind.movie,
            title: 'Movie',
            serverId: 'server_1',
            mediaVersions: [
              for (var i = 0; i < count; i++) MediaVersion(id: 'source_$i', videoResolution: i == 0 ? '1080' : '4k'),
            ],
          ).copyWith(
            raw: {
              'RemoteTrailers': [
                {'Url': 'https://www.youtube.com/watch?v=qiuSBWVdgLI'},
              ],
            },
          );
      final client = _FakeMediaServerClient(show: item, childrenByParent: {});
      final sources = CatalogSourcesProvider();
      addTearDown(sources.dispose);
      await tester.pumpWidget(
        TranslationProvider(
          child: MultiProvider(
            providers: [
              ChangeNotifierProvider<MultiServerProvider>.value(value: testMultiServer(clients: [client]).provider),
              ChangeNotifierProvider<CatalogSourcesProvider>.value(value: sources),
            ],
            child: MaterialApp(
              theme: monoTheme(MonoPalette.dark),
              home: withProfileNavigationScope(child: MediaDetailScreen(metadata: item)),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final actions = tester.widget<FocusableActionBar>(find.byType(FocusableActionBar)).actions;
      expect(actions.any((action) => action.debugLabel == 'detail_play_version'), count > 1);
      expect(actions.any((action) => action.debugLabel == 'detail_trailer'), isTrue);
      expect(find.text(t.detailComposition.trailer), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('TV catalog details use the normal title page and expose every library copy', (tester) async {
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final first = testMediaItem(
      id: 'movie',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.movie,
      title: 'Movie',
      serverId: 'server_1',
      libraryId: 'hd',
      libraryTitle: 'Movies HD',
    );
    final second = first.copyWith(id: 'movie-4k', libraryId: 'uhd', libraryTitle: 'Movies 4K');
    final client = _FakeMediaServerClient(show: first, childrenByParent: {});
    final sources = CatalogSourcesProvider();
    addTearDown(sources.dispose);
    await tester.pumpWidget(
      TranslationProvider(
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<MultiServerProvider>.value(value: testMultiServer(clients: [client]).provider),
            ChangeNotifierProvider<CatalogSourcesProvider>.value(value: sources),
          ],
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: withProfileNavigationScope(
              child: MediaDetailScreen(metadata: first, showLibrarySource: true, catalogCopies: [first, second]),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    final actions = tester.widget<FocusableActionBar>(find.byType(FocusableActionBar)).actions;
    final libraries = actions.singleWhere((action) => action.debugLabel == 'detail_catalog_libraries');
    libraries.onPressed!();
    await tester.pumpAndSettle();
    expect(find.text('Movies HD'), findsWidgets);
    expect(find.text('Movies 4K'), findsWidgets);
    expect(tester.takeException(), isNull);
  });

  testWidgets('TV multi-library preview hides playback tracks until a library is chosen', (tester) async {
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final first = testMediaItem(
      id: 'movie',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.movie,
      title: 'Movie',
      serverId: 'server_1',
      libraryId: 'hd',
      libraryTitle: 'Movies HD',
    );
    final second = first.copyWith(id: 'movie-4k', libraryId: 'uhd', libraryTitle: 'Movies 4K');
    final client = _FakeMediaServerClient(show: first, childrenByParent: {});
    final sources = CatalogSourcesProvider();
    addTearDown(sources.dispose);
    await tester.pumpWidget(
      TranslationProvider(
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<MultiServerProvider>.value(value: testMultiServer(clients: [client]).provider),
            ChangeNotifierProvider<CatalogSourcesProvider>.value(value: sources),
          ],
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: withProfileNavigationScope(
              child: MediaDetailScreen(
                metadata: first,
                showLibrarySource: true,
                catalogCopies: [first, second],
                catalogPreviewOnly: true,
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    final actionBar = tester.widget<FocusableActionBar>(find.byType(FocusableActionBar));
    expect(actionBar.actions.map((action) => action.debugLabel), ['detail_catalog_libraries']);
    expect(find.byKey(const ValueKey('detail_playback_panel')), findsNothing);
    actionBar.onNavigateUp!();
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'tv_detail_info');
    actionBar.actions.single.onPressed!();
    await tester.pumpAndSettle();
    expect(find.text('Movies HD'), findsWidgets);
    expect(find.text('Movies 4K'), findsWidgets);
    expect(tester.takeException(), isNull);
  });

  testWidgets('show theme follows the setting and stops while another route covers the detail', (tester) async {
    await SettingsService.getInstance();
    await SettingsService.instance.write(SettingsService.showThemeMusic, false);
    final players = <_ThemePlayer>[];
    ShowThemePlayback.debugPlayerFactory = () {
      final player = _ThemePlayer();
      players.add(player);
      return player;
    };
    addTearDown(() => ShowThemePlayback.debugPlayerFactory = null);
    final show = testMediaItem(id: 'themed-show', kind: MediaKind.show, title: 'Show', serverId: 'server_1');
    final client = _ThemeClient(show);
    final sources = CatalogSourcesProvider();
    addTearDown(sources.dispose);
    await tester.pumpWidget(
      TranslationProvider(
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<MultiServerProvider>.value(value: testMultiServer(clients: [client]).provider),
            ChangeNotifierProvider<CatalogSourcesProvider>.value(value: sources),
          ],
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: withProfileNavigationScope(child: MediaDetailScreen(metadata: show)),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(players, isEmpty, reason: 'explicitly disabled theme music does not play');
    await SettingsService.instance.write(SettingsService.showThemeMusic, true);
    await tester.pumpAndSettle();
    expect(players.single.opened, isTrue);
    final detailState = tester.state(find.byType(MediaDetailScreen));
    (detailState as WidgetsBindingObserver).didChangeAppLifecycleState(AppLifecycleState.paused);
    await tester.pumpAndSettle();
    expect(players.single.closed, isTrue);
    (detailState as WidgetsBindingObserver).didChangeAppLifecycleState(AppLifecycleState.resumed);
    await tester.pumpAndSettle();
    expect(players, hasLength(2));
    (detailState as RouteAware).didPushNext();
    await tester.pumpAndSettle();
    expect(players.last.closed, isTrue);
    await SettingsService.instance.write(SettingsService.showThemeMusic, false);
    (detailState as RouteAware).didPopNext();
    await tester.pumpAndSettle();
    expect(players, hasLength(2));
  });

  for (final size in [const Size(960, 540), const Size(1280, 720), const Size(1920, 1080), const Size(3840, 2160)]) {
    for (final kind in [MediaKind.movie, MediaKind.show, MediaKind.episode]) {
      final showPage = kind == MediaKind.show;
      testWidgets('${kind.name} title page ${size.width.toInt()} keeps actions visible and remote navigation stable', (
        tester,
      ) async {
        await SettingsService.getInstance();
        tester.view.physicalSize = size;
        tester.view.devicePixelRatio = 1;
        addTearDown(tester.view.reset);
        final item = testMediaItem(
          id: 'responsive_title',
          backend: MediaBackend.jellyfin,
          kind: kind,
          parentIndex: kind == MediaKind.episode ? 1 : null,
          index: kind == MediaKind.episode ? 2 : null,
          title: 'A Long Title for a Beautiful Cinema Experience',
          summary:
              'A small group travels across a changing world. This deliberately long synopsis must remain readable without pushing the primary action off the screen.',
          year: 2025,
          durationMs: showPage ? null : 7200000,
          viewOffsetMs: showPage ? null : 1800000,
          serverId: 'server_1',
          serverName: 'Server',
          directors: showPage ? null : ['A. Director'],
          studio: showPage ? null : 'A Film Studio',
          genres: showPage ? null : ['Drama', 'Adventure'],
        ).copyWith(leafCount: showPage ? 20 : null, viewedLeafCount: showPage ? 7 : null);
        final season = testMediaItem(
          id: 'responsive_season',
          backend: item.backend,
          kind: MediaKind.season,
          title: 'Season 1',
          index: 1,
          parentId: item.id,
          parentTitle: item.title,
          serverId: item.serverId,
        );
        final episodes = [
          for (var i = 1; i <= 2; i++)
            testMediaItem(
              id: 'responsive_episode_$i',
              backend: item.backend,
              kind: MediaKind.episode,
              title: 'Episode $i',
              summary: 'An episode description that stays in a fixed preview area.',
              index: i,
              parentIndex: 1,
              parentId: season.id,
              grandparentId: item.id,
              durationMs: 2700000,
              serverId: item.serverId,
            ),
        ];
        final client = _FakeMediaServerClient(
          show: item,
          childrenByParent: showPage
              ? {
                  item.id: [season],
                  season.id: episodes,
                }
              : {},
        );
        final provider = testMultiServer(clients: [client]).provider;
        await tester.pumpWidget(
          TranslationProvider(
            child: ChangeNotifierProvider<MultiServerProvider>.value(
              value: provider,
              child: MaterialApp(
                theme: monoTheme(MonoPalette.dark),
                builder: (context, child) => withProfileNavigationScope(
                  child: MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(size.width == 960 ? 1.3 : 1)),
                    child: child!,
                  ),
                ),
                home: MediaDetailScreen(metadata: item),
              ),
            ),
          ),
        );
        await tester.pump();
        await tester.pump();
        await tester.pump();
        await tester.pump(const Duration(milliseconds: 400));
        await tester.pumpAndSettle();
        final bar = tester.getRect(find.byType(FocusableActionBar));
        expect(bar.left, greaterThan(0));
        expect(bar.right, lessThanOrEqualTo(size.width));
        expect(bar.bottom, lessThan(size.height));
        expect(bar.top, greaterThan(0));
        expect(find.byKey(const ValueKey('detail_playback_panel')), findsOneWidget);
        if (!showPage) expect(find.byKey(const ValueKey('detail_finish_time')), findsOneWidget);
        expect(FocusManager.instance.primaryFocus?.debugLabel, 'play_button');
        if (showPage) {
          expect(find.text('13 episodes left'), findsOneWidget);
          expect(find.byKey(const ValueKey('reference_detail_action_bar')), findsOneWidget);
          await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
          await tester.pumpAndSettle();
          expect(FocusManager.instance.primaryFocus?.debugLabel, 'title_season:responsive_season');
          await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
          await tester.pumpAndSettle();
          expect(FocusManager.instance.primaryFocus?.debugLabel, 'tv_browse_rail');
          final preview = find.byKey(const ValueKey('tv_detail_episode_title'));
          final before = tester.getRect(preview);
          await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
          await tester.pumpAndSettle();
          expect(tester.widget<Text>(preview).data, 'Episode 2');
          expect(tester.getRect(preview).top, closeTo(before.top, 1));
          await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
          await tester.pumpAndSettle();
          expect(FocusManager.instance.primaryFocus?.debugLabel, 'title_season:responsive_season');
          await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
          await tester.pumpAndSettle();
          expect(FocusManager.instance.primaryFocus?.debugLabel, 'play_button');
          expect(tester.getRect(find.byType(FocusableActionBar)).bottom, lessThan(size.height));
          await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
          await tester.pumpAndSettle();
          expect(find.text('Season 1'), findsWidgets, reason: 'show name must not replace season name');
          await tester.sendKeyEvent(LogicalKeyboardKey.enter);
          await tester.pumpAndSettle();
          expect(find.byType(SeasonEpisodePage), findsOneWidget);
          expect(tester.widget<Text>(find.byKey(const ValueKey('season_page_title'))).data, 'Season 1');
          expect(FocusManager.instance.primaryFocus?.debugLabel, 'season_episode:responsive_episode_1');
          await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
          await tester.pumpAndSettle();
          expect(FocusManager.instance.primaryFocus?.debugLabel, 'season_episode:responsive_episode_2');
          expect(find.text('2. Episode 2'), findsOneWidget);
          await tester.sendKeyEvent(LogicalKeyboardKey.arrowLeft);
          await tester.pumpAndSettle();
          await tester.sendKeyEvent(LogicalKeyboardKey.arrowLeft);
          await tester.pumpAndSettle();
          await tester.sendKeyEvent(LogicalKeyboardKey.enter);
          await tester.pumpAndSettle();
          expect(find.byType(SeasonEpisodePage), findsNothing);
          expect(FocusManager.instance.primaryFocus?.debugLabel, 'title_season:responsive_season');
        } else {
          expect(find.text(t.common.resume), findsOneWidget);
          expect(find.text(t.detailComposition.startOver), findsOneWidget);
          final actions = tester.widget<FocusableActionBar>(find.byType(FocusableActionBar)).actions;
          expect(actions.any((action) => action.debugLabel == 'detail_restart'), isTrue);
          expect(find.byKey(const ValueKey('title_resume_status')), findsOneWidget);
          await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
          await tester.pumpAndSettle();
          await tester.sendKeyEvent(LogicalKeyboardKey.enter);
          await tester.pumpAndSettle();
          expect(find.byType(MediaDetailsSheet), findsOneWidget);
        }
        expect(tester.takeException(), isNull);
        await tester.pumpWidget(const SizedBox.shrink());
      });
    }
  }

  testWidgets('TV detail scales fallback title to fit logo bounds', (tester) async {
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(800, 480);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    const title = 'The Surprisingly Long Movie Title That Needs Two Whole Lines';
    final movie = testMediaItem(
      id: 'movie_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.movie,
      title: title,
      summary: 'A compact viewport should make the fallback title shrink before it can overlap the detail text.',
    );

    await tester.pumpWidget(
      TranslationProvider(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: withProfileNavigationScope(child: MediaDetailScreen(metadata: movie)),
        ),
      ),
    );

    await tester.pump();
    await tester.pump();

    final titleText = tester.widget<Text>(find.text(title));
    final baseFontSize = 56 * TvLayoutConstants.scaleForSize(const Size(800, 480));
    expect(titleText.style?.fontSize, isNotNull);
    expect(titleText.style!.fontSize!, lessThan(baseFontSize));
  });

  testWidgets('TV detail exposes hero information as one semantic node', (tester) async {
    final semantics = tester.ensureSemantics();
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    final movie = testMediaItem(
      id: 'semantic_movie',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.movie,
      title: 'Semantic Movie',
      summary: 'One concise detail announcement.',
      year: 2025,
      genres: ['Drama', 'Mystery'],
    );

    await tester.pumpWidget(
      TranslationProvider(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: withProfileNavigationScope(child: MediaDetailScreen(metadata: movie)),
        ),
      ),
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 200));

    final information = find.bySemanticsIdentifier('tv_detail_information');
    expect(information, findsOneWidget);
    final node = tester.getSemantics(information);
    expect(node.label, contains('Semantic Movie'));
    // The year follows the title directly: the line leads with it instead of
    // the redundant "Movie" type label.
    expect(node.label, contains('Semantic Movie, 2025'));
    expect(node.label, contains('Drama, Mystery'));
    expect(node.label, contains('One concise detail announcement.'));
    // The block is activatable: select/tap opens the full details sheet
    // showing everything the fitted line and truncated summary omit (#2042).
    expect(node.getSemanticsData().hasAction(SemanticsAction.tap), isTrue);
    expect(tester.widget<Semantics>(information).properties.onTap, isNotNull);

    // Visual content and the separate action row remain present.
    expect(find.text('Semantic Movie'), findsOneWidget);
    expect(find.text('One concise detail announcement.'), findsOneWidget);
    expect(find.byType(FocusableActionBar), findsOneWidget);
    semantics.dispose();
  });

  testWidgets('TV detail hero info block opens the full details sheet on select', (tester) async {
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    const summary =
        'A cybersecurity expert becomes a whistleblower after uncovering secrets about aliens, putting him on '
        'the run from a corporation. Meanwhile, a meteorologist tracks a storm that never ends, and every '
        'agency denies any connection between the two events.';
    const movie = MediaItem.plex(
      id: 'movie_details_sheet',
      kind: MediaKind.movie,
      title: 'Disclosure Day',
      summary: summary,
      year: 2026,
      contentRating: 'PG-13',
      durationMs: 8700000,
      genres: ['Science Fiction', 'Mystery', 'Action'],
      ratings: [
        MediaRatingSource(source: 'rottenTomatoesCritic', value: 8.0),
        MediaRatingSource(source: 'rottenTomatoesAudience', value: 6.9),
        MediaRatingSource(source: 'imdb', value: 7.4),
      ],
    );

    await tester.pumpWidget(
      TranslationProvider(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: withProfileNavigationScope(child: MediaDetailScreen(metadata: movie)),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 200));

    // UP passes the subtitle and audio selectors before the hero information.
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'detail_subtitle_selector');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'detail_audio_selector');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'tv_detail_info');

    await tester.sendKeyDownEvent(LogicalKeyboardKey.enter);
    await tester.pump();
    await tester.sendKeyUpEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();

    final sheet = find.byType(MediaDetailsSheet);
    expect(sheet, findsOneWidget);
    // Full description, not the hero's line-capped copy.
    final sheetSummary = tester.widget<Text>(find.descendant(of: sheet, matching: find.text(summary)));
    expect(sheetSummary.maxLines, isNull);
    // Every rating badge and metadata field the fitted hero line may shed.
    expect(find.descendant(of: sheet, matching: find.text('80%')), findsOneWidget);
    expect(find.descendant(of: sheet, matching: find.text('69%')), findsOneWidget);
    expect(find.descendant(of: sheet, matching: find.text('7.4')), findsOneWidget);
    expect(find.descendant(of: sheet, matching: find.textContaining('2026  •  PG-13  •  2h 25min')), findsOneWidget);
    expect(find.descendant(of: sheet, matching: find.text('Science Fiction  •  Mystery  •  Action')), findsOneWidget);

    // D-pad back closes the sheet and restores focus to the hero block.
    await tester.sendKeyEvent(LogicalKeyboardKey.gameButtonB);
    await tester.pumpAndSettle();
    expect(find.byType(MediaDetailsSheet), findsNothing);
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'tv_detail_info');
  });

  testWidgets('TV detail reveals without waiting for directional input', (tester) async {
    await SettingsService.getInstance();

    final movie = testMediaItem(
      id: 'movie_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.movie,
      title: 'Idle Reveal Movie',
      summary: 'The detail foreground should appear without needing a D-pad frame.',
    );

    await tester.pumpWidget(
      TranslationProvider(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: withProfileNavigationScope(child: MediaDetailScreen(metadata: movie)),
        ),
      ),
    );

    final revealGate = find.byWidgetPredicate(
      (widget) => widget is AnimatedOpacity && widget.duration == const Duration(milliseconds: 160),
      description: 'TV detail reveal AnimatedOpacity',
    );
    expect(revealGate, findsOneWidget);
    expect(tester.widget<AnimatedOpacity>(revealGate).opacity, 0);

    await tester.pump();

    expect(tester.widget<AnimatedOpacity>(revealGate).opacity, 1);
  });

  testWidgets('TV detail metadata line shows every rating source the item carries', (tester) async {
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    const movie = MediaItem.plex(
      id: 'movie_1',
      kind: MediaKind.movie,
      title: 'Multi Source Movie',
      summary: 'The TV detail metadata line should badge each attributed score.',
      rating: 6.2,
      ratings: [
        MediaRatingSource(source: 'rottenTomatoesCritic', value: 6.2),
        MediaRatingSource(source: 'rottenTomatoesAudience', value: 8.7),
        MediaRatingSource(source: 'imdb', value: 7.4),
      ],
    );

    await tester.pumpWidget(
      TranslationProvider(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: withProfileNavigationScope(child: MediaDetailScreen(metadata: movie)),
        ),
      ),
    );

    await tester.pump();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 200));

    expect(find.text('62%'), findsOneWidget);
    expect(find.text('87%'), findsOneWidget);
    expect(find.text('7.4'), findsOneWidget);
    expect(find.byType(SvgPicture), findsNWidgets(3));
    expect(find.textContaining('★ 6.2', findRichText: true), findsNothing);
    // The redundant type label no longer opens the line.
    expect(find.text('Movie'), findsNothing);
  });

  testWidgets('TV detail metadata line still renders a single available rating', (tester) async {
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    // What a hub listing yields when the server sent only the audience scalar.
    const movie = MediaItem.plex(
      id: 'movie_1',
      kind: MediaKind.movie,
      title: 'Audience Rating Movie',
      summary: 'The TV detail metadata line should use the available audience source badge.',
      ratings: [MediaRatingSource(source: 'rottenTomatoesAudience', value: 8.7)],
    );

    await tester.pumpWidget(
      TranslationProvider(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: withProfileNavigationScope(child: MediaDetailScreen(metadata: movie)),
        ),
      ),
    );

    await tester.pump();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 200));

    expect(find.text('87%'), findsOneWidget);
    expect(find.byType(SvgPicture), findsOneWidget);
  });

  testWidgets('TV detail labels its trailer action and groups extras by server metadata', (tester) async {
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    final movie = testMediaItem(
      id: 'movie_with_extras',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.movie,
      title: 'Extras Movie',
      serverId: 'server_1',
      serverName: 'Server',
    );
    MediaItem extra(String id, String type) => testMediaItem(
      id: id,
      backend: MediaBackend.jellyfin,
      kind: MediaKind.clip,
      title: id,
      serverId: 'server_1',
      serverName: 'Server',
      raw: {'ExtraType': type},
    );
    final client = _FakeMediaServerClient(
      show: movie,
      childrenByParent: const {},
      extras: [
        extra('Trailer One', 'Trailer'),
        extra('Featurette One', 'Featurette'),
        extra('Interview One', 'Interview'),
        extra('Deleted One', 'DeletedScene'),
        extra('Behind One', 'BehindTheScenes'),
        extra('Scene One', 'Scene'),
        extra('Unclassified One', 'Short'),
      ],
    );
    final provider = testMultiServer(clients: [client]).provider;

    await tester.pumpWidget(
      TranslationProvider(
        child: ChangeNotifierProvider<MultiServerProvider>.value(
          value: provider,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: withProfileNavigationScope(child: MediaDetailScreen(metadata: movie)),
          ),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 200));

    final rail = tester.widget<TvBrowseRail>(find.byType(TvBrowseRail));
    expect(rail.hubs.map((hub) => hub.title), [
      'Trailers',
      'Featurettes',
      'Interviews',
      'Deleted Scenes',
      'Behind the Scenes',
      'Scenes & Clips',
      'Other Extras',
    ]);
    expect(find.text(t.detailComposition.trailer), findsOneWidget);

    // Streaming quality is a direct action; trailer remains the next action.
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'play_button');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'detail_quality');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'detail_trailer');
  });

  testWidgets('TV detail shows source quality in the opening and keeps every field on screen', (tester) async {
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    // The #1893 shape: a Plex detail response with all four attributed scores
    // used to push the quality labels past the right edge of the line.
    final movie = MediaItem.plex(
      id: 'movie_1',
      serverId: ServerId('server_1'),
      kind: MediaKind.movie,
      title: 'Quality Movie',
      summary: 'The quality labels stay visible next to the scores.',
      year: 2017,
      contentRating: 'PG-13',
      durationMs: 6360000,
      mediaVersions: const [MediaVersion(id: 'v1', videoResolution: '1080')],
      ratings: const [
        MediaRatingSource(source: 'rottenTomatoesCritic', value: 9.2),
        MediaRatingSource(source: 'rottenTomatoesAudience', value: 8.1),
        MediaRatingSource(source: 'imdb', value: 7.4),
        MediaRatingSource(source: 'tmdb', value: 6.4),
      ],
    );

    final client = _FakeMediaServerClient(
      show: movie,
      childrenByParent: {},
      mediaSourcesById: {
        movie.id: MediaSourceInfo(
          videoUrl: '',
          audioTracks: [],
          subtitleTracks: [],
          chapters: [],
          mediaSourceId: 'v1',
          mediaIndex: 0,
        ),
      },
    );
    final provider = testMultiServer(clients: [client]).provider;

    await tester.pumpWidget(
      TranslationProvider(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: ChangeNotifierProvider<MultiServerProvider>.value(
            value: provider,
            child: withProfileNavigationScope(child: MediaDetailScreen(metadata: movie)),
          ),
        ),
      ),
    );

    await tester.pump();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 350));
    await tester.pump();

    // Year opens the line; the type label is gone.
    expect(find.text('Movie'), findsNothing);
    expect(find.text('2017'), findsOneWidget);
    // The selected source's picture label is visible beside genre/rating chips.
    final information = find.byKey(const ValueKey('tv_detail_information_semantics'));
    expect(find.descendant(of: information, matching: find.text('1080p')), findsOneWidget);
    expect(tester.getBottomRight(find.byKey(const ValueKey('detail_video_quality'))).dx, lessThanOrEqualTo(1280));

    // Desktop chip order: year, certification, runtime.
    final fieldXs = [
      for (final text in ['2017', 'PG-13', '1h 46min']) tester.getTopLeft(find.text(text)).dx,
    ];
    expect(fieldXs, orderedEquals([...fieldXs]..sort()));
    expect(tester.getBottomRight(find.text('1h 46min')).dx, lessThanOrEqualTo(1280));

    // The test font's 1 em/char advance roughly doubles text width, so at this
    // viewport most of the ratings slot legitimately gives way — shed as the
    // least useful part instead of shoving the quality label off the line. Any
    // score that does fit must sit fully on screen, never past the right edge.
    for (final rating in find.byType(SvgPicture).evaluate()) {
      expect(tester.getBottomRight(find.byWidget(rating.widget)).dx, lessThanOrEqualTo(1280));
    }

    for (var i = 0; i < 3; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
      await tester.pump();
    }
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'tv_detail_info');
    await tester.sendKeyDownEvent(LogicalKeyboardKey.enter);
    await tester.pump();
    await tester.sendKeyUpEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(find.byType(MediaDetailsSheet), findsOneWidget);
    expect(find.descendant(of: find.byType(MediaDetailsSheet), matching: find.textContaining('1080p')), findsOneWidget);
  });

  testWidgets('TV detail defaults to first regular season when specials precede it', (tester) async {
    await SettingsService.getInstance();

    final show = testMediaItem(
      id: 'show_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.show,
      title: 'The Show',
      serverId: 'server_1',
      serverName: 'Server',
    );
    final specials = testMediaItem(
      id: 'season_0',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.season,
      title: 'Specials',
      index: 0,
      parentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final season1 = testMediaItem(
      id: 'season_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.season,
      title: 'Season 1',
      index: 1,
      parentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final specialEpisode = testMediaItem(
      id: 'episode_special_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.episode,
      title: 'Special 1',
      index: 1,
      parentId: specials.id,
      parentIndex: specials.index,
      grandparentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final episode1 = testMediaItem(
      id: 'episode_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.episode,
      title: 'Episode 1',
      index: 1,
      parentId: season1.id,
      parentIndex: season1.index,
      grandparentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );

    final descendantsCompleter = Completer<List<MediaItem>>();
    final client = _FakeMediaServerClient(
      show: show,
      childrenByParent: {
        show.id: [specials, season1],
        specials.id: [specialEpisode],
        season1.id: [episode1],
      },
      pendingPlayableDescendants: descendantsCompleter.future,
    );
    final provider = testMultiServer(clients: [client]).provider;

    await tester.pumpWidget(
      TranslationProvider(
        child: ChangeNotifierProvider<MultiServerProvider>.value(
          value: provider,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: withProfileNavigationScope(
              child: SizedBox(width: 1280, height: 720, child: MediaDetailScreen(metadata: show)),
            ),
          ),
        ),
      ),
    );

    await tester.pump();
    await tester.pump();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 200));

    await openTitleSeasonPicker(tester);
    expect(tester.widget<Text>(find.byKey(const ValueKey('series_season_heading'))).data, startsWith('Season 1'));
    expect(
      find.text('Specials'),
      findsOneWidget,
      reason: 'specials remain a visible choice without becoming the default',
    );
    expect(tester.widget<TvBrowseRail>(find.byType(TvBrowseRail)).hubs.first.items.first.parentIndex, 1);
    expect(tester.widget<TvBrowseRail>(find.byType(TvBrowseRail)).hubs.first.items.first.index, 1);
  });

  testWidgets('TV detail exposes each season as its episode hub leading options item', (tester) async {
    await SettingsService.getInstance();

    final show = testMediaItem(
      id: 'show_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.show,
      title: 'The Show',
      serverId: 'server_1',
      serverName: 'Server',
    );
    final season1 = testMediaItem(
      id: 'season_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.season,
      title: 'Season 1',
      index: 1,
      parentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final season2 = testMediaItem(
      id: 'season_2',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.season,
      title: 'Season 2',
      index: 2,
      parentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final episode1 = testMediaItem(
      id: 'episode_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.episode,
      title: 'Episode 1',
      index: 1,
      parentId: season1.id,
      parentIndex: season1.index,
      grandparentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final episode2 = testMediaItem(
      id: 'episode_2',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.episode,
      title: 'Episode 2',
      index: 1,
      parentId: season2.id,
      parentIndex: season2.index,
      grandparentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );

    final client = _FakeMediaServerClient(
      show: show,
      childrenByParent: {
        show.id: [season1, season2],
        season1.id: [episode1],
        season2.id: [episode2],
      },
    );
    final provider = testMultiServer(clients: [client]).provider;

    await tester.pumpWidget(
      TranslationProvider(
        child: ChangeNotifierProvider<MultiServerProvider>.value(
          value: provider,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: withProfileNavigationScope(
              child: SizedBox(width: 1280, height: 720, child: MediaDetailScreen(metadata: show)),
            ),
          ),
        ),
      ),
    );

    await tester.pump();
    await tester.pump();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 200));

    // Every season hub surfaces its own season as the leading options item —
    // the D-pad path to mark a whole season watched/unwatched (#2156).
    final rail = tester.widget<TvBrowseRail>(find.byType(TvBrowseRail));
    expect(rail.leadingItemForHub, isNotNull);
    final seasonHubs = rail.hubs.where((hub) => hub.id.startsWith('detail_season_')).toList();
    expect(seasonHubs, hasLength(1));
    expect(rail.leadingItemForHub!(seasonHubs[0])?.id, season1.id);
    await openTitleSeasonPicker(tester);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 200));
    await tester.pump();
    await tester.pumpAndSettle();
    final changedRail = tester.widget<TvBrowseRail>(find.byType(TvBrowseRail));
    final selectedHub = changedRail.hubs.firstWhere((hub) => hub.id.startsWith('detail_season_'));
    expect(changedRail.leadingItemForHub!(selectedHub)?.id, season2.id);

    // Non-season hubs (flatten episodes, actors, extras, related) get none.
    const flattenHub = MediaHub(id: 'detail_episodes', title: 'Episodes', type: 'episode', items: <MediaItem>[]);
    expect(rail.leadingItemForHub!(flattenHub), isNull);
  });
  testWidgets('TV detail reveal still waits for the supplemental sections', (tester) async {
    // Counterpart to the test above: the early paint does NOT move the TV
    // reveal. `_isTvDetailReadyToReveal` additionally requires extras, related
    // hubs, seasons and the first episode page, and those deliberately start
    // only once the on-deck lookup settles — starting them at the early paint
    // measured worse, because they contend with it rather than overlap.
    // Pinned so the phone/desktop win is never restated as an all-platform one.
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    final show = testMediaItem(
      id: 'show_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.show,
      title: 'The Show',
      serverId: 'server_1',
      serverName: 'Server',
    );
    final season1 = testMediaItem(
      id: 'season_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.season,
      title: 'Season 1',
      index: 1,
      parentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final episode1 = testMediaItem(
      id: 'episode_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.episode,
      title: 'Episode 1',
      index: 1,
      parentIndex: season1.index,
      parentId: season1.id,
      grandparentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );

    final client = _FakeMediaServerClient(
      show: show,
      childrenByParent: {
        show.id: [season1],
        season1.id: [episode1],
      },
    )..onDeckGate = Completer<void>();
    final provider = testMultiServer(clients: [client]).provider;

    await tester.pumpWidget(
      TranslationProvider(
        child: ChangeNotifierProvider<MultiServerProvider>.value(
          value: provider,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: withProfileNavigationScope(
              child: SizedBox(width: 1280, height: 720, child: MediaDetailScreen(metadata: show)),
            ),
          ),
        ),
      ),
    );

    for (var i = 0; i < 4; i++) {
      await tester.pump();
    }
    await tester.pump(const Duration(milliseconds: 200));

    // Target the reveal gate specifically: the detail tree also builds a
    // scroll-linked app-bar scrim whose opacity is 0 at rest, so matching on
    // AnimatedOpacity by type would pass no matter what the gate does.
    double revealOpacity() => tester.widget<AnimatedOpacity>(find.byKey(tvDetailRevealGateKey)).opacity;

    // The item was published early and the metadata phase is over...
    expect(client.earlyPaints, hasLength(1));
    expect(find.byType(CircularProgressIndicator), findsNothing);
    // ...yet TV shows nothing but the backdrop, because the reveal gate also
    // waits on extras, related hubs, seasons and the first episode page — none
    // of which have started, since they run after the on-deck lookup settles.
    expect(revealOpacity(), 0, reason: 'the early paint must not be claimed as a TV win');

    // Let the held lookup finish so teardown is not left holding a suspended
    // future and a client mid-request.
    client.onDeckGate!.complete();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 100));
  });

  testWidgets('TV detail summary uses light theme foreground color', (tester) async {
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    const summary = 'Light theme detail text should stay readable.';
    final movie = testMediaItem(
      id: 'movie_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.movie,
      title: 'Readable Movie',
      summary: summary,
    );
    final theme = monoTheme(MonoPalette.light);

    await tester.pumpWidget(
      TranslationProvider(
        child: MaterialApp(
          theme: theme,
          home: withProfileNavigationScope(child: MediaDetailScreen(metadata: movie)),
        ),
      ),
    );

    await tester.pump();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 200));

    final summaryText = tester.widget<Text>(find.text(summary));
    expect(summaryText.style?.color, theme.colorScheme.onSurface.withValues(alpha: 0.78));
  });

  testWidgets('TV detail shows every season tab and prefetches adjacent first page', (tester) async {
    await SettingsService.getInstance();

    final show = testMediaItem(
      id: 'show_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.show,
      title: 'The Show',
      serverId: 'server_1',
      serverName: 'Server',
    );
    final season1 = testMediaItem(
      id: 'season_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.season,
      title: 'Season 1',
      index: 1,
      parentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final season2 = testMediaItem(
      id: 'season_2',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.season,
      title: 'Season 2',
      index: 2,
      parentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final episode1 = testMediaItem(
      id: 'episode_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.episode,
      title: 'Episode 1',
      index: 1,
      parentId: season1.id,
      parentIndex: season1.index,
      grandparentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final episode2 = testMediaItem(
      id: 'episode_2',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.episode,
      title: 'Episode 2',
      index: 1,
      parentId: season2.id,
      parentIndex: season2.index,
      grandparentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );

    final client = _FakeMediaServerClient(
      show: show,
      childrenByParent: {
        show.id: [season1, season2],
        season1.id: [episode1],
        season2.id: [episode2],
      },
    );
    final provider = testMultiServer(clients: [client]).provider;

    await tester.pumpWidget(
      TranslationProvider(
        child: ChangeNotifierProvider<MultiServerProvider>.value(
          value: provider,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: withProfileNavigationScope(
              child: SizedBox(width: 1280, height: 720, child: MediaDetailScreen(metadata: show)),
            ),
          ),
        ),
      ),
    );

    await tester.pump();
    await tester.pump();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 200));

    // Every season tab is derived from the season list, so both appear
    // immediately. TV warms only the selected first page plus the adjacent first
    // page; it still does not walk the whole show or load page 2+.
    await openTitleSeasonPicker(tester);
    expect(tester.widget<Text>(find.byKey(const ValueKey('series_season_heading'))).data, startsWith('Season 1 ·'));
    await openTitleSeasonPicker(tester);
    expect(find.text('Season 2'), findsOneWidget);
    expect(client.childrenPageCalls.map((call) => call.parentId), containsAll([season1.id, season2.id]));
    expect(client.childrenPageCalls.every((call) => call.start == 0 && call.size == 40), isTrue);
    final beforePreview = client.childrenPageCalls.length;
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    expect(tester.widget<Text>(find.byKey(const ValueKey('series_season_heading'))).data, startsWith('Season 2 ·'));
    expect(client.childrenPageCalls.length, beforePreview, reason: 'season preview does not load episode pages');
    expect(
      tester.widget<TvBrowseRail>(find.byType(TvBrowseRail)).hubs.first.items.first.id,
      episode2.id,
      reason: 'the inline episodes must follow the highlighted season',
    );
    expect(
      FocusManager.instance.primaryFocus?.debugLabel,
      'title_season:season_2',
      reason: 'updating inline episodes must leave focus on the season',
    );
  });

  testWidgets('TV detail keeps every season tab when a season episode load fails', (tester) async {
    await SettingsService.getInstance();

    final show = testMediaItem(
      id: 'show_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.show,
      title: 'The Show',
      serverId: 'server_1',
      serverName: 'Server',
    );
    final season1 = testMediaItem(
      id: 'season_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.season,
      title: 'Season 1',
      index: 1,
      parentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final season2 = testMediaItem(
      id: 'season_2',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.season,
      title: 'Season 2',
      index: 2,
      parentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final episode1 = testMediaItem(
      id: 'episode_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.episode,
      title: 'Episode 1',
      index: 1,
      parentId: season1.id,
      parentIndex: season1.index,
      grandparentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final episode2 = testMediaItem(
      id: 'episode_2',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.episode,
      title: 'Episode 2',
      index: 1,
      parentId: season2.id,
      parentIndex: season2.index,
      grandparentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );

    final client = _FakeMediaServerClient(
      show: show,
      childrenByParent: {
        show.id: [season1, season2],
        season1.id: [episode1],
        season2.id: [episode2],
      },
      childrenPageErrors: {season1.id: Exception('season cache failed')},
    );
    final provider = testMultiServer(clients: [client]).provider;

    await tester.pumpWidget(
      TranslationProvider(
        child: ChangeNotifierProvider<MultiServerProvider>.value(
          value: provider,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: withProfileNavigationScope(
              child: SizedBox(width: 1280, height: 720, child: MediaDetailScreen(metadata: show)),
            ),
          ),
        ),
      ),
    );

    await tester.pump();
    await tester.pump();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 200));

    await openTitleSeasonPicker(tester);
    expect(tester.widget<Text>(find.byKey(const ValueKey('series_season_heading'))).data, 'Season 1');
    await openTitleSeasonPicker(tester);
    expect(find.text('Season 2'), findsOneWidget);
  });

  for (final behavior in ['enter', 'cancel', 'preview']) {
    final cancelEntry = behavior == 'cancel';
    final previewOnly = behavior == 'preview';
    testWidgets('TV detail completes adjacent season prefetch ($behavior) without stale episodes or unexpected focus', (
      tester,
    ) async {
      await SettingsService.getInstance();

      final show = testMediaItem(
        id: 'show_1',
        backend: MediaBackend.jellyfin,
        kind: MediaKind.show,
        title: 'The Show',
        serverId: 'server_1',
        serverName: 'Server',
      );
      final season1 = testMediaItem(
        id: 'season_1',
        backend: MediaBackend.jellyfin,
        kind: MediaKind.season,
        title: 'Season 1',
        index: 1,
        parentId: show.id,
        serverId: show.serverId,
        serverName: show.serverName,
      );
      final season2 = testMediaItem(
        id: 'season_2',
        backend: MediaBackend.jellyfin,
        kind: MediaKind.season,
        title: 'Season 2',
        index: 2,
        parentId: show.id,
        serverId: show.serverId,
        serverName: show.serverName,
      );
      final episode1 = testMediaItem(
        id: 'episode_1',
        backend: MediaBackend.jellyfin,
        kind: MediaKind.episode,
        title: 'Episode 1',
        index: 1,
        parentId: season1.id,
        parentIndex: season1.index,
        grandparentId: show.id,
        serverId: show.serverId,
        serverName: show.serverName,
      );
      final episode2 = testMediaItem(
        id: 'episode_2',
        backend: MediaBackend.jellyfin,
        kind: MediaKind.episode,
        title: 'Episode 2',
        index: 1,
        parentId: season2.id,
        parentIndex: season2.index,
        grandparentId: show.id,
        serverId: show.serverId,
        serverName: show.serverName,
      );
      final season2Completer = Completer<List<MediaItem>>();
      final client = _FakeMediaServerClient(
        show: show,
        childrenByParent: {
          show.id: [season1, season2],
          season1.id: [episode1],
        },
        childrenPageFutures: {season2.id: season2Completer.future},
      );
      final provider = testMultiServer(clients: [client]).provider;

      await tester.pumpWidget(
        TranslationProvider(
          child: ChangeNotifierProvider<MultiServerProvider>.value(
            value: provider,
            child: MaterialApp(
              theme: monoTheme(MonoPalette.dark),
              home: withProfileNavigationScope(
                child: SizedBox(width: 1280, height: 720, child: MediaDetailScreen(metadata: show)),
              ),
            ),
          ),
        ),
      );

      await tester.pump();
      await tester.pump();
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 200));
      tester.state<TvBrowseRailState>(find.byType(TvBrowseRail)).requestFocus();
      await tester.pump();

      await openTitleSeasonPicker(tester);
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
      await tester.pump();
      if (!previewOnly) await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pump();
      expect(find.descendant(of: find.byType(MediaCard), matching: find.text('Episode 2')), findsNothing);

      if (cancelEntry) {
        await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
        await tester.pump();
        await tester.pump(const Duration(milliseconds: 200));
        await tester.pump();
        expect(FocusManager.instance.primaryFocus?.debugLabel, 'play_button');
      }

      season2Completer.complete([episode2]);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 200));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 200));

      expect(
        tester.widget<TvBrowseRail>(find.byType(TvBrowseRail)).hubs.expand((hub) => hub.items).map((item) => item.id),
        contains(episode2.id),
      );
      expect(
        FocusManager.instance.primaryFocus?.debugLabel,
        previewOnly
            ? 'title_season:season_2'
            : cancelEntry
            ? 'play_button'
            : 'tv_browse_rail',
      );
    });
  }

  testWidgets('TV detail hero, rail cards, and Play all follow the focused episode', (tester) async {
    final semantics = tester.ensureSemantics();
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    final show = testMediaItem(
      id: 'show_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.show,
      title: 'The Show',
      summary: 'The show summary.',
      genres: ['Drama', 'Mystery'],
      serverId: 'server_1',
      serverName: 'Server',
    );
    final season = testMediaItem(
      id: 'season_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.season,
      title: 'Season 1',
      index: 1,
      parentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final episode = testMediaItem(
      id: 'episode_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.episode,
      title: 'The One Where the Title Matters',
      summary: 'The episode summary.',
      index: 1,
      durationMs: 1380000,
      parentId: season.id,
      parentIndex: season.index,
      grandparentId: show.id,
      grandparentTitle: show.title,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final episode2 = testMediaItem(
      id: 'episode_2',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.episode,
      title: 'The One After',
      index: 2,
      durationMs: 1500000,
      parentId: season.id,
      parentIndex: season.index,
      grandparentId: show.id,
      grandparentTitle: show.title,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final client = _FakeMediaServerClient(
      show: show,
      childrenByParent: {
        show.id: [season],
        season.id: [episode, episode2],
      },
    );
    final provider = testMultiServer(clients: [client]).provider;

    await tester.pumpWidget(
      TranslationProvider(
        child: ChangeNotifierProvider<MultiServerProvider>.value(
          value: provider,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: withProfileNavigationScope(
              child: SizedBox(width: 1280, height: 720, child: MediaDetailScreen(metadata: show)),
            ),
          ),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 200));

    tester.state<TvBrowseRailState>(find.byType(TvBrowseRail)).requestFocus();
    await tester.pumpAndSettle();

    final heroTitle = find.byKey(const ValueKey('tv_detail_episode_title'));
    final information = find.byKey(const ValueKey('title_episode_preview'));

    // The hero line is the readable copy of the title (#2217).
    expect(heroTitle, findsOneWidget);
    expect(tester.widget<Text>(heroTitle).data, 'The One Where the Title Matters');
    expect(find.text('The episode summary.'), findsOneWidget);
    // The title sits above the episode's metadata line, inside the block that
    // opens the details sheet.
    final metadataLine = find.byKey(const ValueKey('title_episode_metadata'));
    expect(tester.getBottomLeft(heroTitle).dy, lessThanOrEqualTo(tester.getTopLeft(metadataLine).dy));
    expect(find.descendant(of: information, matching: heroTitle), findsOneWidget);
    expect(tester.widget<Semantics>(information).properties.label, contains('The One Where the Title Matters, S1 E1'));

    // Genres are the show's and never change while browsing: not a hero row.
    // They stay in the announcement because the sheet the block opens has them.
    expect(find.text('Drama  •  Mystery'), findsNothing);

    // Rail cards sit inside their own show: the episode title is the headline
    // and the subtitle identifies it by number and runtime — no show name.
    final cards = find.byType(MediaCard);
    expect(find.descendant(of: cards, matching: find.text('The One Where the Title Matters')), findsOneWidget);
    expect(find.descendant(of: cards, matching: find.text('S1 E1 · 23min')), findsOneWidget);
    expect(find.descendant(of: cards, matching: find.text('The One After')), findsOneWidget);
    expect(find.descendant(of: cards, matching: find.text('S1 E2 · 25min')), findsOneWidget);
    expect(find.descendant(of: cards, matching: find.text('The Show')), findsNothing);

    // Play agrees with the hero: the focused episode, not a stale on-deck.
    await tester.sendKeyDownEvent(LogicalKeyboardKey.arrowRight);
    await tester.pump();
    await tester.sendKeyUpEvent(LogicalKeyboardKey.arrowRight);
    await tester.pump(const Duration(milliseconds: 200));
    expect(tester.widget<Text>(heroTitle).data, 'The One After');
    expect(
      find.descendant(of: find.byKey(const ValueKey('title_episode_metadata')), matching: find.text('S1 E2')),
      findsOneWidget,
    );
    semantics.dispose();
  });

  testWidgets('TV detail hero adds the scores from the focused episode\'s own fetch (#2539)', (tester) async {
    final semantics = tester.ensureSemantics();
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(1920, 1080);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    final show = testMediaItem(
      id: 'show_1',
      backend: MediaBackend.plex,
      kind: MediaKind.show,
      title: 'The Show',
      serverId: 'server_1',
      serverName: 'Server',
    ).copyWith(ratings: const [MediaRatingSource(source: 'imdb', value: 8.4)]);
    final season = testMediaItem(
      id: 'season_1',
      backend: MediaBackend.plex,
      kind: MediaKind.season,
      title: 'Season 1',
      index: 1,
      parentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    // Rail entries as a Plex children listing sends them: the scalar TMDB
    // pair only.
    MediaItem episode(String id, int index, double tmdb) =>
        testMediaItem(
          id: id,
          backend: MediaBackend.plex,
          kind: MediaKind.episode,
          title: 'Episode $index',
          index: index,
          parentId: season.id,
          parentIndex: season.index,
          grandparentId: show.id,
          grandparentTitle: show.title,
          serverId: show.serverId,
          serverName: show.serverName,
        ).copyWith(
          ratings: [MediaRatingSource(source: 'tmdb', value: tmdb)],
        );
    final client = _FakeMediaServerClient(
      show: show,
      childrenByParent: {
        show.id: [season],
        season.id: [episode('ep1', 1, 7.7), episode('ep2', 2, 7.1)],
      },
      // Episode 1's own `/library/metadata/{id}` adds the `Rating[]` array;
      // episode 2's fetch returns its listing entry unchanged.
      rawItems: {
        'ep1': {
          'ratingKey': 'ep1',
          'type': 'episode',
          'title': 'Episode 1',
          'parentRatingKey': season.id,
          'grandparentRatingKey': show.id,
          'parentIndex': 1,
          'index': 1,
          'audienceRating': 7.7,
          'audienceRatingImage': 'themoviedb://image.rating',
          'Rating': [
            {'image': 'imdb://image.rating', 'value': 7.8, 'type': 'audience'},
            {'image': 'themoviedb://image.rating', 'value': 7.7, 'type': 'audience'},
          ],
        },
      },
    );
    final provider = testMultiServer(clients: [client]).provider;

    await tester.pumpWidget(
      TranslationProvider(
        child: ChangeNotifierProvider<MultiServerProvider>.value(
          value: provider,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: withProfileNavigationScope(
              child: SizedBox(width: 1920, height: 1080, child: MediaDetailScreen(metadata: show)),
            ),
          ),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 200));

    final information = find.byKey(const ValueKey('title_episode_preview'));
    String announced() => tester.widget<Semantics>(information).properties.label!;

    await openTitleSeasonPicker(tester);
    tester.state<TvBrowseRailState>(find.byType(TvBrowseRail)).requestFocus();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    await tester.pump();
    // Entering the full-screen seasons section can finish the episode probe;
    // never use the show's IMDb as a stand-in for the episode's own score.
    expect(announced(), contains('TMDB 77%'));
    expect(announced(), isNot(contains('IMDb 8.4')));

    // Past the playback probe's debounce: the fetch it already makes carries
    // the episode's IMDb score.
    await tester.pump(const Duration(milliseconds: 400));
    await tester.pump();
    expect(announced(), contains('TMDB 77%, IMDb 7.8'));
    expect(find.descendant(of: information, matching: find.text('7.8')), findsOneWidget);

    // The scores belong to that episode alone.
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pump(const Duration(milliseconds: 400));
    await tester.pump();
    expect(announced(), contains('Episode 2'));
    expect(announced(), contains('TMDB 71%'));
    expect(announced(), isNot(contains('IMDb')));
    semantics.dispose();
  });

  testWidgets('TV detail hides technical status and its track action changes the playback preview', (tester) async {
    await SettingsService.getInstance();
    tester.view.physicalSize = const Size(1920, 1080);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    // The episode's cached media source, as the item's own fetch leaves it:
    // Plex-selected English audio, no subtitle row selected.
    final source = MediaSourceInfo(
      videoUrl: '',
      audioTracks: [
        MediaAudioTrack(id: 101, index: 1, codec: 'truehd', languageCode: 'eng', channels: 8, selected: true),
        MediaAudioTrack(id: 102, index: 2, codec: 'aac', languageCode: 'jpn', channels: 2, selected: false),
      ],
      subtitleTracks: [
        MediaSubtitleTrack(id: 201, index: 3, codec: 'srt', languageCode: 'eng', selected: false, forced: false),
      ],
      chapters: [
        MediaChapter(id: 1, title: 'Opening', startTimeOffset: 0),
        MediaChapter(id: 2, title: 'A new day', startTimeOffset: 300000),
      ],
    );
    const version = MediaVersion(id: 'v1', videoResolution: '1080', videoCodec: 'hevc');
    final show = testMediaItem(
      id: 'show_1',
      backend: MediaBackend.plex,
      kind: MediaKind.show,
      title: 'The Show',
      serverId: 'server_1',
      serverName: 'Server',
    );
    final season = testMediaItem(
      id: 'season_1',
      backend: MediaBackend.plex,
      kind: MediaKind.season,
      title: 'Season 1',
      index: 1,
      parentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final episode = testMediaItem(
      id: 'episode_1',
      backend: MediaBackend.plex,
      kind: MediaKind.episode,
      title: 'Pilot',
      index: 1,
      parentId: season.id,
      parentIndex: season.index,
      grandparentId: show.id,
      grandparentTitle: show.title,
      serverId: show.serverId,
      serverName: show.serverName,
      mediaVersions: const [version],
    );
    final client = _FakeMediaServerClient(
      show: show,
      childrenByParent: {
        show.id: [season],
        season.id: [episode],
      },
      mediaSourcesById: {episode.id: source},
    );
    final provider = testMultiServer(clients: [client]).provider;

    await tester.pumpWidget(
      TranslationProvider(
        child: ChangeNotifierProvider<MultiServerProvider>.value(
          value: provider,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: withProfileNavigationScope(
              child: SizedBox(width: 1920, height: 1080, child: MediaDetailScreen(metadata: show)),
            ),
          ),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    await tester.pump();
    // Past the track probe's debounce: the hero's episode is fetched and its
    // media source read from the cache.
    await tester.pump(const Duration(milliseconds: 400));

    // The row's trailing status is the player's own ladder run over the
    // source rows Play will use: Plex-selected English audio, subtitles off
    // (no row selected).
    expect(find.byKey(const ValueKey('detail_playback_tracks')), findsNothing);
    final status = find.byKey(const ValueKey('detail_playback_tracks'), skipOffstage: false);
    final chapterHub = tester
        .widget<TvBrowseRail>(find.byType(TvBrowseRail))
        .hubs
        .where((hub) => hub.id == 'detail_chapters');
    expect(chapterHub.single.items.map((item) => item.raw?['detailChapterStart']), [0, 300000]);
    expect(status, findsOneWidget);
    expect(
      tester.widget<Semantics>(status).properties.label,
      'Audio & Subtitles: 1080p, HEVC, English · TrueHD · 7.1, Off',
    );
    expect(find.byKey(const ValueKey('detail_playback_panel')), findsOneWidget);
    expect(
      find.byKey(const ValueKey('detail_finish_time')),
      findsNothing,
      reason: 'Shows have no total playback runtime.',
    );

    // It is information, not a sixth button: RIGHT past the last action stays
    // on the last action.
    tester.state<TvBrowseRailState>(find.byType(TvBrowseRail)).requestFocus();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    for (var i = 0; i < 8; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
      await tester.pump();
    }
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'detail_more');
    await tester.tap(find.byKey(const ValueKey('detail_audio_selector')));
    await tester.pumpAndSettle();
    expect(find.textContaining('Japanese'), findsWidgets);
    await tester.tap(find.text('Japanese'));
    await tester.pumpAndSettle();
    expect(tester.widget<Semantics>(status).properties.label, contains('Japanese'));
    tester.state<TvBrowseRailState>(find.byType(TvBrowseRail)).requestFocus();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(find.text('0:00'), findsOneWidget);
    expect(find.text('5:00'), findsOneWidget);
    expect(find.text('A new day'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  group('saved-source detail prediction', () {
    Future<GlobalKey<NavigatorState>> pumpDetail(
      WidgetTester tester,
      _FakeMediaServerClient client, {
      DownloadProvider? downloads,
    }) async {
      await SettingsService.getInstance();
      tester.view.physicalSize = const Size(1920, 1080);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      final provider = testMultiServer(clients: [client]).provider;
      final navigator = GlobalKey<NavigatorState>();
      final observer = RouteObserver<PageRoute<dynamic>>();
      await tester.pumpWidget(
        TranslationProvider(
          child: MultiProvider(
            providers: [
              ChangeNotifierProvider<MultiServerProvider>.value(value: provider),
              if (downloads != null) ChangeNotifierProvider<DownloadProvider>.value(value: downloads),
            ],
            child: MaterialApp(
              navigatorKey: navigator,
              navigatorObservers: [observer],
              theme: monoTheme(MonoPalette.dark),
              home: ProfileNavigationScope(
                navigatorKey: navigator,
                routeObserver: observer,
                mainScaffoldMessengerKey: GlobalKey<ScaffoldMessengerState>(),
                child: MediaDetailScreen(metadata: client.show, isOffline: downloads != null),
              ),
            ),
          ),
        ),
      );
      await tester.pump();
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 400));
      await tester.pump();
      return navigator;
    }

    String status(WidgetTester tester) => tester
        .widgetList<Semantics>(find.byKey(const ValueKey('detail_playback_tracks'), skipOffstage: false))
        .last
        .properties
        .label!;

    Future<void> settleSelection(WidgetTester tester) async {
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 400));
      await tester.pump();
    }

    testWidgets('nonzero movie selection changes both picture and tracks, including reverse and removed preference', (
      tester,
    ) async {
      final raw = _previewItem('movie');
      final movie = PlexMappers.mediaItemFromCacheJson(raw, serverId: ServerId('server_1'));
      final client = _FakeMediaServerClient(show: movie, childrenByParent: {}, rawItems: {'movie': raw});
      await saveMediaVersionPreferenceFor(movie, index: 1, versions: movie.mediaVersions!);
      await pumpDetail(tester, client);
      expect(status(tester), contains('4K'));
      expect(status(tester), contains('Japanese'));
      expect(status(tester), isNot(contains('English')));
      final itemReads = client.itemReads;

      await saveMediaVersionPreferenceFor(movie, index: 0, versions: movie.mediaVersions!);
      await settleSelection(tester);
      expect(status(tester), contains('1080p'));
      expect(status(tester), contains('English'));
      expect(status(tester), isNot(contains('Japanese')));
      await saveMediaVersionPreferenceFor(movie, index: 1, versions: movie.mediaVersions!);
      await settleSelection(tester);
      expect(status(tester), contains('Japanese'));
      final settings = await SettingsService.getInstance();
      await settings.write(
        SettingsService.mediaVersionPreferences,
        SettingsService.mediaVersionPreferences.defaultValue,
      );
      await settleSelection(tester);
      expect(status(tester), contains('English'));
      expect(client.itemReads, itemReads, reason: 'selection changes reuse item metadata, not its derived source');
    });

    testWidgets('return refresh resolves reordered and removed sources instead of reusing the old probe', (
      tester,
    ) async {
      final raw = _previewItem('movie');
      final movie = PlexMappers.mediaItemFromCacheJson(raw, serverId: ServerId('server_1'));
      final client = _FakeMediaServerClient(show: movie, childrenByParent: {}, rawItems: {'movie': raw});
      await saveMediaVersionPreferenceFor(movie, index: 1, versions: movie.mediaVersions!);
      final navigator = await pumpDetail(tester, client);
      expect(status(tester), contains('Japanese'));
      Future<void> returnAfterChanging(List<dynamic> media) async {
        unawaited(navigator.currentState!.push(MaterialPageRoute<void>(builder: (_) => const SizedBox())));
        await tester.pump();
        await tester.pump(const Duration(milliseconds: 400));
        client.rawItems['movie'] = {...raw, 'Media': media};
        navigator.currentState!.pop();
        await tester.pump();
        await tester.pump(const Duration(milliseconds: 400));
        await settleSelection(tester);
      }

      final versions = raw['Media'] as List;
      await returnAfterChanging(versions.reversed.toList());
      expect(status(tester), contains('4K'));
      expect(status(tester), contains('Japanese'));
      await returnAfterChanging([versions.first]);
      expect(status(tester), contains('1080p'));
      expect(status(tester), contains('English'));
      expect(status(tester), isNot(contains('Japanese')));
    });

    testWidgets('unavailable saved source falls back to the same playable version and part as Play', (tester) async {
      final raw = _previewItem('movie', alternateAccessible: false, firstPartAccessible: false);
      final movie = PlexMappers.mediaItemFromCacheJson(raw, serverId: ServerId('server_1'));
      final client = _FakeMediaServerClient(show: movie, childrenByParent: {}, rawItems: {'movie': raw});
      await saveMediaVersionPreferenceFor(movie, index: 1, versions: movie.mediaVersions!);
      await pumpDetail(tester, client);
      expect(status(tester), contains('1080p'));
      expect(status(tester), contains('English'));
      expect(status(tester), isNot(contains('French')));
      expect(status(tester), isNot(contains('Japanese')));
    });

    testWidgets('old selection probe cannot publish after preference change or screen disposal', (tester) async {
      final raw = _previewItem('movie');
      final movie = PlexMappers.mediaItemFromCacheJson(raw, serverId: ServerId('server_1'));
      final gate = Completer<void>();
      final client = _FakeMediaServerClient(show: movie, childrenByParent: {}, rawItems: {'movie': raw})
        ..sourceGate = gate;
      await saveMediaVersionPreferenceFor(movie, index: 1, versions: movie.mediaVersions!);
      await pumpDetail(tester, client);
      client.sourceGate = null;
      await saveMediaVersionPreferenceFor(movie, index: 0, versions: movie.mediaVersions!);
      await settleSelection(tester);
      expect(status(tester), contains('English'));
      gate.complete();
      await tester.pump();
      expect(status(tester), isNot(contains('Japanese')));
      final disposedGate = Completer<void>();
      client.sourceGate = disposedGate;
      await saveMediaVersionPreferenceFor(movie, index: 1, versions: movie.mediaVersions!);
      await settleSelection(tester);
      await tester.pumpWidget(const SizedBox());
      disposedGate.complete();
      await tester.pump();
      expect(tester.takeException(), isNull);
    });

    testWidgets('sibling episode focus rematches the series signature against its own reordered sources', (
      tester,
    ) async {
      final rawFirst = _previewItem('ep1', episode: true);
      final rawSecond = _previewItem('ep2', episode: true, reverseVersions: true, sourceIdBase: 200);
      final first = PlexMappers.mediaItemFromCacheJson(rawFirst, serverId: ServerId('server_1'));
      final second = PlexMappers.mediaItemFromCacheJson(rawSecond, serverId: ServerId('server_1'));
      final show = testMediaItem(id: 'show', backend: MediaBackend.plex, kind: MediaKind.show, serverId: 'server_1');
      final season = testMediaItem(
        id: 'season',
        backend: MediaBackend.plex,
        kind: MediaKind.season,
        parentId: 'show',
        index: 1,
        serverId: 'server_1',
      );
      final client = _FakeMediaServerClient(
        show: show,
        childrenByParent: {
          'show': [season],
          'season': [first, second],
        },
        rawItems: {'ep1': rawFirst, 'ep2': rawSecond},
      )..onDeckEpisode = first;
      await saveMediaVersionPreferenceFor(first, index: 1, versions: first.mediaVersions!);
      await pumpDetail(tester, client);
      expect(status(tester), contains('Japanese'));
      await openTitleSeasonPicker(tester);
      tester.state<TvBrowseRailState>(find.byType(TvBrowseRail)).requestFocus();
      await tester.pumpAndSettle();
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
      await settleSelection(tester);
      expect(
        find.descendant(of: find.byKey(const ValueKey('title_episode_metadata')), matching: find.text('S1 E2')),
        findsOneWidget,
      );
      expect(status(tester), contains('4K'));
      expect(status(tester), contains('Japanese'));
      expect(status(tester), isNot(contains('English')));
    });

    testWidgets('offline picture labels use the completed nonzero download without probing server tracks', (
      tester,
    ) async {
      final raw = _previewItem('offline-movie');
      final movie = PlexMappers.mediaItemFromCacheJson(raw, serverId: ServerId('server_1'));
      final client = _FakeMediaServerClient(show: movie, childrenByParent: {}, rawItems: {'offline-movie': raw});
      await saveMediaVersionPreferenceFor(movie, index: 0, versions: movie.mediaVersions!);
      final database = AppDatabase.forTesting(NativeDatabase.memory());
      PlexApiCache.initialize(database);
      JellyfinApiCache.initialize(database);
      await tester.runAsync(
        () => database.insertDownload(
          serverId: ServerId('server_1'),
          ratingKey: movie.id,
          globalKey: movie.globalKey,
          type: 'movie',
          status: DownloadStatus.completed.index,
          mediaIndex: 1,
          mediaSourceId: movie.mediaVersions![1].id,
        ),
      );
      final manager = DownloadManagerService(
        database: database,
        storageService: DownloadStorageService.instance,
        clientResolver: (serverId, {clientScopeId}) => null,
      )..recoveryFuture = Future<void>.value();
      final downloads = DownloadProvider.forTesting(downloadManager: manager, database: database);
      await tester.runAsync(downloads.ensureInitialized);
      downloads.debugSeedState(
        ownedDownloadKeys: {movie.globalKey},
        metadata: {movie.globalKey: movie},
        downloads: {movie.globalKey: DownloadProgress(globalKey: movie.globalKey, status: DownloadStatus.completed)},
      );
      addTearDown(() async {
        downloads.dispose();
        manager.dispose();
        await database.close();
      });
      await pumpDetail(tester, client, downloads: downloads);
      expect(status(tester), contains('4K'));
      expect(status(tester), isNot(contains('1080p')));
      expect(status(tester), isNot(contains('Japanese')));
      expect(status(tester), isNot(contains('Off')));
      expect(client.itemReads, 0);
      expect(client.sourceReads, 0);
      expect(client.earlyPaints, isEmpty);
    });
  });

  testWidgets('TV episode activation opens exact episode details and Back restores the show', (tester) async {
    final settings = await SettingsService.getInstance();
    await settings.write(SettingsService.episodeAction, EpisodeAction.details);
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    final show = testMediaItem(
      id: 'show_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.show,
      title: 'The Show',
      serverId: 'server_1',
      serverName: 'Server',
    );
    final season = testMediaItem(
      id: 'season_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.season,
      title: 'Season 1',
      index: 1,
      parentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final episode = testMediaItem(
      id: 'episode_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.episode,
      title: 'Episode 1',
      index: 1,
      parentId: season.id,
      parentIndex: season.index,
      grandparentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final client = _FakeMediaServerClient(
      show: show,
      childrenByParent: {
        show.id: [season],
        season.id: [episode],
      },
    );
    final database = AppDatabase.forTesting(NativeDatabase.memory());
    PlexApiCache.initialize(database);
    JellyfinApiCache.initialize(database);
    final manager = MultiServerManager()..debugRegisterClientForTesting(client);
    final multiServerProvider = testMultiServerProvider(manager);
    final offlineWatch = OfflineWatchSyncService(database: database, serverManager: manager);
    final downloadManager = DownloadManagerService(
      database: database,
      storageService: DownloadStorageService.instance,
      clientResolver: (serverId, {clientScopeId}) => null,
    )..recoveryFuture = Future<void>.value();
    final downloadProvider = DownloadProvider.forTesting(downloadManager: downloadManager, database: database);
    await downloadProvider.ensureInitialized();
    addTearDown(() async {
      downloadProvider.dispose();
      downloadManager.dispose();
      offlineWatch.dispose();
      multiServerProvider.dispose();
      manager.dispose();
      await database.close();
    });

    final navigatorKey = GlobalKey<NavigatorState>();
    final observer = _RecordingNavigatorObserver(popVideoPlayerImmediately: true);
    await tester.pumpWidget(
      TranslationProvider(
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<MultiServerProvider>.value(value: multiServerProvider),
            ChangeNotifierProvider<DownloadProvider>.value(value: downloadProvider),
            ChangeNotifierProvider<OfflineWatchSyncService>.value(value: offlineWatch),
          ],
          child: MaterialApp(
            navigatorKey: navigatorKey,
            navigatorObservers: [observer],
            theme: monoTheme(MonoPalette.dark),
            builder: (_, child) => withProfileNavigationScope(child: child!),
            home: SizedBox(width: 1280, height: 720, child: MediaDetailScreen(metadata: show)),
          ),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 200));

    tester.state<TvBrowseRailState>(find.byType(TvBrowseRail)).requestFocus();
    await tester.pumpAndSettle();
    expect(find.descendant(of: find.byType(MediaCard), matching: find.text('Episode 1')), findsOneWidget);
    observer.pushedRouteNames.clear();
    await tester.sendKeyDownEvent(LogicalKeyboardKey.enter);
    await tester.pump();
    await tester.sendKeyUpEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();

    expect(observer.pushedRouteNames, isNot(contains(kVideoPlayerRouteName)));
    expect(tester.widget<MediaDetailScreen>(find.byType(MediaDetailScreen)).metadata.id, episode.id);
    navigatorKey.currentState!.pop();
    await tester.pumpAndSettle();
    expect(tester.widget<MediaDetailScreen>(find.byType(MediaDetailScreen)).metadata.id, show.id);
    expect(tester.takeException(), isNull);
  });

  group('phone layout', () {
    MediaItem buildShow({String? summary}) => testMediaItem(
      id: 'show_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.show,
      title: 'The Show',
      summary: summary,
      leafCount: 4,
      viewedLeafCount: 0,
      serverId: 'server_1',
      serverName: 'Server',
    );

    MediaItem buildSeason(MediaItem show, int index) => testMediaItem(
      id: 'season_$index',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.season,
      title: 'Season $index',
      index: index,
      leafCount: 2,
      viewedLeafCount: 0,
      parentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );

    MediaItem buildEpisode(MediaItem show, MediaItem season, int index) => testMediaItem(
      id: '${season.id}_episode_$index',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.episode,
      title: 'Episode S${season.index}E$index',
      index: index,
      durationMs: 30 * 60 * 1000,
      parentId: season.id,
      parentIndex: season.index,
      grandparentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );

    Future<void> pumpPhoneDetail(
      WidgetTester tester,
      _FakeMediaServerClient client,
      MediaItem show, {
      String? initialSeasonId,
      int? initialSeasonIndex,
      String? initialEpisodeId,
      NavigatorObserver? observer,
      ThemeData? theme,
      bool showLibrarySource = false,
    }) async {
      TvDetectionService.debugSetAppleTVOverride(false);
      await SettingsService.getInstance();
      tester.view.physicalSize = const Size(1100, 2400);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      final db = AppDatabase.forTesting(NativeDatabase.memory());
      PlexApiCache.initialize(db);
      JellyfinApiCache.initialize(db);
      final downloadManager = DownloadManagerService(
        database: db,
        storageService: DownloadStorageService.instance,
        clientResolver: (serverId, {clientScopeId}) => null,
      );
      downloadManager.recoveryFuture = Future<void>.value();
      final downloadProvider = DownloadProvider.forTesting(downloadManager: downloadManager, database: db);
      await downloadProvider.ensureInitialized();

      // testMultiServer disposes the manager as well as its provider;
      // MultiServerProvider does not own the manager, and manager.dispose() is
      // what closes its status/progress controllers and the registered client.
      final multi = testMultiServer(clients: [client]);
      final multiServerProvider = multi.provider;
      final watchStateOverlay = WatchStateStore();
      final offlineWatch = OfflineWatchSyncService(database: db, serverManager: multi.manager);

      addTearDown(() async {
        watchStateOverlay.dispose();
        offlineWatch.dispose();
        downloadProvider.dispose();
        downloadManager.dispose();
        await db.close();
      });

      await tester.pumpWidget(
        TranslationProvider(
          child: MultiProvider(
            providers: [
              ChangeNotifierProvider<MultiServerProvider>.value(value: multiServerProvider),
              ChangeNotifierProvider<DownloadProvider>.value(value: downloadProvider),
              ChangeNotifierProvider<WatchStateStore>.value(value: watchStateOverlay),
              ChangeNotifierProvider<OfflineWatchSyncService>.value(value: offlineWatch),
            ],
            child: MaterialApp(
              navigatorObservers: [?observer],
              theme: theme ?? monoTheme(MonoPalette.dark),
              builder: (context, child) => withProfileNavigationScope(child: child!),
              home: MediaDetailScreen(
                metadata: show,
                showLibrarySource: showLibrarySource,
                initialSeasonId: initialSeasonId,
                initialSeasonIndex: initialSeasonIndex,
                initialEpisodeId: initialEpisodeId,
              ),
            ),
          ),
        ),
      );

      await tester.pump();
      await tester.pump();
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));
    }

    Finder episodeCardFor(String title) => find.ancestor(of: find.text(title), matching: find.byType(EpisodeCard));

    bool episodeRowWatched(WidgetTester tester, String title) {
      final card = episodeCardFor(title);
      expect(card, findsOneWidget, reason: 'episode row "$title" should be visible');
      return tester.any(find.descendant(of: card, matching: find.byIcon(Symbols.check_rounded)));
    }

    bool episodeRowHasProgress(WidgetTester tester, String title) {
      final card = episodeCardFor(title);
      expect(card, findsOneWidget, reason: 'episode row "$title" should be visible');
      return tester.any(find.descendant(of: card, matching: find.byType(LinearProgressIndicator)));
    }

    Future<void> emit(WidgetTester tester, void Function() send) async {
      send();
      await tester.pump();
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 100));
    }

    _FakeMediaServerClient singleSeasonClient(MediaItem show) {
      final season = buildSeason(show, 1);
      return _FakeMediaServerClient(
        show: show,
        childrenByParent: {
          show.id: [season],
          season.id: [buildEpisode(show, season, 1)],
        },
      );
    }

    testWidgets('phone hero title remains readable over artwork in a light theme', (tester) async {
      // The hero scrim washes artwork toward the near-white light background;
      // the old hard-coded white title vanished into it on bright covers.
      final show = buildShow();
      final theme = monoTheme(MonoPalette.light);
      await pumpPhoneDetail(tester, singleSeasonClient(show), show, theme: theme);

      final header = find.byType(LurokaMobileTitleHeader);
      expect(header, findsOneWidget);
      final heroTitle = tester.widget<Text>(find.descendant(of: header, matching: find.text(show.title!)));
      expect(heroTitle.style?.color, Colors.white);
      expect(heroTitle.style?.shadows, isNotEmpty);
    });

    testWidgets('phone show theme starts when enabled and stops when disabled', (tester) async {
      await SettingsService.getInstance();
      await SettingsService.instance.write(SettingsService.showThemeMusic, true);
      final player = _ThemePlayer();
      ShowThemePlayback.debugPlayerFactory = () => player;
      addTearDown(() => ShowThemePlayback.debugPlayerFactory = null);
      final show = buildShow();
      await pumpPhoneDetail(tester, _ThemeClient(show), show);
      await tester.pumpAndSettle();
      expect(player.opened, isTrue);
      await SettingsService.instance.write(SettingsService.showThemeMusic, false);
      await tester.pumpAndSettle();
      expect(player.closed, isTrue);
    });

    testWidgets('catalog handoff identifies the selected library on the normal detail page', (tester) async {
      final show = buildShow().copyWith(libraryId: 'movies', libraryTitle: 'Family Movies');
      await pumpPhoneDetail(tester, singleSeasonClient(show), show, showLibrarySource: true);
      expect(find.byKey(const ValueKey('catalog_library_source')), findsOneWidget);
      expect(find.textContaining('Family Movies'), findsOneWidget);
    });

    testWidgets('show episode text opens episode details with its own track selectors', (tester) async {
      final show = buildShow();
      await pumpPhoneDetail(tester, singleSeasonClient(show), show);
      expect(find.byKey(const ValueKey('mobile_title_audio')), findsNothing);
      expect(find.byKey(const ValueKey('mobile_title_subtitles')), findsNothing);
      expect(find.byKey(const ValueKey('mobile_title_tracks')), findsNothing);
      final episode = find.text('1. Episode S1E1');
      await tester.ensureVisible(episode);
      await tester.tap(episode);
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('mobile_episode_tracks')), findsOneWidget);
      expect(find.byKey(const ValueKey('mobile_episode_audio_selector')), findsOneWidget);
      expect(find.byKey(const ValueKey('mobile_episode_subtitle_selector')), findsOneWidget);
    });

    testWidgets('mobile favorite button updates the server and its selected state', (tester) async {
      final movie = testMediaItem(
        id: 'favorite_movie',
        backend: MediaBackend.jellyfin,
        kind: MediaKind.movie,
        title: 'Favorite movie',
        serverId: 'server_1',
      );
      final client = _FakeMediaServerClient(show: movie, childrenByParent: const {});
      await pumpPhoneDetail(tester, client, movie);
      final button = find.byKey(const ValueKey('mobile_title_favorite'));
      expect(button, findsOneWidget);
      await tester.tap(button);
      await tester.pumpAndSettle();
      expect(client.favoriteWrites, [true]);
      await tester.tap(button);
      await tester.pumpAndSettle();
      expect(client.favoriteWrites, [true, false]);
    });

    testWidgets('mobile resume exposes progress and a separate restart action', (tester) async {
      final movie = testMediaItem(
        id: 'resume_movie',
        backend: MediaBackend.jellyfin,
        kind: MediaKind.movie,
        title: 'Resume movie',
        serverId: 'server_1',
        durationMs: 100000,
        viewOffsetMs: 25000,
      );
      final client = _FakeMediaServerClient(show: movie, childrenByParent: const {});
      await pumpPhoneDetail(tester, client, movie);
      expect(find.byKey(const ValueKey('mobile_title_restart')), findsOneWidget);
      final bar = tester.widget<LinearProgressIndicator>(find.byKey(const ValueKey('mobile_title_progress')));
      expect(bar.value, closeTo(.25, .001));
    });

    testWidgets('paints the item before the on-deck lookup settles', (tester) async {
      // Jellyfin needs a second round trip for on-deck; the phone/desktop
      // layout must not wait for it. Scoped to non-TV deliberately: on TV the
      // foreground stays at opacity 0 until `_isTvDetailReadyToReveal` is
      // satisfied, which this change does not move (see the TV counterpart).
      final show = buildShow();
      final season1 = buildSeason(show, 1);
      MediaItem episode(int number, {required int viewCount}) => testMediaItem(
        id: 'episode_$number',
        backend: MediaBackend.jellyfin,
        kind: MediaKind.episode,
        title: 'Episode $number',
        index: number,
        parentIndex: season1.index,
        parentId: season1.id,
        grandparentId: show.id,
        serverId: show.serverId,
        serverName: show.serverName,
        viewCount: viewCount,
      );

      final client = _FakeMediaServerClient(
        show: show,
        childrenByParent: {
          show.id: [season1],
          season1.id: [episode(1, viewCount: 1), episode(2, viewCount: 0)],
        },
      )..onDeckGate = Completer<void>();

      await pumpPhoneDetail(tester, client, show);

      // On-deck is still in flight, but the item has landed.
      expect(client.earlyPaints, hasLength(1));
      expect(find.byType(CircularProgressIndicator), findsNothing, reason: 'painted without waiting for on-deck');
      expect(client.extrasReads, 1, reason: 'supplemental sections start before on-deck completes');

      // Settling with no on-deck must not drop the episode-derived fallback
      // that `_ensureFallbackOnDeckEpisode` supplies.
      client.onDeckGate!.complete();
      for (var i = 0; i < 6; i++) {
        await tester.pump();
      }
      await tester.pump(const Duration(milliseconds: 300));

      expect(find.text('S1E2'), findsOneWidget, reason: 'fallback survives a settled empty on-deck');
      expect(find.text('S1E1'), findsNothing);
      expect(client.extrasReads, 1, reason: 'settling on-deck must not duplicate supplemental requests');
    });

    testWidgets('returning from playback refreshes watch state without the full-screen loader', (tester) async {
      // The post-playback refresh used to re-run _loadFullMetadata, which
      // raises _isLoadingMetadata — build then swaps the whole detail subtree
      // for a spinner — and refetches seasons, episodes and extras.
      final show = buildShow();
      final season1 = buildSeason(show, 1);
      final episode1 = buildEpisode(show, season1, 1);
      final episode2 = buildEpisode(show, season1, 2);

      final client = _FakeMediaServerClient(
        show: show,
        childrenByParent: {
          show.id: [season1],
          season1.id: [episode1, episode2],
        },
      )..onDeckEpisode = episode1;
      final observer = _RecordingNavigatorObserver(popVideoPlayerImmediately: true);

      await pumpPhoneDetail(tester, client, show, observer: observer);

      expect(find.text('S1E1'), findsOneWidget, reason: 'play button targets the on-deck episode');
      expect(find.text('1. Episode S1E1'), findsOneWidget);
      final childrenCallsBeforePlayback = client.childrenPageCalls.length;
      observer.pushedRouteNames.clear();

      // The next fetchItemWithOnDeck — the post-playback refresh — reports
      // the following episode as on deck.
      client.onDeckEpisode = episode2;

      await tester.tap(find.byKey(const ValueKey('mobile_title_primary_play')));
      // Pump the push, the immediate pop, and the refresh round-trip one
      // frame at a time: the old full-reload path swapped in a loading
      // scaffold here and unmounted the episode list.
      for (var i = 0; i < 8; i++) {
        await tester.pump();
        expect(
          find.byType(CircularProgressIndicator),
          findsNothing,
          reason: 'playback return must not raise the full-screen loader',
        );
        expect(
          find.text('1. Episode S1E1'),
          findsOneWidget,
          reason: 'loaded episode rows must survive the playback return',
        );
      }
      await tester.pump(const Duration(milliseconds: 300));

      expect(observer.pushedRouteNames, contains(kVideoPlayerRouteName));
      // Watch state did refresh: the play button now targets the next episode.
      expect(find.text('S1E2'), findsOneWidget);
      // The lightweight refresh fetches the item + on-deck only — no season
      // or episode page refetch, no early-paint (both are full-loader work).
      expect(client.childrenPageCalls.length, childrenCallsBeforePlayback);
      expect(client.earlyPaints, hasLength(1));
    });

    testWidgets('deleting a first-route detail cancels plain Play while preferences resolve', (tester) async {
      final movie = testMediaItem(
        id: 'deleted_movie',
        backend: MediaBackend.jellyfin,
        kind: MediaKind.movie,
        title: 'Deleted movie',
        serverId: 'server_1',
      );
      final client = _FakeMediaServerClient(show: movie, childrenByParent: const {});
      final observer = _RecordingNavigatorObserver(popVideoPlayerImmediately: true);
      await pumpPhoneDetail(tester, client, movie, observer: observer);
      observer.pushedRouteNames.clear();
      final play = find.byKey(const ValueKey('mobile_title_primary_play'));
      final detail = tester.state(find.byType(MediaDetailScreen)) as DeletionAware;
      // Invoke the real control synchronously so deletion lands during Play's
      // first await, before its preferences continuation can push the player.
      tester.widget<FilledButton>(play).onPressed!();
      detail.onDeletionEvent(
        DeletionEvent(
          itemId: movie.id,
          serverId: ServerId('server_1'),
          parentChain: const [],
          mediaType: 'movie',
          origin: DeletionOrigin.serverPush,
        ),
      );
      await tester.pumpAndSettle();
      expect(observer.pushedRouteNames, isNot(contains(kVideoPlayerRouteName)));
      expect(find.text(t.messages.mediaUnavailable), findsOneWidget);
    });

    testWidgets('deleting a first-route show cancels its pending download options', (tester) async {
      final show = buildShow();
      final client = _FakeMediaServerClient(show: show, childrenByParent: const {});
      await pumpPhoneDetail(tester, client, show);
      await tester.tap(find.byTooltip(t.downloads.downloadNow));
      await tester.pumpAndSettle();
      expect(find.text(t.downloads.unwatchedOnly), findsOneWidget);
      DeletionNotifier().notify(
        DeletionEvent(
          itemId: show.id,
          serverId: ServerId('server_1'),
          parentChain: const [],
          mediaType: 'show',
          origin: DeletionOrigin.serverPush,
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text(t.downloads.unwatchedOnly));
      await tester.pumpAndSettle();
      expect(find.text(t.downloads.keepSynced), findsNothing);
      expect(find.byType(Dialog), findsNothing);
      expect(find.text(t.messages.mediaUnavailable), findsOneWidget);
    });

    testWidgets('shows directors when they are the only additional info', (tester) async {
      final movie = testMediaItem(
        id: 'director_only',
        backend: MediaBackend.plex,
        kind: MediaKind.movie,
        title: 'Director-only metadata',
        directors: ['Jane Director'],
        serverId: 'server_1',
        serverName: 'Server',
      );
      final client = _FakeMediaServerClient(show: movie, childrenByParent: const {});

      await pumpPhoneDetail(tester, client, movie);

      expect(find.text('Director'), findsOneWidget);
      expect(find.text('Jane Director'), findsOneWidget);
    });

    testWidgets('omits the director row for an empty list', (tester) async {
      final movie = testMediaItem(
        id: 'no_directors',
        backend: MediaBackend.plex,
        kind: MediaKind.movie,
        title: 'No directors',
        studio: 'Example Studio',
        directors: const [],
        serverId: 'server_1',
        serverName: 'Server',
      );
      final client = _FakeMediaServerClient(show: movie, childrenByParent: const {});

      await pumpPhoneDetail(tester, client, movie);

      expect(find.text('Example Studio'), findsOneWidget);
      expect(find.text('Director'), findsNothing);
    });

    testWidgets('movie with multiple versions gets a split segment that plays the picked version', (tester) async {
      // Issue #1881: the split Play chevron makes multiple versions visible
      // on the detail screen and runs the existing Play Version flow.
      final versions = [MediaVersion(id: 'v1', videoResolution: '1080'), MediaVersion(id: 'v2', videoResolution: '4k')];
      final movie = testMediaItem(
        id: 'multi_version',
        backend: MediaBackend.jellyfin,
        kind: MediaKind.movie,
        title: 'Multi Version',
        serverId: 'server_1',
        serverName: 'Server',
        mediaVersions: versions,
      );
      final client = _FakeMediaServerClient(show: movie, childrenByParent: const {});
      final observer = _RecordingNavigatorObserver(popVideoPlayerImmediately: true);

      await pumpPhoneDetail(tester, client, movie, observer: observer);

      final chevron = find.byTooltip(t.mobileUi.qualityAndVersions);
      expect(chevron, findsOneWidget);

      await tester.tap(chevron);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));
      await tester.tap(find.text(t.mobileUi.fileVersions));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));

      // The existing version picker, listing every version. Scoped to the
      // dialog: the hero's quality chip also renders the resolution label.
      Finder inDialog(String text) => find.descendant(of: find.byType(Dialog), matching: find.text(text));
      expect(inDialog(t.mobileUi.fileVersions), findsOneWidget);
      expect(inDialog(versions[0].displayLabel), findsOneWidget);
      expect(inDialog(versions[1].displayLabel), findsOneWidget);

      await tester.tap(inDialog(versions[1].displayLabel));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));

      expect(observer.pushedRouteNames, isNot(contains(kVideoPlayerRouteName)));
      // Choosing a file is independent of playback and is remembered by Play.
      final saved = await savedMediaVersionPreferenceFor(movie);
      expect(saved?.index, 1);
      await tester.tap(find.byKey(const ValueKey('mobile_title_primary_play')));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));
      expect(observer.pushedRouteNames, contains(kVideoPlayerRouteName));
    });

    testWidgets('single-version movie keeps the plain play button', (tester) async {
      final movie = testMediaItem(
        id: 'single_version',
        backend: MediaBackend.jellyfin,
        kind: MediaKind.movie,
        title: 'Single Version',
        serverId: 'server_1',
        serverName: 'Server',
        mediaVersions: [MediaVersion(id: 'v1', videoResolution: '1080')],
      );
      final client = _FakeMediaServerClient(show: movie, childrenByParent: const {});

      await pumpPhoneDetail(tester, client, movie);

      expect(
        find.descendant(
          of: find.byType(FocusableActionBar),
          matching: find.byIcon(Symbols.keyboard_arrow_down_rounded),
        ),
        findsNothing,
      );
    });

    testWidgets('legacy desktop hero chip strip sheds chips by usefulness instead of wrapping', (tester) async {
      // The hero metadata strip is a single run: when it cannot fit, chips
      // drop by usefulness — rating badges from the end first, then the
      // quality label, certification, and runtime — never by wrapping onto a
      // second run the height clip would hide. The interactive Rate chip and
      // the year go last and first, respectively. Phone widths take the
      // scores off the strip onto a row of their own, where the strip's
      // shedding can no longer hide every one of them (#2569).
      final movie =
          testMediaItem(
            id: 'chip_movie',
            backend: MediaBackend.jellyfin,
            kind: MediaKind.movie,
            title: 'Chip Movie',
            year: 2017,
            contentRating: 'PG-13',
            durationMs: 6360000,
            mediaVersions: [MediaVersion(id: 'v1', videoResolution: '1080')],
            serverId: 'server_1',
            serverName: 'Server',
          ).copyWith(
            // Unbranded sources (Plex's critic and audience scores, a bare
            // unattributed score) render a square icon plus the bare value
            // text, so each badge is findable by its formatted value.
            ratings: const [
              MediaRatingSource(source: 'critic', value: 9.2),
              MediaRatingSource(source: 'audience', value: 7.4),
              MediaRatingSource(source: '', value: 6.4),
            ],
          );
      final client = _FakeMediaServerClient(show: movie, childrenByParent: const {});

      await pumpPhoneDetail(
        tester,
        client,
        movie,
        theme: monoTheme(MonoPalette.dark).copyWith(platform: TargetPlatform.windows),
      );

      Future<void> resizeTo(double width) async {
        tester.view.physicalSize = Size(width, 2400);
        await tester.pump();
        await tester.pump(const Duration(milliseconds: 50));
      }

      final rate = t.mediaMenu.rate;
      void expectChips({required List<String> present, required List<String> absent}) {
        // The info rows below the hero repeat some values (e.g. the content
        // rating), so scope every lookup to the strip: the Wrap carrying the
        // always-present Rate chip.
        final strip = find.ancestor(of: find.text(rate), matching: find.byType(Wrap)).first;
        Finder chip(String text) => find.descendant(of: strip, matching: find.text(text));
        for (final text in present) {
          expect(chip(text), findsOneWidget, reason: '"$text" should be on the strip');
        }
        for (final text in absent) {
          expect(chip(text), findsNothing, reason: '"$text" should have been dropped');
        }
        // Single run: every survivor sits on the same line as the always-kept
        // Rate chip.
        final rateDy = tester.getCenter(find.text(rate)).dy;
        for (final text in present) {
          expect(tester.getCenter(chip(text)).dy, moreOrLessEquals(rateDy, epsilon: 4));
        }
        expect(tester.takeException(), isNull);
      }

      // 1100 wide: everything fits (test font ~13px/char puts the full strip
      // near 740px against ~1068px of hero width).
      expectChips(present: ['2017', 'PG-13', '1h 46min', '1080p', '9.2', '7.4', '6.4', rate], absent: []);

      // The scores pill sheds badges from the end before anything else.
      await resizeTo(660);
      expectChips(present: ['2017', 'PG-13', '1h 46min', '1080p', '9.2', rate], absent: ['7.4', '6.4']);

      void expectScoresRow(List<String> scores) {
        final rateDy = tester.getCenter(find.text(rate)).dy;
        final rowDy = tester.getCenter(find.text(scores.first)).dy;
        expect(rowDy, greaterThan(rateDy + 20), reason: 'the scores row sits beneath the strip');
        for (final score in scores) {
          expect(find.text(score), findsOneWidget, reason: '"$score" should be on the scores row');
          expect(tester.getCenter(find.text(score)).dy, moreOrLessEquals(rowDy, epsilon: 4));
        }
      }

      // Phone width: every score moves to its own row, and the strip sheds
      // the quality label and the certification — never the runtime, year,
      // or Rate.
      await resizeTo(420);
      expectChips(present: ['2017', '1h 46min', rate], absent: ['9.2', '7.4', '6.4', '1080p', 'PG-13']);
      expectScoresRow(['9.2', '7.4', '6.4']);

      // Down to the bone: the strip keeps the year and the interactive Rate
      // chip, and the scores row still has room for all three.
      await resizeTo(320);
      expectChips(present: ['2017', rate], absent: ['1h 46min', '1080p', 'PG-13', '9.2']);
      expectScoresRow(['9.2', '7.4', '6.4']);
    });

    testWidgets('narrow desktop hero centres the title, chip rows and actions; wider heroes stay left', (tester) async {
      // The compact hero mirrors the collection page's stacked header; a
      // 400px logo centred in a tablet-wide hero would float, so the wide
      // hero keeps its bottom-left column.
      final movie = testMediaItem(
        id: 'centered_movie',
        backend: MediaBackend.jellyfin,
        kind: MediaKind.movie,
        title: 'Centered Movie',
        year: 2017,
        genres: const ['Drama'],
        serverId: 'server_1',
        serverName: 'Server',
      );
      final client = _FakeMediaServerClient(show: movie, childrenByParent: const {});

      await pumpPhoneDetail(
        tester,
        client,
        movie,
        theme: monoTheme(MonoPalette.dark).copyWith(platform: TargetPlatform.windows),
      );

      final rate = t.mediaMenu.rate;
      Finder strip() => find.ancestor(of: find.text(rate), matching: find.byType(Wrap)).first;
      Finder genres() => find.ancestor(of: find.text('Drama'), matching: find.byType(Wrap)).first;
      Finder title() => find.byType(FittingTitleText).first;
      Finder actions() => find.byType(FocusableActionBar).first;
      double centerX(Finder finder) => tester.getCenter(finder).dx;

      // 1100 wide: everything hugs the 16px hero inset.
      for (final finder in [strip(), genres(), actions()]) {
        expect(tester.getTopLeft(finder).dx, moreOrLessEquals(16, epsilon: 1));
      }
      expect(tester.widget<FittingTitleText>(title()).textAlign, isNull);

      tester.view.physicalSize = const Size(420, 2400);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 50));

      // 420 wide: every row sits on the screen's centre line.
      for (final finder in [strip(), genres(), actions()]) {
        expect(centerX(finder), moreOrLessEquals(210, epsilon: 1));
      }
      expect(tester.widget<FittingTitleText>(title()).textAlign, TextAlign.center);
      expect(tester.takeException(), isNull);
    });

    testWidgets('desktop logo-less title gets a wider slot than the logo and shrinks to fit it', (tester) async {
      // #1796: the fallback title used to be laid out in the 400px logo slot
      // and ellipsized on its second line with most of a desktop hero still
      // empty beside it. It gets twice the logo slot — not the whole hero,
      // where a one-line title stops reading as a title block — and a title
      // still too long for two lines of that shrinks instead of ellipsizing.
      const title = 'A Title Long Enough To Need The Whole Wide Hero';
      final movie = testMediaItem(
        id: 'wide_title_movie',
        backend: MediaBackend.jellyfin,
        kind: MediaKind.movie,
        title: title,
        year: 2017,
        serverId: 'server_1',
        serverName: 'Server',
      );
      final client = _FakeMediaServerClient(show: movie, childrenByParent: const {});

      await pumpPhoneDetail(
        tester,
        client,
        movie,
        theme: monoTheme(MonoPalette.dark).copyWith(platform: TargetPlatform.windows),
      );

      final titleFinder = find.descendant(of: find.byType(FittingTitleText), matching: find.text(title));
      final paragraph = tester.renderObject<RenderParagraph>(titleFinder);
      // Twice the 400px logo slot inside the 1068px hero column.
      expect(paragraph.constraints.maxWidth, moreOrLessEquals(800, epsilon: 1));

      // 47 glyphs at the 40px base need 1880px, more than two 800px lines:
      // the size drops until the title fits without an ellipsis.
      final style = tester.widget<Text>(titleFinder).style!;
      expect(style.fontSize, lessThan(40));
      final painter = TextPainter(
        text: TextSpan(text: title, style: style),
        maxLines: 2,
        textDirection: TextDirection.ltr,
      )..layout(maxWidth: paragraph.constraints.maxWidth);
      expect(painter.didExceedMaxLines, isFalse);
      painter.dispose();
    });

    testWidgets('portrait desktop hero shows square art instead of the cropped backdrop', (tester) async {
      final movie = testMediaItem(
        id: 'square_hero',
        backend: MediaBackend.plex,
        kind: MediaKind.movie,
        title: 'Square hero',
        artPath: '/library/metadata/square_hero/art',
        backgroundSquarePath: '/library/metadata/square_hero/squareBg',
        serverId: 'server_1',
        serverName: 'Server',
      );
      final client = _FakeMediaServerClient(show: movie, childrenByParent: const {});

      await pumpPhoneDetail(
        tester,
        client,
        movie,
        theme: monoTheme(MonoPalette.dark).copyWith(platform: TargetPlatform.windows),
      );

      final backdrop = find.byType(CyclingMediaBackdrop);
      expect(backdrop, findsOneWidget);
      // A fallback is reached only once every rotating path has failed, so the
      // square background has to be in the rotation set. Listed behind a
      // servable wide backdrop it would never be shown at all.
      final widget = tester.widget<CyclingMediaBackdrop>(backdrop);
      expect(widget.imagePaths, ['/library/metadata/square_hero/squareBg']);
      expect(widget.fallbackImagePaths, contains('/library/metadata/square_hero/art'));
      expect(client.thumbnailPaths.first, '/library/metadata/square_hero/squareBg');
    });

    FocusNode overviewFocusNode(WidgetTester tester) {
      final overviewFocus = find.byWidgetPredicate(
        (widget) => widget is Focus && widget.focusNode?.debugLabel == 'overview',
        description: 'overview focus widget',
      );
      expect(overviewFocus, findsOneWidget);
      return tester.widget<Focus>(overviewFocus).focusNode!;
    }

    testWidgets('overflowing overview DOWN reaches the first real section', (tester) async {
      const summary =
          'A deliberately extensive overview repeats enough concrete detail to exceed the collapsed line limit. '
          'It describes the setting, the characters, the central conflict, and the consequences in full. '
          'A second passage adds more background, more context, and more narrative detail for the viewer. '
          'A third passage ensures the overview remains overflowing even across a wide phone test viewport. '
          'Finally, another complete passage keeps the text beyond four generous lines without relying on font timing.';
      final show = buildShow(summary: summary);

      await pumpPhoneDetail(tester, singleSeasonClient(show), show);

      final overviewText = tester.widget<Text>(
        find.descendant(of: find.byType(CollapsibleText), matching: find.byType(Text)).first,
      );
      expect(overviewText.maxLines, 3);
      expect(find.text(t.mobileUi.readMore), findsOneWidget);

      final overviewNode = overviewFocusNode(tester);
      overviewNode.requestFocus();
      await tester.pump();
      expect(overviewNode.hasFocus, isTrue);

      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pump();

      expect(FocusManager.instance.primaryFocus?.debugLabel, 'first_episode');
    });

    testWidgets('short overview accepts focus and preserves DOWN then episode UP navigation', (tester) async {
      const summary = 'A short overview.';
      final show = buildShow(summary: summary);

      await pumpPhoneDetail(tester, singleSeasonClient(show), show);

      expect(find.text(summary), findsOneWidget);
      final overviewNode = overviewFocusNode(tester);
      expect(overviewNode.context, isNotNull);
      overviewNode.requestFocus();
      await tester.pump();
      expect(overviewNode.hasFocus, isTrue);

      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pump();
      expect(FocusManager.instance.primaryFocus?.debugLabel, 'first_episode');

      await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
      await tester.pump();
      expect(FocusManager.instance.primaryFocus?.debugLabel, 'overview');
    });

    testWidgets('phone detail focuses requested season tab', (tester) async {
      final show = buildShow();
      final season1 = buildSeason(show, 1);
      final season2 = buildSeason(show, 2);
      final client = _FakeMediaServerClient(
        show: show,
        childrenByParent: {
          show.id: [season1, season2],
          season1.id: [buildEpisode(show, season1, 1)],
          season2.id: [buildEpisode(show, season2, 1)],
        },
      );

      await pumpPhoneDetail(tester, client, show, initialSeasonId: season2.id);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 200));

      expect(find.text('1. Episode S2E1'), findsOneWidget);
      expect(FocusManager.instance.primaryFocus?.debugLabel, 'season_tab_1');
    });

    testWidgets('phone detail focuses requested episode row', (tester) async {
      final show = buildShow();
      final season1 = buildSeason(show, 1);
      final season2 = buildSeason(show, 2);
      final episode2 = buildEpisode(show, season2, 2);
      final client = _FakeMediaServerClient(
        show: show,
        childrenByParent: {
          show.id: [season1, season2],
          season1.id: [buildEpisode(show, season1, 1)],
          season2.id: [buildEpisode(show, season2, 1), episode2, buildEpisode(show, season2, 3)],
        },
      );

      await pumpPhoneDetail(
        tester,
        client,
        show,
        initialSeasonId: season2.id,
        initialSeasonIndex: season2.index,
        initialEpisodeId: episode2.id,
      );
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 200));

      expect(find.text('2. Episode S2E2'), findsOneWidget);
      expect(FocusManager.instance.primaryFocus?.debugLabel, 'initial_episode');
    });

    testWidgets('phone detail keeps the first-episode role node when it is the target', (tester) async {
      final show = buildShow();
      final season1 = buildSeason(show, 1);
      final season2 = buildSeason(show, 2);
      final episode1 = buildEpisode(show, season2, 1);
      final client = _FakeMediaServerClient(
        show: show,
        childrenByParent: {
          show.id: [season1, season2],
          season1.id: [buildEpisode(show, season1, 1)],
          season2.id: [episode1, buildEpisode(show, season2, 2), buildEpisode(show, season2, 3)],
        },
      );

      await pumpPhoneDetail(
        tester,
        client,
        show,
        initialSeasonId: season2.id,
        initialSeasonIndex: season2.index,
        initialEpisodeId: episode1.id,
      );
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 200));

      // The first row keeps _firstEpisodeFocusNode (so season-tab DOWN keeps
      // working) and the initial focus lands on that node instead.
      expect(find.text('1. Episode S2E1'), findsOneWidget);
      expect(FocusManager.instance.primaryFocus?.debugLabel, 'first_episode');
    });

    testWidgets('container mark overrides an older per-episode patch', (tester) async {
      final show = buildShow();
      final season1 = buildSeason(show, 1);
      final episode1 = buildEpisode(show, season1, 1);
      final episode2 = buildEpisode(show, season1, 2);
      final client = _FakeMediaServerClient(
        show: show,
        childrenByParent: {
          show.id: [season1, buildSeason(show, 2)],
          season1.id: [episode1, episode2],
        },
      );

      await pumpPhoneDetail(tester, client, show);

      // Seed a session patch for one episode (e.g. user toggled it earlier).
      await emit(tester, () => WatchStateNotifier().notifyWatched(item: episode1, isNowWatched: false));
      expect(episodeRowWatched(tester, '1. Episode S1E1'), isFalse);

      await emit(tester, () => WatchStateNotifier().notifyWatched(item: show, isNowWatched: true));

      expect(episodeRowWatched(tester, '1. Episode S1E1'), isTrue);
      expect(episodeRowWatched(tester, '2. Episode S1E2'), isTrue);
    });

    testWidgets('marking a season watched flips its episode rows', (tester) async {
      final show = buildShow();
      final season1 = buildSeason(show, 1);
      final season2 = buildSeason(show, 2);
      final client = _FakeMediaServerClient(
        show: show,
        childrenByParent: {
          show.id: [season1, season2],
          season1.id: [buildEpisode(show, season1, 1), buildEpisode(show, season1, 2)],
          season2.id: [buildEpisode(show, season2, 1)],
        },
      );

      await pumpPhoneDetail(tester, client, show);

      await emit(tester, () => WatchStateNotifier().notifyWatched(item: season1, isNowWatched: true));

      expect(episodeRowWatched(tester, '1. Episode S1E1'), isTrue);
      expect(episodeRowWatched(tester, '2. Episode S1E2'), isTrue);
    });

    testWidgets('container mark clears progress, including after a season tab round-trip', (tester) async {
      final show = buildShow();
      final season1 = buildSeason(show, 1);
      final season2 = buildSeason(show, 2);
      final episode1 = buildEpisode(show, season1, 1);
      final client = _FakeMediaServerClient(
        show: show,
        childrenByParent: {
          show.id: [season1, season2],
          season1.id: [episode1, buildEpisode(show, season1, 2)],
          season2.id: [buildEpisode(show, season2, 1)],
        },
      );

      await pumpPhoneDetail(tester, client, show);

      // Played partway earlier in the session.
      await emit(
        tester,
        () => WatchStateNotifier().notifyProgress(item: episode1, viewOffset: 600000, duration: 1800000),
      );
      expect(episodeRowHasProgress(tester, '1. Episode S1E1'), isTrue);

      await emit(tester, () => WatchStateNotifier().notifyWatched(item: show, isNowWatched: true));
      expect(episodeRowHasProgress(tester, '1. Episode S1E1'), isFalse);
      expect(episodeRowWatched(tester, '1. Episode S1E1'), isTrue);

      // Round-trip through another season tab; the cached page restore must not
      // resurrect the dead progress offset.
      await tester.tap(find.text('Season 2'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));
      await tester.tap(find.text('Season 1'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));

      expect(episodeRowHasProgress(tester, '1. Episode S1E1'), isFalse);
      expect(episodeRowWatched(tester, '1. Episode S1E1'), isTrue);
    });

    Future<void> tapSeason(WidgetTester tester, String title) async {
      await tester.tap(find.text(title));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));
    }

    testWidgets('a failed season switch shows its error, not the previous season episodes', (tester) async {
      final show = buildShow();
      final season1 = buildSeason(show, 1);
      final season2 = buildSeason(show, 2);
      final client = _FakeMediaServerClient(
        show: show,
        childrenByParent: {
          show.id: [season1, season2],
          season1.id: [buildEpisode(show, season1, 1)],
        },
        childrenPageErrors: {season2.id: StateError('offline')},
      );

      await pumpPhoneDetail(tester, client, show);
      expect(episodeCardFor('1. Episode S1E1'), findsOneWidget);

      await tapSeason(tester, 'Season 2');

      expect(episodeCardFor('1. Episode S1E1'), findsNothing);
      expect(find.text(t.messages.episodesLoadFailed), findsOneWidget);
    });

    testWidgets('returning to a season whose load is still running shows its episodes when it lands', (tester) async {
      final show = buildShow();
      final seasons = [for (var index = 1; index <= 3; index++) buildSeason(show, index)];
      final season2Page = Completer<List<MediaItem>>();
      final season3Page = Completer<List<MediaItem>>();
      final client = _FakeMediaServerClient(
        show: show,
        childrenByParent: {
          show.id: seasons,
          seasons[0].id: [buildEpisode(show, seasons[0], 1)],
        },
        childrenPageFutures: {seasons[1].id: season2Page.future, seasons[2].id: season3Page.future},
      );

      await pumpPhoneDetail(tester, client, show);
      // Season 2 starts loading, Season 3 starts another load, and the return
      // to Season 2 finds its first load still running.
      await tapSeason(tester, 'Season 2');
      await tapSeason(tester, 'Season 3');
      await tapSeason(tester, 'Season 2');

      season3Page.complete([buildEpisode(show, seasons[2], 1)]);
      season2Page.complete([buildEpisode(show, seasons[1], 1)]);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));

      expect(episodeCardFor('1. Episode S2E1'), findsOneWidget);
      expect(episodeCardFor('1. Episode S3E1'), findsNothing);
    });

    testWidgets('refreshing a season discards its older continuation page', (tester) async {
      final show = buildShow();
      final season1 = buildSeason(show, 1);
      final season2 = buildSeason(show, 2);
      final episodes = [for (var index = 1; index <= 250; index++) buildEpisode(show, season1, index)];
      // The continuation requested before the refresh answers with the rows
      // the season had back then.
      final staleContinuation = Completer<List<MediaItem>>();
      final client = _FakeMediaServerClient(
        show: show,
        childrenByParent: {
          show.id: [season1, season2],
          season1.id: episodes,
        },
        childrenPageFuturesByStart: {'${season1.id}@40': staleContinuation.future},
      );

      await pumpPhoneDetail(tester, client, show);
      final list = find.byWidgetPredicate((w) => w is Scrollable && w.axisDirection == AxisDirection.down).first;
      int continuationRequests() =>
          client.childrenPageCalls.where((call) => call.parentId == season1.id && call.start == 40).length;
      Future<void> scrollToEnd({required int untilRequests}) async {
        // Back off first: paging reacts to scrolling, and the list may already
        // rest at its end.
        await tester.drag(list, const Offset(0, 1000));
        await tester.pump();
        for (var i = 0; i < 40 && continuationRequests() < untilRequests; i++) {
          await tester.drag(list, const Offset(0, -4000));
          await tester.pump();
        }
      }

      await scrollToEnd(untilRequests: 1);
      expect(continuationRequests(), 1);

      // Refresh the season while its old continuation is still in flight.
      final refresh = tester.widget<EpisodeCard>(find.byType(EpisodeCard).first).onListRefresh!();
      await tester.pump();
      await refresh;
      await tester.pump();

      staleContinuation.complete([
        ...episodes.take(40),
        for (var index = 41; index <= 250; index++)
          buildEpisode(show, season1, index).copyWith(title: 'Stale S1E$index'),
      ]);
      await tester.pump();
      await tester.pump();

      // The refreshed first page asks for its own continuation.
      await scrollToEnd(untilRequests: 2);
      await tester.pump(const Duration(milliseconds: 300));
      await tester.drag(list, const Offset(0, -100000));
      await tester.pump();

      expect(find.textContaining('Stale S1E'), findsNothing);
      expect(continuationRequests(), 2);
      expect(episodeCardFor('80. Episode S1E80'), findsOneWidget);
    });

    testWidgets('deleting the selected season moves the selection to its neighbour', (tester) async {
      final show = buildShow();
      final season1 = buildSeason(show, 1);
      final season2 = buildSeason(show, 2);
      final client = _FakeMediaServerClient(
        show: show,
        childrenByParent: {
          show.id: [season1, season2],
          season1.id: [buildEpisode(show, season1, 1)],
          season2.id: [buildEpisode(show, season2, 1)],
        },
      );

      await pumpPhoneDetail(tester, client, show);
      expect(episodeCardFor('1. Episode S1E1'), findsOneWidget);

      await emit(
        tester,
        () => DeletionNotifier().notify(
          DeletionEvent(
            itemId: season1.id,
            serverId: ServerId('server_1'),
            parentChain: const [],
            mediaType: 'season',
            isDownloadOnly: false,
            origin: DeletionOrigin.serverPush,
          ),
        ),
      );
      await tester.pump(const Duration(milliseconds: 300));

      expect(find.text('Season 1'), findsNothing);
      expect(episodeCardFor('1. Episode S1E1'), findsNothing);
      expect(episodeCardFor('1. Episode S2E1'), findsOneWidget);
      final season2Chip = tester.widget<FocusableTabChip>(
        find.ancestor(of: find.text('Season 2'), matching: find.byType(FocusableTabChip)),
      );
      expect(season2Chip.isSelected, isTrue);
    });
  });

  group('deletion leaves via the detail route', () {
    final show = testMediaItem(
      id: 'show_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.show,
      title: 'The Show',
      serverId: 'server_1',
      serverName: 'Server',
    );
    final season = testMediaItem(
      id: 'season_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.season,
      title: 'Season 1',
      index: 1,
      leafCount: 1,
      parentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final episode = testMediaItem(
      id: 'episode_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.episode,
      title: 'Only Episode',
      index: 1,
      parentId: season.id,
      parentIndex: season.index,
      grandparentId: show.id,
      serverId: show.serverId,
      serverName: show.serverName,
    );
    final movie = testMediaItem(
      id: 'movie_1',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.movie,
      title: 'The Movie',
      serverId: show.serverId,
      serverName: show.serverName,
    );

    /// Past the metadata/episode loads and the detail route's transition.
    Future<void> settleDetail(WidgetTester tester) async {
      await tester.pump();
      await tester.pump();
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 400));
      await tester.pump();
    }

    /// A profile navigator (the one the detail, dialogs, players and sheet
    /// fallbacks all share) whose initial route is [initialRoute].
    Future<GlobalKey<NavigatorState>> pumpProfileNavigator(
      WidgetTester tester,
      Route<dynamic> Function(RouteSettings settings) initialRoute, {
      _FakeMediaServerClient? client,
      DownloadProvider? downloads,
    }) async {
      await SettingsService.getInstance();
      tester.view.physicalSize = const Size(1280, 720);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      client ??= _FakeMediaServerClient(
        show: season,
        childrenByParent: {
          season.id: [episode],
        },
      );
      final provider = testMultiServer(clients: [client]).provider;
      final profileKey = GlobalKey<NavigatorState>();
      await tester.pumpWidget(
        TranslationProvider(
          child: MultiProvider(
            providers: [
              ChangeNotifierProvider<MultiServerProvider>.value(value: provider),
              if (downloads != null) ChangeNotifierProvider<DownloadProvider>.value(value: downloads),
            ],
            child: MaterialApp(
              theme: monoTheme(MonoPalette.dark),
              home: ProfileNavigationScope(
                navigatorKey: profileKey,
                routeObserver: RouteObserver<PageRoute<dynamic>>(),
                mainScaffoldMessengerKey: GlobalKey<ScaffoldMessengerState>(),
                child: Navigator(key: profileKey, onGenerateRoute: initialRoute),
              ),
            ),
          ),
        ),
      );
      await settleDetail(tester);
      return profileKey;
    }

    Route<void> homeRoute(RouteSettings settings) => MaterialPageRoute<void>(
      builder: (_) => const Scaffold(body: Center(child: Text('home'))),
    );

    Future<void> deleteOnlyEpisode(WidgetTester tester) async {
      DeletionNotifier().notify(
        DeletionEvent(
          itemId: episode.id,
          serverId: ServerId('server_1'),
          parentChain: [season.id, show.id],
          mediaType: 'episode',
        ),
      );
      await tester.pump();
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 400));
    }

    void deleteExact(String id, {String serverId = 'server_1', bool downloadOnly = false}) {
      DeletionNotifier().notify(
        DeletionEvent(
          itemId: id,
          serverId: ServerId(serverId),
          parentChain: const [],
          mediaType: 'unknown',
          isDownloadOnly: downloadOnly,
          origin: DeletionOrigin.serverPush,
        ),
      );
    }

    void expectUnavailable() {
      expect(find.byType(MediaDetailScreen), findsOneWidget);
      expect(find.text(t.messages.mediaUnavailable), findsOneWidget);
      expect(find.byType(FocusableActionBar), findsNothing);
      expect(find.byType(TvBrowseRail), findsNothing);
      expect(find.byType(EpisodeCard), findsNothing);
      expect(find.byKey(const ValueKey('detail_playback_tracks')), findsNothing);
    }

    testWidgets('an exact episode push with no parent information closes its own detail', (tester) async {
      final profileKey = await pumpProfileNavigator(
        tester,
        homeRoute,
        client: _FakeMediaServerClient(show: episode, childrenByParent: {}),
      );
      unawaited(profileKey.currentState!.push(mediaDetailRoute(metadata: episode)));
      await settleDetail(tester);
      expect(find.byType(FocusableActionBar), findsOneWidget);

      deleteExact(episode.id);
      await settleDetail(tester);

      expect(find.byType(MediaDetailScreen), findsNothing);
      expect(find.text('home'), findsOneWidget);
    });

    testWidgets('an exact movie deletion leaves the first route unavailable rather than playable', (tester) async {
      final profileKey = await pumpProfileNavigator(
        tester,
        (_) => mediaDetailRoute(metadata: movie),
        client: _FakeMediaServerClient(show: movie, childrenByParent: {}),
      );
      expect(find.byType(FocusableActionBar), findsOneWidget);
      unawaited(
        profileKey.currentState!.push(MaterialPageRoute<void>(builder: (_) => const Scaffold(body: Text('cover')))),
      );
      await settleDetail(tester);

      deleteExact(movie.id);
      await settleDetail(tester);
      expect(find.text('cover'), findsOneWidget);
      expect(find.byType(MediaDetailScreen, skipOffstage: false), findsOneWidget);
      profileKey.currentState!.pop();
      await settleDetail(tester);

      expectUnavailable();
      expect(profileKey.currentState!.canPop(), isFalse);
      expect(find.text(movie.displayTitle), findsNothing);
      deleteExact(movie.id);
      LibraryContentNotifier().notifyChanged(
        LibraryChangeEvent(serverId: ServerId('server_1'), removedItemIds: {movie.id}),
      );
      await settleDetail(tester);
      expectUnavailable();
      expect(profileKey.currentState!.canPop(), isFalse);
    });

    testWidgets('known input ancestors remain deletion interests after a sparse metadata refresh', (tester) async {
      final client = _FakeMediaServerClient(
        show: episode.copyWith(parentId: null, grandparentId: null),
        childrenByParent: {},
      );
      await pumpProfileNavigator(tester, (_) => mediaDetailRoute(metadata: episode), client: client);
      expect(find.byType(FocusableActionBar), findsOneWidget);

      deleteExact(season.id);
      await settleDetail(tester);

      expectUnavailable();
    });

    testWidgets('an exact show deletion fences its pending seasons load', (tester) async {
      final seasons = Completer<List<MediaItem>>();
      final client = _FakeMediaServerClient(
        show: show,
        childrenByParent: {
          season.id: [episode],
        },
        childrenFutures: {show.id: seasons.future},
      );
      await pumpProfileNavigator(tester, (_) => mediaDetailRoute(metadata: show), client: client);

      deleteExact(show.id);
      await settleDetail(tester);
      expectUnavailable();

      seasons.complete([season]);
      await settleDetail(tester);
      expectUnavailable();
      expect(find.text('Only Episode'), findsNothing);
      expect(client.childrenPageCalls, isEmpty, reason: 'deleted shows must not start child loads');
    });

    testWidgets('an exact season deletion fences its pending episode page', (tester) async {
      final episodes = Completer<List<MediaItem>>();
      final client = _FakeMediaServerClient(
        show: season,
        childrenByParent: {},
        childrenPageFutures: {season.id: episodes.future},
      );
      await pumpProfileNavigator(tester, (_) => mediaDetailRoute(metadata: season), client: client);

      deleteExact(season.id);
      await settleDetail(tester);
      expectUnavailable();

      episodes.complete([episode]);
      await settleDetail(tester);
      expectUnavailable();
      expect(find.text('Only Episode'), findsNothing);
    });

    testWidgets('deleting a known show ancestor removes stacked season and episode details under a player', (
      tester,
    ) async {
      final profileKey = await pumpProfileNavigator(tester, homeRoute);
      final seasonClosed = profileKey.currentState!.push(mediaDetailRoute(metadata: season));
      await settleDetail(tester);
      final episodeClosed = profileKey.currentState!.push(mediaDetailRoute(metadata: episode));
      await settleDetail(tester);
      unawaited(
        profileKey.currentState!.push(
          MaterialPageRoute<void>(
            settings: const RouteSettings(name: kVideoPlayerRouteName),
            builder: (_) => const Scaffold(body: Text('player')),
          ),
        ),
      );
      await settleDetail(tester);

      deleteExact(show.id);
      await settleDetail(tester);

      expect(find.text('player'), findsOneWidget);
      expect(find.byType(MediaDetailScreen, skipOffstage: false), findsNothing);
      expect(await seasonClosed, isNull);
      expect(await episodeClosed, isNull);
      profileKey.currentState!.pop();
      await settleDetail(tester);
      expect(find.text('home'), findsOneWidget);
    });

    testWidgets('full bulk IDs close an episode through an ancestor learned by the metadata load', (tester) async {
      final profileKey = await pumpProfileNavigator(
        tester,
        homeRoute,
        client: _FakeMediaServerClient(show: episode, childrenByParent: {}),
      );
      unawaited(
        profileKey.currentState!.push(
          mediaDetailRoute(metadata: episode.copyWith(parentId: null, grandparentId: null)),
        ),
      );
      await settleDetail(tester);

      LibraryContentNotifier().notifyChanged(
        LibraryChangeEvent(
          serverId: ServerId('server_1'),
          itemsRemoved: true,
          removedItemIds: {for (var i = 0; i < 80; i++) 'other_$i', season.id},
        ),
      );
      await settleDetail(tester);

      expect(find.byType(MediaDetailScreen), findsNothing);
      expect(find.text('home'), findsOneWidget);
    });

    testWidgets('bulk and per-item duplicate delivery leave a covering dialog and underlying home intact', (
      tester,
    ) async {
      final profileKey = await pumpProfileNavigator(
        tester,
        homeRoute,
        client: _FakeMediaServerClient(show: movie, childrenByParent: {}),
      );
      final detailClosed = profileKey.currentState!.push(mediaDetailRoute(metadata: movie));
      await settleDetail(tester);
      final dialogClosed = showDialog<void>(
        context: tester.element(find.byType(MediaDetailScreen)),
        useRootNavigator: false,
        builder: (_) => const AlertDialog(content: Text('dialog')),
      );
      await settleDetail(tester);
      final bulk = LibraryChangeEvent(
        serverId: ServerId('server_1'),
        removedItemIds: {for (var i = 0; i < 80; i++) 'other_$i', movie.id},
        itemsRemoved: true,
      );

      LibraryContentNotifier().notifyChanged(bulk);
      deleteExact(movie.id);
      LibraryContentNotifier().notifyChanged(bulk);
      await settleDetail(tester);

      expect(find.text('dialog'), findsOneWidget);
      expect(await detailClosed, isNull);
      expect(find.byType(MediaDetailScreen, skipOffstage: false), findsNothing);
      // Delivery after disposal must not affect the now-uncovered home.
      profileKey.currentState!.pop();
      await dialogClosed;
      LibraryContentNotifier().notifyChanged(bulk);
      deleteExact(movie.id);
      await settleDetail(tester);
      expect(find.text('home'), findsOneWidget);
      expect(profileKey.currentState!.canPop(), isFalse);
    });

    testWidgets('a back on a covered detail leaves the dialog above it in place', (tester) async {
      final profileKey = await pumpProfileNavigator(
        tester,
        homeRoute,
        client: _FakeMediaServerClient(show: movie, childrenByParent: {}),
      );
      final detailClosed = profileKey.currentState!.push(mediaDetailRoute(metadata: movie));
      await settleDetail(tester);
      final dialogClosed = showDialog<void>(
        context: tester.element(find.byType(MediaDetailScreen)),
        useRootNavigator: false,
        builder: (_) => const AlertDialog(content: Text('dialog')),
      );
      await settleDetail(tester);
      final info = FocusManager.instance.rootScope.descendants.singleWhere(
        (node) => node.debugLabel == 'tv_detail_info',
      );

      // Focus left in the covered detail, where a gamepad back landed (#2370):
      // a blind pop from there closed the dialog above instead.
      info.requestFocus();
      await tester.pump();
      expect(info.hasPrimaryFocus, isTrue);
      await tester.sendKeyEvent(LogicalKeyboardKey.gameButtonB);
      await settleDetail(tester);

      expect(find.text('dialog'), findsOneWidget);
      expect(find.byType(MediaDetailScreen, skipOffstage: false), findsOneWidget);

      // Uncovered, the same back leaves the detail, and only the detail.
      profileKey.currentState!.pop();
      await dialogClosed;
      await settleDetail(tester);
      info.requestFocus();
      await tester.pump();
      await tester.sendKeyEvent(LogicalKeyboardKey.gameButtonB);
      await settleDetail(tester);

      expect(await detailClosed, isFalse);
      expect(find.text('home'), findsOneWidget);
      expect(profileKey.currentState!.canPop(), isFalse);
    });

    testWidgets('late early-paint metadata and settled on-deck results cannot revive a deleted first route', (
      tester,
    ) async {
      final client =
          _FakeMediaServerClient(
              show: show,
              childrenByParent: {
                show.id: [season],
              },
            )
            ..metadataGate = Completer<void>()
            ..onDeckGate = Completer<void>()
            ..onDeckEpisode = episode;
      await pumpProfileNavigator(tester, (_) => mediaDetailRoute(metadata: show), client: client);
      expect(find.text(show.title!), findsWidgets, reason: 'the tapped row paints while metadata remains in flight');

      deleteExact(show.id);
      await settleDetail(tester);
      expectUnavailable();
      client.metadataGate!.complete();
      await settleDetail(tester);
      expectUnavailable();
      client.onDeckGate!.complete();
      await settleDetail(tester);
      expectUnavailable();
      expect(find.text('Only Episode'), findsNothing);
    });

    testWidgets('a playback track probe completing after deletion cannot restore playback controls', (tester) async {
      final raw = _previewItem(movie.id);
      final client = _FakeMediaServerClient(show: movie, childrenByParent: {}, rawItems: {movie.id: raw})
        ..sourceGate = Completer<void>();
      await pumpProfileNavigator(tester, (_) => mediaDetailRoute(metadata: movie), client: client);
      await settleDetail(tester);
      expect(client.sourceReads, 1, reason: 'the track probe must actually be in flight');

      deleteExact(movie.id);
      await settleDetail(tester);
      client.sourceGate!.complete();
      await settleDetail(tester);

      expectUnavailable();
    });

    testWidgets('online detail ignores wrong-server IDs, download removals and ambiguous library flags', (
      tester,
    ) async {
      final client = _FakeMediaServerClient(show: episode, childrenByParent: {});
      await pumpProfileNavigator(tester, (_) => mediaDetailRoute(metadata: episode), client: client);
      final readsBefore = client.onDeckReads;
      client.onDeckError = StateError('server is unreachable');

      deleteExact(episode.id, serverId: 'other_server');
      deleteExact(season.id, downloadOnly: true);
      LibraryContentNotifier().notifyChanged(
        LibraryChangeEvent(serverId: ServerId('other_server'), removedItemIds: {episode.id, season.id}),
      );
      LibraryContentNotifier().notifyChanged(
        LibraryChangeEvent(serverId: ServerId('server_1'), itemsRemoved: true, itemsUpdated: true),
      );
      await settleDetail(tester);

      expect(find.text(t.messages.mediaUnavailable), findsNothing);
      expect(find.byType(FocusableActionBar), findsOneWidget);
      expect(client.onDeckReads, readsBefore, reason: 'ambiguous invalidation is not a reason to refetch');
      // A child removal is not proof that its ancestor was deleted.
      LibraryContentNotifier().notifyChanged(
        LibraryChangeEvent(serverId: ServerId('server_1'), removedItemIds: {'unrelated_episode'}),
      );
      await settleDetail(tester);
      expect(find.byType(FocusableActionBar), findsOneWidget);
    });

    testWidgets('offline detail ignores server removals but accepts a matching download ancestor deletion', (
      tester,
    ) async {
      final database = AppDatabase.forTesting(NativeDatabase.memory());
      PlexApiCache.initialize(database);
      JellyfinApiCache.initialize(database);
      final manager = DownloadManagerService(
        database: database,
        storageService: DownloadStorageService.instance,
        clientResolver: (serverId, {clientScopeId}) => null,
      )..recoveryFuture = Future<void>.value();
      final downloads = DownloadProvider.forTesting(downloadManager: manager, database: database);
      await tester.runAsync(downloads.ensureInitialized);
      downloads.debugSeedState(
        ownedDownloadKeys: {episode.globalKey},
        metadata: {episode.globalKey: episode},
        downloads: {
          episode.globalKey: DownloadProgress(globalKey: episode.globalKey, status: DownloadStatus.completed),
        },
      );
      addTearDown(() async {
        downloads.dispose();
        manager.dispose();
        await database.close();
      });
      await pumpProfileNavigator(
        tester,
        (_) => mediaDetailRoute(metadata: episode, isOffline: true),
        downloads: downloads,
      );

      deleteExact(episode.id);
      LibraryContentNotifier().notifyChanged(
        LibraryChangeEvent(serverId: ServerId('server_1'), removedItemIds: {episode.id, season.id, show.id}),
      );
      deleteExact(show.id, serverId: 'other_server', downloadOnly: true);
      await settleDetail(tester);
      expect(find.text(t.messages.mediaUnavailable), findsNothing);
      expect(find.byType(FocusableActionBar), findsOneWidget);

      deleteExact(show.id, downloadOnly: true);
      await settleDetail(tester);
      expectUnavailable();
    });

    testWidgets('removes a covered detail and keeps the route on top', (tester) async {
      final profileKey = await pumpProfileNavigator(tester, homeRoute);
      var pushSettled = false;
      bool? pushResult;
      unawaited(
        profileKey.currentState!.push(mediaDetailRoute(metadata: season)).then((value) {
          pushSettled = true;
          pushResult = value;
        }),
      );
      await settleDetail(tester);
      expect(find.textContaining('Only Episode'), findsWidgets);

      // A download-progress dialog, player, sheet fallback or another detail.
      profileKey.currentState!.push(
        MaterialPageRoute<void>(
          builder: (_) => const Scaffold(body: Center(child: Text('cover'))),
        ),
      );
      await settleDetail(tester);
      expect(find.text('cover'), findsOneWidget);

      await deleteOnlyEpisode(tester);

      expect(find.text('cover'), findsOneWidget);
      expect(find.byType(MediaDetailScreen), findsNothing);
      expect(pushSettled, isTrue);
      expect(pushResult, isNull);
    });

    testWidgets('pops a current detail', (tester) async {
      final profileKey = await pumpProfileNavigator(tester, homeRoute);
      var pushSettled = false;
      bool? pushResult;
      unawaited(
        profileKey.currentState!.push(mediaDetailRoute(metadata: season)).then((value) {
          pushSettled = true;
          pushResult = value;
        }),
      );
      await settleDetail(tester);
      expect(find.textContaining('Only Episode'), findsWidgets);

      await deleteOnlyEpisode(tester);

      expect(find.byType(MediaDetailScreen), findsNothing);
      expect(find.text('home'), findsOneWidget);
      expect(pushSettled, isTrue);
      expect(pushResult, isNull);
    });

    testWidgets('leaves a detail that is the navigator\'s only route in place', (tester) async {
      await pumpProfileNavigator(tester, (_) => mediaDetailRoute(metadata: season));
      expect(find.textContaining('Only Episode'), findsWidgets);

      await deleteOnlyEpisode(tester);

      // Nothing to pop back to: the detail stays rather than stranding an
      // empty navigator.
      expect(find.byType(MediaDetailScreen), findsOneWidget);
      expectUnavailable();
    });
  });
}

Map<String, dynamic> _previewItem(
  String id, {
  bool episode = false,
  bool reverseVersions = false,
  bool alternateAccessible = true,
  bool firstPartAccessible = true,
  int sourceIdBase = 100,
}) {
  Map<String, dynamic> part(int partId, String language, {bool accessible = true}) => {
    'id': partId,
    'key': '/library/parts/$partId/file.mkv',
    'accessible': accessible,
    'Stream': [
      {'id': partId * 10, 'streamType': 2, 'index': 1, 'codec': 'aac', 'languageCode': language, 'selected': true},
    ],
  };
  final versions = [
    {
      'id': sourceIdBase,
      'videoResolution': '1080',
      'videoCodec': 'h264',
      'container': 'mkv',
      'Part': [if (!firstPartAccessible) part(9, 'fre', accessible: false), part(10, 'eng')],
    },
    {
      'id': sourceIdBase + 1,
      'videoResolution': '4k',
      'videoCodec': 'hevc',
      'container': 'mkv',
      'Part': [part(20, 'jpn', accessible: alternateAccessible)],
    },
  ];
  return {
    'ratingKey': id,
    'type': episode ? 'episode' : 'movie',
    'title': id,
    if (episode) ...{
      'grandparentRatingKey': 'show',
      'parentRatingKey': 'season',
      'parentIndex': 1,
      'index': id == 'ep1' ? 1 : 2,
    },
    'Media': reverseVersions ? versions.reversed.toList() : versions,
  };
}

class _ScheduleSource extends CinemetaCatalogSource {
  @override
  Future<ShowSchedule> fetchShowSchedule(String imdb) async => ShowSchedule(
    ended: false,
    episodes: [
      ScheduledEpisode(
        season: 1,
        number: 2,
        title: 'Latest',
        released: DateTime.now().subtract(const Duration(days: 1)),
      ),
      ScheduledEpisode(season: 1, number: 3, title: 'Future', released: DateTime.now().add(const Duration(days: 7))),
    ],
  );
  @override
  Future<CatalogItem> enrichPreview(CatalogItem item) async => item;
}

class _ScheduleSources extends CatalogSourcesProvider {
  _ScheduleSources(this.source);
  final CinemetaCatalogSource source;
  @override
  List<CatalogSource> get connectedSources => [source];
}

class _ThemePlayer extends Fake implements mpv.Player {
  bool opened = false;
  bool closed = false;
  @override
  Future<void> setVolume(double volume) async {}
  @override
  Future<void> open(
    mpv.Media media, {
    bool play = true,
    bool isLive = false,
    List<mpv.SubtitleTrack>? externalSubtitles,
    Duration? timelineDuration,
    Duration timelineOffset = Duration.zero,
  }) async {
    opened = true;
  }

  @override
  Future<void> dispose({bool preserveDisplayMode = false}) async {
    closed = true;
  }
}

class _ThemeClient extends _FakeMediaServerClient implements ShowThemeMusicClient {
  _ThemeClient(MediaItem show) : super(show: show, childrenByParent: {});
  @override
  Future<ShowThemeSource?> fetchShowTheme(String showId) async =>
      (url: 'https://example.com/theme', headers: <String, String>{});
}

class _ScheduledShowClient extends _FakeMediaServerClient {
  _ScheduledShowClient({required super.show, required super.childrenByParent, super.mediaSourcesById});
  @override
  Future<ExternalIds> fetchExternalIds(String id) async => const ExternalIds(imdb: 'tt12345');
  @override
  Future<LibraryPage<MediaItem>> fetchPlayableDescendantsPage(
    String parentId, {
    int? start,
    int? size,
    AbortController? abort,
  }) async {
    final episodes = childrenByParent.values
        .expand((items) => items)
        .where((e) => e.kind == MediaKind.episode)
        .toList();
    return fakeLibraryPage(episodes, start: start, size: size);
  }
}

class _FakeMediaServerClient implements MediaServerClient {
  final favoriteWrites = <bool>[];

  @override
  Future<void> setFavorite(MediaItem item, bool isFavorite) async => favoriteWrites.add(isFavorite);
  final MediaItem show;
  final Map<String, List<MediaItem>> childrenByParent;
  final Map<String, Future<List<MediaItem>>> childrenPageFutures;

  /// One-shot overrides keyed by `parentId@start`: the next page request at
  /// that offset is sliced from this future's list instead.
  final Map<String, Future<List<MediaItem>>> childrenPageFuturesByStart;
  final Map<String, Future<List<MediaItem>>> childrenFutures;
  final Map<String, Object> childrenPageErrors;
  final Future<List<MediaItem>>? pendingPlayableDescendants;
  final Map<String, MediaSourceInfo> mediaSourcesById;
  final Map<String, Map<String, dynamic>> rawItems;
  Completer<void>? sourceGate;
  int itemReads = 0;
  int extrasReads = 0;
  int sourceReads = 0;
  final List<MediaItem> extras;
  final childrenPageCalls = <({String parentId, int? start, int? size})>[];
  final childrenCalls = <String>[];
  final thumbnailPaths = <String?>[];

  /// On-deck episode returned by the next [fetchItemWithOnDeck]; mutate between
  /// loads to model the series being finished.
  MediaItem? onDeckEpisode;

  /// Held open to keep the on-deck half of a load in flight while the item half
  /// has already been published.
  Completer<void>? onDeckGate;
  Completer<void>? metadataGate;
  int onDeckReads = 0;
  Object? onDeckError;

  /// Items handed to `onItemReady` — i.e. painted before on-deck settled.
  final earlyPaints = <MediaItem>[];

  _FakeMediaServerClient({
    required this.show,
    required this.childrenByParent,
    this.childrenPageFutures = const {},
    Map<String, Future<List<MediaItem>>>? childrenPageFuturesByStart,
    this.childrenFutures = const {},
    this.childrenPageErrors = const {},
    this.pendingPlayableDescendants,
    this.mediaSourcesById = const {},
    this.extras = const [],
    Map<String, Map<String, dynamic>>? rawItems,
  }) : rawItems = rawItems ?? {},
       childrenPageFuturesByStart = childrenPageFuturesByStart ?? {};

  @override
  ServerId get serverId => ServerId('server_1');

  @override
  String? get serverName => 'Server';

  @override
  MediaBackend get backend => MediaBackend.jellyfin;

  @override
  ServerCapabilities get capabilities => ServerCapabilities.jellyfin;

  @override
  Future<({MediaItem? item, MediaItem? onDeckEpisode})> fetchItemWithOnDeck(
    String id, {
    void Function(MediaItem item)? onItemReady,
    bool? isShow,
  }) async {
    onDeckReads++;
    final error = onDeckError;
    if (error != null) throw error;
    final pendingMetadata = metadataGate;
    if (pendingMetadata != null) await pendingMetadata.future;
    final item = id == show.id
        ? show
        : childrenByParent.values.expand((items) => items).where((item) => item.id == id).firstOrNull ?? show;
    // Mirrors the Jellyfin shape: the item is known first, on-deck needs a
    // second round trip.
    if (onItemReady != null) {
      earlyPaints.add(item);
      onItemReady(item);
    }
    final gate = onDeckGate;
    if (gate != null) await gate.future;
    return (item: item, onDeckEpisode: onDeckEpisode);
  }

  @override
  Future<MediaItem?> fetchItem(String id) async {
    itemReads++;
    final raw = rawItems[id];
    if (raw != null) return PlexMappers.mediaItemFromCacheJson(raw, serverId: serverId);
    if (show.id == id) return show;
    for (final items in childrenByParent.values) {
      for (final item in items) {
        if (item.id == id) return item;
      }
    }
    return null;
  }

  @override
  Future<MediaSourceInfo?> fetchCachedMediaSourceInfo(
    String itemId, {
    int mediaIndex = 0,
    String? mediaSourceId,
    String? preferredVersionSignature,
  }) async {
    sourceReads++;
    final raw = rawItems[itemId];
    final source = raw == null
        ? mediaSourcesById[itemId]
        : plexMediaSourceInfoFromCacheJson(
            raw,
            mediaIndex: mediaIndex,
            mediaSourceId: mediaSourceId,
            preferredVersionSignature: preferredVersionSignature,
          );
    final gate = sourceGate;
    if (gate != null) await gate.future;
    return source;
  }

  @override
  Future<List<MediaItem>> fetchChildren(String parentId) async {
    childrenCalls.add(parentId);
    return await (childrenFutures[parentId] ?? Future.value(childrenByParent[parentId] ?? const <MediaItem>[]));
  }

  @override
  Future<LibraryPage<MediaItem>> fetchChildrenPage(
    String parentId, {
    int? start,
    int? size,
    AbortController? abort,
  }) async {
    childrenPageCalls.add((parentId: parentId, start: start, size: size));
    final error = childrenPageErrors[parentId];
    if (error != null) throw error;
    final all =
        await (childrenPageFuturesByStart.remove('$parentId@$start') ??
            childrenPageFutures[parentId] ??
            Future.value(childrenByParent[parentId] ?? const <MediaItem>[]));
    return fakeLibraryPage(all, start: start, size: size);
  }

  @override
  Future<LibraryPage<MediaItem>> fetchPlayableDescendantsPage(
    String parentId, {
    int? start,
    int? size,
    AbortController? abort,
  }) async {
    final items = await pendingPlayableDescendants!;
    return LibraryPage(items: items, totalCount: items.length, offset: start ?? 0);
  }

  @override
  Future<List<MediaHub>> fetchRelatedHubs(String id, {int count = 10}) async => const [];

  @override
  Future<List<MediaItem>> fetchExtras(String id) async {
    extrasReads++;
    return extras;
  }

  @override
  String thumbnailUrl(String? path, {int? width, int? height, bool cover = true}) {
    thumbnailPaths.add(path);
    return '';
  }

  @override
  void close() {}

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _RecordingNavigatorObserver extends NavigatorObserver {
  _RecordingNavigatorObserver({this.popVideoPlayerImmediately = false});

  final bool popVideoPlayerImmediately;
  final pushedRouteNames = <String?>[];

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    pushedRouteNames.add(route.settings.name);
    if (popVideoPlayerImmediately && route.settings.name == kVideoPlayerRouteName) {
      scheduleMicrotask(() => navigator?.pop());
    }
  }
}
