import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/studio_brands.dart';

void main() {
  test('only curated brands can appear; unrelated producers are not included', () {
    expect(studioBrandForName('Some Tiny Production Company'), isNull);
    expect(studioBrandForName('Netflix Documentary Unit Somewhere'), isNull);
    expect(studioBrandForName('Disneyland Independent Films'), isNull);
  });
  test('expanded film, TV, animation and anime destinations match explicit metadata aliases', () {
    final aliases = {
      'Lions Gate Films': 'lionsgate',
      'Metro-Goldwyn-Mayer': 'mgm',
      'Fox Searchlight Pictures': 'searchlight',
      'Focus Features': 'focus-features',
      'Blumhouse Productions': 'blumhouse',
      'FX Productions': 'fx',
      'AMC Studios': 'amc',
      'British Broadcasting Corporation': 'bbc',
      'スタジオジブリ': 'studio-ghibli',
      'Toei Animation': 'toei-animation',
      'MAPPA': 'mappa',
      '京都アニメーション': 'kyoto-animation',
      'Disney Channel': 'disney-channel',
      'Cartoon Network Studios': 'cartoon-network',
    };
    for (final entry in aliases.entries) {
      expect(studioBrandForName(entry.key)?.key, entry.value, reason: entry.key);
      expect(studioBrandForKey(entry.value), isNotNull);
    }
    expect(studioBrandForName('Disney Channel')?.key, isNot('disney'));
    expect(studioBrandForName('Fox Searchlight Pictures')?.key, isNot('20th-century'));
    expect(studioBrandForName('Toei Company'), isNull);
    expect(studioBrandForName('BBC America'), isNull);
    expect(studioBrandForName('Cartoon Network Fan Productions'), isNull);
  });
  test('brand keys and normalized aliases never collide', () {
    expect(studioBrands.map((brand) => brand.key).toSet(), hasLength(studioBrands.length));
    for (final brand in studioBrands) {
      for (final alias in brand.aliases) {
        expect(studioBrandForName(alias)?.key, brand.key, reason: alias);
      }
    }
  });
  test('curated studio and network aliases retain separate recognizable destinations', () {
    expect(studioBrandForName('Walt Disney Pictures')?.name, 'Disney');
    expect(studioBrandForName('Disney+')?.name, 'Disney+');
    expect(studioBrandForName('Disney Plus')?.key, 'disney-plus');
    expect(studioBrandForName('Columbia Pictures')?.key, 'sony');
    expect(studioBrandForName('Warner Bros. Entertainment')?.key, 'warner bros');
    expect(studioBrandForName('Paramount Pictures')?.name, 'Paramount');
    expect(studioBrandForName('Paramount+')?.name, 'Paramount+');
    expect(studioBrandForName('Pixar Animation Studios')?.key, 'pixar');
    expect(studioBrandForName('Amazon Studios')?.name, 'Prime Video');
  });

  test('streaming and broadcast destinations added from the JellyCine catalog resolve', () {
    final aliases = {
      'Hulu': 'hulu',
      'Hulu Originals': 'hulu',
      'Showtime Networks': 'showtime',
      'Starz Originals': 'starz',
      'Peacock TV': 'peacock',
      'Discovery+': 'discovery-plus',
      'Discovery Plus': 'discovery-plus',
      'American Broadcasting Company': 'abc',
      'NBCUniversal Television': 'nbc',
      'CBS Television Studios': 'cbs',
      'Fox Broadcasting Company': 'fox',
      'The CW': 'the-cw',
      'Cinemax': 'cinemax',
      'Nickelodeon Movies': 'nickelodeon',
      'Williams Street': 'adult-swim',
    };
    for (final entry in aliases.entries) {
      expect(studioBrandForName(entry.key)?.key, entry.value, reason: entry.key);
      expect(studioBrandForKey(entry.value), isNotNull);
    }
  });

  test('Fox-family names stay in their own lanes', () {
    expect(studioBrandForName('FOX')?.key, 'fox');
    expect(studioBrandForName('Fox')?.key, 'fox');
    expect(studioBrandForName('FX')?.key, 'fx');
    expect(studioBrandForName('Fox Searchlight Pictures')?.key, 'searchlight');
    expect(studioBrandForName('20th Century Fox')?.key, '20th-century');
    expect(studioBrandForName('Fox Broadcasting Company')?.key, isNot('fx'));
  });

  test('new streaming brands carry logos where TMDb artwork is known-stable', () {
    // Tint-only fallbacks stay acceptable (see marvel/lionsgate), but the
    // major streamers the catalog was missing must have artwork.
    for (final key in ['hulu', 'showtime', 'starz', 'abc', 'cbs', 'fox', 'the-cw', 'nickelodeon', 'adult-swim']) {
      expect(studioBrandForKey(key)?.logoUrl, isNotNull, reason: key);
    }
  });
}
