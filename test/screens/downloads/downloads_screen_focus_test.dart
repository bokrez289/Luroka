import 'dart:convert';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:luroka/connection/connection.dart';
import 'package:luroka/connection/connection_registry.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/models/download_models.dart';
import 'package:luroka/navigation/main_screen_scope.dart';
import 'package:luroka/providers/download_provider.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/screens/downloads/downloads_screen.dart';
import 'package:luroka/services/download_manager_service.dart';
import 'package:luroka/services/download_storage_service.dart';
import 'package:luroka/services/jellyfin_api_cache.dart';
import 'package:luroka/services/multi_server_manager.dart';
import 'package:luroka/services/plex_api_cache.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/music/music_playback_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/widgets/focusable_media_card.dart';
import 'package:provider/provider.dart';

import '../../test_helpers/prefs.dart';
import '../../test_helpers/media_items.dart';
import '../../test_helpers/io_fakes.dart';
import '../../test_helpers/multi_server_fixtures.dart';
import '../../test_helpers/stub_music_playback_service.dart';

class _FakeConnectionRegistry extends ConnectionRegistry {
  _FakeConnectionRegistry(super.db);

  @override
  Stream<List<Connection>> watchConnections() => Stream.value(const []);
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final originalPathProvider = PathProviderPlatform.instance;

  late AppDatabase db;
  late DownloadProvider downloadProvider;
  late MultiServerProvider multiServerProvider;
  late MultiServerManager serverManager;
  late DownloadManagerService downloadManager;
  late DownloadStorageService storageService;
  late Directory temporaryDirectory;

  setUp(() async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    DownloadStorageService.resetForTesting();
    temporaryDirectory = await Directory.systemTemp.createTemp('downloads_screen_focus_test_');
    PathProviderPlatform.instance = FakePathProvider(temporaryDirectory);
    await SettingsService.getInstance();
    storageService = DownloadStorageService.instance;
    await storageService.initialize(SettingsService.instance);

    db = AppDatabase.forTesting(NativeDatabase.memory());
    PlexApiCache.initialize(db);
    JellyfinApiCache.initialize(db);

    downloadManager = DownloadManagerService(
      database: db,
      storageService: storageService,
      clientResolver: (serverId, {clientScopeId}) => null,
    );
    downloadProvider = DownloadProvider.forTesting(downloadManager: downloadManager, database: db);
    await downloadProvider.ensureInitialized();

    serverManager = MultiServerManager();
    multiServerProvider = testMultiServerProvider(serverManager);
  });

  tearDown(() async {
    downloadProvider.dispose();
    downloadManager.dispose();
    multiServerProvider.dispose();
    await db.close();
    DownloadStorageService.resetForTesting();
    SettingsService.resetForTesting();
    PathProviderPlatform.instance = originalPathProvider;
    if (await temporaryDirectory.exists()) {
      await temporaryDirectory.delete(recursive: true);
    }
  });

  testWidgets('right from the last tab (Music) focuses and opens Sync Rules action', (tester) async {
    final screenKey = GlobalKey<DownloadsScreenState>();

    await _pumpScreen(tester, db, downloadProvider, multiServerProvider, screenKey: screenKey);

    final state = screenKey.currentState!;
    state.tabController.index = 3;
    state.getTabChipFocusNode(3).requestFocus();
    await tester.pumpAndSettle();

    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();

    expect(find.text('Sync rules'), findsOneWidget);
  });

  testWidgets('offline downloads exposes reconnect and add-server to the remote', (tester) async {
    final key = GlobalKey<DownloadsScreenState>();
    var reconnects = 0;
    var adds = 0;
    await _pumpScreen(
      tester,
      db,
      downloadProvider,
      multiServerProvider,
      screenKey: key,
      offline: true,
      onReconnect: () => reconnects++,
      onAddServer: () => adds++,
    );
    expect(find.byKey(const ValueKey('downloads-offline-recovery')), findsOneWidget);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pump();
    key.currentState!.focusActiveTabIfReady();
    await tester.pump();
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'downloads_reconnect');
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pump();
    expect(reconnects, 1);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'downloads_add_server');
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pump();
    expect(adds, 1);
  });

  for (final (kind, tab) in [(MediaKind.movie, 2), (MediaKind.episode, 1), (MediaKind.track, 3)]) {
    testWidgets('an in-progress $kind notification opens the matching tab and shows progress', (tester) async {
      final item = testMediaItem(id: 'target', kind: kind, title: 'Downloading title', serverId: 'server');
      downloadProvider.debugSeedState(
        downloads: {
          item.globalKey: DownloadProgress(globalKey: item.globalKey, status: DownloadStatus.downloading, progress: 42),
        },
        metadata: {item.globalKey: item},
      );
      final screenKey = GlobalKey<DownloadsScreenState>();
      await _pumpScreen(
        tester,
        db,
        downloadProvider,
        multiServerProvider,
        screenKey: screenKey,
        notificationTarget: item.globalKey,
      );
      await tester.pumpAndSettle();
      expect(screenKey.currentState!.tabController.index, tab);
      expect(find.byKey(const ValueKey('download_notification_progress')), findsOneWidget);
      expect(find.text('42%'), findsOneWidget);
    });
  }

  test('completed episode notifications resolve to the downloaded show on the same server', () {
    final episode = testMediaItem(
      id: 'ep',
      kind: MediaKind.episode,
      title: 'Episode',
      grandparentId: 'show',
      grandparentTitle: 'The show',
      serverId: 'server',
    );
    downloadProvider.debugSeedState(
      downloads: {episode.globalKey: DownloadProgress(globalKey: episode.globalKey, status: DownloadStatus.completed)},
      metadata: {episode.globalKey: episode},
    );
    final details = downloadNotificationDetails(downloadProvider, episode);
    expect(details?.id, 'show');
    expect(details?.serverId, 'server');
    expect(details?.kind, MediaKind.show);
  });

  testWidgets('Retry failed shows only while a download failed and hands D-pad focus to Sync rules', (tester) async {
    final movie = _downloadedMovie(0);
    downloadProvider.debugSeedState(
      downloads: {movie.globalKey: DownloadProgress(globalKey: movie.globalKey, status: DownloadStatus.failed)},
      metadata: {movie.globalKey: movie},
    );
    final screenKey = GlobalKey<DownloadsScreenState>();

    await _pumpScreen(tester, db, downloadProvider, multiServerProvider, screenKey: screenKey);
    expect(find.byTooltip('Retry failed downloads'), findsOneWidget);

    final state = screenKey.currentState!;
    state.tabController.index = 3;
    state.getTabChipFocusNode(3).requestFocus();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();

    // The failure leaves while Retry failed holds focus.
    await tester.runAsync(() => downloadProvider.cancelDownload(movie.globalKey));
    await tester.pumpAndSettle();
    expect(find.byTooltip('Retry failed downloads'), findsNothing);

    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(find.text('Sync rules'), findsOneWidget);
  });

  testWidgets('grid view renders downloaded offline cards in a bounded sliver grid', (tester) async {
    await SettingsService.instance.write(SettingsService.viewMode, ViewMode.grid);
    _seedDownloadedMovies(downloadProvider, 4);
    final screenKey = GlobalKey<DownloadsScreenState>();
    var sidebarCalls = 0;

    await _pumpScreen(
      tester,
      db,
      downloadProvider,
      multiServerProvider,
      screenKey: screenKey,
      onSidebar: () => sidebarCalls++,
    );
    screenKey.currentState!.tabController.index = 2;
    await tester.pumpAndSettle();

    final scrollView = _activeDownloadsScrollView();
    expect(scrollView, findsOneWidget);
    expect(find.descendant(of: scrollView, matching: find.byType(SliverGrid)), findsOneWidget);
    expect(find.descendant(of: scrollView, matching: find.byType(SliverList)), findsNothing);
    _expectBoundedSingleScrollViewport(tester, scrollView);

    final cards = tester
        .widgetList<FocusableMediaCard>(find.descendant(of: scrollView, matching: find.byType(FocusableMediaCard)))
        .toList();
    expect(cards, hasLength(4));
    expect(cards.every((card) => card.isOffline), isTrue);
    expect(cards.every((card) => !card.disableScale), isTrue);

    final first = _movieCard(cards, 0);
    final second = _movieCard(cards, 1);
    expect(first.focusNode, isNotNull);
    expect(first.onBack, isNotNull);
    expect(first.onNavigateLeft, isNotNull);
    expect(second.onNavigateLeft, isNull);

    first.onNavigateLeft!();
    expect(sidebarCalls, 1);
    first.onBack!();
    await tester.pump();
    expect(screenKey.currentState!.getTabChipFocusNode(2).hasFocus, isTrue);
    expect(tester.takeException(), isNull);
  });

  testWidgets('list view renders downloaded offline cards as bounded sliver rows', (tester) async {
    await SettingsService.instance.write(SettingsService.viewMode, ViewMode.list);
    _seedDownloadedMovies(downloadProvider, 3);
    final screenKey = GlobalKey<DownloadsScreenState>();
    var sidebarCalls = 0;

    await _pumpScreen(
      tester,
      db,
      downloadProvider,
      multiServerProvider,
      screenKey: screenKey,
      onSidebar: () => sidebarCalls++,
    );
    screenKey.currentState!.tabController.index = 2;
    await tester.pumpAndSettle();

    final scrollView = _activeDownloadsScrollView();
    expect(scrollView, findsOneWidget);
    expect(find.descendant(of: scrollView, matching: find.byType(SliverList)), findsOneWidget);
    expect(find.descendant(of: scrollView, matching: find.byType(SliverGrid)), findsNothing);
    _expectBoundedSingleScrollViewport(tester, scrollView);

    final cards = tester
        .widgetList<FocusableMediaCard>(find.descendant(of: scrollView, matching: find.byType(FocusableMediaCard)))
        .toList();
    expect(cards, hasLength(3));
    expect(cards.every((card) => card.isOffline), isTrue);
    expect(cards.every((card) => card.disableScale), isTrue);

    final first = _movieCard(cards, 0);
    final second = _movieCard(cards, 1);
    expect(first.focusNode, isNotNull);
    expect(first.onBack, isNotNull);
    expect(first.onNavigateLeft, isNotNull);
    expect(second.onNavigateLeft, isNotNull);

    second.onNavigateLeft!();
    expect(sidebarCalls, 1);
    first.onBack!();
    await tester.pump();
    expect(screenKey.currentState!.getTabChipFocusNode(2).hasFocus, isTrue);
    expect(tester.takeException(), isNull);
  });

  testWidgets('downloaded album header bounds local artwork decoding on both axes', (tester) async {
    const serverId = 'downloads-layout-server';
    const thumbPath = '/downloads-layout/album/thumb';
    final artworkPath = downloadProvider.getArtworkLocalPath(ServerId(serverId), thumbPath);
    expect(artworkPath, isNotNull);
    final artworkFile = File(artworkPath!);
    artworkFile.parent.createSync(recursive: true);
    artworkFile.writeAsBytesSync(
      base64Decode('iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII='),
    );
    addTearDown(() {
      if (artworkFile.existsSync()) artworkFile.deleteSync();
    });

    final track = testMediaItem(
      id: 'downloaded-track',
      kind: MediaKind.track,
      title: 'Downloaded Track',
      parentId: 'downloaded-album',
      parentTitle: 'Downloaded Album',
      grandparentId: 'downloaded-artist',
      grandparentTitle: 'Downloaded Artist',
      parentIndex: 1,
      index: 1,
      serverId: serverId,
    );
    final album = testMediaItem(
      id: 'downloaded-album',
      kind: MediaKind.album,
      title: 'Downloaded Album',
      parentId: 'downloaded-artist',
      parentTitle: 'Downloaded Artist',
      thumbPath: thumbPath,
      serverId: serverId,
    );
    downloadProvider.debugSeedState(
      downloads: {
        '$serverId:${track.id}': DownloadProgress(globalKey: '$serverId:${track.id}', status: DownloadStatus.completed),
      },
      metadata: {'$serverId:${track.id}': track, '$serverId:${album.id}': album},
    );
    final screenKey = GlobalKey<DownloadsScreenState>();

    await _pumpScreen(tester, db, downloadProvider, multiServerProvider, screenKey: screenKey);
    screenKey.currentState!.tabController.index = 3;
    await tester.pumpAndSettle();

    expect(find.text('Downloaded Album'), findsOneWidget);
    final headerImages = tester
        .widgetList<Image>(find.byType(Image))
        .where((image) => image.width == 48 && image.height == 48)
        .toList();
    expect(headerImages, hasLength(1));
    final provider = headerImages.single.image;
    expect(provider, isA<ResizeImage>());
    final resized = provider as ResizeImage;
    expect(resized.width, 120);
    expect(resized.height, 180);
    expect(resized.policy, ResizeImagePolicy.fit);
    expect(resized.imageProvider, isA<FileImage>());
    expect((resized.imageProvider as FileImage).file.path, artworkFile.path);
    expect(tester.takeException(), isNull);
  });
}

MediaItem _downloadedMovie(int index) => testMediaItem(
  id: 'movie-$index',
  kind: MediaKind.movie,
  title: 'Downloaded Movie $index',
  serverId: 'downloads-layout-server',
);

void _seedDownloadedMovies(DownloadProvider provider, int count) {
  final movies = List.generate(count, _downloadedMovie);
  provider.debugSeedState(
    downloads: {
      for (final movie in movies)
        movie.globalKey: DownloadProgress(globalKey: movie.globalKey, status: DownloadStatus.completed),
    },
    metadata: {for (final movie in movies) movie.globalKey: movie},
  );
}

FocusableMediaCard _movieCard(List<FocusableMediaCard> cards, int index) =>
    cards.singleWhere((card) => (card.item as MediaItem).id == 'movie-$index');

Finder _activeDownloadsScrollView() =>
    find.descendant(of: find.byType(TabBarView), matching: find.byType(CustomScrollView));

void _expectBoundedSingleScrollViewport(WidgetTester tester, Finder scrollView) {
  final renderBox = tester.renderObject<RenderBox>(scrollView);
  expect(renderBox.constraints.isTight, isTrue);
  expect(renderBox.size.width, 1200);
  expect(renderBox.size.height, inExclusiveRange(0, 800), reason: 'The summary and tabs reserve their own space');

  final scrollable = find.descendant(of: scrollView, matching: find.byType(Scrollable));
  expect(scrollable, findsOneWidget);
  final position = tester.state<ScrollableState>(scrollable).position;
  expect(position.hasContentDimensions, isTrue);
  expect(position.viewportDimension, renderBox.size.height);
  expect(position.minScrollExtent, 0);
  expect(position.maxScrollExtent, greaterThanOrEqualTo(0));
  expect(position.pixels, 0);
}

Future<void> _pumpScreen(
  WidgetTester tester,
  AppDatabase db,
  DownloadProvider downloadProvider,
  MultiServerProvider multiServerProvider, {
  required GlobalKey<DownloadsScreenState> screenKey,
  VoidCallback? onSidebar,
  String? notificationTarget,
  bool offline = false,
  VoidCallback? onReconnect,
  VoidCallback? onAddServer,
}) async {
  tester.view.devicePixelRatio = 1;
  tester.view.physicalSize = const Size(1200, 800);
  addTearDown(() {
    tester.view.resetDevicePixelRatio();
    tester.view.resetPhysicalSize();
  });

  await tester.pumpWidget(
    InputModeTracker(
      child: MultiProvider(
        providers: [
          Provider<ConnectionRegistry>.value(value: _FakeConnectionRegistry(db)),
          ChangeNotifierProvider<DownloadProvider>.value(value: downloadProvider),
          ChangeNotifierProvider<MultiServerProvider>.value(value: multiServerProvider),
          ChangeNotifierProvider<MusicPlaybackService>(create: (_) => StubMusicPlaybackService()),
        ],
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark).copyWith(platform: TargetPlatform.macOS),
          home: MainScreenFocusScope(
            focusSidebar: onSidebar ?? () {},
            sideNavigationWidth: 0,
            child: DownloadsScreen(
              key: screenKey,
              notificationTarget: notificationTarget,
              offline: offline,
              onReconnect: onReconnect,
              onAddServer: onAddServer,
            ),
          ),
        ),
      ),
    ),
  );
  await tester.pump();
}
