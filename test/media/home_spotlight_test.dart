import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/home_layout.dart';
import 'package:luroka/media/home_progress.dart';
import 'package:luroka/media/home_spotlight.dart';
import 'package:luroka/media/home_taste.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_hub.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/models/catalog/catalog_item.dart';

import '../test_helpers/media_items.dart';

MediaItem movie(String id, {String? title, String server = 'one', int? views = 0, bool? favorite}) => testMediaItem(
  id: id,
  title: title ?? id,
  backend: MediaBackend.jellyfin,
  kind: MediaKind.movie,
  serverId: server,
).copyWith(year: 2024, viewCount: views, isFavorite: favorite);

MediaHub row(String id, List<MediaItem> items) => MediaHub(id: id, title: id, type: 'mixed', items: items);

List<HomeSpotlightItem> select({
  HomeSpotlightSource source = HomeSpotlightSource.forYou,
  List<MediaItem> progress = const [],
  List<MediaHub> rows = const [],
  List<MediaItem> trending = const [],
  List<MediaItem> favoritesSnapshot = const [],
  Set<String>? onlineServerIds,
  List<HomeViewingSignal> viewingSignals = const [],
}) => selectPersonalSpotlight(
  source: source,
  visibleRows: rows,
  onDeck: progress,
  trending: trending,
  favoritesSnapshot: favoritesSnapshot,
  onlineServerIds: onlineServerIds,
  viewingSignals: viewingSignals,
  continueTitle: 'Continue',
  nextTitle: 'Next',
  favoritesTitle: 'Favorites',
  recentTitle: 'Recent',
  trendingTitle: 'Trending',
  inspiredTitle: 'Inspired',
);

void main() {
  test('mixes reliable progress, favorites, recent and trends without duplicate copies', () {
    final resume = withHomeProgressRole(
      movie('resume').copyWith(viewOffsetMs: 3000, durationMs: 9000),
      HomeProgressRole.resume,
    );
    final next = withHomeProgressRole(
      testMediaItem(
        id: 'ep',
        title: 'Episode',
        backend: MediaBackend.jellyfin,
        kind: MediaKind.episode,
        serverId: 'one',
      ).copyWith(grandparentId: 'show', grandparentTitle: 'Show'),
      HomeProgressRole.nextUp,
    );
    final favorite = movie('fav', title: 'A favorite', favorite: true);
    final duplicate = movie('copy', title: 'A favorite', server: 'two');
    final recent = movie('new');
    final trend = movie('trend');
    final features = select(
      progress: [resume, next],
      rows: [
        row('library.one.recent', [favorite, recent]),
        row('recommended', [duplicate, trend]),
      ],
      trending: [duplicate, trend],
    );
    expect(features.map((entry) => entry.$1.id), ['resume', 'fav', 'new', 'ep', 'trend']);
    expect(features.map((entry) => entry.$2.title), ['Continue', 'Favorites', 'Recent', 'Next', 'Trending']);
    expect(features.first.$2.usesContinueWatchingAction, isTrue);
    expect(features[3].$2.usesContinueWatchingAction, isTrue);
  });

  test('does not claim unknown or completed favorites or invent Next Up for untagged rows', () {
    final unknown = movie('unknown', views: null, favorite: true);
    final watched = movie('watched', views: 1, favorite: true);
    final unfinished = movie('unfinished', favorite: true);
    final uncertain = movie('uncertain');
    final features = select(
      progress: [uncertain],
      rows: [
        row('recommendations', [unknown, watched, unfinished]),
      ],
    );
    expect(features.map((entry) => entry.$1.id), ['unfinished']);
    expect(features.single.$2.title, 'Favorites');
    final continuing = select(source: HomeSpotlightSource.continueWatching, progress: [uncertain]);
    expect(continuing.single.$2.title, 'Continue');
  });

  test('excludes items without a real server and preserves legacy trending mode', () {
    final synthetic = testMediaItem(id: 'catalog', title: 'Catalog', backend: MediaBackend.plex, kind: MediaKind.movie);
    expect(
      select(
        rows: [
          row('library.recent', [synthetic]),
        ],
      ),
      isEmpty,
    );
    expect(select(source: HomeSpotlightSource.trending, trending: [movie('trend')]), isEmpty);
  });

  test('offline servers cannot contribute a personal Spotlight action', () {
    final offline = movie('offline', server: 'offline');
    final online = movie('online');
    final selected = select(
      rows: [
        row('library.one.recent', [offline, online]),
      ],
      onlineServerIds: {'one'},
    );
    expect(selected.map((entry) => entry.$1.id), ['online']);
  });

  test('a show is not featured twice when its episode is already resumable', () {
    final episode = testMediaItem(
      id: 'episode',
      title: 'Episode',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.episode,
      serverId: 'one',
      grandparentId: 'show',
      grandparentTitle: 'The show',
      durationMs: 10000,
      viewOffsetMs: 500,
    );
    final show = testMediaItem(
      id: 'show',
      title: 'The show',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.show,
      serverId: 'one',
      year: 2024,
      leafCount: 10,
      viewedLeafCount: 1,
      isFavorite: true,
    );
    final selected = select(
      progress: [episode],
      rows: [
        row('library.one.recent', [show]),
      ],
    );
    expect(selected.map((entry) => entry.$1.id), ['episode']);
  });

  test('matches an already-loaded watchlist snapshot only to an actual eligible library copy', () {
    final catalog = CatalogItem(
      source: CatalogSourceId.plex,
      kind: MediaKind.movie,
      title: 'Saved title',
      year: 2024,
      ids: const CatalogItemIds(imdb: 'tt1234567'),
    ).toMediaItem();
    final copy = movie('library-copy', title: 'Saved title').copyWith(
      raw: {
        'ProviderIds': {'Imdb': 'tt1234567'},
        'UserData': {'Played': false},
      },
    );
    final missing = select(favoritesSnapshot: [catalog]);
    expect(missing, isEmpty);
    final found = select(
      favoritesSnapshot: [catalog],
      rows: [
        row('recommendations', [copy]),
      ],
    );
    expect(found.single.$1.globalKey, copy.globalKey);
    expect(found.single.$2.title, 'Favorites');
    final conflicting = copy.copyWith(
      raw: {
        'ProviderIds': {'Imdb': 'tt7654321'},
        'UserData': {'Played': false},
      },
    );
    expect(
      select(
        favoritesSnapshot: [catalog],
        rows: [
          row('recommendations', [conflicting]),
        ],
      ),
      isEmpty,
    );
  });

  test('a verified library favorite can be featured without being on a Home shelf', () {
    final saved = movie('saved', favorite: true).copyWith(
      raw: {
        'UserData': {'Played': false},
      },
    );
    final result = select(favoritesSnapshot: [saved], onlineServerIds: {'one'});
    expect(result.single.$1.globalKey, saved.globalKey);
    expect(result.single.$2.title, 'Favorites');
    final unknown = saved.copyWith(raw: {'Name': 'missing user data'});
    expect(select(favoritesSnapshot: [unknown], onlineServerIds: {'one'}), isEmpty);
    final hiddenProgress = saved.copyWith(viewOffsetMs: 1000, durationMs: 10000);
    expect(select(favoritesSnapshot: [hiddenProgress], onlineServerIds: {'one'}), isEmpty);
  });

  test('two verified watched titles promote one matching genre without dominating the mix', () {
    final watched1 = movie('watched1', views: 1).copyWith(genres: ['Sci-Fi']);
    final watched2 = movie('watched2', views: 1).copyWith(genres: ['Sci-Fi']);
    final other = movie('other').copyWith(genres: ['Comedy']);
    final match = movie('match').copyWith(genres: ['Sci-Fi']);
    final trend = movie('trend').copyWith(genres: ['Drama']);
    const signals = <HomeViewingSignal>[
      (serverId: 'one', itemId: 'watched1', durationMs: 360000, episode: false),
      (serverId: 'one', itemId: 'watched2', durationMs: 360000, episode: false),
    ];
    final rows = [
      row('watched', [watched1, watched2]),
      row('library.one.recent', [other, match, trend]),
    ];
    final selected = select(rows: rows, trending: [trend], viewingSignals: signals);
    expect(selected.first.$1.id, 'match');
    expect(selected.first.$2.title, 'Inspired');
    expect(selected.where((entry) => entry.$2.title == 'Inspired'), hasLength(1));
    expect(selected.map((entry) => entry.$1.id), containsAll(['other', 'trend']));
    final sparse = select(rows: rows, trending: [trend], viewingSignals: [signals.first]);
    expect(sparse.first.$1.id, 'other');
    expect(sparse.first.$2.title, 'Recent');
  });
}
