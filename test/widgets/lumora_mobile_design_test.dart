import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_rating.dart';
import 'package:luroka/navigation/navigation_tabs.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/widgets/luroka_mobile_navigation.dart';
import 'package:luroka/widgets/luroka_mobile_title_header.dart';
import 'package:luroka/widgets/luroka_catalog_header.dart';
import 'package:luroka/widgets/options_chips_bar.dart';
import '../test_helpers/prefs.dart';

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
  });
  Future<void> mount(
    WidgetTester tester,
    Widget child, {
    Size size = const Size(360, 780),
    double scale = 1,
    bool light = false,
  }) async {
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(
      MaterialApp(
        theme: monoTheme(light ? MonoPalette.lurokaPearl : MonoPalette.lurokaCoral),
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(scale)),
          child: child!,
        ),
        home: Scaffold(body: child),
      ),
    );
    await tester.pumpAndSettle();
  }

  for (final width in [320.0, 390.0]) {
    testWidgets('Luroka floating dock selects a destination and retains library long press at $width', (tester) async {
      final selected = ValueNotifier(NavigationTabId.discover);
      addTearDown(selected.dispose);
      var libraryPicker = false;
      final tabs = allNavigationTabs
          .where(
            (tab) => const {
              NavigationTabId.discover,
              NavigationTabId.favorites,
              NavigationTabId.libraries,
              NavigationTabId.explore,
              NavigationTabId.search,
            }.contains(tab.id),
          )
          .toList();
      await mount(
        tester,
        Align(
          alignment: Alignment.bottomCenter,
          child: ValueListenableBuilder(
            valueListenable: selected,
            builder: (_, value, _) => LurokaMobileNavigation(
              tabs: tabs,
              selected: value,
              onSelected: (tab) => selected.value = tab,
              onLibrariesLongPress: () => libraryPicker = true,
            ),
          ),
        ),
        size: Size(width, 740),
        scale: 1.4,
      );
      await tester.tap(find.byKey(const ValueKey('luroka_nav_search')));
      await tester.pumpAndSettle();
      expect(selected.value, NavigationTabId.search);
      await tester.longPress(find.byKey(const ValueKey('luroka_nav_libraries')));
      expect(libraryPicker, isTrue);
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('double tapping Home invokes the scroll-to-top action', (tester) async {
    var doubleTaps = 0;
    final tabs = allNavigationTabs.where((tab) => tab.id == NavigationTabId.discover).toList();
    await mount(
      tester,
      LurokaMobileNavigation(
        tabs: tabs,
        selected: NavigationTabId.discover,
        onSelected: (_) {},
        onHomeDoubleTap: () => doubleTaps++,
      ),
    );
    final home = find.byKey(const ValueKey('luroka_nav_discover'));
    await tester.tap(home);
    await tester.pump(const Duration(milliseconds: 80));
    await tester.tap(home);
    await tester.pumpAndSettle();
    expect(doubleTaps, 1);
  });

  testWidgets('every mobile destination dispatches its own double tap', (tester) async {
    final destinations = <NavigationTabId>[
      NavigationTabId.discover,
      NavigationTabId.favorites,
      NavigationTabId.libraries,
      NavigationTabId.explore,
      NavigationTabId.search,
    ];
    final tabs = allNavigationTabs.where((tab) => destinations.contains(tab.id)).toList();
    final received = <NavigationTabId>[];
    await mount(
      tester,
      LurokaMobileNavigation(
        tabs: tabs,
        selected: NavigationTabId.discover,
        onSelected: (_) {},
        onDestinationDoubleTap: received.add,
      ),
    );
    for (final tab in destinations) {
      final button = find.byKey(ValueKey('luroka_nav_${tab.name}'));
      await tester.tap(button);
      await tester.pump(const Duration(milliseconds: 80));
      await tester.tap(button);
      await tester.pumpAndSettle();
    }
    expect(received, destinations);
  });

  for (final kind in [MediaKind.movie, MediaKind.show]) {
    for (final light in [false, true]) {
      testWidgets('editorial mobile ${kind.name} header fits large text in ${light ? 'light' : 'dark'}', (
        tester,
      ) async {
        const title = 'A wonderful journey beyond the horizon';
        final item = MediaItem.plex(
          id: 'title',
          kind: kind,
          title: title,
          year: 2026,
          contentRating: 'PG',
          genres: const ['Adventure', 'Drama'],
        );
        var played = false;
        await mount(
          tester,
          SingleChildScrollView(
            child: LurokaMobileTitleHeader(
              item: item,
              client: null,
              ratings: const [MediaRatingSource(source: 'imdb', value: 8.4)],
              actions: TextButton(onPressed: () => played = true, child: const Text('Play title')),
            ),
          ),
          light: light,
          scale: 1.5,
        );
        expect(find.text(title), findsOneWidget);
        await tester.ensureVisible(find.text('Play title'));
        await tester.tap(find.text('Play title'));
        expect(played, isTrue);
        expect(tester.takeException(), isNull);
      });
    }
  }

  testWidgets('mobile collection toolbar retains direct filter and sort actions', (tester) async {
    final filters = FocusNode(), sort = FocusNode();
    addTearDown(filters.dispose);
    addTearDown(sort.dispose);
    var filtered = false, sorted = false;
    await mount(
      tester,
      SizedBox(
        height: 152,
        child: LurokaCatalogHeader(
          count: 140,
          loading: false,
          options: [
            OptionsChipDescriptor(
              icon: Icons.tune_rounded,
              label: 'Filters',
              focusNode: filters,
              onPressed: () => filtered = true,
            ),
            OptionsChipDescriptor(
              icon: Icons.sort_rounded,
              label: 'Title A–Z',
              focusNode: sort,
              onPressed: () => sorted = true,
            ),
          ],
        ),
      ),
      scale: 1.5,
    );
    await tester.tap(find.text('Filters'));
    await tester.tap(find.text('Title A–Z'));
    expect(filtered && sorted, isTrue);
    expect(tester.takeException(), isNull);
  });

  testWidgets('mobile active filter chips remove one field or clear everything', (tester) async {
    var removed = false, cleared = false;
    await mount(
      tester,
      SizedBox(
        height: 160,
        child: LurokaCatalogHeader(
          count: 20,
          loading: false,
          options: const [],
          activeFilters: [
            (
              label: 'Genre: Drama',
              remove: () {
                removed = true;
              },
            ),
          ],
          onClearFilters: () => cleared = true,
        ),
      ),
    );
    tester.widget<InputChip>(find.byType(InputChip)).onDeleted!();
    await tester.tap(find.text('Clear'));
    expect(removed && cleared, isTrue);
    expect(tester.takeException(), isNull);
  });
}
