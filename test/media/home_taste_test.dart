import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/home_taste.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_hub.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';

import '../test_helpers/media_items.dart';

MediaItem movie(String id, List<String> genres, {String server = 's'}) => testMediaItem(
  id: id,
  title: id,
  kind: MediaKind.movie,
  backend: MediaBackend.jellyfin,
  serverId: server,
  genres: genres,
);
HomeViewingSignal viewed(String id, {int minutes = 6, String server = 's', bool episode = false}) =>
    (serverId: server, itemId: id, durationMs: Duration(minutes: minutes).inMilliseconds, episode: episode);
MediaHub row(List<MediaItem> items) => MediaHub(id: 'library.recent', title: 'Recent', type: 'mixed', items: items);

void main() {
  test('requires two distinct, sufficiently watched titles sharing an exact genre', () {
    final rows = [
      row([
        movie('one', ['Sci-Fi', 'Drama']),
        movie('two', ['Sci-Fi']),
        movie('short', ['Drama']),
      ]),
    ];
    expect(homeGenreAffinities(signals: [viewed('one')], visibleRows: rows, onDeck: []), isEmpty);
    expect(
      homeGenreAffinities(signals: [viewed('one'), viewed('short', minutes: 4)], visibleRows: rows, onDeck: []),
      isEmpty,
    );
    expect(homeGenreAffinities(signals: [viewed('one'), viewed('two')], visibleRows: rows, onDeck: []), {'sci-fi': 2});
  });

  test('multiple episodes of one show count once and need an exact show identity', () {
    final show = testMediaItem(
      id: 'show',
      title: 'Show',
      kind: MediaKind.show,
      backend: MediaBackend.jellyfin,
      serverId: 's',
      genres: ['Drama'],
    );
    MediaItem episode(String id, String? parent) => testMediaItem(
      id: id,
      title: id,
      kind: MediaKind.episode,
      backend: MediaBackend.jellyfin,
      serverId: 's',
      grandparentId: parent,
    );
    final ep1 = episode('e1', 'show');
    final ep2 = episode('e2', 'show');
    final rows = [
      row([
        show,
        movie('film', ['Drama']),
      ]),
    ];
    expect(
      homeGenreAffinities(
        signals: [viewed('e1', episode: true), viewed('e2', episode: true)],
        visibleRows: rows,
        onDeck: [ep1, ep2],
      ),
      isEmpty,
    );
    expect(
      homeGenreAffinities(signals: [viewed('e1', episode: true), viewed('film')], visibleRows: rows, onDeck: [ep1]),
      {'drama': 2},
    );
    expect(
      homeGenreAffinities(
        signals: [viewed('e1', episode: true), viewed('film')],
        visibleRows: rows,
        onDeck: [episode('e1', null)],
      ),
      isEmpty,
    );
  });

  test('unmatched or offline library content never contributes taste', () {
    final rows = [
      row([
        movie('one', ['Drama']),
        movie('two', ['Drama'], server: 'offline'),
      ]),
    ];
    expect(
      homeGenreAffinities(
        signals: [
          viewed('one'),
          viewed('two', server: 'offline'),
        ],
        visibleRows: rows,
        onDeck: [],
        onlineServerIds: {'s'},
      ),
      isEmpty,
    );
    expect(
      homeGenreAffinities(
        signals: [
          viewed('one'),
          viewed('two', server: 'elsewhere'),
        ],
        visibleRows: rows,
        onDeck: [],
      ),
      isEmpty,
    );
  });

  test('copies of the same movie on two servers count as one watched title', () {
    final first = movie('a', ['Drama']).copyWith(title: 'Same Movie', year: 2024);
    final copy = movie('b', ['Drama'], server: 'other').copyWith(title: 'Same Movie', year: 2024);
    final third = movie('c', ['Drama']).copyWith(title: 'Different Movie', year: 2024);
    final rows = [
      row([first, copy, third]),
    ];
    expect(
      homeGenreAffinities(
        signals: [
          viewed('a'),
          viewed('b', server: 'other'),
        ],
        visibleRows: rows,
        onDeck: [],
      ),
      isEmpty,
    );
    expect(
      homeGenreAffinities(
        signals: [
          viewed('a'),
          viewed('b', server: 'other'),
          viewed('c'),
        ],
        visibleRows: rows,
        onDeck: [],
      ),
      {'drama': 2},
    );
    final withoutYear = [first.copyWith(year: null), copy.copyWith(year: null)];
    expect(
      homeGenreAffinities(
        signals: [
          viewed('a'),
          viewed('b', server: 'other'),
        ],
        visibleRows: [row(withoutYear)],
        onDeck: [],
      ),
      isEmpty,
    );
  });

  test('episodes of matched show copies on different servers count as one title', () {
    MediaItem show(String id, String server) => testMediaItem(
      id: id,
      title: 'Same Show',
      kind: MediaKind.show,
      backend: MediaBackend.jellyfin,
      serverId: server,
      year: 2024,
      genres: ['Mystery'],
    );
    MediaItem episode(String id, String parent, String server) => testMediaItem(
      id: id,
      title: id,
      kind: MediaKind.episode,
      backend: MediaBackend.jellyfin,
      serverId: server,
      grandparentId: parent,
    );
    final rows = [
      row([show('show-a', 's'), show('show-b', 'other')]),
    ];
    final affinity = homeGenreAffinities(
      signals: [
        viewed('ep-a', episode: true),
        viewed('ep-b', server: 'other', episode: true),
      ],
      visibleRows: rows,
      onDeck: [episode('ep-a', 'show-a', 's'), episode('ep-b', 'show-b', 'other')],
    );
    expect(affinity, isEmpty);
  });
}
