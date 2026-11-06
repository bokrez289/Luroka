import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/models/catalog/catalog_item.dart';
import 'package:luroka/providers/explore_provider.dart';
import 'package:luroka/providers/hidden_libraries_provider.dart';
import 'package:luroka/screens/award_category_screen.dart';
import 'package:luroka/screens/catalog_item_detail_screen.dart';
import 'package:luroka/services/catalog/award_catalog.dart';
import 'package:luroka/services/catalog/catalog_source.dart';
import 'package:luroka/services/catalog/wikidata_awards_service.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/focusable_media_card.dart';

import '../test_helpers/prefs.dart';

class _Awards extends WikidataAwardsService {
  final calls = <AwardSelection>[];
  @override
  Future<List<AwardTitleReference>> load(AwardCategory category, AwardSelection mode, {bool refresh = false}) async {
    calls.add(mode);
    return [
      AwardTitleReference(
        imdb: mode == AwardSelection.winners ? 'tt1' : 'tt2',
        title: mode == AwardSelection.winners ? 'An international winner' : 'An international nominee',
        kind: category.kind,
        year: 2024,
      ),
    ];
  }
}

class _Explore extends ChangeNotifier implements ExploreProvider {
  _Explore({this.catalogOnly = false});
  final bool catalogOnly;
  @override
  CatalogSource? get activeSource => null;
  final _matched = <String>{};
  @override
  Future<List<MediaItem>> librarySearchResults(List<MediaItem> items, {bool Function()? current}) async {
    if (current?.call() == false) return const [];
    _matched.addAll(items.map((item) => item.title!));
    notifyListeners();
    return items;
  }

  @override
  List<MediaItem> projectCollection(List<CatalogItem> items) => [
    for (final item in items)
      if (_matched.contains(item.title))
        catalogOnly
            ? item.toMediaItem()
            : MediaItem.plex(id: item.ids.imdb!, kind: item.kind, title: item.title, year: item.year),
  ];
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _RouteObserver extends NavigatorObserver {
  Route<dynamic>? pushed;
  Widget? page;
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (previousRoute == null) return;
    pushed = route;
    if (route is MaterialPageRoute) page = route.builder(navigator!.context);
    scheduleMicrotask(() {
      if (route.isActive) navigator?.removeRoute(route);
    });
  }
}

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
    LocaleSettings.setLocaleSync(AppLocale.en);
  });
  tearDown(() => TvDetectionService.debugSetAppleTVOverride(null));

  for (final tv in [false, true]) {
    testWidgets('${tv ? 'TV' : 'phone'} opens an award catalog title even with source libraries selected', (
      tester,
    ) async {
      TvDetectionService.debugSetAppleTVOverride(tv);
      final awards = _Awards();
      final explore = _Explore(catalogOnly: true);
      late HiddenLibrariesProvider hidden;
      final observer = _RouteObserver();
      addTearDown(awards.dispose);
      addTearDown(explore.dispose);
      await tester.runAsync(() async {
        hidden = HiddenLibrariesProvider();
        await hidden.setSelectedSourceLibraries({'server:movies'});
      });
      addTearDown(hidden.dispose);
      await tester.pumpWidget(
        MultiProvider(
          providers: [
            Provider<WikidataAwardsService>.value(value: awards),
            ChangeNotifierProvider<ExploreProvider>.value(value: explore),
            ChangeNotifierProvider<HiddenLibrariesProvider>.value(value: hidden),
          ],
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            navigatorObservers: [observer],
            home: AwardCategoryScreen(family: awardFamilies.first, category: awardFamilies.first.categories[1]),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final card = find.byType(FocusableMediaCard).first;
      await tester.ensureVisible(card);
      await tester.pumpAndSettle();
      await tester.tap(card);
      await tester.pump();
      expect(observer.pushed, isNotNull);
      expect(observer.page, isA<CatalogItemDetailScreen>());
      await tester.pumpWidget(const SizedBox.shrink());
    });
  }

  testWidgets('Oscar International category loads winners, supports nominees and release-decade filtering', (
    tester,
  ) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final awards = _Awards();
    final explore = _Explore();
    addTearDown(awards.dispose);
    addTearDown(explore.dispose);
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          Provider<WikidataAwardsService>.value(value: awards),
          ChangeNotifierProvider<ExploreProvider>.value(value: explore),
        ],
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: AwardFamilyScreen(family: awardFamilies.first),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('award_category_oscars_international')));
    await tester.pumpAndSettle();
    expect(awards.calls, [AwardSelection.winners]);
    expect(find.widgetWithText(FocusableMediaCard, 'An international winner'), findsOneWidget);
    await tester.tap(find.text(t.awardsCatalog.nominees));
    await tester.pumpAndSettle();
    expect(awards.calls, [AwardSelection.winners, AwardSelection.nominees]);
    expect(find.widgetWithText(FocusableMediaCard, 'An international nominee'), findsOneWidget);
    expect(find.widgetWithText(FocusableMediaCard, 'An international winner'), findsNothing);
    await tester.tap(find.text(t.awardsCatalog.allYears));
    await tester.pumpAndSettle();
    expect(find.text('2020s'), findsOneWidget);
    await tester.tap(find.text('2020s'));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(FocusableMediaCard, 'An international nominee'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
