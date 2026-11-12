import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/home_layout.dart';
import 'package:luroka/media/home_progress.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_hub.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_library.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/media/media_studio.dart';
import 'package:luroka/providers/discover_provider.dart';
import 'package:luroka/providers/home_layout_provider.dart';
import 'package:luroka/providers/studios_provider.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/widgets/live_home_preview.dart';
import 'package:luroka/widgets/optimized_media_image.dart';
import 'package:luroka/widgets/mobile_settings_preview.dart';
import 'package:luroka/widgets/settings_preview_thumbnail.dart';
import 'package:luroka/widgets/home_dashboard.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/widgets/appearance_workspace.dart';
import 'package:provider/provider.dart';

import '../test_helpers/prefs.dart';

class _Client implements MediaServerClient {
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _Discover extends ChangeNotifier implements DiscoverProvider {
  @override
  final onDeck = <MediaItem>[
    const MediaItem.plex(
      id: 'ep',
      serverId: 'server',
      kind: MediaKind.episode,
      title: 'Episode',
      grandparentTitle: 'Series',
      grandparentThumbPath: 'series-poster',
      grandparentArtPath: 'series-backdrop',
      thumbPath: 'episode-image',
      viewOffsetMs: 100,
    ),
    withHomeProgressRole(
      const MediaItem.plex(
        id: 'next',
        serverId: 'server',
        kind: MediaKind.episode,
        title: 'Next episode',
        grandparentTitle: 'Next series',
      ),
      HomeProgressRole.nextUp,
    ),
  ];
  @override
  List<MediaHub> get hubs => const [];
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _Studios extends ChangeNotifier implements StudiosProvider {
  @override
  final groups = [
    for (final name in ['Netflix', 'BBC'])
      StudioGroup(
        key: name.toLowerCase(),
        name: name,
        sources: [
          StudioSource(
            library: const MediaLibrary(id: 'movies', title: 'Movies', backend: MediaBackend.plex, serverId: 'server'),
            client: _Client(),
            kind: MediaKind.movie,
            studio: MediaStudio(id: name, name: name),
          ),
        ],
      ),
  ];
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  late StorageService storage;
  setUp(() async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
    storage = await StorageService.getInstance();
    LocaleSettings.setLocaleSync(AppLocale.en);
  });

  testWidgets('live preview follows Home layout, artwork and studio preferences', (tester) async {
    final home = HomeLayoutProvider(storage: storage, profileId: 'preview');
    final discover = _Discover();
    final studios = _Studios();
    addTearDown(home.dispose);
    addTearDown(discover.dispose);
    addTearDown(studios.dispose);
    await tester.runAsync(() => home.setSpotlightSource(HomeSpotlightSource.continueWatching));
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<HomeLayoutProvider>.value(value: home),
          ChangeNotifierProvider<DiscoverProvider>.value(value: discover),
          ChangeNotifierProvider<StudiosProvider>.value(value: studios),
        ],
        child: const MaterialApp(
          home: Scaffold(
            body: SingleChildScrollView(child: SizedBox(width: 360, child: LiveHomePreview())),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    final hero = find.byKey(const ValueKey('live-home-spotlight'));
    expect(
      tester
          .widgetList<OptimizedMediaImage>(find.descendant(of: hero, matching: find.byType(OptimizedMediaImage)))
          .any((image) => image.imagePath == 'series-backdrop'),
      isTrue,
    );
    final progress = find.byKey(const ValueKey('live-home-row-continue_watching'));
    expect(progress, findsOneWidget);
    expect(find.byKey(const ValueKey('live-home-row-home.nextup')), findsNothing);
    expect(find.byKey(const ValueKey('live-home-studio-netflix')), findsOneWidget);

    await tester.runAsync(() async {
      await home.setSplitContinueWatching(true);
      await home.setStudios(order: ['bbc', 'netflix'], hidden: ['netflix']);
    });
    await SettingsService.instance.write(SettingsService.homeEpisodeThumbnails, true);
    await SettingsService.instance.write(SettingsService.posterDetails, true);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('live-home-row-home.nextup')), findsOneWidget);
    expect(find.byKey(const ValueKey('live-home-studio-netflix')), findsNothing);
    expect(find.byKey(const ValueKey('live-home-studio-bbc')), findsOneWidget);
    final ratios = tester.widgetList<AspectRatio>(find.byType(AspectRatio));
    expect(ratios.any((ratio) => ratio.aspectRatio == 16 / 9), isTrue);
    expect(find.textContaining('Series'), findsWidgets);
    expect(
      tester
          .widgetList<OptimizedMediaImage>(find.byType(OptimizedMediaImage))
          .any((image) => image.imagePath == 'episode-image'),
      isTrue,
    );

    await SettingsService.instance.write(SettingsService.showHeroSection, false);
    await tester.pumpAndSettle();
    expect(hero, findsNothing);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('TV preview uses real Home geometry and loaded titles', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final home = HomeLayoutProvider(storage: storage, profileId: 'preview-tv');
    final discover = _Discover();
    addTearDown(home.dispose);
    addTearDown(discover.dispose);
    await tester.runAsync(() => home.setSpotlightSource(HomeSpotlightSource.continueWatching));
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<HomeLayoutProvider>.value(value: home),
          ChangeNotifierProvider<DiscoverProvider>.value(value: discover),
        ],
        child: InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: const Scaffold(body: LiveHomePreview()),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(HomeDashboard), findsOneWidget);
    final dashboard = tester.widget<HomeDashboard>(find.byType(HomeDashboard));
    expect(dashboard.active, isFalse);
    expect(dashboard.onDeck.first.id, 'ep');
    expect(dashboard.loadMoreItems(dashboard.rows.first), isNull);
    final hero = find.byKey(const ValueKey('home_feature_billboard'));
    expect(hero, findsOneWidget);
    expect(tester.getSize(hero).height, greaterThan(280));
    await SettingsService.instance.write(SettingsService.homeHeroSize, HomeHeroSize.compact);
    await tester.pumpAndSettle();
    expect(tester.getSize(hero).height, 280);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('phone Spotlight shows the full series poster and fits the preview frame', (tester) async {
    tester.view.physicalSize = const Size(320, 640);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final home = HomeLayoutProvider(storage: storage, profileId: 'preview-phone');
    final discover = _Discover();
    addTearDown(home.dispose);
    addTearDown(discover.dispose);
    await tester.runAsync(() => home.setSpotlightSource(HomeSpotlightSource.continueWatching));
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<HomeLayoutProvider>.value(value: home),
          ChangeNotifierProvider<DiscoverProvider>.value(value: discover),
        ],
        child: MaterialApp(
          theme: ThemeData(platform: TargetPlatform.android),
          home: const Scaffold(body: MobileSettingsPreviewFrame(categoryId: 'home')),
        ),
      ),
    );
    await tester.pumpAndSettle();
    final frame = find.byType(MobileSettingsPreviewFrame);
    final hero = find.byKey(const ValueKey('live-home-phone-spotlight'));
    expect(hero, findsOneWidget);
    final image = tester.widget<OptimizedMediaImage>(
      find.descendant(of: hero, matching: find.byType(OptimizedMediaImage)),
    );
    expect(image.imagePath, 'series-poster');
    expect(image.fit, BoxFit.contain);
    final frameRect = tester.getRect(frame);
    final heroRect = tester.getRect(hero);
    expect(frameRect.contains(heroRect.topLeft), isTrue);
    expect(frameRect.contains(heroRect.bottomRight), isTrue);
    // Tapping the miniature itself opens it; the small icon is optional.
    await tester.tap(find.byType(SettingsPreviewThumbnail));
    await tester.pumpAndSettle();
    expect(find.byType(Dialog), findsOneWidget);
    expect(find.text(t.common.close), findsOneWidget);
    expect(
      find.descendant(of: find.byType(Dialog), matching: find.byKey(const ValueKey('live-home-phone-spotlight'))),
      findsOneWidget,
    );
    await tester.tap(find.text(t.common.close));
    await tester.pumpAndSettle();
    expect(find.byType(Dialog), findsNothing);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('mobile library preview follows the selected grid or list mode', (tester) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(platform: TargetPlatform.android),
        home: const Scaffold(body: MobileSettingsPreviewFrame(categoryId: 'library')),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(LibrarySettingsPreview), findsOneWidget);
    GridView grid() =>
        tester.widget(find.descendant(of: find.byType(LibrarySettingsPreview), matching: find.byType(GridView)));
    expect((grid().gridDelegate as SliverGridDelegateWithFixedCrossAxisCount).crossAxisCount, greaterThan(1));
    await SettingsService.instance.write(SettingsService.viewMode, ViewMode.list);
    await tester.pumpAndSettle();
    expect((grid().gridDelegate as SliverGridDelegateWithFixedCrossAxisCount).crossAxisCount, 1);
    expect(find.byIcon(Icons.view_list_rounded), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
