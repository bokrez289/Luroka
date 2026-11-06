import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/utils/language_codes.dart';

void main() {
  test('bibliographic aliases resolve via trim, case, and variation expansion', () {
    expect(LanguageCodes.getIso6391Code(' DEU '), 'de');
    expect(LanguageCodes.getIso6391Code('ger'), 'de');
    expect(LanguageCodes.getLanguageName('GER'), 'German');
    expect(LanguageCodes.getVariations('ger'), unorderedEquals(<String>['ger', 'de', 'deu']));
    expect(LanguageCodes.getLanguageName('zzz'), isNull);
  });

  test('ISO 639-1 and bibliographic codes convert to ISO 639-2/T', () {
    expect(LanguageCodes.getIso6392Code('en'), 'eng');
    expect(LanguageCodes.getIso6392Code('pt_BR'), 'por');
    expect(LanguageCodes.getIso6392Code('ger'), 'deu');
    expect(LanguageCodes.getIso6392Code('zzz'), isNull);
  });
}
