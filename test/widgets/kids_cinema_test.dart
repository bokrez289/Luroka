import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/media_hub.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/models/kids_atmosphere.dart';
import 'package:luroka/services/kids_profile_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/kids/kids_movie_shelf.dart';
import 'package:luroka/widgets/kids/kids_avatar.dart';
import '../test_helpers/media_items.dart';
import '../test_helpers/prefs.dart';

void main() {
  setUpAll(() async {
    if (Platform.environment['KIDS_HOME_SCREENSHOTS'] == '1') {
      await (FontLoader('Inter')..addFont(rootBundle.load('assets/fonts/Inter-Regular.ttf'))).load();
      await (FontLoader('MaterialIcons')..addFont(rootBundle.load('fonts/MaterialIcons-Regular.otf'))).load();
    }
  });
  final kids = KidsProfileService.instance;
  setUp(() async {
    resetSharedPreferencesForTest();
    kids.resetForTesting();
    LocaleSettings.setLocaleSync(AppLocale.en);
    await kids.initialize();
    await kids.setParentPin('1234');
    await kids.setChild('child', parentId: 'adult', maxAge: 7);
    kids.selectProfile('child');
  });
  tearDown(() {
    kids.resetForTesting();
    TvDetectionService.debugSetAppleTVOverride(null);
  });
  testWidgets('phone shows the welcome and safe shelves before a featured title', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(false);
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final movie = testMediaItem(
      id: 'm',
      title: 'Friendly',
      serverId: 'srv',
      artPath: '/art',
    ).copyWith(contentRating: 'G', viewOffsetMs: 1000, durationMs: 10000);
    final forbidden = movie.copyWith(id: 'x', title: 'Forbidden', contentRating: 'R');
    String? selected;
    var played = false;
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          home: KidsMovieShelf(
            rows: [
              MediaHub(id: 'm', title: 'Movies', type: 'mixed', items: [movie, forbidden]),
            ],
            onDeck: [movie, forbidden],
            name: 'Emma',
            toolbar: const SizedBox(),
            showToolbar: false,
            resolveClient: (_) => null,
            onPlay: (_) => played = true,
            onDetails: (item) => selected = item.id,
            onResume: (_) => played = true,
            onSidebar: () {},
            onToolbar: () {},
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('kids-illustrated-header')), findsOneWidget);
    expect(find.byType(KidsAvatar), findsOneWidget);
    expect(find.text(t.kids.welcome(name: 'Emma')), findsOneWidget);
    expect(find.text(t.kidsHome.keepWatching), findsOneWidget);
    expect(find.text('Forbidden'), findsNothing);
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
    final resume = find.byKey(const ValueKey('resume:srv:m'));
    expect(tester.getTopLeft(resume).dy, lessThan(500));
    await tester.tap(resume);
    await tester.pump();
    expect(selected, 'm');
    expect(played, isFalse);
  });
  for (final platform in [TargetPlatform.android, TargetPlatform.iOS]) {
    testWidgets('phone treehouse keeps one profile action and a compact progress shelf on $platform', (tester) async {
      TvDetectionService.debugSetAppleTVOverride(false);
      tester.view.physicalSize = const Size(390, 844);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      final movie = testMediaItem(id: 'm', title: 'Friendly', serverId: 'srv', artPath: '/art')
          .copyWith(contentRating: 'G', viewOffsetMs: 1000, durationMs: 10000);
      var profilesOpened = false;
      String? selected;
      await tester.pumpWidget(MaterialApp(
        theme: monoTheme(MonoPalette.lurokaKids).copyWith(platform: platform),
        home: KidsMovieShelf(
          rows: [MediaHub(id: 'm', title: 'Movies', type: 'movie', items: [movie])],
          onDeck: [movie], name: 'Emma',
          toolbar: IconButton(key: const ValueKey('profile-action'), onPressed: () => profilesOpened = true,
            tooltip: 'Profiles', icon: const Icon(Icons.person)),
          showToolbar: true,
          resolveClient: (_) => null, onPlay: (_) {}, onResume: (_) {},
          onDetails: (item) => selected = item.id, onSidebar: () {}, onToolbar: () {},
        ),
      ));
      await tester.pumpAndSettle();
      final header = find.byKey(const ValueKey('kids-illustrated-header'));
      expect(tester.getSize(header).height, lessThanOrEqualTo(180));
      expect(find.byKey(const ValueKey('kids-phone-treehouse-art')), findsOneWidget);
      expect(find.byType(KidsAvatar), findsNothing);
      expect(find.text(t.common.resume), findsNothing);
      expect(find.byType(LinearProgressIndicator), findsOneWidget);
      await tester.tap(find.byKey(const ValueKey('profile-action')));
      expect(profilesOpened, isTrue);
      await tester.tap(find.byKey(const ValueKey('resume:srv:m')));
      expect(selected, 'm');
      expect(tester.takeException(), isNull);
    });
  }
  for (final platform in [TargetPlatform.android, TargetPlatform.iOS]) {
    for (final size in [const Size(768, 1024), const Size(1024, 768)]) {
      testWidgets('tablet treehouse uses a larger orientation-aware scene on $platform $size', (tester) async {
        TvDetectionService.debugSetAppleTVOverride(false);
        tester.view.physicalSize = size;
        tester.view.devicePixelRatio = 1;
        addTearDown(tester.view.reset);
        final movie = testMediaItem(id: 'm', title: 'Friendly', serverId: 'srv', artPath: '/art')
            .copyWith(contentRating: 'G', viewOffsetMs: 1000, durationMs: 10000);
        final forbidden = movie.copyWith(id: 'x', title: 'Forbidden', contentRating: 'R');
        String? selected;
        await tester.pumpWidget(MaterialApp(
          theme: monoTheme(MonoPalette.lurokaKids).copyWith(platform: platform),
          home: KidsMovieShelf(
            rows: [MediaHub(id: 'm', title: 'Movies', type: 'mixed', items: [movie, forbidden])],
            onDeck: [movie, forbidden], name: 'Emma', toolbar: const SizedBox(), showToolbar: false,
            resolveClient: (_) => null, onPlay: (_) {}, onResume: (_) {},
            onDetails: (item) => selected = item.id, onSidebar: () {}, onToolbar: () {},
          ),
        ));
        await tester.pumpAndSettle();
        final hero = find.byKey(const ValueKey('kids-illustrated-header'));
        expect(tester.getSize(hero).height, greaterThan(250));
        final artwork = tester.widget<Image>(find.byKey(const ValueKey('kids-tablet-treehouse-art')));
        final asset = artwork.image as AssetImage;
        expect(asset.assetName, size.width > size.height
            ? 'assets/branding/kids-world-tv.webp' : 'assets/branding/kids-world-phone.webp');
        expect(artwork.fit, BoxFit.cover);
        expect(find.text('Forbidden'), findsNothing);
        expect(find.text(t.common.resume), findsNothing);
        expect(find.byType(LinearProgressIndicator), findsOneWidget);
        final card = find.byKey(const ValueKey('resume:srv:m'));
        await tester.ensureVisible(card);
        await tester.tap(card);
        await tester.pump();
        expect(selected, 'm');
        expect(tester.takeException(), isNull);
      });
    }
  }
  testWidgets('tablet treehouse respects quiet scenery and enlarged text', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(false);
    tester.view.physicalSize = const Size(768, 1024);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await kids.setChild('child', parentId: 'adult', maxAge: 7, quietScenery: true);
    final movie = testMediaItem(id: 'safe', title: 'A very long and friendly film title', serverId: 'srv')
        .copyWith(contentRating: 'G');
    await tester.pumpWidget(MaterialApp(
      theme: monoTheme(MonoPalette.lurokaKids).copyWith(platform: TargetPlatform.iOS),
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.6)),
        child: child!,
      ),
      home: KidsMovieShelf(
        rows: [MediaHub(id: 'm', title: 'Movies', type: 'movie', items: [movie])],
        onDeck: [], name: 'Emma', toolbar: const SizedBox(), showToolbar: false,
        resolveClient: (_) => null, onPlay: (_) {}, onResume: (_) {}, onDetails: (_) {},
        onSidebar: () {}, onToolbar: () {},
      ),
    ));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('kids-tablet-treehouse-art')), findsNothing);
    expect(find.text(t.kids.welcome(name: 'Emma')), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
  for (final tv in [false, true]) {
    testWidgets('active child atmosphere updates Home without changing content on ${tv ? 'TV' : 'tablet'}', (tester) async {
      TvDetectionService.debugSetAppleTVOverride(tv);
      tester.view.physicalSize = tv ? const Size(1280, 720) : const Size(768, 1024);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      final movie = testMediaItem(id: 'safe', title: 'Friendly', serverId: 'srv')
          .copyWith(contentRating: 'G');
      final forbidden = movie.copyWith(id: 'adult', title: 'Forbidden', contentRating: 'R');
      await tester.pumpWidget(MaterialApp(
        theme: monoTheme(MonoPalette.lurokaKids).copyWith(platform: TargetPlatform.iOS),
        home: KidsMovieShelf(
          rows: [MediaHub(id: 'h', title: 'Movies', type: 'movie', items: [movie, forbidden])],
          onDeck: [], name: 'Emma', toolbar: const SizedBox(), showToolbar: false,
          resolveClient: (_) => null, onPlay: (_) {}, onResume: (_) {}, onDetails: (_) {},
          onSidebar: () {}, onToolbar: () {},
        ),
      ));
      await tester.pumpAndSettle();
      for (final palette in KidsAtmosphere.values) {
        await kids.setChild('child', parentId: 'adult', maxAge: 7, atmosphere: palette);
        await tester.pumpAndSettle();
        final material = tester.widget<Material>(
          find.descendant(of: find.byType(KidsMovieShelf), matching: find.byType(Material)).first,
        );
        expect(material.color, palette.background);
        expect(find.text('Forbidden'), findsNothing);
        expect(find.text('Friendly'), findsWidgets);
        expect(tester.takeException(), isNull);
      }
    });
  }
  testWidgets('kids Home groups matching copies without asking the child to pick a library', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(false);
    final first = testMediaItem(
      id: 'a',
      title: 'Friendly movie',
      serverId: 'one',
      libraryId: 'movies',
      libraryTitle: 'Movies',
      year: 2024,
    ).copyWith(contentRating: 'G');
    final second = testMediaItem(
      id: 'b',
      title: 'Friendly movie',
      serverId: 'two',
      libraryId: 'family',
      libraryTitle: 'Family',
      year: 2024,
    ).copyWith(contentRating: 'G');
    String? selected;
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.lurokaKids),
          home: KidsMovieShelf(
            rows: [
              MediaHub(id: 'mixed', title: 'Library', type: 'mixed', items: [first, second]),
            ],
            onDeck: [],
            name: 'Emma',
            toolbar: const SizedBox(),
            showToolbar: false,
            resolveClient: (_) => null,
            onPlay: (_) {},
            onDetails: (item) => selected = item.id,
            onResume: (_) {},
            onSidebar: () {},
            onToolbar: () {},
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text(t.kids.welcome(name: 'Emma')), findsOneWidget);
    expect(find.text('Friendly movie'), findsOneWidget);
    await tester.ensureVisible(find.text('Friendly movie'));
    await tester.tap(find.text('Friendly movie'));
    await tester.pumpAndSettle();
    expect(selected, anyOf('a', 'b'));
    expect(find.text('Family'), findsNothing);
  });
  testWidgets('TV welcomes first, then previews the focused poster without moving the shelf', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    final movie = testMediaItem(
      id: 'm',
      title: 'Friendly',
      serverId: 'srv',
      summary: 'A gentle adventure.',
      artPath: '/hero',
    ).copyWith(contentRating: 'G');
    final key = GlobalKey<KidsMovieShelfState>();
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.lurokaKids),
          home: KidsMovieShelf(
            key: key,
            rows: [
              MediaHub(
                id: 'm',
                title: 'Movies',
                type: 'mixed',
                items: [
                  movie,
                  movie.copyWith(
                    id: 's',
                    kind: MediaKind.show,
                    title: 'Tiny explorers',
                    summary: 'Two friends set sail.',
                  ),
                  movie.copyWith(id: 'x', title: 'Forbidden', contentRating: 'R'),
                ],
              ),
            ],
            onDeck: const [],
            name: 'Emma',
            toolbar: const SizedBox(),
            showToolbar: false,
            resolveClient: (_) => null,
            onPlay: (_) {},
            onDetails: (_) {},
            onResume: (_) {},
            onSidebar: () {},
            onToolbar: () {},
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text(t.kids.welcome(name: 'Emma')), findsOneWidget);
    expect(find.textContaining('A gentle adventure.'), findsNothing);
    key.currentState!.requestContentFocus();
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pump();
    final card = find.byKey(const ValueKey('movies:srv:m'));
    final before = tester.getRect(card);
    await tester.pump(const Duration(milliseconds: 450));
    await tester.pump();
    expect(find.byKey(const ValueKey('kids-focused-preview')), findsNothing);
    expect(find.byKey(const ValueKey('spotlight:srv:m')), findsOneWidget);
    expect(tester.getRect(card), before);
    expect(find.textContaining('A gentle adventure.'), findsOneWidget);
    expect(find.text('Forbidden'), findsNothing);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 80));
    expect(find.byKey(const ValueKey('spotlight:srv:m')), findsOneWidget);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    expect(find.byKey(const ValueKey('spotlight:srv:s')), findsNothing);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    expect(find.byKey(const ValueKey('spotlight:srv:s')), findsOneWidget);
    expect(find.textContaining('Two friends set sail.'), findsOneWidget);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    expect(find.byKey(const ValueKey('spotlight:srv:m')), findsOneWidget);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('spotlight:srv:m')), findsNothing);
  });

  for (final size in [const Size(960, 540), const Size(1280, 720)]) {
    testWidgets('TV final shelf aligns below the preview at $size', (tester) async {
      TvDetectionService.debugSetAppleTVOverride(true);
      tester.view.physicalSize = size;
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      final movie = testMediaItem(id: 'movie', title: 'Movie', serverId: 'srv').copyWith(contentRating: 'G');
      final show = movie.copyWith(id: 'show', title: 'Show', kind: MediaKind.show);
      final key = GlobalKey<KidsMovieShelfState>();
      await tester.pumpWidget(
        InputModeTracker(
          child: MaterialApp(
            home: KidsMovieShelf(
              key: key,
              rows: [
                MediaHub(id: 'items', title: 'Items', type: 'mixed', items: [movie, show]),
              ],
              onDeck: const [],
              name: 'Emma',
              toolbar: const SizedBox(),
              showToolbar: false,
              resolveClient: (_) => null,
              onPlay: (_) {},
              onDetails: (_) {},
              onResume: (_) {},
              onSidebar: () {},
              onToolbar: () {},
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      key.currentState!.requestContentFocus();
      await tester.pump();
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pumpAndSettle();
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pumpAndSettle();
      final viewportTop = tester.getTopLeft(find.byKey(const ValueKey('kids-movie-shelf'))).dy;
      final previousBottom = tester
          .getBottomLeft(find.byKey(const ValueKey('movies:srv:movie'), skipOffstage: false))
          .dy;
      final selectedHeading = tester.getTopLeft(find.text(t.kidsShelf.showShelf)).dy;
      expect(previousBottom, lessThanOrEqualTo(viewportTop));
      expect(selectedHeading, greaterThanOrEqualTo(viewportTop));
      expect(selectedHeading - viewportTop, lessThan(20));
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
      await tester.pumpAndSettle();
      expect(tester.getTopLeft(find.text(t.kidsShelf.movieShelf)).dy - viewportTop, lessThan(20));
    });
  }

  for (final size in [const Size(320, 700), const Size(480, 850)]) {
    testWidgets('phone shelf at $size opens permitted content details', (tester) async {
      tester.view.physicalSize = size;
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      TvDetectionService.debugSetAppleTVOverride(size.width > 700);
      final safe = testMediaItem(
        id: 'safe',
        title: 'Adventure',
        serverId: 'srv',
        summary: 'A kind adventure.',
        artPath: '/art',
      ).copyWith(contentRating: 'G');
      final adult = safe.copyWith(id: 'adult', title: 'Restricted', contentRating: 'R');
      String? played, opened;
      await tester.pumpWidget(
        MaterialApp(
          theme: monoTheme(MonoPalette.lurokaKids),
          home: KidsMovieShelf(
            rows: [
              MediaHub(id: 'h', title: 'Movies', type: 'movie', items: [adult, safe]),
            ],
            onDeck: const [],
            name: 'Emma',
            toolbar: const SizedBox(),
            showToolbar: false,
            resolveClient: (_) => null,
            onPlay: (item) => played = item.id,
            onDetails: (item) => opened = item.id,
            onResume: (_) {},
            onSidebar: () {},
            onToolbar: () {},
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('kids-illustrated-header')), findsOneWidget);
      expect(find.byKey(const ValueKey('kids-cinematic-feature')), findsNothing);
      expect(find.text('Restricted'), findsNothing);
      await tester.tap(find.text('Adventure'));
      expect(opened, 'safe');
      expect(played, isNull);
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('TV welcome keeps both shortcuts inside its bounds at large text sizes', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final item = testMediaItem(
      id: 'safe',
      title: 'A very long title for a wonderful television adventure',
      serverId: 'srv',
      summary: 'A long and exciting adventure for the whole family.',
      artPath: '/art',
    ).copyWith(contentRating: 'G');
    await tester.pumpWidget(
      MaterialApp(
        theme: monoTheme(MonoPalette.lurokaKids),
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.6)),
          child: child!,
        ),
        home: KidsMovieShelf(
          rows: [
            MediaHub(id: 'h', title: 'Movies', type: 'movie', items: [item]),
          ],
          onDeck: const [],
          name: 'Emma',
          toolbar: const SizedBox(),
          showToolbar: false,
          resolveClient: (_) => null,
          onPlay: (_) {},
          onDetails: (_) {},
          onResume: (_) {},
          onSidebar: () {},
          onToolbar: () {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    final hero = tester.getRect(find.byKey(const ValueKey('kids-illustrated-header')));
    for (final finder in [
      find.byKey(const ValueKey('kids-shelf-filter-0')),
      find.byKey(const ValueKey('kids-shelf-filter-1')),
    ]) {
      final rect = tester.getRect(finder);
      expect(hero.contains(rect.topLeft), isTrue);
      expect(hero.contains(rect.bottomRight), isTrue);
    }
    expect(tester.takeException(), isNull);
  });

  testWidgets('holding remote OK removes a Keep watching item without resuming playback', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    final movie = testMediaItem(id: 'm', title: 'Friendly', serverId: 'srv').copyWith(contentRating: 'G');
    var resumed = false;
    final key = GlobalKey<KidsMovieShelfState>();
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.lurokaKids),
          home: KidsMovieShelf(
            key: key,
            rows: [],
            onDeck: [movie],
            name: 'Emma',
            toolbar: const SizedBox(),
            showToolbar: false,
            resolveClient: (_) => null,
            onPlay: (_) {},
            onDetails: (_) {},
            onResume: (_) => resumed = true,
            onSidebar: () {},
            onToolbar: () {},
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    key.currentState!.requestContentFocus();
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    await tester.sendKeyDownEvent(LogicalKeyboardKey.select);
    await tester.pump(const Duration(milliseconds: 550));
    await tester.sendKeyUpEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    expect(find.text(t.mediaMenu.removeFromContinueWatching), findsOneWidget);
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    expect(resumed, isFalse);
    expect(find.text(t.kidsHome.keepWatching), findsNothing);
    expect(find.text(t.kids.emptyHint), findsOneWidget);
  });

  testWidgets('treehouse remains visible with reduced motion; quiet scenery is a separate choice', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: monoTheme(MonoPalette.lurokaKids),
        builder: (context, child) =>
            MediaQuery(data: MediaQuery.of(context).copyWith(disableAnimations: true), child: child!),
        home: KidsMovieShelf(
          rows: const [],
          onDeck: const [],
          name: 'Emma',
          toolbar: const SizedBox(),
          showToolbar: false,
          resolveClient: (_) => null,
          onPlay: (_) {},
          onDetails: (_) {},
          onResume: (_) {},
          onSidebar: () {},
          onToolbar: () {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    Finder image() => find.byWidgetPredicate(
      (widget) =>
          widget is Image &&
          widget.image is AssetImage &&
          (widget.image as AssetImage).assetName.startsWith('assets/branding/kids-world-'),
    );
    expect(image(), findsOneWidget);
    await kids.setChild('child', parentId: 'adult', maxAge: 7, quietScenery: true);
    await tester.pumpAndSettle();
    expect(image(), findsNothing);
  });
  for (final size in [const Size(320, 700), const Size(960, 540), const Size(1920, 1080)]) {
    for (final scale in [1.0, 1.6]) {
      testWidgets('kids shelf at $size / $scale filters content and keeps actions reachable', (tester) async {
        tester.view.physicalSize = size;
        tester.view.devicePixelRatio = 1;
        addTearDown(tester.view.reset);
        TvDetectionService.debugSetAppleTVOverride(size.width > 700);
        final movie = testMediaItem(
          id: 'movie',
          title: 'Friendly movie',
          serverId: 'server',
        ).copyWith(contentRating: 'G');
        final show = movie.copyWith(id: 'show', title: 'Friendly show', kind: MediaKind.show);
        final adult = show.copyWith(id: 'adult', title: 'Mature title', contentRating: 'TV-MA');
        final key = GlobalKey<KidsMovieShelfState>();
        String? selected;
        MediaKind? destination;
        final boundary = GlobalKey();
        await tester.pumpWidget(
          InputModeTracker(
            child: MaterialApp(
              theme: monoTheme(MonoPalette.lurokaKids),
              builder: (context, child) => MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(scale)),
                child: child!,
              ),
              home: RepaintBoundary(
                key: boundary,
                child: KidsMovieShelf(
                  key: key,
                  rows: [
                    MediaHub(id: 'mixed', title: 'Library', type: 'mixed', items: [movie, show, adult]),
                  ],
                  onDeck: [],
                  name: 'Emma',
                  onBrowse: (kind) => destination = kind,
                  toolbar: const SizedBox(),
                  showToolbar: false,
                  resolveClient: (_) => null,
                  onPlay: (_) {},
                  onDetails: (item) => selected = item.id,
                  onResume: (_) {},
                  onSidebar: () {},
                  onToolbar: () {},
                ),
              ),
            ),
          ),
        );
        await tester.pumpAndSettle();
        if (scale == 1 && Platform.environment['KIDS_HOME_SCREENSHOTS'] == '1') {
          await tester.runAsync(
            () => precacheImage(const AssetImage('assets/branding/kids-treehouse.webp'), boundary.currentContext!),
          );
          await tester.pumpAndSettle();
          await tester.runAsync(() async {
            final image = await (boundary.currentContext!.findRenderObject() as RenderRepaintBoundary).toImage();
            final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
            await File(
              '/tmp/opencode/kids-reference-${size.width.toInt()}.png',
            ).writeAsBytes(bytes!.buffer.asUint8List());
            image.dispose();
          });
        }
        expect(find.byType(KidsAvatar), findsOneWidget);
        expect(find.text(t.kids.welcome(name: 'Emma')), findsOneWidget);
        expect(find.text(t.kids.featured), findsNothing);
        expect(find.text('Mature title'), findsNothing);
        await tester.tap(find.byKey(const ValueKey('kids-shelf-filter-1')));
        await tester.pumpAndSettle();
        expect(destination, MediaKind.show);
        expect(find.text('Friendly movie'), findsOneWidget);
        if (size.width > 700) {
          key.currentState!.requestContentFocus();
          await tester.pump();
          await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
          await tester.pumpAndSettle();
          expect(FocusManager.instance.primaryFocus?.debugLabel, 'kids-shelf:movies:server:movie');
          await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
          await tester.pumpAndSettle();
          await tester.sendKeyEvent(LogicalKeyboardKey.enter);
        } else {
          await tester.scrollUntilVisible(find.text('Friendly show'), 180, scrollable: find.byType(Scrollable).first);
          await tester.pumpAndSettle();
          await tester.tap(find.text('Friendly show'));
        }
        await tester.pump();
        expect(selected, 'show');
        expect(tester.takeException(), isNull);
        await tester.pumpWidget(const SizedBox());
      });
    }
  }
}
