import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/providers/catalog_sources_provider.dart';
import 'package:luroka/providers/explore_provider.dart';
import 'package:luroka/screens/discovery_shelves_screen.dart';
import 'package:luroka/screens/explore_screen.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/focusable_list_tile.dart';

import '../test_helpers/prefs.dart';

void main() {
  for (final tv in [true, false]) {
    testWidgets('Awards and customization are discoverable at ${tv ? 'TV' : 'phone'} width', (tester) async {
      resetSharedPreferencesForTest();
      await SettingsService.getInstance();
      LocaleSettings.setLocaleSync(AppLocale.en);
      TvDetectionService.debugSetAppleTVOverride(tv);
      addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
      tester.view.physicalSize = tv ? const Size(1280, 720) : const Size(360, 800);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      final sources = CatalogSourcesProvider(enablePublicCatalog: true);
      addTearDown(sources.dispose);
      await sources.setDiscoveryShelves({});
      final explore = ExploreProvider(sources, libraryOnly: true);
      addTearDown(explore.dispose);
      await explore.load();
      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: sources),
            ChangeNotifierProvider.value(value: explore),
          ],
          child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: const ExploreScreen()),
        ),
      );
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull, reason: 'Discover toolbar layout');
      expect(find.text(t.awardsCatalog.awards), findsOneWidget);
      await tester.tap(find.text(t.awardsCatalog.awards));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull, reason: 'Awards browser layout');
      expect(find.text(t.awardsCatalog.customize), findsOneWidget);
      await tester.tap(find.text(t.awardsCatalog.customize));
      await tester.pumpAndSettle();
      expect(find.text(t.awardsCatalog.chooseShelves), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('TV shelf chooser stages switches, restores defaults, and saves for the profile', (tester) async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
    LocaleSettings.setLocaleSync(AppLocale.en);
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final sources = CatalogSourcesProvider(enablePublicCatalog: true);
    addTearDown(sources.dispose);
    await sources.onActiveProfileChanged('viewer');
    await tester.pumpWidget(
      ChangeNotifierProvider.value(
        value: sources,
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: Builder(
            builder: (context) => Scaffold(
              body: TextButton(
                onPressed: () =>
                    Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const DiscoveryShelvesScreen())),
                child: const Text('Open chooser'),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Open chooser'));
    await tester.pumpAndSettle();
    final popular = find.byKey(const ValueKey('discover_shelf_popularMovies'));
    expect(tester.widget<FocusableSwitchListTile>(popular).value, isTrue);
    await tester.tap(popular);
    await tester.pumpAndSettle();
    expect(tester.widget<FocusableSwitchListTile>(popular).value, isFalse);
    expect(sources.discoveryShelfIds, contains('popularMovies'), reason: 'Changes are staged until Save.');
    await tester.tap(find.text(t.awardsCatalog.restoreShelves));
    await tester.pumpAndSettle();
    expect(tester.widget<FocusableSwitchListTile>(popular).value, isTrue);
    await tester.tap(popular);
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.common.save));
    await tester.pumpAndSettle();
    expect(sources.discoveryShelfIds, isNot(contains('popularMovies')));
    expect(find.text('Open chooser'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
