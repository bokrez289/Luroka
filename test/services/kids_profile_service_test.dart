import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_hub.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/navigation/navigation_tabs.dart';
import 'package:luroka/services/kids_profile_service.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/models/kids_avatar.dart';

import '../test_helpers/prefs.dart';

MediaItem _item(
  String id, {
  String? rating,
  MediaKind kind = MediaKind.movie,
  String? series,
  String server = 'server',
}) => MediaItem(
  id: id,
  backend: MediaBackend.plex,
  kind: kind,
  contentRating: rating,
  serverId: server,
).copyWith(grandparentId: series);

void main() {
  final service = KidsProfileService.instance;

  setUp(() async {
    resetSharedPreferencesForTest();
    service.resetForTesting();
    await service.initialize();
    await service.setParentPin('1234');
    await service.setChild('child', parentId: 'adult', maxAge: 7);
    service.selectProfile('child');
  });
  tearDown(service.resetForTesting);

  test('restored parental policy is reloaded before selecting a profile', () async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    await prefs.setString('luroka_kids_profiles_v1', '{"children":{"restored-child":{"parentId":"adult","maxAge":5}}}');
    expect(service.isKids('restored-child'), isFalse);
    await service.reloadAfterBackupRestore();
    expect(service.activeId, isNull);
    expect(service.isKids('restored-child'), isTrue);
    service.selectProfile('restored-child');
    expect(service.isActiveKids, isTrue);
    expect(service.ageFor('restored-child'), 5);
  });

  test('a permissive episode or season rating never overrides a mature series', () {
    service.allows(_item('mature-series', rating: 'TV-MA', kind: MediaKind.show));
    expect(service.allows(_item('episode', rating: 'G', kind: MediaKind.episode, series: 'mature-series')), isFalse);
    expect(
      service.allows(_item('season', rating: 'G', kind: MediaKind.season).copyWith(parentId: 'mature-series')),
      isFalse,
    );
    service.allows(_item('safe-series', rating: 'TV-Y', kind: MediaKind.show));
    service.allows(_item('mature-season', rating: 'TV-MA', kind: MediaKind.season));
    expect(
      service.allows(
        _item(
          'other-episode',
          rating: 'G',
          kind: MediaKind.episode,
          series: 'safe-series',
        ).copyWith(parentId: 'mature-season'),
      ),
      isFalse,
    );
  });

  test('stale shelf ratings cannot downgrade stricter item metadata in the same session', () {
    final original = _item('movie', rating: 'G');
    expect(service.allows(original), isTrue);
    expect(service.allows(original.copyWith(contentRating: 'R')), isFalse);
    expect(service.allows(original), isFalse);
    expect(service.filter([original]), isEmpty);
    service.selectProfile('adult');
    expect(service.allows(original), isTrue);
  });

  test('mixed shelves enforce parent ratings regardless of response ordering', () {
    final episode = _item('first-episode', rating: 'G', kind: MediaKind.episode, series: 'mature');
    final mature = _item('mature', rating: 'TV-MA', kind: MediaKind.show);
    expect(
      service.filterHubs([
        MediaHub(id: 'continue', title: 'Continue', type: 'episode', items: [episode]),
        MediaHub(id: 'recent', title: 'Recently added', type: 'show', items: [mature]),
      ]),
      isEmpty,
    );
  });

  test('library access is server-qualified and an empty selection shows no titles', () async {
    await service.setChild('child', parentId: 'adult', maxAge: 7, allowedLibraries: {'server:kids'});
    expect(service.allows(_item('safe', rating: 'G').copyWith(libraryId: 'kids')), isTrue);
    expect(service.allows(_item('blocked', rating: 'G').copyWith(libraryId: 'adult')), isFalse);
    expect(service.allows(_item('other-server', rating: 'G', server: 'other').copyWith(libraryId: 'kids')), isFalse);
    expect(service.allows(_item('unknown', rating: 'G')), isFalse);
    await service.setChild('child', parentId: 'adult', maxAge: 7, allowedLibraries: {});
    expect(service.allows(_item('safe', rating: 'G').copyWith(libraryId: 'kids')), isFalse);
    await service.setChild('child', parentId: 'adult', maxAge: 7, restrictLibraries: false);
    expect(service.allows(_item('safe', rating: 'G').copyWith(libraryId: 'kids')), isTrue);
  });

  test('animation requires the genre and still respects age and library restrictions', () async {
    await service.setChild(
      'child',
      parentId: 'adult',
      maxAge: 7,
      animationOnly: true,
      allowedLibraries: {'server:kids'},
    );
    final animated = _item('animated', rating: 'G').copyWith(libraryId: 'kids', genres: [' Animation ']);
    expect(service.allows(animated), isTrue);
    expect(service.allows(animated.copyWith(id: 'live', genres: ['Family'])), isFalse);
    expect(service.allows(animated.copyWith(id: 'missing', genres: null)), isFalse);
    expect(service.allows(animated.copyWith(id: 'adult', contentRating: 'TV-MA')), isFalse);
    expect(service.allows(animated.copyWith(id: 'other-library', libraryId: 'adult')), isFalse);
  });

  test('sparse episodes inherit library and Animation metadata only from verified matching parents', () async {
    await service.setChild(
      'child',
      parentId: 'adult',
      maxAge: 7,
      animationOnly: true,
      allowedLibraries: {'server:kids'},
    );
    final show = _item(
      'series',
      rating: 'TV-Y',
      kind: MediaKind.show,
    ).copyWith(libraryId: 'kids', genres: ['Animation']);
    expect(service.allows(show), isTrue);
    final episode = _item('episode', kind: MediaKind.episode, series: 'series');
    expect(service.allows(episode), isTrue);
    expect(service.allows(episode.copyWith(serverId: 'other')), isFalse);
    expect(service.allows(episode.copyWith(libraryId: 'adult')), isFalse);
    service.selectProfile('adult');
    service.selectProfile('child');
    expect(service.allows(episode), isFalse);
  });

  test('unrated option allows missing and unrated markers but not unknown or over-limit ratings', () async {
    expect(service.allows(_item('missing')), isFalse);
    await service.setChild('child', parentId: 'adult', maxAge: 7, allowUnrated: true);
    for (final rating in [null, '', 'NR', 'UR', 'Unrated', 'Not Rated']) {
      expect(service.allows(_item('unrated-$rating', rating: rating)), isTrue);
    }
    for (final rating in ['R', 'TV-MA', 'PG-13', 'unrecognized', 'FR/U']) {
      expect(service.allows(_item('blocked-$rating', rating: rating)), isFalse);
    }
    service.allows(_item('adult-series', rating: 'TV-MA', kind: MediaKind.show));
    expect(service.allows(_item('episode', kind: MediaKind.episode, series: 'adult-series')), isFalse);
  });

  test('new restrictions survive restart and ordinary edits preserve them', () async {
    await service.setChild(
      'child',
      parentId: 'adult',
      maxAge: 7,
      animationOnly: true,
      allowUnrated: true,
      allowedLibraries: {'server:kids'},
    );
    await service.setChild('child', parentId: 'adult', maxAge: 12);
    service.resetForTesting();
    await service.initialize();
    service.selectProfile('child');
    expect(service.librariesFor('child'), {'server:kids'});
    expect(service.animationOnly, isTrue);
    expect(service.allowUnrated, isTrue);
  });

  test('avatar choice persists and editing age does not replace the character', () async {
    await service.setChild('child', parentId: 'adult', maxAge: 7, avatar: KidsAvatarKind.fox);
    await service.setChild('child', parentId: 'adult', maxAge: 12);
    service.resetForTesting();
    await service.initialize();
    service.selectProfile('child');
    expect(service.avatarFor('child'), KidsAvatarKind.fox);
    expect(service.isOlderKids, isTrue);
    await service.setChild('child', parentId: 'adult', maxAge: 12, avatar: KidsAvatarKind.panda);
    service.resetForTesting();
    await service.initialize();
    expect(service.avatarFor('child'), KidsAvatarKind.panda);
  });

  test('kids have direct Movies and Shows destinations and a reachable profile picker', () {
    final tabs = NavigationTab.getVisibleTabs(isOffline: false, hasLiveTv: true, hasExplore: true, hasFavorites: true);
    expect(tabs.map((tab) => tab.id), [
      NavigationTabId.discover,
      NavigationTabId.kidsMovies,
      NavigationTabId.kidsShows,
      NavigationTabId.search,
      NavigationTabId.settings,
    ]);
    expect(
      NavigationTab.resolveDefaultTab(isOffline: false, hasLiveTv: true, preferredStartup: NavigationTabId.search),
      NavigationTabId.discover,
    );
    expect(NavigationTab.getVisibleTabs(isOffline: true).last.id, NavigationTabId.settings);
  });

  test('ratings restrict children and unknown/unrated classifications fail closed', () {
    for (final rating in ['G', 'TV-Y', 'TV-Y7', 'TV-Y7-FV', 'TV-G', 'TV-PG', 'PG', 'UK/U', 'DE/FSK 6']) {
      expect(service.allows(_item(rating, rating: rating)), isTrue, reason: rating);
    }
    for (final rating in [null, '', 'NR', 'Unrated', '7.8', 'made-up', 'PG-13', 'TV-14', 'R', 'TV-MA', '18', 'FR/U']) {
      expect(service.allows(_item('$rating', rating: rating)), isFalse, reason: '$rating');
    }
    expect(service.allows(_item('clip', kind: MediaKind.clip, rating: 'G')), isFalse);
    expect(service.allows(_item('music', kind: MediaKind.track, rating: 'G')), isFalse);
  });

  test('age groups and kids appearance persist across a restart', () async {
    await service.setChild('child', parentId: 'adult', maxAge: 16, theme: false);
    service.resetForTesting();
    await service.initialize();
    service.selectProfile('child');
    expect(service.isActiveKids, isTrue);
    expect(service.ageFor('child'), 16);
    expect(service.useKidsTheme, isFalse);
    expect(service.verifyParentPin('1234'), isTrue);
    expect(service.verifyParentPin('0000'), isFalse);
    expect(service.allows(_item('teen', rating: 'TV-14')), isTrue);
    expect(service.allows(_item('adult', rating: 'R')), isFalse);
  });

  test('unrated episodes inherit only from a verified parent on the same server', () {
    final episode = _item('ep', kind: MediaKind.episode, series: 'series');
    expect(service.allows(episode), isFalse);
    expect(service.allows(_item('series', kind: MediaKind.show, rating: 'TV-Y7')), isTrue);
    expect(service.allows(episode), isTrue);
    expect(service.allows(episode.copyWith(serverId: 'another-server')), isFalse);
    expect(service.allows(episode.copyWith(contentRating: 'TV-MA')), isFalse);
    expect(service.allows(episode.copyWith(contentRating: 'Unknown')), isFalse);
  });

  test('rating changes and profile switches invalidate inherited approvals', () async {
    final show = _item('series', kind: MediaKind.show, rating: 'TV-Y');
    final episode = _item('ep', kind: MediaKind.episode, series: 'series');
    service.allows(show);
    service.allows(show.copyWith(contentRating: 'TV-MA'));
    expect(service.allows(episode), isFalse);
    service.allows(show);
    await service.setChild('younger', parentId: 'adult', maxAge: 0);
    service.selectProfile('younger');
    expect(service.allows(episode), isFalse);
  });

  test('parents see all content, including unrated titles', () {
    service.selectProfile('adult');
    expect(service.allows(_item('unrated')), isTrue);
    expect(service.allows(_item('adult', rating: 'R')), isTrue);
    expect(service.isActiveKids, isFalse);
    expect(service.useKidsTheme, isFalse);
  });

  test('parent Continue Watching hides entire series, preserves other servers and library access', () async {
    final first = _item('episode-1', kind: MediaKind.episode, series: 'series', rating: 'TV-Y');
    final next = _item('episode-2', kind: MediaKind.episode, series: 'series', rating: 'TV-Y');
    final movie = _item('movie', rating: 'G');
    await service.recordPlayback(first);
    await service.recordPlayback(movie);
    service.selectProfile('adult');
    await service.setHideKids('adult', true);
    expect(service.filter([next, movie], continueWatching: true), isEmpty);
    expect(service.filter([next, movie]), hasLength(2));
    expect(service.filter([next.copyWith(serverId: 'other')], continueWatching: true), hasLength(1));
    await service.setHideKids('adult', false);
    expect(service.filter([next, movie], continueWatching: true), hasLength(2));
    await service.setHideKids('adult', true);
    await service.clearWatched();
    expect(service.filter([next, movie], continueWatching: true), hasLength(2));
  });

  test('viewing exclusions survive restart and do not hide kids own Continue Watching', () async {
    final movie = _item('movie', rating: 'G');
    await service.recordPlayback(movie);
    await service.setHideKids('adult', true);
    service.resetForTesting();
    await service.initialize();
    service.selectProfile('adult');
    expect(service.filter([movie], continueWatching: true), isEmpty);
    service.selectProfile('child');
    expect(service.filter([movie], continueWatching: true), hasLength(1));
  });

  test('adult playback never creates a kids exclusion', () async {
    service.selectProfile('adult');
    final movie = _item('movie', rating: 'G');
    await service.recordPlayback(movie);
    await service.setHideKids('adult', true);
    expect(service.isHiddenFromContinueWatching(movie), isFalse);
  });

  test('only playback shelves lose parent exclusions; other hubs retain their titles', () async {
    final movie = _item('movie', rating: 'G');
    await service.recordPlayback(movie);
    service.selectProfile('adult');
    await service.setHideKids('adult', true);
    final hubs = service.filterHubs([
      MediaHub(id: 'home.continue', title: 'Continue Watching', type: 'movie', items: [movie]),
      MediaHub(id: 'home.nextup', title: 'Next up', type: 'movie', items: [movie]),
      MediaHub(id: 'home.recent', title: 'Recently added', type: 'movie', items: [movie]),
    ]);
    expect(hubs.map((hub) => hub.id), ['home.recent']);
  });

  test('kids navigation excludes live TV', () {
    final tabs = NavigationTab.getVisibleTabs(isOffline: false, hasLiveTv: true);
    expect(tabs.any((tab) => tab.id == NavigationTabId.liveTv), isFalse);
    service.selectProfile('adult');
    expect(
      NavigationTab.getVisibleTabs(isOffline: false, hasLiveTv: true).any((tab) => tab.id == NavigationTabId.liveTv),
      isTrue,
    );
  });

  test('removing a kids profile removes its exclusions', () async {
    final movie = _item('movie', rating: 'G');
    await service.recordPlayback(movie);
    service.selectProfile('adult');
    await service.setHideKids('adult', true);
    await service.removeProfile('child');
    expect(service.hasKids, isFalse);
    expect(service.isHiddenFromContinueWatching(movie), isFalse);
  });

  test('kids require a parent PIN and an adult owner', () async {
    await expectLater(service.setChild('other', parentId: 'child', maxAge: 7), throwsArgumentError);
    await service.clear();
    await expectLater(service.setChild('other', parentId: 'adult', maxAge: 7), throwsStateError);
    expect(service.hasKids, isFalse);
  });
}
