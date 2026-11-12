import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/i18n/strings.g.dart';

void main() {
  test('supported locale files contain every English key with matching interpolation variables', () {
    Map<String, dynamic> load(String tag) =>
        jsonDecode(File('lib/i18n/$tag.i18n.json').readAsStringSync()) as Map<String, dynamic>;
    final english = load('en');
    final variable = RegExp(r'\$\{([A-Za-z_][A-Za-z0-9_]*)\}|\$([A-Za-z_][A-Za-z0-9_]*)');
    List<String> variables(String text) =>
        (variable.allMatches(text).map((match) => match[1] ?? match[2]!).toList()..sort());

    void verify(Object? source, Object? translated, String path, String locale) {
      if (source is Map<String, dynamic>) {
        expect(translated, isA<Map<String, dynamic>>(), reason: '$locale: missing section $path');
        final map = translated as Map<String, dynamic>;
        for (final entry in source.entries) {
          verify(entry.value, map[entry.key], path.isEmpty ? entry.key : '$path.${entry.key}', locale);
        }
      } else if (source is String) {
        expect(translated, isA<String>(), reason: '$locale: missing $path');
        final text = translated as String;
        expect(text.trim(), isNotEmpty, reason: '$locale: empty $path');
        expect(variables(text), variables(source), reason: '$locale: interpolation mismatch in $path');
        expect(text, isNot(contains('ZXQKEEP')), reason: '$locale: untranslated placeholder in $path');
        expect(text, isNot(contains('ZX7KEEP')), reason: '$locale: untranslated placeholder in $path');
      }
    }

    for (final locale in AppLocale.values.where((locale) => locale != AppLocale.en)) {
      final tag = locale.scriptCode == null ? locale.languageCode : '${locale.languageCode}-${locale.scriptCode}';
      verify(english, load(tag), '', tag);
    }
  });
}
