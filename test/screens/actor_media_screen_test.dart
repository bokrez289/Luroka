import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/services.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_person.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/media/library_query.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/utils/media_server_http_client.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/media_card.dart';
import 'package:luroka/widgets/focusable_media_card.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/screens/actor_media_screen.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:provider/provider.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../test_helpers/multi_server_fixtures.dart';
import '../test_helpers/prefs.dart';

class _PersonClient implements MediaServerClient {
  _PersonClient({this.duplicateMovie = false, this.titles, this.personDetails});
  final bool duplicateMovie;
  final List<MediaItem>? titles;
  final MediaPersonDetails? personDetails;
  final pages = <(int, int)>[];
  @override
  void close() {}
  @override
  ServerId get serverId => ServerId('server_1');
  @override
  Future<MediaPersonDetails> fetchPersonDetails(String id, {AbortController? abort}) async =>
      personDetails ??
      const MediaPersonDetails(biography: 'A biography that should be visible when the actor page opens.');
  @override
  Future<LibraryPage<MediaItem>> fetchPersonMediaPage(
    String id, {
    int? start,
    int? size,
    AbortController? abort,
  }) async {
    pages.add((start ?? 0, size ?? 200));
    if (titles != null) {
      return LibraryPage(
        items: titles!.skip(start ?? 0).take(size ?? 200).toList(),
        totalCount: titles!.length,
        offset: start ?? 0,
      );
    }
    return LibraryPage(
      items: [
        MediaItem(
          id: 'movie',
          backend: MediaBackend.jellyfin,
          kind: MediaKind.movie,
          title: 'A film',
          year: 2020,
          libraryId: 'hd',
          libraryTitle: 'Movies HD',
          serverId: 'server_1',
        ),
        MediaItem(
          id: 'show',
          backend: MediaBackend.jellyfin,
          kind: MediaKind.show,
          title: 'A show',
          serverId: 'server_1',
        ),
        if (duplicateMovie)
          MediaItem(
            id: 'movie-copy',
            backend: MediaBackend.jellyfin,
            kind: MediaKind.movie,
            title: 'A film',
            year: 2020,
            serverId: 'server_1',
            libraryId: 'uhd',
            libraryTitle: 'Movies 4K',
          ),
      ],
      totalCount: duplicateMovie ? 3 : 2,
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  setUpAll(() => initializeDateFormatting());
  setUp(() async {
    LocaleSettings.setLocaleSync(AppLocale.en);
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
  });

  Future<void> mount(
    WidgetTester tester,
    _PersonClient client, {
    bool tv = true,
    Size size = const Size(960, 540),
    double textScale = 1,
  }) async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
    TvDetectionService.debugSetAppleTVOverride(tv);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final multi = testMultiServer(clients: [client]);
    await tester.pumpWidget(
      TranslationProvider(
        child: ChangeNotifierProvider<MultiServerProvider>.value(
          value: multi.provider,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            builder: (context, child) => MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(textScale)),
              child: child!,
            ),
            home: const ActorMediaScreen(
              actorName: 'Jane Doe',
              personId: 'person',
              serverId: 'server_1',
              backend: MediaBackend.jellyfin,
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets('TV filmography follows poster details live and explains focused copy counts', (tester) async {
    await mount(tester, _PersonClient(duplicateMovie: true));
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('person_focused_title')), findsOneWidget);
    expect(
      tester.widget<Text>(find.byKey(const ValueKey('person_focused_metadata'))).data,
      contains('2 library copies'),
    );
    expect(
      tester.widgetList<FocusableMediaCard>(find.byType(FocusableMediaCard)).every((card) => card.showPosterDetails),
      isTrue,
    );
    await SettingsService.instance.write(SettingsService.posterDetails, false);
    await tester.pumpAndSettle();
    expect(
      tester
          .widgetList<FocusableMediaCard>(find.byType(FocusableMediaCard))
          .every((card) => !card.showPosterDetails && card.fullBleedImage),
      isTrue,
    );
    final focused = tester.getRect(find.byType(FocusableMediaCard).first);
    expect(focused.left, greaterThanOrEqualTo(28));
    expect(tester.takeException(), isNull);
  });

  testWidgets('sort applies after bounded filmography paging and retains the kind filter', (tester) async {
    final titles = List.generate(
      201,
      (i) => MediaItem(
        id: '$i',
        backend: MediaBackend.jellyfin,
        kind: MediaKind.movie,
        title: 'Film ${i.toString().padLeft(3, '0')}',
        year: i == 200 ? 2026 : 2000,
        serverId: 'server_1',
      ),
    );
    final client = _PersonClient(titles: titles);
    await mount(tester, client);
    expect(client.pages.length, 2);
    expect(client.pages.every((page) => page.$2 <= 200), isTrue);
    expect((tester.widget<MediaCard>(find.byType(MediaCard).first).item as MediaItem).id, '200');
    await tester.tap(find.text(t.personSpotlight.newestFirst));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.personSpotlight.oldestFirst));
    await tester.pumpAndSettle();
    expect((tester.widget<MediaCard>(find.byType(MediaCard).first).item as MediaItem).id, '0');
    await tester.tap(find.text(t.studios.movies));
    await tester.pumpAndSettle();
    expect(find.text(t.personSpotlight.oldestFirst), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('small phone with large text keeps biography readable and opens full text explicitly', (tester) async {
    await mount(
      tester,
      _PersonClient(
        personDetails: MediaPersonDetails(
          biography: List.filled(20, 'A detailed biography with a readable full-text view.').join(' '),
          birthDate: DateTime.utc(1979, 5, 9),
          birthPlace: 'New York City, New York, USA',
        ),
      ),
      tv: false,
      size: const Size(320, 700),
      textScale: 2,
    );
    expect(find.text(t.personSpotlight.readBiography), findsOneWidget);
    await tester.ensureVisible(find.text(t.personSpotlight.readBiography));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.personSpotlight.readBiography));
    await tester.pumpAndSettle();
    expect(find.byType(Dialog), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.tap(find.byIcon(Icons.close_rounded).last);
    await tester.pumpAndSettle();
  });

  testWidgets('TV actor opens at the biography and filters filmography by media kind', (tester) async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final multi = testMultiServer(clients: [_PersonClient(duplicateMovie: true)]);
    await tester.pumpWidget(
      TranslationProvider(
        child: ChangeNotifierProvider<MultiServerProvider>.value(
          value: multi.provider,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: const ActorMediaScreen(
              actorName: 'Jane Doe',
              personId: 'person',
              serverId: 'server_1',
              backend: MediaBackend.jellyfin,
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'person_about');
    final scroll = tester.state<ScrollableState>(find.byType(Scrollable).first).position;
    expect(scroll.pixels, 0);
    expect(find.textContaining('A biography'), findsOneWidget);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'person_filter_0');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    expect(tester.widgetList<MediaCard>(find.byType(MediaCard)).map((card) => (card.item as MediaItem).kind), [
      MediaKind.movie,
    ]);
    await tester.tap(find.byType(MediaCard).first);
    await tester.pumpAndSettle();
    expect(find.text('Movies HD'), findsOneWidget);
    expect(find.text('Movies 4K'), findsOneWidget);
    await tester.tap(find.byIcon(Icons.close_rounded).last);
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.studios.shows));
    await tester.pumpAndSettle();
    expect(tester.widgetList<MediaCard>(find.byType(MediaCard)).map((card) => (card.item as MediaItem).kind), [
      MediaKind.show,
    ]);
    expect(tester.takeException(), isNull);
  });

  testWidgets('opening a cast member whose server is unavailable shows the load error', (tester) async {
    final multi = testMultiServer();

    await tester.pumpWidget(
      TranslationProvider(
        child: ChangeNotifierProvider<MultiServerProvider>.value(
          value: multi.provider,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: const ActorMediaScreen(
              actorName: 'Jane Doe',
              personId: 'person_1',
              serverId: 'server_1',
              backend: MediaBackend.jellyfin,
            ),
          ),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();

    expect(tester.takeException(), isNull);
    expect(find.text(t.errors.unableToLoad(context: 'Jane Doe')), findsOneWidget);
  });
}
