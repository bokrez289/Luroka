import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/main.dart' as app;

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('app startup registers project and supplemental licenses', () async {
    app.registerAppLicenses();
    final licenses = await LicenseRegistry.licenses.toList();
    String textFor(String package) => licenses
        .where((entry) => entry.packages.contains(package))
        .expand((entry) => entry.paragraphs)
        .map((paragraph) => paragraph.text)
        .join('\n');

    expect(textFor('Plezy'), contains('https://github.com/edde746/plezy'));
    expect(textFor('Luroka'), contains('GNU GENERAL PUBLIC LICENSE'));
    expect(textFor('Go Noto Current'), contains('SIL OPEN FONT LICENSE'));
    expect(textFor('ArtCNN'), contains('Copyright (c) 2024 Joao Chrisostomo, Kacper Michajłow'));
    expect(textFor('Anime4K'), contains('Copyright (c) 2019-2021 bloc97'));
  });
}
