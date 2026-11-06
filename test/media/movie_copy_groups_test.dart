import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/movie_copy_groups.dart';
import '../test_helpers/media_items.dart';

void main() {
  test('movie grouping retains library identity and independent progress in original order', () {
    final a = testMediaItem(
      id: 'a',
      kind: MediaKind.movie,
      title: 'A Movie',
      year: 2026,
      serverId: 'server',
    ).copyWith(libraryId: 'hd', libraryTitle: 'HD', viewOffsetMs: 1000);
    final b = a.copyWith(id: 'b', libraryId: '4k', libraryTitle: '4K', viewOffsetMs: 9000);
    final remake = a.copyWith(id: 'remake', year: 1990);
    final group = MovieCopyGroups([a, b, remake]);
    expect(group.items, [a, remake]);
    expect(group.copiesFor(a), [a, b]);
    expect(group.copiesFor(a).last.viewOffsetMs, 9000);
  });
  test('episodes with the same title/year remain separate', () {
    final a = testMediaItem(id: 'a', kind: MediaKind.episode, title: 'Pilot', year: 2026);
    final b = a.copyWith(id: 'b');
    expect(MovieCopyGroups([a, b]).items, [a, b]);
  });
  test('duplicate shows expose their original library copies without merging with movies', () {
    final show = testMediaItem(
      id: 'show-hd',
      kind: MediaKind.show,
      title: 'A shared show',
      year: 2025,
      serverId: 'server',
    ).copyWith(libraryId: 'shows-hd', libraryTitle: 'TV Shows');
    final other = show.copyWith(id: 'show-4k', libraryId: 'shows-4k', libraryTitle: 'TV Shows 4K');
    final movie = show.copyWith(id: 'film', kind: MediaKind.movie);
    final group = MovieCopyGroups([show, other, movie]);
    expect(group.items, [show, movie]);
    expect(group.copiesFor(show), [show, other]);
    expect(group.copiesFor(other).last.libraryId, 'shows-4k');
  });
  test('contradicting external IDs cannot merge movies', () {
    final a = testMediaItem(id: 'a', kind: MediaKind.movie, title: 'A Movie', year: 2026).copyWith(
      raw: {
        'ProviderIds': {'Tmdb': '1'},
      },
    );
    final b = a.copyWith(
      id: 'b',
      raw: {
        'ProviderIds': {'Tmdb': '2'},
      },
    );
    expect(MovieCopyGroups([a, b]).items, [a, b]);
  });
}
