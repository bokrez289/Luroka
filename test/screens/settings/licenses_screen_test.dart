import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/screens/settings/licenses_screen.dart';
import 'package:luroka/services/app_license_registry.dart';
import 'package:luroka/theme/mono_theme.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    LocaleSettings.setLocaleSync(AppLocale.en);
    registerAppLicenseAssets();
  });

  testWidgets('filters licenses by package name and reports no matches', (tester) async {
    LicenseRegistry.addLicense(() async* {
      yield const LicenseEntryWithLineBreaks(['luroka_alpha'], 'Alpha license text');
      yield const LicenseEntryWithLineBreaks(['luroka_beta'], 'Beta license text');
      yield const LicenseEntryWithLineBreaks(['order_fixture_z'], 'Z license');
      yield const LicenseEntryWithLineBreaks(['Order_fixture_A'], 'A license');
      yield const LicenseEntryWithLineBreaks(['order_fixture_B'], 'B license');
    });

    await tester.binding.setSurfaceSize(const Size(800, 1000));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await tester.pumpWidget(MaterialApp(theme: monoTheme(MonoPalette.dark), home: const LicensesScreen()));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField), 'order_fixture');
    await tester.pump();
    expect(
      tester.widgetList<ListTile>(find.byType(ListTile)).map((tile) => (tile.title! as Text).data).toList(),
      ['Order_fixture_A', 'order_fixture_B', 'order_fixture_z'],
    );

    await tester.enterText(find.byType(TextField), 'Plezy');
    await tester.pump();
    await tester.tap(find.widgetWithText(ListTile, 'Plezy'));
    await tester.pumpAndSettle();
    expect(find.textContaining('https://github.com/edde746/plezy'), findsWidgets);
    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField), 'alpha');
    await tester.pump();

    expect(find.text('luroka_alpha'), findsOneWidget);
    expect(find.text('luroka_beta'), findsNothing);

    await tester.enterText(find.byType(TextField), 'ArtCNN');
    await tester.pump();
    await tester.tap(find.widgetWithText(ListTile, 'ArtCNN'));
    await tester.pumpAndSettle();
    expect(find.textContaining('Joao Chrisostomo'), findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField), 'missing-package');
    await tester.pump();

    expect(find.text(t.licenses.noResults(query: 'missing-package')), findsOneWidget);
  });
}
