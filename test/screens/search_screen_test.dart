import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:luroka/exceptions/media_server_exceptions.dart';
import 'package:luroka/focus/dpad_navigator.dart';
import 'package:luroka/focus/focusable_text_field.dart';
import 'package:luroka/focus/key_event_utils.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/media/catalog_item_ref.dart';
import 'package:luroka/media/library_query.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_library.dart';
import 'package:luroka/media/media_person.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/media/server_capabilities.dart';
import 'package:luroka/mixins/refreshable.dart';
import 'package:luroka/navigation/main_screen_scope.dart';
import 'package:luroka/providers/hidden_libraries_provider.dart';
import 'package:luroka/providers/catalog_sources_provider.dart';
import 'package:luroka/providers/libraries_provider.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/screens/actor_media_screen.dart';
import 'package:luroka/screens/search_screen.dart';
import 'package:luroka/services/multi_server_manager.dart';
import 'package:luroka/services/catalog/seerr_catalog_source.dart';
import 'package:luroka/models/catalog/catalog_item.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/kids_profile_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/utils/media_server_http_client.dart';
import 'package:luroka/widgets/backend_badge.dart';
import 'package:luroka/widgets/focusable_media_card.dart';
import 'package:luroka/widgets/focusable_tab_chip.dart';
import 'package:luroka/widgets/loading_indicator_box.dart';
import 'package:luroka/widgets/person_search_row.dart';
import 'package:luroka/widgets/mobile_keyboard_scope.dart';
import 'package:luroka/widgets/library_selection_panel.dart';
import 'package:luroka/media/media_rating.dart';
import 'package:provider/provider.dart';

import '../test_helpers/prefs.dart';
import '../test_helpers/media_items.dart';
import '../test_helpers/multi_server_fixtures.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    LocaleSettings.setLocaleSync(AppLocale.en);
  });

  setUp(() async {
    _resetGlobalTestState();
    resetSharedPreferencesForTest();
    final settings = await SettingsService.getInstance();
    // Most search tests identify cards and their source labels by caption.
    // The application now defaults to full-bleed posters without captions.
    await settings.write(SettingsService.posterDetails, true);
    // HiddenLibrariesProvider resolves this lazily; the real SharedPreferences
    // round trip never completes inside a testWidgets fake-async zone, so warm
    // the singleton here.
    await StorageService.getInstance();
  });

  tearDown(_resetGlobalTestState);

  testWidgets('Library and Seerr scope switches reuse the query and ignore stale results', (tester) async {
    final seerr = _SearchSeerrSource();
    final sources = _SearchCatalogSources(seerr);
    addTearDown(sources.dispose);
    final (_, key) = await _pumpTvSearchScreen(tester, catalogSources: sources);
    await tester.pumpAndSettle();
    final input = key.currentState! as SearchInputFocusable;
    input.submitSearchQuery('movie');
    await tester.pumpAndSettle();
    expect(find.widgetWithText(FocusableMediaCard, 'Movie 1'), findsOneWidget);

    tester.widget<FocusableMediaCard>(find.byType(FocusableMediaCard)).focusNode!.requestFocus();
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchScopeLibrary');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchScopeSeerr');
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    expect(seerr.queries, ['movie']);
    final card = tester.widget<FocusableMediaCard>(find.byType(FocusableMediaCard));
    final catalogItem = card.item as MediaItem;
    expect(catalogItem.catalogItem?.source, CatalogSourceId.seerr);
    expect(catalogItem.title, 'Seerr Movie');

    seerr.gate = Completer<List<CatalogItem>>();
    input.submitSearchQuery('another');
    await tester.pump();
    tester.widget<FocusableTabChip>(find.widgetWithText(FocusableTabChip, t.navigation.libraries)).onSelect();
    await tester.pumpAndSettle();
    seerr.gate!.complete([_seerrResult]);
    await tester.pumpAndSettle();
    expect(find.text('Seerr Movie'), findsNothing);
  });

  testWidgets('phone search returns to the library if Seerr disconnects', (tester) async {
    final sources = _SearchCatalogSources(_SearchSeerrSource());
    addTearDown(sources.dispose);
    final (_, key) = await _pumpTvSearchScreen(tester, tv: false, size: const Size(390, 844), catalogSources: sources);
    await tester.pumpAndSettle();
    final input = key.currentState! as SearchInputFocusable;
    input.submitSearchQuery('movie');
    await tester.pumpAndSettle();
    tester.widget<FocusableTabChip>(find.widgetWithText(FocusableTabChip, 'Seerr')).onSelect();
    await tester.pumpAndSettle();
    expect(
      (tester.widget<FocusableMediaCard>(find.byType(FocusableMediaCard)).item as MediaItem).isCatalogItem,
      isTrue,
    );

    sources.disconnect();
    await tester.pumpAndSettle();
    expect(find.widgetWithText(FocusableTabChip, 'Seerr'), findsNothing);
    expect(
      (tester.widget<FocusableMediaCard>(find.byType(FocusableMediaCard)).item as MediaItem).isCatalogItem,
      isFalse,
    );
  });

  testWidgets('kids phone suggestions only show allowed titles and stay compact while typing', (tester) async {
    final kids = KidsProfileService.instance;
    kids.resetForTesting();
    addTearDown(kids.resetForTesting);
    await tester.runAsync(() async {
      await kids.initialize();
      await kids.setParentPin('1234');
      await kids.setChild('child', parentId: 'adult', maxAge: 7);
    });
    kids.selectProfile('child');
    final keyboard = ValueNotifier(true);
    addTearDown(keyboard.dispose);
    final allowed = testMediaItem(
      id: 'friendly',
      title: 'A friendly movie',
      serverId: 'server_1',
    ).copyWith(contentRating: 'G', summary: 'A friendly story.');
    final blocked = allowed.copyWith(id: 'grownup', title: 'A grownup movie', contentRating: 'R');
    await _pumpTvSearchScreen(
      tester,
      tv: false,
      size: const Size(390, 844),
      keyboard: keyboard,
      libraries: [_library('1', 'Kids movies')],
      suggestionItems: [allowed, blocked],
    );
    await tester.pumpAndSettle();
    expect(find.text('A grownup movie'), findsNothing);
    final cards = tester.widgetList<FocusableMediaCard>(find.byType(FocusableMediaCard)).toList();
    expect(cards, isNotEmpty);
    expect(cards.every((card) => (card.item as MediaItem).id == 'friendly' && card.compactList), isTrue);
    expect(find.text('A friendly story.'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('phone typing compacts retained results even after the parent consumes the keyboard inset', (
    tester,
  ) async {
    final keyboard = ValueNotifier(false);
    addTearDown(keyboard.dispose);
    final items = [
      for (var i = 0; i < 6; i++)
        testMediaItem(
          id: 'title-$i',
          title: 'Title $i',
          serverId: 'server_1',
          year: 2024,
        ).copyWith(summary: 'A long synopsis that is reserved for the detail page while typing.'),
    ];
    final (_, key) = await _pumpTvSearchScreen(
      tester,
      tv: false,
      size: const Size(390, 844),
      items: items,
      keyboard: keyboard,
    );
    (key.currentState! as SearchInputFocusable).submitSearchQuery('Title');
    await tester.pumpAndSettle();
    final fullHeight = tester.getSize(find.byType(FocusableMediaCard).first).height;
    expect(find.text(items.first.summary!), findsWidgets);
    tester.view.viewInsets = const FakeViewPadding(bottom: 300);
    addTearDown(tester.view.resetViewInsets);
    keyboard.value = true;
    await tester.pumpAndSettle();
    expect(tester.widget<FocusableMediaCard>(find.byType(FocusableMediaCard).first).compactList, isTrue);
    expect(tester.getSize(find.byType(FocusableMediaCard).first).height, lessThan(fullHeight));
    expect(find.text(items.first.summary!), findsNothing);
    expect(find.byType(FocusableMediaCard).hitTestable().evaluate().length, greaterThanOrEqualTo(3));
    tester.view.resetViewInsets();
    keyboard.value = false;
    await tester.pumpAndSettle();
    expect(find.text('Title 0'), findsWidgets);
    expect(tester.widget<FocusableMediaCard>(find.byType(FocusableMediaCard).first).compactList, isFalse);
    expect(tester.takeException(), isNull);
  });

  testWidgets('mobile Search scrolls back to its header', (tester) async {
    final items = [for (var i = 0; i < 20; i++) testMediaItem(id: 'title-$i', title: 'Title $i', serverId: 'server_1')];
    final (_, key) = await _pumpTvSearchScreen(tester, tv: false, size: const Size(390, 740), items: items);
    (key.currentState! as SearchInputFocusable).submitSearchQuery('Title');
    await tester.pumpAndSettle();
    final scroll = tester.widget<CustomScrollView>(find.byType(CustomScrollView).first).controller!;
    await tester.drag(find.byType(CustomScrollView).first, const Offset(0, -600));
    await tester.pumpAndSettle();
    expect(scroll.offset, greaterThan(0));
    (key.currentState! as MobileScrollToTop).scrollToTop();
    await tester.pumpAndSettle();
    expect(scroll.offset, 0);
  });

  testWidgets('Search groups movie copies and Select offers each original library with progress', (tester) async {
    final movie = testMediaItem(
      id: 'hd',
      title: 'Oppenheimer',
      year: 2023,
      serverId: 'server_1',
      libraryId: '1',
      libraryTitle: 'Movies',
      durationMs: 7200000,
      viewOffsetMs: 100000,
    );
    final copies = [
      movie,
      movie.copyWith(id: 'uhd', libraryId: '2', libraryTitle: 'Movies 4K', viewOffsetMs: 200000),
      movie.copyWith(id: 'remux', libraryId: '3', libraryTitle: 'Remux 4K', viewOffsetMs: 300000),
    ];
    final (_, key) = await _pumpTvSearchScreen(
      tester,
      items: copies,
      libraries: [_library('1', 'Movies'), _library('2', 'Movies 4K'), _library('3', 'Remux 4K')],
    );
    (key.currentState! as SearchInputFocusable).submitSearchQuery('oppenheimer');
    await tester.pumpAndSettle();
    expect(find.byType(FocusableMediaCard), findsOneWidget);
    await tester.tap(find.byType(FocusableMediaCard));
    await tester.pumpAndSettle();
    final chooser = tester.widget<LibrarySelectionPanel>(find.byType(LibrarySelectionPanel));
    expect(chooser.choices.map((choice) => choice.title), ['Movies', 'Movies 4K', 'Remux 4K']);
    expect(chooser.choices.every((choice) => choice.detail?.contains(t.common.resume) == true), isTrue);
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    expect(find.byType(LibrarySelectionPanel), findsNothing);
    expect(find.byType(FocusableMediaCard), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  for (final tv in [true, false]) {
    for (final kidsProfile in [false, true]) {
      testWidgets(
        '${tv ? 'TV' : 'phone'} ${kidsProfile ? 'Kids' : 'adult'} search groups show copies and offers their libraries',
        (tester) async {
          if (kidsProfile) {
            final kids = KidsProfileService.instance;
            kids.resetForTesting();
            addTearDown(kids.resetForTesting);
            await tester.runAsync(() async {
              await kids.initialize();
              await kids.setParentPin('1234');
              await kids.setChild('child', parentId: 'adult', maxAge: 7);
            });
            kids.selectProfile('child');
          }
          final show = testMediaItem(
            id: 'show-hd',
            kind: MediaKind.show,
            title: 'Family Show',
            year: 2020,
            serverId: 'server_1',
            libraryId: '1',
            libraryTitle: 'Shows',
          ).copyWith(contentRating: 'G');
          final copies = [
            show,
            show.copyWith(id: 'show-4k', libraryId: '2', libraryTitle: 'Shows 4K'),
            show.copyWith(id: 'show-adult', libraryId: '3', libraryTitle: 'Restricted', contentRating: 'R'),
          ];
          final (_, key) = await _pumpTvSearchScreen(
            tester,
            tv: tv,
            size: tv ? const Size(1280, 720) : const Size(390, 844),
            items: copies,
            libraries: [_library('1', 'Shows'), _library('2', 'Shows 4K'), _library('3', 'Restricted')],
          );
          (key.currentState! as SearchInputFocusable).submitSearchQuery('Family');
          await tester.pumpAndSettle();
          final cards = find.byType(FocusableMediaCard);
          expect(cards, findsOneWidget);
          final count = kidsProfile ? 2 : 3;
          expect((tester.widget<FocusableMediaCard>(cards).item as MediaItem).raw?['lurokaCopyCount'], count);
          expect(find.descendant(of: cards, matching: find.text('$count')), findsOneWidget);
          await tester.tap(cards);
          await tester.pumpAndSettle();
          final choices = tester.widget<LibrarySelectionPanel>(find.byType(LibrarySelectionPanel)).choices;
          expect(
            choices.map((choice) => choice.title),
            kidsProfile ? ['Shows', 'Shows 4K'] : ['Shows', 'Shows 4K', 'Restricted'],
          );
          expect(tester.takeException(), isNull);
          await tester.pumpWidget(const SizedBox.shrink());
        },
      );
    }
  }

  testWidgets('one poster preference updates Search captions live using actual IMDb attribution only', (tester) async {
    final movie = testMediaItem(
      id: 'rated',
      title: 'Oppenheimer',
      year: 2023,
      serverId: 'server_1',
    ).copyWith(ratings: const [MediaRatingSource(source: 'imdb', value: 8.3)]);
    final (_, key) = await _pumpTvSearchScreen(tester, items: [movie]);
    (key.currentState! as SearchInputFocusable).submitSearchQuery('oppenheimer');
    await tester.pumpAndSettle();
    expect(find.text('2023 · IMDb 8.3'), findsOneWidget);
    await SettingsService.instance.write(SettingsService.posterDetails, false);
    await tester.pumpAndSettle();
    expect(find.text('2023 · IMDb 8.3'), findsNothing);
    expect(tester.widget<FocusableMediaCard>(find.byType(FocusableMediaCard)).fullBleedImage, isTrue);
    await SettingsService.instance.write(SettingsService.posterDetails, true);
    await tester.pumpAndSettle();
    expect(find.text('2023 · IMDb 8.3'), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('titles appear before a stalled people search completes and remain browsable', (tester) async {
    final (client, _) = await _pumpTvSearchScreen(tester);
    await tester.pumpAndSettle();
    client.peopleGate = Completer<void>();
    _searchController(tester).text = 'movie';
    await tester.pump(const Duration(milliseconds: 249));
    expect(client.queries, isEmpty);
    await tester.pump(const Duration(milliseconds: 1));
    await tester.pump();
    expect(client.queries, ['movie']);
    expect(find.byType(FocusableMediaCard), findsOneWidget);
    expect(find.byWidget(LoadingIndicatorBox.sliver), findsNothing);
    client.peopleGate!.complete();
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });

  testWidgets('Search opens with library suggestions and typing offers matching titles before debounce', (
    tester,
  ) async {
    final hidden = HiddenLibrariesProvider();
    addTearDown(hidden.dispose);
    await hidden.ensureInitialized();
    await hidden.hideLibrary('server_1:2');
    final (client, _) = await _pumpTvSearchScreen(
      tester,
      hiddenLibraries: hidden,
      libraries: [_library('1', 'Visible'), _library('2', 'Hidden')],
      suggestionItems: [testMediaItem(id: 'suggestion', kind: MediaKind.movie, title: 'Arrival', serverId: 'server_1')],
    );
    await tester.pumpAndSettle();
    expect(find.text(t.searchDiscovery.suggestions), findsOneWidget);
    expect(find.widgetWithText(FocusableMediaCard, 'Arrival'), findsOneWidget);
    expect(client.suggestionLibraries, ['1']);
    _searchController(tester).text = 'arr';
    await tester.pump(const Duration(milliseconds: 100));
    expect(client.queries, isEmpty);
    expect(find.widgetWithText(FocusableMediaCard, 'Arrival'), findsOneWidget);
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });

  testWidgets('late people results keep submitted title focus and retain a browseable media grid', (tester) async {
    final (client, key) = await _pumpTvSearchScreen(tester, people: [_christophWaltz()]);
    await tester.pumpAndSettle();
    client.peopleGate = Completer<void>();
    (key.currentState! as SearchInputFocusable).submitSearchQuery('movie');
    await tester.pump();
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchFirstResult');
    expect(find.byType(FocusableMediaCard), findsOneWidget);
    client.peopleGate!.complete();
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchFirstResult');
    expect(find.byType(FocusableMediaCard), findsOneWidget);
    expect(find.widgetWithText(FocusableTabChip, t.search.people), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('stale callbacks are no-ops after SearchScreen is disposed', (tester) async {
    final key = GlobalKey<State<SearchScreen>>();
    final item = testMediaItem(
      id: 'movie_1',
      backend: MediaBackend.plex,
      kind: MediaKind.movie,
      title: 'Movie 1',
      serverId: 'server_1',
      serverName: 'Server',
    );

    final hiddenLibraries = HiddenLibrariesProvider();
    addTearDown(hiddenLibraries.dispose);
    await tester.pumpWidget(
      TranslationProvider(
        child: ChangeNotifierProvider<HiddenLibrariesProvider>.value(
          value: hiddenLibraries,
          child: MaterialApp(home: SearchScreen(key: key)),
        ),
      ),
    );

    final state = key.currentState!;
    final searchInput = state as SearchInputFocusable;
    _searchController(tester).text = 'movie';
    await tester.pump();

    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump();

    expect(tester.takeException(), isNull);
    expect(() => (state as Refreshable).refresh(), returnsNormally);
    expect(() => (state as dynamic).updateItem(item), returnsNormally);
    expect(() => (state as FullRefreshable).fullRefresh(), returnsNormally);
    expect(() => searchInput.submitSearchQuery('new movie'), returnsNormally);
    expect(() => (state as FocusableTab).focusActiveTabIfReady(), returnsNormally);
    expect(tester.takeException(), isNull);
  });

  testWidgets('TV native Search action moves focus to the first result', (tester) async {
    final (client, _) = await _pumpTvSearchScreen(tester);
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('tv_virtual_keyboard_panel')), findsNothing);
    expect(tester.widget<TextField>(find.byType(TextField)).readOnly, isFalse);

    _searchController(tester).text = 'movie';
    // Let the normal debounce populate results while native input remains active.
    await tester.pump(const Duration(milliseconds: 500));
    await tester.pump();
    expect(client.queries, ['movie']);
    expect(find.widgetWithText(FocusableMediaCard, 'Movie 1'), findsOneWidget);

    await tester.showKeyboard(find.byType(TextField));
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();

    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchFirstResult');
    expect(find.widgetWithText(FocusableMediaCard, 'Movie 1'), findsOneWidget);
    expect(client.queries, ['movie']);
  });

  testWidgets('TV native Search action before debounce searches immediately', (tester) async {
    final (client, _) = await _pumpTvSearchScreen(tester);
    await tester.pumpAndSettle();

    _searchController(tester).text = 'movie';
    await tester.pump(const Duration(milliseconds: 100));
    expect(client.queries, isEmpty);

    await tester.showKeyboard(find.byType(TextField));
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();

    expect(client.queries, ['movie']);
    expect(find.byKey(const Key('tv_virtual_keyboard_panel')), findsNothing);
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchFirstResult');
  });

  testWidgets('companion-remote submitSearchQuery closes native input and focuses results', (tester) async {
    final (client, key) = await _pumpTvSearchScreen(tester);
    await tester.pumpAndSettle();
    expect(tester.widget<TextField>(find.byType(TextField)).readOnly, isFalse);

    (key.currentState! as SearchInputFocusable).submitSearchQuery('movie');
    await tester.pumpAndSettle();

    expect(client.queries, ['movie']);
    expect(find.widgetWithText(FocusableMediaCard, 'Movie 1'), findsOneWidget);
    expect(find.byKey(const Key('tv_virtual_keyboard_panel')), findsNothing);
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchFirstResult');

    // Selection updates must not re-arm the debounce into a second fetch.
    await tester.pump(const Duration(milliseconds: 600));
    await tester.pumpAndSettle();
    expect(client.queries, ['movie']);

    // Re-submitting already-displayed results leaves result focus stable.
    final searchInput = key.currentState! as SearchInputFocusable;
    searchInput.submitSearchQuery('movie');
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchFirstResult');
    expect(client.queries, ['movie']);

    // Returning to the input is the D-pad-up path from the first result
    // (search_screen.dart onNavigateUp), so it must not re-raise the system
    // keyboard; Select does. The field's first focus already opened it once.
    searchInput.focusSearchInput();
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchInput');
    expect(tester.widget<TextField>(find.byType(TextField)).readOnly, isTrue);

    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    expect(tester.widget<TextField>(find.byType(TextField)).readOnly, isFalse);
    expect(find.byKey(const Key('tv_virtual_keyboard_panel')), findsNothing);

    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('companion-remote query with no results keeps native input closed', (tester) async {
    final (client, key) = await _pumpTvSearchScreen(tester, items: []);
    await tester.pumpAndSettle();
    expect(tester.widget<TextField>(find.byType(TextField)).readOnly, isFalse);

    (key.currentState! as SearchInputFocusable).submitSearchQuery('zzz');
    await tester.pumpAndSettle();

    expect(client.queries, ['zzz']);
    expect(find.byKey(const Key('tv_virtual_keyboard_panel')), findsNothing);
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchInput');
    expect(tester.widget<TextField>(find.byType(TextField)).readOnly, isTrue);

    await tester.pump(const Duration(milliseconds: 200));
    await tester.pumpAndSettle();
    expect(tester.widget<TextField>(find.byType(TextField)).readOnly, isTrue);

    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('failed companion-remote query keeps native input closed', (tester) async {
    final (client, key) = await _pumpTvSearchScreen(tester, registerClient: false);
    await tester.pumpAndSettle();
    expect(tester.widget<TextField>(find.byType(TextField)).readOnly, isFalse);

    (key.currentState! as SearchInputFocusable).submitSearchQuery('movie');
    await tester.pumpAndSettle();

    expect(client.queries, isEmpty);
    expect(find.byIcon(Symbols.error_rounded), findsOneWidget);
    expect(find.byKey(const Key('tv_virtual_keyboard_panel')), findsNothing);
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchInput');
    expect(tester.widget<TextField>(find.byType(TextField)).readOnly, isTrue);

    await tester.pump(const Duration(milliseconds: 200));
    await tester.pumpAndSettle();
    expect(tester.widget<TextField>(find.byType(TextField)).readOnly, isTrue);

    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('partial server failure shows available results and a warning', (tester) async {
    final failedClient = _FakeMediaServerClient(
      serverIdValue: 'server_2',
      serverNameValue: 'Offline Server',
      items: const [],
      searchError: MediaServerHttpException(type: MediaServerHttpErrorType.connectionError, message: 'refused'),
    );
    final (client, key) = await _pumpTvSearchScreen(tester, additionalClients: [failedClient]);
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('movie');
    await tester.pumpAndSettle();

    expect(client.queries, ['movie']);
    expect(failedClient.queries, ['movie']);
    expect(find.widgetWithText(FocusableMediaCard, 'Movie 1'), findsOneWidget);
    expect(find.text(t.messages.searchPartialResults), findsOneWidget);
  });

  testWidgets('results from a hidden library never reach the list', (tester) async {
    final hiddenLibraries = HiddenLibrariesProvider();
    addTearDown(hiddenLibraries.dispose);
    await hiddenLibraries.ensureInitialized();
    await hiddenLibraries.hideLibrary('server_1:2');

    final (client, key) = await _pumpTvSearchScreen(
      tester,
      hiddenLibraries: hiddenLibraries,
      items: _twoLibraryMovies(),
    );
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('movie');
    await tester.pumpAndSettle();

    // One request per user action: hydrating the hidden keys must not race the
    // first query into running twice.
    expect(client.queries, ['movie']);
    expect(find.widgetWithText(FocusableMediaCard, 'Movie 1'), findsOneWidget);
    expect(find.text('Movie 2'), findsNothing);
  });

  testWidgets('hiding a library while results are shown re-runs the query', (tester) async {
    final hiddenLibraries = HiddenLibrariesProvider();
    addTearDown(hiddenLibraries.dispose);

    final (client, key) = await _pumpTvSearchScreen(
      tester,
      hiddenLibraries: hiddenLibraries,
      items: _twoLibraryMovies(),
    );
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('movie');
    await tester.pumpAndSettle();
    expect(client.queries, ['movie']);
    expect(find.text('Movie 2'), findsOneWidget);

    await hiddenLibraries.hideLibrary('server_1:2');
    await tester.pumpAndSettle();

    expect(client.queries, ['movie', 'movie']);
    expect(find.widgetWithText(FocusableMediaCard, 'Movie 1'), findsOneWidget);
    expect(find.text('Movie 2'), findsNothing);
  });

  testWidgets('all server failures render the failed state instead of empty results', (tester) async {
    final (client, key) = await _pumpTvSearchScreen(
      tester,
      searchError: MediaServerHttpException(type: MediaServerHttpErrorType.connectionError, message: 'refused'),
    );
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('movie');
    await tester.pumpAndSettle();

    expect(client.queries, ['movie']);
    expect(find.text(t.explore.searchFailed), findsOneWidget);
    expect(find.text(t.errors.searchUnavailable), findsOneWidget);
    expect(find.text(t.messages.noResultsFound), findsNothing);
  });

  testWidgets('editing cancels the stale server request before the next debounce', (tester) async {
    final (client, _) = await _pumpTvSearchScreen(tester);
    await tester.pumpAndSettle();
    final gate = Completer<void>();
    client.searchGate = gate;

    _searchController(tester).text = 'first';
    await tester.pump(const Duration(milliseconds: 500));
    await tester.pump();
    expect(client.queries, ['first']);
    final staleAbort = client.lastSearchAbort;
    expect(staleAbort, isNotNull);
    expect(staleAbort!.isAborted, isFalse);

    _searchController(tester).text = 'second';
    await tester.pump();

    expect(staleAbort.isAborted, isTrue);
    expect(client.queries, ['first']);

    gate.complete();
    await tester.pump(const Duration(milliseconds: 500));
    await tester.pumpAndSettle();
    expect(client.queries, ['first', 'second']);
    expect(find.text(t.explore.searchFailed), findsNothing);
  });

  testWidgets('all-server cancellation preserves prior results without an error', (tester) async {
    final (client, key) = await _pumpTvSearchScreen(tester);
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('movie');
    await tester.pumpAndSettle();
    expect(find.widgetWithText(FocusableMediaCard, 'Movie 1'), findsOneWidget);

    client.searchError = MediaServerHttpException(
      type: MediaServerHttpErrorType.cancelled,
      message: 'connection replaced',
    );
    (key.currentState! as SearchInputFocusable).submitSearchQuery('second');
    await tester.pumpAndSettle();

    expect(client.queries, ['movie', 'second']);
    expect(find.widgetWithText(FocusableMediaCard, 'Movie 1'), findsOneWidget);
    expect(find.text(t.explore.searchFailed), findsNothing);
    expect(find.text(t.errors.searchUnavailable), findsNothing);
  });

  testWidgets('card refresh stays server-qualified without restarting search', (tester) async {
    final serverOneItem = testMediaItem(
      id: 'shared-id',
      backend: MediaBackend.plex,
      kind: MediaKind.movie,
      title: 'Shared',
      serverId: 'server_1',
      serverName: 'Server One',
    );
    final serverTwoItem = testMediaItem(
      id: 'shared-id',
      backend: MediaBackend.plex,
      kind: MediaKind.movie,
      title: 'Shared Alternate',
      serverId: 'server_2',
      serverName: 'Server Two',
    );
    final serverTwoClient = _FakeMediaServerClient(
      serverIdValue: 'server_2',
      serverNameValue: 'Server Two',
      items: [serverTwoItem],
    );
    final (serverOneClient, key) = await _pumpTvSearchScreen(
      tester,
      items: [serverOneItem],
      additionalClients: [serverTwoClient],
    );
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('shared');
    await tester.pumpAndSettle();

    expect(serverOneClient.queries, ['shared']);
    expect(serverTwoClient.queries, ['shared']);
    expect(find.byType(FocusableMediaCard), findsNWidgets(2));

    // The exact-title match is the first, focused card. Keep the fetch open
    // to observe the screen while the item-only refresh is in flight.
    final sourceFinder = find.byKey(Key(serverOneItem.globalKey));
    final untouchedFinder = find.byKey(Key(serverTwoItem.globalKey));
    final sourceCardState = tester.state(sourceFinder);
    final untouchedCardState = tester.state(untouchedFinder);
    final focusedNode = FocusManager.instance.primaryFocus;
    expect(focusedNode?.debugLabel, 'SearchFirstResult');

    final fetchGate = Completer<void>();
    final updated = serverOneItem.copyWith(title: 'Refreshed on Server One');
    serverOneClient
      ..itemResult = updated
      ..fetchGate = fetchGate;

    tester.widget<FocusableMediaCard>(sourceFinder).onRefresh!(serverOneItem);
    await tester.pump();

    // This used to fan the bare id out to every server and drive the whole
    // screen through another search/loading pass.
    expect(serverOneClient.fetchedItemIds, ['shared-id', 'shared-id']); // Preview hydration, then explicit refresh.
    expect(serverTwoClient.fetchedItemIds, isEmpty);
    expect(serverOneClient.queries, ['shared']);
    expect(serverTwoClient.queries, ['shared']);
    expect(find.byWidget(LoadingIndicatorBox.sliver), findsNothing);
    expect(find.byType(FocusableMediaCard), findsNWidgets(2));
    expect(tester.state(sourceFinder), same(sourceCardState));
    expect(tester.state(untouchedFinder), same(untouchedCardState));
    expect(FocusManager.instance.primaryFocus, same(focusedNode));

    fetchGate.complete();
    await tester.pumpAndSettle();

    // The refresh lands as a merged copy (mergeFetchedMediaItem keeps the
    // search row's library/server context, #1970), not the fetched instance.
    final refreshedItem = tester.widget<FocusableMediaCard>(sourceFinder).item as MediaItem;
    expect(refreshedItem.title, 'Refreshed on Server One');
    expect(refreshedItem.serverId, 'server_1');
    expect(refreshedItem.serverName, 'Server One');
    // Grouped search builds a display copy with copy-count metadata. Verify the
    // other server's item stayed unchanged rather than relying on identity.
    final untouchedItem = tester.widget<FocusableMediaCard>(untouchedFinder).item as MediaItem;
    expect(untouchedItem.globalKey, serverTwoItem.globalKey);
    expect(untouchedItem.title, serverTwoItem.title);
    expect(untouchedItem.serverName, serverTwoItem.serverName);
    expect(tester.state(sourceFinder), same(sourceCardState));
    expect(tester.state(untouchedFinder), same(untouchedCardState));
    expect(FocusManager.instance.primaryFocus, same(focusedNode));
    expect(serverOneClient.queries, ['shared']);
    expect(serverTwoClient.queries, ['shared']);

    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('search rows show the library name when the server has several libraries', (tester) async {
    final (client, key) = await _pumpTvSearchScreen(
      tester,
      items: [
        testMediaItem(
          id: 'movie_1',
          backend: MediaBackend.plex,
          kind: MediaKind.movie,
          title: 'Movie 1',
          serverId: 'server_1',
          serverName: 'Server',
          libraryId: '1',
          libraryTitle: 'Movies',
        ),
        testMediaItem(
          id: 'movie_2',
          backend: MediaBackend.plex,
          kind: MediaKind.movie,
          title: 'Movie 2',
          serverId: 'server_1',
          serverName: 'Server',
          libraryId: '2',
          libraryTitle: 'Anime',
        ),
      ],
      libraries: [_library('1', 'Movies'), _library('2', 'Anime')],
    );
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('movie');
    await tester.pumpAndSettle();

    expect(client.queries, ['movie']);
    // The source line always carries the full provenance: backend icon,
    // server name, then library name.
    expect(find.text('Movies'), findsOneWidget);
    expect(find.text('Anime'), findsOneWidget);
    expect(find.byType(BackendBadge), findsNWidgets(2));
  });

  testWidgets('library name back-fills from loaded libraries when the row only carries an id', (tester) async {
    // Plex search rows name their section only by librarySectionKey; the
    // title must resolve against the loaded libraries without a request.
    final (_, key) = await _pumpTvSearchScreen(
      tester,
      items: _twoLibraryMovies(),
      libraries: [_library('1', 'Movies'), _library('2', 'Anime')],
    );
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('movie');
    await tester.pumpAndSettle();

    expect(find.text('Movies'), findsOneWidget);
    expect(find.text('Anime'), findsOneWidget);
  });

  testWidgets('no library label on a single-library server', (tester) async {
    final (_, key) = await _pumpTvSearchScreen(
      tester,
      items: [
        testMediaItem(
          id: 'movie_1',
          backend: MediaBackend.plex,
          kind: MediaKind.movie,
          title: 'Movie 1',
          serverId: 'server_1',
          serverName: 'Server',
          libraryId: '1',
          libraryTitle: 'Movies',
        ),
      ],
      libraries: [_library('1', 'Movies')],
    );
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('movie');
    await tester.pumpAndSettle();

    expect(find.widgetWithText(FocusableMediaCard, 'Movie 1'), findsOneWidget);
    expect(find.text('Server • Movies'), findsNothing);
    expect(find.byType(BackendBadge), findsNothing);
  });

  testWidgets('card refresh keeps the library stamp', (tester) async {
    final stamped = testMediaItem(
      id: 'movie_1',
      backend: MediaBackend.plex,
      kind: MediaKind.movie,
      title: 'Movie 1',
      serverId: 'server_1',
      serverName: 'Server',
      libraryId: '1',
      libraryTitle: 'Movies',
    );
    final (client, key) = await _pumpTvSearchScreen(
      tester,
      items: [stamped],
      libraries: [_library('1', 'Movies'), _library('2', 'Anime')],
    );
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('movie');
    await tester.pumpAndSettle();
    expect(find.text('Movies'), findsOneWidget);

    // A fresh fetchItem carries no library context (a Jellyfin /Items/{id}
    // response has none); the merge must keep the stamp search applied.
    client.itemResult = testMediaItem(
      id: 'movie_1',
      backend: MediaBackend.plex,
      kind: MediaKind.movie,
      title: 'Movie 1 (Refreshed)',
      serverId: 'server_1',
      serverName: 'Server',
    );
    final cardFinder = find.byKey(Key(stamped.globalKey));
    tester.widget<FocusableMediaCard>(cardFinder).onRefresh!(stamped);
    await tester.pumpAndSettle();

    expect(client.fetchedItemIds, ['movie_1', 'movie_1']);
    expect(find.widgetWithText(FocusableMediaCard, 'Movie 1 (Refreshed)'), findsOneWidget);
    expect(find.text('Movies'), findsOneWidget);
    final refreshed = tester.widget<FocusableMediaCard>(cardFinder).item as MediaItem;
    expect(refreshed.libraryId, '1');
    expect(refreshed.libraryTitle, 'Movies');
  });

  testWidgets('kind chips appear only when results span multiple kinds', (tester) async {
    final (client, key) = await _pumpTvSearchScreen(tester);
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('movie');
    await tester.pumpAndSettle();

    // Single-kind results have nothing to filter.
    expect(find.byType(FocusableTabChip), findsNothing);

    client.items
      ..clear()
      ..addAll(_mixedKindItems());
    (key.currentState! as SearchInputFocusable).submitSearchQuery('paw');
    await tester.pumpAndSettle();

    expect(find.widgetWithText(FocusableTabChip, t.libraries.groupings.all), findsOneWidget);
    expect(find.widgetWithText(FocusableTabChip, t.libraries.groupings.movies), findsOneWidget);
    expect(find.widgetWithText(FocusableTabChip, t.libraries.groupings.episodes), findsOneWidget);
    expect(find.widgetWithText(FocusableTabChip, t.libraries.groupings.tracks), findsOneWidget);
  });

  testWidgets('successful searches become reusable recent suggestions and can be cleared', (tester) async {
    final (client, key) = await _pumpTvSearchScreen(tester);
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('movie');
    await tester.pumpAndSettle();
    _searchController(tester).clear();
    await tester.pumpAndSettle();
    expect(find.text(t.search.recentSearches), findsOneWidget);
    expect(find.byKey(const ValueKey('recent_search_movie')), findsOneWidget);
    expect(find.byKey(const ValueKey('clear_search_history')), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('recent_search_movie')));
    await tester.pumpAndSettle();
    expect(client.queries, ['movie']); // Reuses the scoped session query cache.

    _searchController(tester).clear();
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('clear_search_history')));
    await tester.pumpAndSettle();
    expect(find.text(t.search.recentSearches), findsNothing);
  });

  testWidgets('TV up from results returns to the dock without reopening the keyboard', (tester) async {
    final dock = FocusNode(debugLabel: 'tv_search');
    addTearDown(dock.dispose);
    final (_, key) = await _pumpTvSearchScreen(tester, dockFocus: dock);
    await tester.pumpAndSettle();
    (key.currentState! as SearchInputFocusable).submitSearchQuery('movie');
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchFirstResult');

    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchInput');
    expect(tester.widget<TextField>(find.byType(TextField)).readOnly, isTrue);

    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus, same(dock));
  });

  testWidgets('TV remote reaches recent searches and clear history even with suggestions', (tester) async {
    final suggestion = testMediaItem(
      id: 'suggestion',
      backend: MediaBackend.plex,
      kind: MediaKind.movie,
      title: 'Suggested movie',
      serverId: 'server_1',
      libraryId: 'library_1',
    );
    final (client, key) = await _pumpTvSearchScreen(
      tester,
      suggestionItems: [suggestion],
      libraries: [_library('library_1', 'Movies')],
    );
    await tester.pumpAndSettle();
    (key.currentState! as SearchInputFocusable).submitSearchQuery('movie');
    await tester.pumpAndSettle();
    _searchController(tester).clear();
    await tester.pumpAndSettle();
    expect(find.widgetWithText(FocusableMediaCard, 'Suggested movie'), findsOneWidget);

    (key.currentState! as SearchInputFocusable).submitSearchQuery('');
    await tester.pumpAndSettle();
    final input = tester.widget<FocusableTextField>(find.byType(FocusableTextField).first);
    input.tvTextInputController!.focusInputWithoutOpening();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'RecentSearch_movie');

    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchFirstResult');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'RecentSearch_movie');

    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    expect(_searchController(tester).text, 'movie');
    expect(client.queries, ['movie']);
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchFirstResult');

    _searchController(tester).clear();
    await tester.pumpAndSettle();
    input.tvTextInputController!.focusInputWithoutOpening();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchClearHistory');
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    expect(find.text(t.search.recentSearches), findsNothing);
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchInput');
    expect(tester.widget<TextField>(find.byType(TextField)).readOnly, isTrue);
  });

  testWidgets('All results keep global relevance order in the immersive shelf', (tester) async {
    final (_, key) = await _pumpTvSearchScreen(tester, items: _mixedKindItems());
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('paw');
    await tester.pumpAndSettle();

    final cards = tester.widgetList<FocusableMediaCard>(find.byType(FocusableMediaCard)).toList();
    expect(cards, hasLength(3));
    expect(
      cards.map((card) => (card.item as MediaItem).title),
      orderedEquals(['Paw Patrol Theme', 'Paw Patrol Rescue', 'Paw Patrol: The Movie']),
    );
    expect(cards.map((card) => card.viewModeOverride), everyElement(ViewMode.grid));
  });

  testWidgets('selecting a kind chip filters the list and All restores it', (tester) async {
    final (_, key) = await _pumpTvSearchScreen(tester, items: _mixedKindItems());
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('paw');
    await tester.pumpAndSettle();
    expect(find.widgetWithText(FocusableMediaCard, 'Paw Patrol: The Movie'), findsOneWidget);
    expect(find.text('Paw Patrol Rescue'), findsOneWidget);

    await tester.tap(find.widgetWithText(FocusableTabChip, t.libraries.groupings.movies));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(FocusableMediaCard, 'Paw Patrol: The Movie'), findsOneWidget);
    expect(find.text('Paw Patrol Rescue'), findsNothing);
    expect(find.text('Paw Patrol Theme'), findsNothing);
    expect(find.byType(FocusableMediaCard), findsOneWidget);

    await tester.tap(find.widgetWithText(FocusableTabChip, t.libraries.groupings.all));
    await tester.pumpAndSettle();
    expect(find.byType(FocusableMediaCard), findsNWidgets(3));
  });

  testWidgets('a kind ranked out of the trimmed All view keeps its chip and full results', (tester) async {
    // 100 exact-title episodes fill the ranked display budget; the weakly
    // titled track only survives in the candidate pool behind it.
    final items = [
      for (var i = 0; i < 100; i++)
        testMediaItem(
          id: 'episode_$i',
          backend: MediaBackend.plex,
          kind: MediaKind.episode,
          title: 'Paw Patrol',
          serverId: 'server_1',
          serverName: 'Server',
        ),
      testMediaItem(
        id: 'track_1',
        backend: MediaBackend.plex,
        kind: MediaKind.track,
        title: 'Underwater Instrumental Extended Version (paw remix)',
        serverId: 'server_1',
        serverName: 'Server',
      ),
    ];
    final (_, key) = await _pumpTvSearchScreen(tester, items: items);
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('Paw Patrol');
    await tester.pumpAndSettle();

    // The track lost the ranked top-100, but its chip derives from the
    // pre-rank pool, so it must still be offered and show its rows.
    final tracksChip = find.widgetWithText(FocusableTabChip, t.libraries.groupings.tracks);
    expect(tracksChip, findsOneWidget);

    await tester.tap(tracksChip);
    await tester.pumpAndSettle();
    expect(find.byType(FocusableMediaCard), findsOneWidget);
    expect(
      find.widgetWithText(FocusableMediaCard, 'Underwater Instrumental Extended Version (paw remix)'),
      findsOneWidget,
    );
  });

  testWidgets('the filter falls back to All when its kind vanishes from a refined query', (tester) async {
    final (client, key) = await _pumpTvSearchScreen(tester, items: _mixedKindItems());
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('paw');
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(FocusableTabChip, t.libraries.groupings.episodes));
    await tester.pumpAndSettle();
    expect(find.byType(FocusableMediaCard), findsOneWidget);

    client.items.removeWhere((item) => item.kind == MediaKind.episode);
    (key.currentState! as SearchInputFocusable).submitSearchQuery('paw patrol');
    await tester.pumpAndSettle();

    // Episodes are gone: the chip disappears and every remaining row shows.
    expect(find.widgetWithText(FocusableTabChip, t.libraries.groupings.episodes), findsNothing);
    expect(find.byType(FocusableMediaCard), findsNWidgets(2));
  });

  testWidgets('D-pad walks first result to chips and back, and Select applies the filter', (tester) async {
    final (_, key) = await _pumpTvSearchScreen(tester, items: _mixedKindItems());
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('paw');
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchFirstResult');

    // Up from the first result lands on the active (All) chip.
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchKindChipAll');

    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchKindChip_movie');

    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    expect(find.byType(FocusableMediaCard), findsOneWidget);
    expect(find.text('Paw Patrol Rescue'), findsNothing);

    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchFirstResult');

    // Up returns to the selected chip, not All.
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchKindChip_movie');
  });

  testWidgets('a query that matches only a person shows the person instead of No results', (tester) async {
    final (client, key) = await _pumpTvSearchScreen(tester, items: [], people: [_christophWaltz()]);
    await tester.pumpAndSettle();

    (key.currentState! as SearchInputFocusable).submitSearchQuery('waltz');
    await tester.pumpAndSettle();

    expect(client.queries, ['waltz']);
    expect(find.widgetWithText(PersonSearchRow, 'Christoph Waltz'), findsOneWidget);
    expect(find.text(t.messages.noResultsFound), findsNothing);
  });

  testWidgets('tapping a person opens their filmography on their server', (tester) async {
    final (client, _) = await _pumpTvSearchScreen(tester, tv: false, items: [], people: [_christophWaltz()]);
    await tester.pumpAndSettle();

    _searchController(tester).text = 'waltz';
    await tester.pump(const Duration(milliseconds: 500));
    await tester.pumpAndSettle();

    await tester.tap(find.byType(PersonSearchRow));
    await tester.pumpAndSettle();

    final screen = tester.widget<ActorMediaScreen>(find.byType(ActorMediaScreen));
    expect(screen.personId, '38797');
    expect(screen.serverId, 'server_1');
    expect(screen.actorName, 'Christoph Waltz');
    expect(client.fetchedPersonIds, ['38797']);
  });

  testWidgets('TV submit focuses a person listed first and Select opens their filmography', (tester) async {
    final (client, _) = await _pumpTvSearchScreen(tester, items: [], people: [_christophWaltz()]);
    await tester.pumpAndSettle();

    _searchController(tester).text = 'waltz';
    await tester.pump(const Duration(milliseconds: 100));
    await tester.showKeyboard(find.byType(TextField));
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();

    expect(client.queries, ['waltz']);
    final focused = FocusManager.instance.primaryFocus;
    expect(focused?.debugLabel, 'SearchFirstResult');
    expect(focused!.context!.findAncestorWidgetOfExactType<PersonSearchRow>()?.person.id, '38797');

    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();

    final screen = tester.widget<ActorMediaScreen>(find.byType(ActorMediaScreen));
    expect(screen.personId, '38797');
    expect(screen.serverId, 'server_1');
  });

  testWidgets('the People chip needs another filter option beside it and shows only people', (tester) async {
    final (client, key) = await _pumpTvSearchScreen(tester, items: [], people: [_christophWaltz()]);
    await tester.pumpAndSettle();
    final searchInput = key.currentState! as SearchInputFocusable;

    // People alone have nothing to filter.
    searchInput.submitSearchQuery('waltz');
    await tester.pumpAndSettle();
    expect(find.byType(PersonSearchRow), findsOneWidget);
    expect(find.byType(FocusableTabChip), findsNothing);

    client.items.add(
      testMediaItem(
        id: 'movie_1',
        backend: MediaBackend.plex,
        kind: MediaKind.movie,
        title: 'Waltz with Bashir',
        serverId: 'server_1',
        serverName: 'Server',
      ),
    );
    searchInput.submitSearchQuery('waltz with');
    await tester.pumpAndSettle();
    expect(find.widgetWithText(FocusableTabChip, t.libraries.groupings.all), findsOneWidget);
    expect(find.widgetWithText(FocusableTabChip, t.libraries.groupings.movies), findsOneWidget);
    expect(find.widgetWithText(FocusableTabChip, t.search.people), findsOneWidget);
    expect(find.byType(FocusableMediaCard), findsOneWidget);
    expect(find.byType(PersonSearchRow), findsOneWidget);

    // D-pad: up from the first result to All, then right past Movies to People.
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchFirstResult');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchKindChipAll');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SearchPeopleChip');

    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    expect(find.byType(FocusableMediaCard), findsNothing);
    expect(find.widgetWithText(PersonSearchRow, 'Christoph Waltz'), findsOneWidget);

    // Down lands on the person, now the first row.
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    final focused = FocusManager.instance.primaryFocus;
    expect(focused?.debugLabel, 'SearchFirstResult');
    expect(focused!.context!.findAncestorWidgetOfExactType<PersonSearchRow>(), isNotNull);

    // The filter holds across a refined query while people remain...
    searchInput.submitSearchQuery('waltz with b');
    await tester.pumpAndSettle();
    expect(tester.widget<FocusableTabChip>(find.widgetWithText(FocusableTabChip, t.search.people)).isSelected, isTrue);
    expect(find.byType(FocusableMediaCard), findsNothing);
    expect(find.byType(PersonSearchRow), findsOneWidget);

    // ...and falls back to All once they are gone.
    client.people = [];
    searchInput.submitSearchQuery('waltz with bashir');
    await tester.pumpAndSettle();
    expect(find.byType(FocusableTabChip), findsNothing);
    expect(find.byType(PersonSearchRow), findsNothing);
    expect(find.widgetWithText(FocusableMediaCard, 'Waltz with Bashir'), findsOneWidget);
  });
}

Future<(_FakeMediaServerClient, GlobalKey<State<SearchScreen>>)> _pumpTvSearchScreen(
  WidgetTester tester, {
  List<MediaItem>? items,
  List<MediaPerson> people = const [],
  // False pumps a touch/pointer build instead of TV.
  bool tv = true,
  Size size = const Size(1280, 720),
  ValueNotifier<bool>? keyboard,
  // When false, no server is registered, so performSearchQuery throws — the
  // path a companion-remote submit hits when the search fails outright.
  bool registerClient = true,
  Object? searchError,
  List<_FakeMediaServerClient> additionalClients = const [],
  HiddenLibrariesProvider? hiddenLibraries,
  List<MediaLibrary> libraries = const [],
  List<MediaItem> suggestionItems = const [],
  CatalogSourcesProvider? catalogSources,
  FocusNode? dockFocus,
}) async {
  TvDetectionService.debugSetAppleTVOverride(tv);
  tester.view.devicePixelRatio = 1.0;
  tester.view.physicalSize = size;
  addTearDown(() {
    tester.view.resetDevicePixelRatio();
    tester.view.resetPhysicalSize();
  });

  final client = _FakeMediaServerClient(
    items:
        items ??
        [
          testMediaItem(
            id: 'movie_1',
            backend: MediaBackend.plex,
            kind: MediaKind.movie,
            title: 'Movie 1',
            serverId: 'server_1',
            serverName: 'Server',
          ),
        ],
    searchError: searchError,
    people: people,
    suggestionItems: suggestionItems,
  );
  final manager = MultiServerManager();
  if (registerClient) manager.debugRegisterClientForTesting(client);
  for (final additionalClient in additionalClients) {
    manager.debugRegisterClientForTesting(additionalClient);
  }
  final provider = testMultiServerProvider(manager);
  addTearDown(provider.dispose);

  final hidden = hiddenLibraries ?? HiddenLibrariesProvider();
  if (hiddenLibraries == null) addTearDown(hidden.dispose);

  final librariesProvider = LibrariesProvider();
  addTearDown(librariesProvider.dispose);
  if (libraries.isNotEmpty) await librariesProvider.updateLibraryOrder(libraries);

  final key = GlobalKey<State<SearchScreen>>();
  await tester.pumpWidget(
    TranslationProvider(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<MultiServerProvider>.value(value: provider),
          ChangeNotifierProvider<HiddenLibrariesProvider>.value(value: hidden),
          ChangeNotifierProvider<LibrariesProvider>.value(value: librariesProvider),
          if (catalogSources != null) ChangeNotifierProvider<CatalogSourcesProvider>.value(value: catalogSources),
        ],
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: dockFocus != null
              ? MainScreenFocusScope(
                  focusSidebar: dockFocus.requestFocus,
                  sideNavigationWidth: 0,
                  child: Column(
                    children: [
                      Focus(focusNode: dockFocus, child: const SizedBox(height: 48, width: 48)),
                      Expanded(child: SearchScreen(key: key)),
                    ],
                  ),
                )
              : keyboard == null
              ? SearchScreen(key: key)
              : ValueListenableBuilder<bool>(
                  valueListenable: keyboard,
                  builder: (_, visible, _) => Scaffold(
                    body: MobileKeyboardScope(
                      visible: visible,
                      child: SearchScreen(key: key),
                    ),
                  ),
                ),
        ),
      ),
    ),
  );
  addTearDown(() async {
    // Dispose the search state (including its debounce, focus nodes, and any
    // hosted OSK route) before resetting process-wide focus/keyboard state.
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pumpAndSettle();
  });
  return (client, key);
}

const _seerrResult = CatalogItem(
  source: CatalogSourceId.seerr,
  kind: MediaKind.movie,
  title: 'Seerr Movie',
  ids: CatalogItemIds(tmdb: 123),
);

class _SearchSeerrSource implements SeerrCatalogSource {
  final queries = <String>[];
  Completer<List<CatalogItem>>? gate;

  @override
  Future<List<CatalogItem>> search(String query, {int limit = 30}) {
    queries.add(query);
    return gate?.future ?? Future.value([_seerrResult]);
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _SearchCatalogSources extends CatalogSourcesProvider {
  _SearchCatalogSources(this.source);
  SeerrCatalogSource? source;

  @override
  SeerrCatalogSource? get seerrSource => source;

  void disconnect() {
    source = null;
    notifyListeners();
  }
}

/// Two movies on the same server in different libraries, so a test can hide
/// one library and assert only the other survives.
List<MediaItem> _twoLibraryMovies() => [
  testMediaItem(
    id: 'movie_1',
    backend: MediaBackend.plex,
    kind: MediaKind.movie,
    title: 'Movie 1',
    serverId: 'server_1',
    serverName: 'Server',
    libraryId: '1',
  ),
  testMediaItem(
    id: 'movie_2',
    backend: MediaBackend.plex,
    kind: MediaKind.movie,
    title: 'Movie 2',
    serverId: 'server_1',
    serverName: 'Server',
    libraryId: '2',
  ),
];

/// One result per kind on the same single-library server, so kind chips have
/// something to filter.
List<MediaItem> _mixedKindItems() => [
  testMediaItem(
    id: 'movie_1',
    backend: MediaBackend.plex,
    kind: MediaKind.movie,
    title: 'Paw Patrol: The Movie',
    serverId: 'server_1',
    serverName: 'Server',
  ),
  testMediaItem(
    id: 'episode_1',
    backend: MediaBackend.plex,
    kind: MediaKind.episode,
    title: 'Paw Patrol Rescue',
    serverId: 'server_1',
    serverName: 'Server',
  ),
  testMediaItem(
    id: 'track_1',
    backend: MediaBackend.plex,
    kind: MediaKind.track,
    title: 'Paw Patrol Theme',
    serverId: 'server_1',
    serverName: 'Server',
  ),
];

/// A library on `server_1`, keyed so `MediaItem.libraryGlobalKey` for items
/// with the same `libraryId` resolves to it.
MediaLibrary _library(String id, String title) =>
    MediaLibrary(id: id, backend: MediaBackend.plex, title: title, kind: MediaKind.movie, serverId: 'server_1');

/// A Plex actor on `server_1`, shaped like a `searchTypes=people` row.
MediaPerson _christophWaltz() => MediaPerson(
  id: '38797',
  name: 'Christoph Waltz',
  credit: PersonCredit.actor,
  backend: MediaBackend.plex,
  serverId: ServerId('server_1'),
  serverName: 'Server',
);

TextEditingController _searchController(WidgetTester tester) {
  return tester.widget<FocusableTextField>(find.byType(FocusableTextField)).controller;
}

void _resetGlobalTestState() {
  FocusManager.instance.primaryFocus?.unfocus();
  HardwareKeyboard.instance.clearState();
  SelectKeyUpSuppressor.clearSuppression();
  BackKeyUpSuppressor.clearSuppression();
  BackKeyCoordinator.clear();
  TvDetectionService.debugSetAppleTVOverride(null);
  TvDetectionService.setForceTVSync(false);
  SettingsService.resetForTesting();
}

class _FakeMediaServerClient implements MediaServerClient {
  final String serverIdValue;
  final String serverNameValue;
  final List<MediaItem> items;
  List<MediaPerson> people;
  Object? searchError;
  final List<String> queries = [];
  final List<String> fetchedItemIds = [];
  final List<String> fetchedPersonIds = [];
  MediaItem? itemResult;
  Completer<void>? fetchGate;
  Completer<void>? searchGate;
  AbortController? lastSearchAbort;
  Completer<void>? peopleGate;
  final List<MediaItem> suggestionItems;
  final List<String> suggestionLibraries = [];

  _FakeMediaServerClient({
    required this.items,
    this.serverIdValue = 'server_1',
    this.serverNameValue = 'Server',
    this.searchError,
    this.people = const [],
    this.suggestionItems = const [],
  });

  @override
  ServerId get serverId => ServerId(serverIdValue);

  @override
  String? get serverName => serverNameValue;

  @override
  MediaBackend get backend => MediaBackend.plex;

  @override
  ServerCapabilities get capabilities => ServerCapabilities.plex;

  @override
  Future<List<MediaItem>> searchItems(
    String query, {
    int limit = 100,
    AbortController? abort,
    Set<String> excludedLibraryIds = const {},
  }) async {
    queries.add(query);
    lastSearchAbort = abort;
    abort?.throwIfAborted();
    if (searchError != null) throw searchError!;
    final gate = searchGate;
    if (gate != null) await gate.future;
    abort?.throwIfAborted();
    return items;
  }

  @override
  Future<MediaItem?> fetchItem(String id, {bool useCache = true}) async {
    fetchedItemIds.add(id);
    final gate = fetchGate;
    if (gate != null) await gate.future;
    return itemResult;
  }

  @override
  Future<List<MediaPerson>> searchPeople(
    String query, {
    int limit = defaultPeopleSearchLimit,
    AbortController? abort,
    Set<String> excludedLibraryIds = const {},
  }) async {
    abort?.throwIfAborted();
    await peopleGate?.future;
    return people;
  }

  @override
  Future<LibraryPage<MediaItem>> fetchLibraryPagedContent(
    String libraryId, {
    required LibraryQuery query,
    MediaKind? libraryKind,
    AbortController? abort,
  }) async {
    suggestionLibraries.add(libraryId);
    return LibraryPage(items: suggestionItems, totalCount: suggestionItems.length);
  }

  @override
  Future<LibraryPage<MediaItem>> fetchPersonMediaPage(
    String personId, {
    int? start,
    int? size,
    AbortController? abort,
  }) async {
    fetchedPersonIds.add(personId);
    return const LibraryPage<MediaItem>(items: [], totalCount: 0);
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
