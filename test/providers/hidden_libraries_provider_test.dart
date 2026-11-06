import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/providers/hidden_libraries_provider.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/providers/libraries_provider.dart';
import 'package:luroka/media/media_library.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_kind.dart';
import '../test_helpers/media_items.dart';

import '../test_helpers/prefs.dart';

void main() {
  setUp(resetSharedPreferencesForTest);

  group('HiddenLibrariesProvider', () {
    test('source choices survive restart, isolate profiles and exclude newly discovered libraries', () async {
      final storage = await StorageService.getInstance();
      await storage.setActiveProfileId('alex');
      final libraries = LibrariesProvider(storageService: storage);
      addTearDown(libraries.dispose);
      const a = MediaLibrary(
        id: 'movies',
        title: 'Movies',
        backend: MediaBackend.plex,
        kind: MediaKind.movie,
        serverId: 'a',
      );
      const b = MediaLibrary(
        id: 'movies',
        title: 'Movies',
        backend: MediaBackend.plex,
        kind: MediaKind.movie,
        serverId: 'b',
      );
      await libraries.updateLibraryOrder([a, b]);
      final sources = HiddenLibrariesProvider(storageService: storage, profileId: 'alex', libraries: libraries);
      await sources.ensureInitialized();
      expect(sources.hasSourceSelection, isFalse);
      await sources.setSelectedSourceLibraries({a.globalKey});
      expect(sources.hiddenLibraryKeys, contains(b.globalKey));
      expect(sources.allowsItem(testMediaItem(serverId: 'a', libraryId: 'movies')), isTrue);
      expect(sources.allowsItem(testMediaItem(serverId: 'b', libraryId: 'movies')), isFalse);
      expect(sources.allowsItem(testMediaItem(serverId: 'b')), isFalse);
      sources.dispose();
      BaseSharedPreferencesService.resetForTesting();
      final restored = HiddenLibrariesProvider(profileId: 'alex', libraries: libraries);
      addTearDown(restored.dispose);
      await restored.ensureInitialized();
      expect(restored.selectedSourceLibraries, {a.globalKey});
      final other = HiddenLibrariesProvider(profileId: 'sam');
      addTearDown(other.dispose);
      await other.ensureInitialized();
      expect(other.hasSourceSelection, isFalse);
      const added = MediaLibrary(
        id: 'new',
        title: 'New',
        backend: MediaBackend.plex,
        kind: MediaKind.movie,
        serverId: 'a',
      );
      await libraries.updateLibraryOrder([a, b, added]);
      expect(restored.hiddenLibraryKeys, contains(added.globalKey));
      expect(restored.allowsItem(testMediaItem(serverId: 'a', libraryId: 'new')), isFalse);
    });

    test('starts uninitialized and exposes empty set', () async {
      final p = HiddenLibrariesProvider();
      expect(p.isInitialized, isFalse);
      expect(p.hiddenLibraryKeys, isEmpty);
      await p.ensureInitialized();
      expect(p.isInitialized, isTrue);
      expect(p.hiddenLibraryKeys, isEmpty);
      p.dispose();
    });

    test('hideLibrary persists key and notifies listeners', () async {
      final p = HiddenLibrariesProvider();
      await p.ensureInitialized();

      var notified = 0;
      p.addListener(() => notified++);

      await p.hideLibrary('lib-1');
      expect(p.isLibraryHidden('lib-1'), isTrue);
      expect(p.hiddenLibraryKeys, contains('lib-1'));
      expect(notified, 1);

      await p.hideLibrary('lib-1');
      expect(notified, 1);

      p.dispose();
    });

    test('persists across provider instances via SharedPreferences', () async {
      final first = HiddenLibrariesProvider();
      await first.ensureInitialized();
      await first.hideLibrary('lib-A');
      await first.hideLibrary('lib-B');
      first.dispose();

      // Reset only the cached singleton, NOT SharedPreferences — values survive.
      BaseSharedPreferencesService.resetForTesting();

      final second = HiddenLibrariesProvider();
      await second.ensureInitialized();
      expect(second.isLibraryHidden('lib-A'), isTrue);
      expect(second.isLibraryHidden('lib-B'), isTrue);
      expect(second.isLibraryHidden('lib-C'), isFalse);
      second.dispose();
    });

    test('unhideLibrary removes the key', () async {
      final p = HiddenLibrariesProvider();
      await p.ensureInitialized();
      await p.hideLibrary('lib-1');
      await p.hideLibrary('lib-2');

      await p.unhideLibrary('lib-1');
      expect(p.isLibraryHidden('lib-1'), isFalse);
      expect(p.isLibraryHidden('lib-2'), isTrue);

      await p.unhideLibrary('lib-3');
      expect(p.hiddenLibraryKeys, equals({'lib-2'}));

      p.dispose();
    });

    test('refresh re-reads from storage', () async {
      final p = HiddenLibrariesProvider();
      await p.ensureInitialized();
      expect(p.hiddenLibraryKeys, isEmpty);

      // Mutate underlying storage out-of-band, then refresh.
      final storage = await StorageService.getInstance();
      await storage.saveHiddenLibraries({'external-1', 'external-2'});

      await p.refresh();
      expect(p.hiddenLibraryKeys, equals({'external-1', 'external-2'}));

      p.dispose();
    });

    test('explicit profile id stays isolated when active profile changes', () async {
      final storage = await StorageService.getInstance();
      await storage.saveHiddenLibrariesForProfile('owner', {'srv:movies'});
      await storage.saveHiddenLibrariesForProfile('kids', {'srv:kids'});
      await storage.setActiveProfileId('owner');

      final ownerProvider = HiddenLibrariesProvider(storageService: storage, profileId: 'owner');
      final kidsProvider = HiddenLibrariesProvider(storageService: storage, profileId: 'kids');

      await storage.setActiveProfileId('kids');
      await ownerProvider.refresh();
      await kidsProvider.refresh();

      expect(ownerProvider.hiddenLibraryKeys, {'srv:movies'});
      expect(kidsProvider.hiddenLibraryKeys, {'srv:kids'});

      await ownerProvider.hideLibrary('srv:documentaries');

      expect(storage.getHiddenLibrariesForProfile('owner'), {'srv:movies', 'srv:documentaries'});
      expect(storage.getHiddenLibrariesForProfile('kids'), {'srv:kids'});
      expect(storage.getHiddenLibraries(), {'srv:kids'});

      ownerProvider.dispose();
      kidsProvider.dispose();
    });

    test('refresh marks provider initialized after deterministic reload', () async {
      final storage = await StorageService.getInstance();
      await storage.saveHiddenLibrariesForProfile('owner', {'srv:movies'});

      final p = HiddenLibrariesProvider(storageService: storage, profileId: 'owner');
      expect(p.isInitialized, isFalse);

      await p.refresh();

      expect(p.isInitialized, isTrue);
      expect(p.hiddenLibraryKeys, {'srv:movies'});

      p.dispose();
    });

    test('hiddenLibraryKeys returns an unmodifiable view', () async {
      final p = HiddenLibrariesProvider();
      await p.ensureInitialized();
      await p.hideLibrary('lib-1');

      expect(() => p.hiddenLibraryKeys.add('mutated'), throwsUnsupportedError);

      p.dispose();
    });

    test('safeNotifyListeners no-ops after dispose', () async {
      final p = HiddenLibrariesProvider();
      await p.ensureInitialized();
      p.dispose();
      await p.refresh();
    });
  });
}
