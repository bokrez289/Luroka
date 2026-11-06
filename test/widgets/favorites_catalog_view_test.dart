import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_rating.dart';
import 'package:luroka/media/studio_sort.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/favorites_catalog_view.dart';
import 'package:luroka/widgets/focusable_media_card.dart';
import 'package:luroka/widgets/media_rating_badge.dart';
import 'package:luroka/widgets/poster_loading_placeholder.dart';

import '../test_helpers/prefs.dart';

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
    await StorageService.getInstance();
    LocaleSettings.setLocaleSync(AppLocale.en);
    TvDetectionService.debugSetAppleTVOverride(true);
  });
  tearDown(() => TvDetectionService.debugSetAppleTVOverride(null));

  final items = List.generate(
    30,
    (index) => MediaItem.plex(
      id: '$index',
      kind: index.isEven ? MediaKind.movie : MediaKind.show,
      title: 'Title ${index.toString().padLeft(2, '0')}',
      summary: 'A synopsis that helps choose what to watch.',
      year: 2000 + index,
      durationMs: 7200000,
      ratings: const [MediaRatingSource(source: 'imdb', value: 8.3)],
    ),
  );

  Future<GlobalKey<FavoritesCatalogViewState>> mount(
    WidgetTester tester, {
    Size size = const Size(960, 540),
    double textScale = 1,
    ValueNotifier<List<MediaItem>>? data,
    VoidCallback? onNavigation,
  }) async {
    TvDetectionService.debugSetAppleTVOverride(size.width >= 700);
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final key = GlobalKey<FavoritesCatalogViewState>();
    final source = data ?? ValueNotifier(items);
    if (data == null) addTearDown(source.dispose);
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(textScale)),
            child: child!,
          ),
          home: Scaffold(
            body: ValueListenableBuilder<List<MediaItem>>(
              valueListenable: source,
              builder: (context, value, _) => FavoritesCatalogView(
                key: key,
                items: value,
                loading: false,
                errorMessage: null,
                resolveClient: (_) => null,
                onOpen: (_) async {},
                onRefresh: () {},
                onNavigation: onNavigation ?? () {},
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    return key;
  }

  List<MediaItem> cards(WidgetTester tester) => tester
      .widgetList<FocusableMediaCard>(find.byType(FocusableMediaCard))
      .map((card) => card.item as MediaItem)
      .toList();

  testWidgets('TV Up from first poster reaches filters then top navigation', (tester) async {
    var navigation = 0;
    final key = await mount(tester, onNavigation: () => navigation++);
    key.currentState!.focusContent();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'favorites_filter_0');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(navigation, 1);
  });

  testWidgets('TV posters grow on first-row entry and stay large until focus returns to controls', (tester) async {
    final key = await mount(tester);
    key.currentState!.focusContent();
    await tester.pumpAndSettle();
    final hero = find.byKey(const ValueKey('favorites_hero'));
    final expanded = tester.getSize(hero).height;
    final smallPosterWidth = tester.getSize(find.byType(FocusableMediaCard).first).width;
    final badges = tester.widget<InlineRatingBadges>(find.byKey(const ValueKey('studio_preview_ratings')));
    expect(badges.ratings.single.source, 'imdb');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'favorites_item_0');
    final compact = tester.getSize(hero).height;
    expect(compact, lessThan(expanded));
    expect(tester.getSize(find.byType(FocusableMediaCard).first).width, greaterThan(smallPosterWidth));
    expect(tester.widget<CustomScrollView>(find.byType(CustomScrollView)).controller!.offset, 0);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'favorites_item_2');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'favorites_item_7');
    expect(tester.getSize(hero).height, lessThan(expanded));
    expect(tester.widget<Text>(find.byKey(const ValueKey('studio_spotlight_title'))).data, 'Title 07');
    final focused = tester
        .widgetList<FocusableMediaCard>(find.byType(FocusableMediaCard))
        .firstWhere((card) => card.focusNode!.hasFocus);
    final poster = tester.getRect(find.byWidget(focused));
    final viewport = tester.getRect(find.byType(CustomScrollView));
    expect(poster.top, greaterThanOrEqualTo(viewport.top));
    expect(poster.bottom, lessThanOrEqualTo(viewport.bottom));
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'favorites_item_2');
    expect(tester.getSize(hero).height, compact);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'favorites_filter_0');
    expect(tester.getSize(hero).height, expanded);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'favorites_item_0');
    expect(tester.getSize(hero).height, compact);
    expect(tester.takeException(), isNull);
  });

  testWidgets('right at the end of a TV poster row moves focus to the next row', (tester) async {
    final key = await mount(tester);
    key.currentState!.focusContent();
    await tester.pumpAndSettle();

    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    for (var index = 0; index < 4; index++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    }
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'favorites_item_4');

    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'favorites_item_5');
    expect(tester.widget<Text>(find.byKey(const ValueKey('studio_spotlight_title'))).data, 'Title 05');
    expect(tester.takeException(), isNull);
  });

  testWidgets('filters, remembered sorting and grid/list controls work without refetching favorites', (tester) async {
    await mount(tester);
    await tester.tap(find.text(t.studios.shows));
    await tester.pumpAndSettle();
    expect(cards(tester).every((item) => item.kind == MediaKind.show), isTrue);
    await tester.tap(find.text(t.studios.sortTitleAscending));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.studios.sortNewest));
    await tester.pumpAndSettle();
    expect(cards(tester).first.id, '29');
    expect((await StorageService.getInstance()).getFavoritesSort(kind: MediaKind.show), StudioSort.newest);
    await tester.tap(find.byTooltip(t.settings.listView));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('favorites_list')), findsOneWidget);
    expect(tester.widget<FocusableMediaCard>(find.byType(FocusableMediaCard).first).viewModeOverride, ViewMode.list);
    await tester.tap(find.text(t.studios.movies));
    await tester.pumpAndSettle();
    expect(cards(tester).every((item) => item.kind == MediaKind.movie), isTrue);
    await tester.tap(find.text(t.studios.shows));
    await tester.pumpAndSettle();
    expect(find.text(t.studios.sortNewest), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('refresh retains focused title and removing it focuses a reachable neighbor', (tester) async {
    final data = ValueNotifier<List<MediaItem>>(items);
    addTearDown(data.dispose);
    final key = await mount(tester, data: data);
    key.currentState!.focusContent();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    final before = FocusManager.instance.primaryFocus;
    data.value = items.map((item) => item.copyWith(summary: 'Refreshed synopsis')).toList();
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus, same(before));
    expect(tester.widget<Text>(find.byKey(const ValueKey('studio_spotlight_title'))).data, 'Title 02');
    data.value = data.value.where((item) => item.id != '2').toList();
    await tester.pumpAndSettle();
    expect(
      tester.widgetList<FocusableMediaCard>(find.byType(FocusableMediaCard)).any((card) => card.focusNode!.hasFocus),
      isTrue,
    );
    expect(tester.widget<Text>(find.byKey(const ValueKey('studio_spotlight_title'))).data, 'Title 03');
    expect(tester.takeException(), isNull);
  });

  for (final (size, scale) in [(const Size(320, 640), 1.5), (const Size(640, 320), 1.0), (const Size(960, 480), 1.5)]) {
    testWidgets('Favorites fits $size at text scale $scale', (tester) async {
      await mount(tester, size: size, textScale: scale);
      expect(find.byType(FocusableMediaCard), findsWidgets);
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('phone Favorites keeps every filter visible above its separate sort row', (tester) async {
    await mount(tester, size: const Size(360, 780));
    for (var index = 0; index < 3; index++) {
      expect(find.byKey(ValueKey('favorites_filter_$index')).hitTestable(), findsOneWidget);
    }
    final filter = tester.getRect(find.byKey(const ValueKey('favorites_filter_0')));
    final sort = tester.getRect(find.text(t.studios.sortTitleAscending));
    expect(sort.top, greaterThanOrEqualTo(filter.bottom));
    await tester.tap(find.text(t.studios.shows));
    await tester.pumpAndSettle();
    expect(cards(tester).every((item) => item.kind == MediaKind.show), isTrue);
    expect(find.byKey(const ValueKey('favorites_filter_0')).hitTestable(), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('phone first load shows poster placeholders without reporting zero favorites', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(false);
    tester.view.physicalSize = const Size(360, 780);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(
      MaterialApp(
        theme: monoTheme(MonoPalette.dark),
        home: Scaffold(
          body: FavoritesCatalogView(
            items: const [],
            loading: true,
            errorMessage: null,
            resolveClient: (_) => null,
            onOpen: (_) async {},
            onRefresh: () {},
            onNavigation: () {},
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(PosterLoadingSliver), findsOneWidget);
    expect(find.text(t.discover.titleCount(n: 0)), findsNothing);
    expect(tester.takeException(), isNull);
  });
}
