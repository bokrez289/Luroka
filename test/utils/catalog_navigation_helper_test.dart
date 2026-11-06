import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/models/catalog/catalog_item.dart';
import 'package:luroka/screens/catalog_item_detail_screen.dart';
import 'package:luroka/screens/media_detail_screen.dart';
import 'package:luroka/services/catalog/catalog_library_matcher.dart';
import 'package:luroka/services/data_aggregation_service.dart';
import 'package:luroka/utils/catalog_navigation_helper.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:provider/provider.dart';

import '../test_helpers/library_lookup.dart';

class _Matcher extends Fake implements CatalogLibraryMatcher {
  _Matcher(this.result, [this.other]);
  final LibraryLookupResult result;
  final LibraryLookupResult? other;
  @override
  Future<LibraryLookupResult> match(CatalogItem item) async => result;
  @override
  Future<LibraryLookupResult> matchOtherSources(CatalogItem item) async => other ?? result;
}

class _Routes extends NavigatorObserver {
  Widget? opened;
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (previousRoute == null) return;
    if (route is MaterialPageRoute) {
      opened = route.builder(navigator!.context);
    } else if (route is PageRouteBuilder<bool>) {
      opened = route.pageBuilder(navigator!.context, const AlwaysStoppedAnimation(1), const AlwaysStoppedAnimation(1));
    } else {
      return;
    }
    scheduleMicrotask(() => navigator?.removeRoute(route));
  }
}

void main() {
  const item = CatalogItem(
    source: CatalogSourceId.tmdb,
    kind: MediaKind.movie,
    title: 'Movie',
    ids: CatalogItemIds(tmdb: 1),
  );
  const copy = MediaItem.plex(
    id: 'one',
    kind: MediaKind.movie,
    title: 'Movie',
    serverId: 'server',
    libraryId: 'movies',
  );
  const other = MediaItem.plex(id: 'two', kind: MediaKind.movie, title: 'Movie', serverId: 'server', libraryId: '4k');

  test('only a fully checked single copy opens the library detail directly', () {
    expect(singleResolvedCatalogCopy(item, libraryLookupResult([copy], succeeded: {'server'})), same(copy));
    expect(singleResolvedCatalogCopy(item, libraryLookupResult([])), isNull);
    expect(singleResolvedCatalogCopy(item, libraryLookupResult([copy, other], succeeded: {'server'})), isNull);
    expect(singleResolvedCatalogCopy(item, libraryLookupResult([copy], failed: {'other'})), isNull);
    expect(singleResolvedCatalogCopy(item, libraryLookupResult([copy], unqueried: {'other'})), isNull);
    expect(singleResolvedCatalogCopy(item, libraryLookupResult([copy], cancelled: {'other'})), isNull);
  });

  testWidgets('catalog activation opens a verified copy and keeps multi-copy selection in catalog', (tester) async {
    Future<Widget?> open(LibraryLookupResult result) async {
      final routes = _Routes();
      await tester.pumpWidget(
        Provider<CatalogLibraryMatcher>.value(
          value: _Matcher(result),
          child: MaterialApp(
            navigatorObservers: [routes],
            home: Builder(
              builder: (context) => Scaffold(
                body: TextButton(
                  onPressed: () => unawaited(navigateToCatalogItem(context, item)),
                  child: const Text('Open'),
                ),
              ),
            ),
          ),
        ),
      );
      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();
      return routes.opened;
    }

    final direct = await open(libraryLookupResult([copy], succeeded: {'server'}));
    expect(
      direct,
      isA<MediaDetailScreen>()
          .having((screen) => screen.metadata.id, 'copy', 'one')
          .having((screen) => screen.showLibrarySource, 'show library source', isTrue),
    );
    final chooser = await open(libraryLookupResult([copy, other], succeeded: {'server'}));
    expect(chooser, isA<CatalogItemDetailScreen>());
  });

  testWidgets('TV opens standard details for multiple sources and retains all library choices', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    final routes = _Routes();
    await tester.pumpWidget(
      Provider<CatalogLibraryMatcher>.value(
        value: _Matcher(
          libraryLookupResult([copy], succeeded: {'server'}),
          libraryLookupResult([copy, other], succeeded: {'server'}),
        ),
        child: MaterialApp(
          navigatorObservers: [routes],
          home: Builder(
            builder: (context) => Scaffold(
              body: TextButton(
                onPressed: () => unawaited(navigateToCatalogItem(context, item)),
                child: const Text('Open'),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    expect(
      routes.opened,
      isA<MediaDetailScreen>()
          .having((page) => page.catalogCopies.length, 'copies', 2)
          .having((page) => page.catalogPreviewOnly, 'library preview', isTrue),
    );
  });

  testWidgets('TV opens a single selected library copy as playable details', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    final routes = _Routes();
    await tester.pumpWidget(
      Provider<CatalogLibraryMatcher>.value(
        value: _Matcher(libraryLookupResult([copy], succeeded: {'server'})),
        child: MaterialApp(
          navigatorObservers: [routes],
          home: Builder(builder: (context) => Scaffold(body: TextButton(
            onPressed: () => unawaited(navigateToCatalogItem(context, item)),
            child: const Text('Open'),
          ))),
        ),
      ),
    );
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    expect(routes.opened, isA<MediaDetailScreen>()
        .having((page) => page.metadata.id, 'copy', 'one')
        .having((page) => page.catalogPreviewOnly, 'playable details', isFalse));
  });

  testWidgets('TV keeps a non-selected-only result in preview mode', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    final routes = _Routes();
    await tester.pumpWidget(
      Provider<CatalogLibraryMatcher>.value(
        value: _Matcher(
          libraryLookupResult([], succeeded: {'server'}),
          libraryLookupResult([other], succeeded: {'server'}),
        ),
        child: MaterialApp(
          navigatorObservers: [routes],
          home: Builder(
            builder: (context) => Scaffold(
              body: TextButton(
                onPressed: () => unawaited(navigateToCatalogItem(context, item)),
                child: const Text('Open'),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    expect(routes.opened, isA<MediaDetailScreen>().having((page) => page.catalogPreviewOnly, 'preview only', true));
  });
}
