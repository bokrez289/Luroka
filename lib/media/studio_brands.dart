/// Curated major-brand catalog. Matching uses only explicit metadata aliases,
/// as in JellyCine's SeerrCatalog; these are library hubs, not claims about a
/// subscription service's streaming availability. Server studio ids remain
/// authoritative when requesting titles.
class StudioBrand {
  const StudioBrand(this.key, this.name, this.aliases, this.tint, [this.logo]);
  final String key;
  final String name;
  final List<String> aliases;
  final int tint;
  final String? logo;
  String? get logoUrl => logo == null ? null : 'https://image.tmdb.org/t/p/w300/$logo';
}

const studioBrands = [
  StudioBrand('disney-plus', 'Disney+', ['Disney+', 'Disney Plus'], 0xff2779ff),
  StudioBrand('netflix', 'Netflix', ['Netflix', 'Netflix Studios'], 0xffe50914, 'wwemzKWzjKYJFfCeiB57q3r4Bcm.png'),
  StudioBrand(
    'prime-video',
    'Prime Video',
    ['Prime Video', 'Amazon Prime Video', 'Amazon Studios', 'Amazon MGM Studios'],
    0xff00a8e1,
    'ifhbNuuVnlwYy5oXA5VIb2YR8AZ.png',
  ),
  StudioBrand(
    'apple-tv',
    'Apple TV+',
    ['Apple TV+', 'Apple TV', 'Apple Studios'],
    0xffb6c2d2,
    '4KAy34EHvRM25Ih8wb82AuGU7zJ.png',
  ),
  StudioBrand(
    'warner bros',
    'Warner Bros.',
    [
      'Warner Bros.',
      'Warner Bros. Pictures',
      'Warner Bros. Entertainment',
      'Warner Brothers',
      'Warner Bros. Television',
    ],
    0xff378dff,
    'ky0xOc5OrhzkZ1N6KyUxacfQsCk.png',
  ),
  StudioBrand(
    'paramount-plus',
    'Paramount+',
    ['Paramount+', 'Paramount Plus'],
    0xff0064ff,
    'fi83B1oztoS47xxcemFdPMhIzK.png',
  ),
  StudioBrand(
    'hbo',
    'HBO',
    ['HBO', 'Home Box Office', 'HBO Entertainment'],
    0xff8b5cf6,
    'tuomPhY2UtuPTqqFnKMVHvSb724.png',
  ),
  StudioBrand(
    'disney',
    'Disney',
    ['Disney', 'Walt Disney Pictures', 'Walt Disney Animation Studios'],
    0xff548dff,
    'wdrCwmRnLFJhEoH8GSfymY85KHT.png',
  ),
  StudioBrand('pixar', 'Pixar', ['Pixar', 'Pixar Animation Studios'], 0xff5aafe6, '1TjvGVDMYsj6JBxOAkUHpPEwLf7.png'),
  StudioBrand('marvel', 'Marvel Studios', ['Marvel Studios'], 0xffed1d24),
  StudioBrand(
    'universal',
    'Universal',
    ['Universal', 'Universal Pictures', 'Universal Studios', 'Universal Television'],
    0xff56a4e0,
    '8lvHyhjr8oUKOOy2dKXoALWKdp0.png',
  ),
  StudioBrand(
    'paramount',
    'Paramount',
    ['Paramount', 'Paramount Pictures', 'Paramount Television', 'Paramount Television Studios'],
    0xff6094ef,
    'fycMZt242LVjagMByZOLUGbCvv3.png',
  ),
  StudioBrand(
    'sony',
    'Sony Pictures',
    ['Sony Pictures', 'Columbia Pictures', 'Sony Pictures Releasing', 'Sony Pictures Television'],
    0xff57c9eb,
    'GagSvqWlyPdkFHMfQ3pNq6ix9P.png',
  ),
  StudioBrand(
    'dreamworks',
    'DreamWorks',
    ['DreamWorks', 'DreamWorks Pictures', 'DreamWorks Animation'],
    0xff7196cb,
    'kP7t6RwGz2AvvTkvnI1uteEwHet.png',
  ),
  StudioBrand(
    '20th-century',
    '20th Century',
    ['20th Century Studios', '20th Century Fox', 'Twentieth Century Fox'],
    0xffd0aa66,
    'h0rjX5vjW5r8yEnUBStFarjcLT4.png',
  ),
  StudioBrand('a24', 'A24', ['A24', 'A24 Films'], 0xffbeb7e9, '1ZXsGaFPgrgS6ZZGS37AqD5uU12.png'),
  StudioBrand(
    'dc',
    'DC',
    ['DC', 'DC Studios', 'DC Entertainment', 'DC Films'],
    0xff0078f0,
    '2Tc1P3Ac8M479naPp1kYT3izLS5.png',
  ),
  StudioBrand('lionsgate', 'Lionsgate', [
    'Lionsgate',
    'Lions Gate Films',
    'Lionsgate Films',
    'Lionsgate Television',
  ], 0xff78a9dc),
  StudioBrand('mgm', 'MGM', ['MGM', 'Metro-Goldwyn-Mayer', 'Metro Goldwyn Mayer', 'MGM Television'], 0xffd4ae62),
  StudioBrand('searchlight', 'Searchlight Pictures', ['Searchlight Pictures', 'Fox Searchlight Pictures'], 0xffd6ba84),
  StudioBrand('focus-features', 'Focus Features', ['Focus Features', 'Focus Features International'], 0xffb5bed4),
  StudioBrand('blumhouse', 'Blumhouse', ['Blumhouse', 'Blumhouse Productions', 'Blumhouse Television'], 0xffa88bca),
  StudioBrand('fx', 'FX', ['FX', 'FX Networks', 'FX Productions', 'FXP'], 0xffc5c9d4),
  StudioBrand(
    'amc',
    'AMC',
    ['AMC', 'AMC Networks', 'AMC Studios'],
    0xffc8ac72,
    'pmvRmATOCaDykE6JrVoeYxlFHw3.png',
  ),
  StudioBrand('bbc', 'BBC', [
    'BBC',
    'BBC One',
    'BBC Two',
    'BBC Three',
    'BBC Four',
    'BBC Studios',
    'BBC Television',
    'British Broadcasting Corporation',
  ], 0xffb9c5dc),
  StudioBrand('itv', 'ITV', ['ITV', 'ITV1', 'ITV Studios', 'Independent Television'], 0xff42b5b4),
  StudioBrand('channel-4', 'Channel 4', ['Channel 4', 'Film4', 'Channel Four Television'], 0xffe35684),
  StudioBrand('channel-5', 'Channel 5', ['Channel 5', 'Channel Five'], 0xffd04b60),
  StudioBrand('sky', 'Sky', ['Sky', 'Sky UK', 'Sky Studios', 'Sky Atlantic'], 0xff3487cf),
  StudioBrand('studio-ghibli', 'Studio Ghibli', ['Studio Ghibli', 'Ghibli', 'スタジオジブリ'], 0xff63b5dc),
  StudioBrand('toei-animation', 'Toei Animation', [
    'Toei Animation',
    'Toei Animation Co., Ltd.',
    '東映アニメーション',
  ], 0xffed6473),
  StudioBrand('mappa', 'MAPPA', ['MAPPA', 'MAPPA Co., Ltd.', '株式会社MAPPA'], 0xff9fbcaa),
  StudioBrand('kyoto-animation', 'Kyoto Animation', ['Kyoto Animation', 'KyoAni', '京都アニメーション'], 0xffdfaa74),
  StudioBrand('disney-channel', 'Disney Channel', [
    'Disney Channel',
    'Disney Channel Original Productions',
  ], 0xff609cf4),
  StudioBrand('cartoon-network', 'Cartoon Network', ['Cartoon Network', 'Cartoon Network Studios'], 0xffb4c8e8),
  // Streaming destinations tracked in JellyCine's SeerrCatalog that were
  // missing here; logo hashes are the same TMDb artwork files.
  StudioBrand('hulu', 'Hulu', ['Hulu', 'Hulu Originals'], 0xff1ce783, 'pqUTCleNUiTLAVlelGxUgWn1ELh.png'),
  StudioBrand('showtime', 'Showtime', ['Showtime', 'Showtime Networks'], 0xffd0021b, 'Allse9kbjiP6ExaQrnSpIhkurEi.png'),
  StudioBrand('starz', 'Starz', ['Starz', 'Starz Originals'], 0xffb5bed4, '8GJjw3HHsAJYwIWKIPBPfqMxlEa.png'),
  StudioBrand('peacock', 'Peacock', ['Peacock', 'Peacock TV'], 0xff6f9fd8),
  StudioBrand('discovery-plus', 'Discovery+', ['Discovery+', 'Discovery Plus'], 0xff4fb1e5),
  // Broadcast networks.
  StudioBrand(
    'abc',
    'ABC',
    ['ABC', 'American Broadcasting Company', 'ABC Studios', 'ABC Signature'],
    0xff9fb3e8,
    'ndAvF4JLsliGreX87jAc9GdjmJY.png',
  ),
  StudioBrand(
    'nbc',
    'NBC',
    ['NBC', 'National Broadcasting Company', 'NBC Studios', 'NBCUniversal Television'],
    0xff6f9fd8,
  ),
  StudioBrand(
    'cbs',
    'CBS',
    ['CBS', 'Columbia Broadcasting System', 'CBS Studios', 'CBS Television Studios', 'CBS Productions'],
    0xff8fb3d9,
    'nm8d7P7MJNiBLdgIzUK0gkuEA4r.png',
  ),
  // Deliberately narrow: bare 'Fox' spellings must not swallow FX, Fox
  // Searchlight (searchlight) or 20th Century Fox (20th-century).
  StudioBrand(
    'fox',
    'FOX',
    ['FOX', 'Fox', 'Fox Broadcasting Company', 'Fox Television Network'],
    0xff7d95d9,
    '1DSpHrWyOORkL9N2QHX7Adt31mQ.png',
  ),
  StudioBrand('the-cw', 'The CW', ['The CW', 'CW', 'CW Television Network'], 0xff8fbf7f, 'ge9hzeaU7nMtQ4PjkFlc68dGAJ9.png'),
  StudioBrand('cinemax', 'Cinemax', ['Cinemax'], 0xffb45c66),
  StudioBrand(
    'nickelodeon',
    'Nickelodeon',
    ['Nickelodeon', 'Nickelodeon Productions', 'Nickelodeon Movies', 'Nickelodeon Animation Studio'],
    0xffff6700,
    'ikZXxg6GnwpzqiZbRPhJGaZapqB.png',
  ),
  StudioBrand('adult-swim', 'Adult Swim', ['Adult Swim', 'Williams Street'], 0xffc5cad4, '9AKyspxVzywuaMuZ1Bvilu8sXly.png'),
];

String _brandName(String value) =>
    value.toLowerCase().replaceAll('&', 'and').replaceAll(RegExp(r'[^\p{L}\p{N}+]', unicode: true), '');
final _brandAliases = {
  for (final brand in studioBrands)
    for (final alias in brand.aliases) _brandName(alias): brand,
};
StudioBrand? studioBrandForName(String name) => _brandAliases[_brandName(name)];
StudioBrand? studioBrandForKey(String key) => studioBrands.where((brand) => brand.key == key).firstOrNull;
