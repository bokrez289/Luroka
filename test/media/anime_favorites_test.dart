import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/anime_favorites.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_library.dart';
import 'package:luroka/services/storage_service.dart';

import '../test_helpers/prefs.dart';

void main() {
  MediaItem item({
    String id = 'a',
    String? library,
    List<String>? genres,
    List<String>? labels,
    Map<String, Object?>? raw,
  }) => MediaItem.jellyfin(
    id: id,
    kind: MediaKind.show,
    title: id,
    serverId: 'server',
    libraryId: library,
    genres: genres,
    labels: labels,
    raw: raw,
  );

  const animeLibrary = MediaLibrary(
    id: 'anime',
    title: 'Anime Movies',
    serverId: 'server',
    backend: MediaBackend.jellyfin,
  );
  const mixedLibrary = MediaLibrary(id: 'mixed', title: 'Movies', serverId: 'server', backend: MediaBackend.jellyfin);

  test('dedicated libraries and explicit anime metadata identify titles without treating all animation as anime', () {
    final rules = AnimeFavoritesRules();
    expect(animeLibraryName('Anime Movies'), isTrue);
    expect(animeLibraryName('My Anime - Shows'), isTrue);
    expect(animeLibraryName('Animal documentaries'), isFalse);
    expect(animeLibraryName('Animation'), isFalse);
    expect(
      rules.includesTitle([item(library: 'anime')], libraryTitles: {animeLibrary.globalKey: animeLibrary.title}),
      isTrue,
    );
    expect(
      rules.includesTitle([
        item(genres: ['Animation']),
      ]),
      isFalse,
    );
    expect(
      rules.includesTitle([
        item(genres: ['Anime']),
      ]),
      isTrue,
    );
    expect(
      rules.includesTitle([
        item(labels: ['  ANIME ']),
      ]),
      isTrue,
    );
    expect(
      rules.includesTitle([
        item(
          raw: {
            'ProviderIds': {'AniList': '123'},
          },
        ),
      ]),
      isTrue,
    );
    expect(
      rules.includesTitle([
        item(
          raw: {
            'ProviderIds': {'AniList': ''},
          },
        ),
      ]),
      isFalse,
    );
    expect(
      rules.includesTitle([
        item(
          raw: {
            'lurokaCatalog': {'source': 'mal', 'ids': {}},
          },
        ),
      ]),
      isTrue,
    );
  });

  test('library and title corrections override guesses and follow grouped copies', () {
    final first = item(id: 'one', library: 'mixed');
    final second = item(id: 'two', library: 'anime');
    final titles = {animeLibrary.globalKey: animeLibrary.title, mixedLibrary.globalKey: mixedLibrary.title};
    var rules = AnimeFavoritesRules();
    expect(rules.includesTitle([first, second], libraryTitles: titles), isTrue);
    rules = rules.withLibrary(animeLibrary.globalKey, false);
    expect(rules.includesTitle([first, second], libraryTitles: titles), isFalse);
    rules = rules.withTitles([first, second], true);
    expect(rules.includesTitle([second, first], libraryTitles: titles), isTrue);
    expect(rules.includesTitle([second], libraryTitles: titles), isTrue);
    rules = rules.withTitles([first, second], false);
    expect(rules.includesTitle([first, second], libraryTitles: titles), isFalse);
    rules = rules.withTitles([first, second], null).withLibrary(animeLibrary.globalKey, null);
    expect(rules.includesTitle([first, second], libraryTitles: titles), isTrue);
  });

  test('anime decisions persist independently per profile and clear with profile preferences', () async {
    resetSharedPreferencesForTest();
    final storage = await StorageService.getInstance();
    final rules = AnimeFavoritesRules().withLibrary(animeLibrary.globalKey, true).withTitles([item()], false);
    await storage.saveAnimeFavoritesRules('profile-one', rules);
    expect(storage.getAnimeFavoritesRules('profile-one').libraries, rules.libraries);
    expect(storage.getAnimeFavoritesRules('profile-one').titles, rules.titles);
    expect(storage.getAnimeFavoritesRules('profile-two').libraries, isEmpty);
    expect(storage.getAnimeFavoritesRules('profile-two').titles, isEmpty);
    await storage.clearUserScopedPreferencesForProfile('profile-one');
    expect(storage.getAnimeFavoritesRules('profile-one').libraries, isEmpty);
    expect(storage.getAnimeFavoritesRules('profile-one').titles, isEmpty);
  });
}
