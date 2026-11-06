import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/utils/app_identity.dart';

void main() {
  test('Spotlight and app identity use Luroka in supported translations', () async {
    expect(AppIdentity.name, 'Luroka');
    for (final locale in [AppLocale.en, AppLocale.de, AppLocale.es, AppLocale.ja]) {
      await LocaleSettings.setLocale(locale);
      expect(t.dashboard.featured, contains('LUROKA'));
    }
    await LocaleSettings.setLocale(AppLocale.en);
  });
}
