import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/studio_sort.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/services/storage_service.dart';

import '../test_helpers/prefs.dart';

void main() {
  setUp(resetSharedPreferencesForTest);

  test('studio sorts survive preference service restart and remain profile/filter scoped', () async {
    final storage = await StorageService.getInstance();
    await storage.setActiveProfileId('profile-a');
    await storage.saveStudioSort(StudioSort.newest);
    expect(storage.getStudioSort(kind: MediaKind.show), StudioSort.newest);
    await storage.saveStudioSort(StudioSort.recentlyAddedEpisode, kind: MediaKind.show);
    await storage.saveStudioSort(StudioSort.rating, kind: MediaKind.movie);

    BaseSharedPreferencesService.resetForTesting();
    final restarted = await StorageService.getInstance();
    expect(restarted.getStudioSort(), StudioSort.newest);
    expect(restarted.getStudioSort(kind: MediaKind.movie), StudioSort.rating);
    expect(restarted.getStudioSort(kind: MediaKind.show), StudioSort.recentlyAddedEpisode);
    await restarted.setActiveProfileId('profile-b');
    expect(restarted.getStudioSort(), StudioSort.titleAscending);
    expect(restarted.getStudioSort(kind: MediaKind.show), StudioSort.titleAscending);
    await restarted.setActiveProfileId('profile-a');
    expect(restarted.getStudioSort(kind: MediaKind.show), StudioSort.recentlyAddedEpisode);
  });

  test('unknown and incompatible stored sorts safely fall back', () async {
    final storage = await StorageService.getInstance();
    await storage.prefs.setString('studio_sort_all', 'from-a-future-version');
    expect(storage.getStudioSort(), StudioSort.titleAscending);
    await storage.prefs.setString('studio_sort_movie', 'recentlyAddedEpisode');
    expect(storage.getStudioSort(kind: MediaKind.movie), StudioSort.titleAscending);
    await storage.saveStudioSort(StudioSort.newest);
    await storage.saveStudioSort(StudioSort.recentlyAddedEpisode);
    expect(storage.getStudioSort(), StudioSort.newest);
  });

  test('Favorites remembers filter sorts across restart without changing studio or another profile', () async {
    final storage = await StorageService.getInstance();
    await storage.setActiveProfileId('profile-a');
    await storage.saveStudioSort(StudioSort.newest);
    await storage.saveFavoritesSort(StudioSort.rating);
    await storage.saveFavoritesSort(StudioSort.recentlyAdded, kind: MediaKind.show);
    BaseSharedPreferencesService.resetForTesting();
    final restarted = await StorageService.getInstance();
    expect(restarted.getFavoritesSort(), StudioSort.rating);
    expect(restarted.getFavoritesSort(kind: MediaKind.show), StudioSort.recentlyAdded);
    expect(restarted.getStudioSort(), StudioSort.newest);
    await restarted.setActiveProfileId('profile-b');
    expect(restarted.getFavoritesSort(), StudioSort.titleAscending);
    expect(restarted.getFavoritesSort(kind: MediaKind.show), StudioSort.titleAscending);
  });
}
