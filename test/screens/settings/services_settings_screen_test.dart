import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/providers/catalog_sources_provider.dart';
import 'package:luroka/providers/seerr_account_provider.dart';
import 'package:luroka/providers/trackers_provider.dart';
import 'package:luroka/screens/settings/services_settings_screen.dart';
import 'package:luroka/screens/settings/tracker_integration_screen.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:provider/provider.dart';

import '../../test_helpers/prefs.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() async {
    LocaleSettings.setLocaleSync(AppLocale.en);
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    await SettingsService.getInstance();
  });

  for (final tv in [true, false]) {
    testWidgets('${tv ? 'TV' : 'phone'} integrations describe services before connecting', (tester) async {
      TvDetectionService.debugSetAppleTVOverride(tv);
      addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = tv ? const Size(1280, 720) : const Size(390, 844);
      addTearDown(tester.view.reset);
      final sources = CatalogSourcesProvider();
      final seerr = SeerrAccountProvider();
      final trackers = TrackersProvider();
      addTearDown(sources.dispose);
      addTearDown(seerr.dispose);
      addTearDown(trackers.dispose);
      await tester.pumpWidget(
        TranslationProvider(
          child: MultiProvider(
            providers: [
              ChangeNotifierProvider.value(value: sources),
              ChangeNotifierProvider.value(value: seerr),
              ChangeNotifierProvider.value(value: trackers),
            ],
            child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: const ServicesSettingsScreen()),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text(t.services.discoverySection), findsOneWidget);
      expect(find.textContaining(t.services.seerrDescription), findsOneWidget);
      expect(find.text(t.trakt.title), findsNothing);
      await tester.ensureVisible(find.text(t.services.names.mal));
      await tester.tap(find.text(t.services.names.mal));
      await tester.pumpAndSettle();
      expect(find.byType(TrackerIntegrationScreen), findsOneWidget);
      expect(find.text(t.services.malDescription), findsOneWidget);
      expect(find.text(t.services.connectService(service: t.services.names.mal)), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }
}
