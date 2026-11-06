import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/search_hit.dart';
import 'package:luroka/media/search_movie_groups.dart';
import '../test_helpers/media_items.dart';

void main() {
  test('three library copies collapse without removing distinct documentaries or episodes', () {
    final movie = testMediaItem(
      id: 'hd',
      kind: MediaKind.movie,
      title: 'Oppenheimer',
      year: 2023,
      serverId: 'server',
      libraryId: 'movies',
    );
    final uhd = movie.copyWith(id: 'uhd', libraryId: '4k');
    final remux = movie.copyWith(id: 'remux', libraryId: 'remux');
    final documentary = movie.copyWith(id: 'doc', title: 'Oppenheimer: The Real Story');
    final episode = movie.copyWith(id: 'episode', kind: MediaKind.episode);
    final hits = [
      for (final item in [uhd, documentary, movie, episode, remux]) MediaSearchHit(item),
    ];
    final result = groupSearchMovies(hits, [movie, uhd, remux]);
    expect(result.whereType<MediaSearchHit>().map((hit) => hit.item.id), ['uhd', 'doc', 'episode']);
  });
  test('same name and year with conflicting external IDs remains separate', () {
    final first = testMediaItem(
      id: 'a',
      title: 'Same name',
      year: 2023,
      raw: {
        'ProviderIds': {'Imdb': 'tt1'},
      },
    );
    final second = first.copyWith(
      id: 'b',
      raw: {
        'ProviderIds': {'Imdb': 'tt2'},
      },
    );
    expect(groupSearchMovies([MediaSearchHit(first), MediaSearchHit(second)], [first, second]), hasLength(2));
  });

  test('show copies collapse with a visible count while movies and unrelated shows stay separate', () {
    final show = testMediaItem(id: 'hd', kind: MediaKind.show, title: 'Example', year: 2020, serverId: 'one');
    final copy = show.copyWith(id: 'uhd', serverId: 'two');
    final otherShow = show.copyWith(id: 'other', year: 2021);
    final movie = show.copyWith(id: 'movie', kind: MediaKind.movie);
    final hits = [
      for (final item in [copy, show, otherShow, movie]) MediaSearchHit(item),
    ];
    final result = groupSearchMovies(hits, [show, copy, otherShow, movie]);
    expect(result.whereType<MediaSearchHit>().map((hit) => hit.item.id), ['uhd', 'other', 'movie']);
    expect((result.first as MediaSearchHit).item.raw?['lurokaCopyCount'], 2);
  });
}
