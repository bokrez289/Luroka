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
  testWidgets('kids Home groups matching copies and lets a child choose a library', (tester) async {
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
    expect(find.text('Luroka'), findsOneWidget);
    expect(find.text('Friendly movie'), findsOneWidget);
    expect(find.byKey(const ValueKey('kids-copy-count')), findsOneWidget);
    expect(
      find.descendant(of: find.byKey(const ValueKey('kids-copy-count')), matching: find.text('2')),
      findsOneWidget,
    );
    await tester.ensureVisible(find.text('Friendly movie'));
    await tester.tap(find.text('Friendly movie'));
    await tester.pumpAndSettle();
    expect(find.text('Movies'), findsWidgets);
    expect(find.text('Family'), findsWidgets);
    await tester.tap(find.text('Family').last);
    await tester.pumpAndSettle();
    expect(selected, 'b');
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
        expect(find.byType(KidsAvatar), findsNothing);
        expect(find.text('Emma'), findsNothing);
        expect(find.text(t.kids.featured), findsNothing);
        expect(find.text('Mature title'), findsNothing);
        await tester.tap(find.byKey(const ValueKey('kids-shelf-filter-2')));
        await tester.pumpAndSettle();
        expect(find.text('Friendly movie'), findsNothing);
        expect(find.text('Friendly show'), findsOneWidget);
        if (size.width > 700) {
          key.currentState!.requestContentFocus();
          await tester.pump();
          await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
          await tester.pumpAndSettle();
          expect(FocusManager.instance.primaryFocus?.debugLabel, 'kids-shelf:shows:server:show');
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
