import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/home_layout.dart';
import 'package:luroka/media/media_hub.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/providers/discover_provider.dart';
import 'package:luroka/providers/home_layout_provider.dart';
import 'package:luroka/screens/settings/home_layout_screen.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/focusable_list_tile.dart';
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
    await tester.ensureVisible(find.text(t.discover.continueWatching));
    await tester.tap(find.text(t.discover.continueWatching));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.homeLayout.moveDown));
    await tester.pumpAndSettle();
    expect(provider.layout.order.indexOf(homeContinueWatchingKey), 1);

    await tester.ensureVisible(find.text(t.discover.continueWatching));
    await tester.tap(find.text(t.discover.continueWatching));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.homeLayout.hideRow));
    await tester.pumpAndSettle();
    expect(provider.layout.hidden, contains(homeContinueWatchingKey));
    expect(find.text(t.homeLayout.hidden), findsOneWidget);

    await tester.ensureVisible(find.text(t.discover.continueWatching));
    await tester.tap(find.text(t.discover.continueWatching));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.homeLayout.showRow));
    await tester.pumpAndSettle();
    expect(provider.layout.hidden, isEmpty);
  });

  testWidgets('Home customization can hide the featured spotlight', (tester) async {
    await mount(tester);
    expect(SettingsService.instance.read(SettingsService.showHeroSection), isTrue);
    await tester.tap(find.text(t.dashboard.showFeatured));
    await tester.pumpAndSettle();
    expect(SettingsService.instance.read(SettingsService.showHeroSection), isFalse);
  });

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
}
