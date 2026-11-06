import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/library_query.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_library.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/media/media_studio.dart';
import 'package:luroka/media/studio_sort.dart';
import 'package:luroka/providers/studios_provider.dart';
import 'package:luroka/screens/studios_screen.dart';
import 'package:luroka/screens/studio_browser_screen.dart';
import 'package:luroka/screens/media_detail_screen.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/utils/media_server_http_client.dart';
import 'package:luroka/widgets/studio_card.dart';
import 'package:luroka/widgets/studio_discovery_view.dart';
import 'package:luroka/widgets/studio_spotlight.dart';
import 'package:luroka/widgets/focusable_media_card.dart';

import '../test_helpers/prefs.dart';

class _Client implements MediaServerClient {
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _Studios extends ChangeNotifier implements StudiosProvider {
  _Studios({this.lookupGate, List<String> names = const ['Dream Factory', 'Family Pictures']}) {
    groups = [
      for (final name in names)
        StudioGroup(
          key: name.toLowerCase(),
          name: name,
          sources: [
            StudioSource(
              library: const MediaLibrary(id: 'movies', title: 'Movies', backend: MediaBackend.plex, serverId: 'home'),
              client: _Client(),
              kind: MediaKind.movie,
              studio: MediaStudio(id: name, name: name),
            ),
            if (lookupGate != null)
              StudioSource(
                library: const MediaLibrary(id: 'other', title: 'Other', backend: MediaBackend.plex, serverId: 'home'),
                client: _Client(),
                kind: MediaKind.movie,
                studio: MediaStudio(id: name, name: name),
              ),
          ],
        ),
    ];
  }
  final Completer<List<MediaItem>>? lookupGate;
  @override
  late List<StudioGroup> groups;
  @override
  bool loading = false;
  @override
  bool failed = false;
  @override
  void ensureLoaded() {}
  @override
  void refresh() {}
  @override
  StudioGroup? group(String key) => groups.where((group) => group.key == key).firstOrNull;
  @override
  bool sourceIsVisible(StudioSource source) => true;
  @override
  Future<List<MediaItem>> findTitleCopies(
    StudioGroup group,
    MediaItem selected,
    AbortController abort, {
    Iterable<MediaItem> known = const [],
    void Function(List<MediaItem>)? onPartial,
  }) async => lookupGate == null ? [selected] : lookupGate!.future;
  @override
  Future<void> loadPreviewPages(
    List<StudioSource> sources,
    StudioSort sort,
    AbortController abort,
    void Function(List<MediaItem>) onPage,
  ) async {}
  @override
  StudioItemsCursor createCursor(List<StudioSource> sources, {StudioSort sort = StudioSort.titleAscending}) =>
      StudioItemsCursor(
        sources,
        isVisible: (_) => true,
        sort: sort,
        fetchPage: (source, _, offset, _) async => LibraryPage(
          items: offset > 0 || source.library.id != 'movies'
              ? []
              : List.generate(
                  8,
                  (index) => MediaItem.plex(
                    id: '$index',
                    serverId: 'home',
                    libraryId: 'movies',
                    kind: MediaKind.movie,
                    title: 'Studio title $index',
                    rating: 8.5,
                    year: 2025,
                    addedAt: 100 + index,
                  ),
                ),
          totalCount: source.library.id == 'movies' ? 8 : 0,
          offset: offset,
        ),
      );
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _RouteObserver extends NavigatorObserver {
  Widget? page;
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (previousRoute == null) return;
    if (route is MaterialPageRoute<bool>) {
      page = route.builder(navigator!.context);
    } else if (route is PageRouteBuilder<bool>) {
      page = route.pageBuilder(navigator!.context, const AlwaysStoppedAnimation(1), const AlwaysStoppedAnimation(1));
    }
    scheduleMicrotask(() {
      if (route.isActive) navigator?.removeRoute(route);
    });
  }
}

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
    await StorageService.getInstance();
    TvDetectionService.debugSetAppleTVOverride(false);
    LocaleSettings.setLocaleSync(AppLocale.en);
  });
  tearDown(() => TvDetectionService.debugSetAppleTVOverride(null));

  for (final tv in [false, true]) {
    testWidgets('${tv ? 'TV' : 'phone'} studio opens the known copy while other libraries are searched', (
      tester,
    ) async {
      TvDetectionService.debugSetAppleTVOverride(tv);
      tester.view.physicalSize = tv ? const Size(960, 540) : const Size(390, 844);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      final gate = Completer<List<MediaItem>>();
      final studios = _Studios(lookupGate: gate);
      final observer = _RouteObserver();
      addTearDown(studios.dispose);
      await tester.pumpWidget(
        ChangeNotifierProvider<StudiosProvider>.value(
          value: studios,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.lurokaCoral).copyWith(platform: TargetPlatform.android),
            navigatorObservers: [observer],
            home: const StudioBrowserScreen(studioKey: 'dream factory'),
          ),
        ),
      );
      await tester.pumpAndSettle();
      if (tv) {
        await tester.tap(find.textContaining(t.studios.browseAll));
        await tester.pumpAndSettle();
      }
      final card = tester.widget<FocusableMediaCard>(find.byType(FocusableMediaCard).first);
      card.onTap!();
      await tester.pump();
      expect(observer.page, isA<MediaDetailScreen>());
      expect((observer.page as MediaDetailScreen).metadata.id, (card.item as MediaItem).id);
      gate.complete([]);
      await tester.pumpWidget(const SizedBox.shrink());
    });
  }

  testWidgets('phone studios open Browse All and switch to Overview', (tester) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final studios = _Studios();
    addTearDown(studios.dispose);
    await tester.pumpWidget(
      ChangeNotifierProvider<StudiosProvider>.value(
        value: studios,
        child: MaterialApp(theme: monoTheme(MonoPalette.lurokaCoral), home: const StudiosScreen()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(StudioCard), findsNWidgets(2));
    await tester.enterText(find.byType(TextField), 'Dream');
    await tester.pumpAndSettle();
    expect(find.byType(StudioCard), findsOneWidget);
    await tester.tap(find.byType(StudioCard));
    await tester.pumpAndSettle();
    expect(find.byType(StudioDiscoveryView), findsNothing);
    expect(find.byKey(const ValueKey('mobile_studio_catalog_controls')), findsOneWidget);
    expect(find.byKey(const ValueKey('mobile_studio_sort')), findsOneWidget);
    expect(find.byKey(const ValueKey('mobile_studio_view')), findsOneWidget);
    expect(find.byKey(const ValueKey('studio_grid')), findsOneWidget);
    await tester.tap(find.text(t.libraryPolish.overview));
    await tester.pumpAndSettle();
    expect(find.byType(StudioDiscoveryView), findsOneWidget);
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('studio_grid')), findsOneWidget);
    expect(find.text(t.studios.movies).hitTestable(), findsOneWidget);
    expect(find.text(t.studios.shows).hitTestable(), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('mobile_studio_view')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('studio_list')), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('mobile_studio_view')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('mobile_studio_sort')));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.studios.sortNewest).last);
    await tester.pumpAndSettle();
    expect(find.textContaining(t.studios.sortNewest), findsWidgets);
    expect(find.byKey(const ValueKey('studio_grid')), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(find.byType(StudiosScreen), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  for (final size in [const Size(768, 1024), const Size(1024, 768)]) {
    testWidgets('tablet studio Browse All uses the full width without duplicate branding at $size', (tester) async {
      tester.view.physicalSize = size;
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      final studios = _Studios(names: ['Netflix']);
      addTearDown(studios.dispose);
      await tester.pumpWidget(
        ChangeNotifierProvider<StudiosProvider>.value(
          value: studios,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.lurokaCoral).copyWith(platform: TargetPlatform.iOS),
            home: const StudioBrowserScreen(studioKey: 'netflix'),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('studio_grid')), findsOneWidget);
      expect(find.byType(StudioEditorialSpotlight), findsNothing);
      expect(find.text('Netflix').evaluate().length, lessThanOrEqualTo(1));
      expect(tester.getSize(find.byKey(const ValueKey('studio_grid'))).width, greaterThan(size.width * .8));
      expect(tester.takeException(), isNull);
    });
  }
}
