import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/home_layout.dart';
import 'package:luroka/media/media_hub.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/studio_brands.dart';
import 'package:luroka/providers/discover_provider.dart';
import 'package:luroka/providers/home_layout_provider.dart';
import 'package:luroka/screens/settings/home_layout_screen.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/focusable_list_tile.dart';
import 'package:luroka/widgets/setting_tile.dart';
import 'package:provider/provider.dart';

import '../../test_helpers/prefs.dart';

class _Discover extends ChangeNotifier implements DiscoverProvider {
  @override
  List<MediaHub> get hubs => const [MediaHub(id: 'latest', title: 'Recently added', type: 'movie', items: [])];
  @override
  List<MediaItem> get onDeck => const [];
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

  Future<HomeLayoutProvider> mount(WidgetTester tester, {bool tv = false}) async {
    TvDetectionService.debugSetAppleTVOverride(tv);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    final provider = HomeLayoutProvider(storage: storage, profileId: 'p');
    final discover = _Discover();
    addTearDown(provider.dispose);
    addTearDown(discover.dispose);
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<HomeLayoutProvider>.value(value: provider),
          ChangeNotifierProvider<DiscoverProvider>.value(value: discover),
        ],
        child: TranslationProvider(
          child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: const HomeLayoutScreen()),
        ),
      ),
    );
    await tester.pumpAndSettle();
    return provider;
  }

  testWidgets('touch row actions reorder, hide, and restore without leaving the editor', (tester) async {
    final provider = await mount(tester);
    final row = find.byKey(ValueKey(homeContinueWatchingKey));
    await tester.ensureVisible(row);
    await tester.pumpAndSettle();
    await tester.tap(row);
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.homeLayout.moveDown));
    await tester.pumpAndSettle();
    expect(provider.layout.order.indexOf(homeContinueWatchingKey), 1);

    await tester.ensureVisible(row);
    await tester.pumpAndSettle();
    await tester.tap(row);
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.homeLayout.hideRow));
    await tester.pumpAndSettle();
    expect(provider.layout.hidden, contains(homeContinueWatchingKey));
    expect(find.text(t.homeLayout.hidden), findsOneWidget);

    await tester.ensureVisible(row);
    await tester.pumpAndSettle();
    await tester.tap(row);
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.homeLayout.showRow));
    await tester.pumpAndSettle();
    expect(provider.layout.hidden, isEmpty);
  });

  testWidgets('Home customization can hide the featured spotlight', (tester) async {
    await mount(tester);
    expect(SettingsService.instance.read(SettingsService.showHeroSection), isTrue);
    final spotlightSwitch = find.byWidgetPredicate((widget) => widget is SettingSwitchTile &&
        widget.pref == SettingsService.showHeroSection);
    await tester.ensureVisible(spotlightSwitch);
    await tester.pumpAndSettle();
    await tester.tap(spotlightSwitch);
    await tester.pumpAndSettle();
    expect(SettingsService.instance.read(SettingsService.showHeroSection), isFalse);
  });

  testWidgets('studio preferences hide Netflix for only this profile and allow reordering', (tester) async {
    final provider = await mount(tester);
    await tester.ensureVisible(find.text(t.homeLayout.manageStudios));
    await tester.tap(find.text(t.homeLayout.manageStudios));
    await tester.pumpAndSettle();
    final netflix = find.byKey(const ValueKey('studio-pref-netflix'));
    await tester.ensureVisible(netflix);
    await tester.tap(netflix);
    await tester.pumpAndSettle();
    expect(provider.layout.hiddenStudios, contains('netflix'));
    expect(storage.getHomeLayout('other').hiddenStudios, isEmpty);
    final itv = find.byKey(const ValueKey('studio-reorder-itv'));
    await tester.ensureVisible(itv);
    await tester.pumpAndSettle();
    await tester.tap(itv);
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.homeLayout.moveUp));
    await tester.pumpAndSettle();
    expect(provider.layout.studioOrder.indexOf('itv'), lessThan(provider.layout.studioOrder.indexOf('bbc')));
  });

  testWidgets('studios toggle directly, support rapid edits, and show or hide all', (tester) async {
    final provider = await mount(tester);
    await tester.runAsync(() => provider.setStudios(order: ['unknown-studio'], hidden: ['unknown-studio']));
    await tester.ensureVisible(find.text(t.homeLayout.manageStudios));
    await tester.tap(find.text(t.homeLayout.manageStudios));
    await tester.pumpAndSettle();
    final netflix = find.byKey(const ValueKey('studio-pref-netflix'));
    final disney = find.byKey(const ValueKey('studio-pref-disney-plus'));
    await Scrollable.ensureVisible(tester.element(disney), alignment: .45);
    await tester.pumpAndSettle();
    await tester.tap(disney);
    await tester.tap(netflix);
    await tester.pumpAndSettle();
    expect(tester.widget<SwitchListTile>(find.descendant(of: netflix, matching: find.byType(SwitchListTile))).value, isFalse);
    await tester.runAsync(() async {
      for (var i = 0; i < 100 && !provider.layout.hiddenStudios.contains('netflix'); i++) {
        await Future<void>.delayed(const Duration(milliseconds: 10));
      }
    });
    await tester.pumpAndSettle();
    expect(provider.layout.hiddenStudios, containsAll(['netflix', 'disney-plus', 'unknown-studio']));
    final hideAll = find.byKey(const ValueKey('studio-hide-all'));
    await Scrollable.ensureVisible(tester.element(hideAll), alignment: .45);
    await tester.pumpAndSettle();
    await tester.tap(hideAll);
    await tester.pumpAndSettle();
    await tester.runAsync(() async {
      for (var i = 0; i < 100 && !studioBrands.every((brand) => provider.layout.hiddenStudios.contains(brand.key)); i++) {
        await Future<void>.delayed(const Duration(milliseconds: 10));
      }
    });
    await tester.pumpAndSettle();
    expect(provider.layout.hiddenStudios, containsAll(studioBrands.map((brand) => brand.key)));
    await tester.tap(find.byKey(const ValueKey('studio-show-all')));
    await tester.pumpAndSettle();
    await tester.runAsync(() async {
      for (var i = 0; i < 100 && provider.layout.hiddenStudios.length != 1; i++) {
        await Future<void>.delayed(const Duration(milliseconds: 10));
      }
    });
    await tester.pumpAndSettle();
    expect(provider.layout.hiddenStudios, {'unknown-studio'});
    expect(storage.getHomeLayout('other').hiddenStudios, isEmpty);
  });

  testWidgets('TV select toggles an individual studio', (tester) async {
    final provider = await mount(tester, tv: true);
    await tester.ensureVisible(find.text(t.homeLayout.manageStudios));
    await tester.tap(find.text(t.homeLayout.manageStudios));
    await tester.pumpAndSettle();
    final netflix = find.byKey(const ValueKey('studio-pref-netflix'));
    await tester.ensureVisible(netflix);
    await tester.pumpAndSettle();
    tester.widget<SwitchListTile>(find.descendant(of: netflix, matching: find.byType(SwitchListTile))).focusNode!.requestFocus();
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    expect(provider.layout.hiddenStudios, contains('netflix'));
  });

  testWidgets('users can choose separate rows and independently hide Next Up', (tester) async {
    final provider = await mount(tester);
    final selector = find.byKey(const ValueKey('home-progress-layout'));
    await tester.ensureVisible(selector);
    await tester.pumpAndSettle();
    await tester.tap(selector);
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.homeLayout.progressSeparate));
    await tester.pumpAndSettle();
    expect(provider.layout.splitContinueWatching, isTrue);
    final next = find.byKey(ValueKey(homeNextUpKey));
    await tester.ensureVisible(next);
    await tester.pumpAndSettle();
    await tester.tap(next);
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.homeLayout.hideRow));
    await tester.pumpAndSettle();
    expect(provider.layout.hidden, contains(homeNextUpKey));
    expect(provider.layout.hidden, isNot(contains(homeContinueWatchingKey)));
  });

  for (final tv in [false, true]) {
    testWidgets('${tv ? 'TV' : 'touch'} Spotlight source changes the profile preference', (tester) async {
      final provider = await mount(tester, tv: tv);
      final selector = find.byKey(const ValueKey('home-spotlight-source'));
      await tester.ensureVisible(selector);
      await tester.pumpAndSettle();
      if (tv) {
        tester
            .widget<ListTile>(find.descendant(of: selector, matching: find.byType(ListTile)))
            .focusNode!
            .requestFocus();
        await tester.pump();
        await tester.sendKeyEvent(LogicalKeyboardKey.select);
      } else {
        await tester.tap(selector);
      }
      await tester.pumpAndSettle();
      if (tv) {
        await tester.sendKeyEvent(LogicalKeyboardKey.select);
      } else {
        await tester.tap(find.text(t.homeLayout.spotlightForYou));
      }
      await tester.pumpAndSettle();
      expect(provider.layout.spotlightSource, HomeSpotlightSource.forYou);
      expect(storage.getHomeLayout('p').spotlightSource, HomeSpotlightSource.forYou);
    });
  }

  testWidgets('TV Select opens row actions and D-pad activates visibility', (tester) async {
    final provider = await mount(tester, tv: true);
    final row = find.byKey(ValueKey(homeContinueWatchingKey));
    final tile = tester.widget<ListTile>(find.descendant(of: row, matching: find.byType(ListTile)));
    tile.focusNode!.requestFocus();
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(find.text(t.homeLayout.hideRow), findsOneWidget);
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(provider.layout.hidden, contains(homeContinueWatchingKey));
    expect(find.byType(FocusableListTile), findsWidgets);
  });

  testWidgets('TV remote can choose the separate Home rows', (tester) async {
    final provider = await mount(tester, tv: true);
    final selector = find.byKey(const ValueKey('home-progress-layout'));
    final tile = tester.widget<ListTile>(find.descendant(of: selector, matching: find.byType(ListTile)));
    tile.focusNode!.requestFocus();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    expect(provider.layout.splitContinueWatching, isTrue);
    expect(find.byKey(ValueKey(homeNextUpKey)), findsOneWidget);
  });
}
