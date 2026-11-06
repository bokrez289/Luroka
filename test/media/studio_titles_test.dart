import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/studio_titles.dart';

MediaItem movie(
  String id, {
  String title = 'Arrival',
  int? year = 2016,
  Map<String, String>? ids,
  String library = 'HD',
}) => MediaItem(
  id: id,
  backend: MediaBackend.jellyfin,
  kind: MediaKind.movie,
  title: title,
  year: year,
  serverId: 'server',
  libraryId: library,
  libraryTitle: library,
  raw: ids == null ? null : {'ProviderIds': ids},
);

void main() {
  test('copies from later pages share one stable poster and retain their library targets', () {
    final hd = movie('hd', ids: {'Tmdb': '329865'});
    final uhd = movie('uhd', library: '4K', ids: {'Tmdb': '329865'});
    final titles = StudioTitles()..addAll([hd]);
    titles.addAll([movie('another', title: 'Another movie'), uhd, hd]);
    expect(titles.items.map((item) => item.id), ['hd', 'another']);
    expect(titles.items.first, same(hd));
    expect(titles.copiesFor(hd).map((item) => item.libraryId), ['HD', '4K']);
    expect(titles.copiesFor(uhd).map((item) => item.id), ['hd', 'uhd']);
  });

  test('matching provider IDs group translated titles and tolerate missing years', () {
    final titles = StudioTitles()
      ..addAll([
        movie('first', ids: {'Imdb': 'tt2543164'}),
        movie('translated', title: 'Premier Contact', year: null, ids: {'imdb': 'tt2543164'}),
      ]);
    expect(titles.items, hasLength(1));
    expect(titles.copiesFor(titles.items.single), hasLength(2));
  });

  test('slim rows fall back to folded title plus exact year', () {
    final titles = StudioTitles()
      ..addAll([
        movie('first', title: 'Spider-Man', year: 2002),
        movie('second', title: 'SPIDER MAN', year: 2002),
        movie('remake', title: 'Spider-Man', year: 2012),
        movie('unknown-year', title: 'Spider-Man', year: null),
      ]);
    expect(titles.items.map((item) => item.id), ['first', 'remake', 'unknown-year']);
  });

  test('conflicting IDs, kinds and Plex catalogue guids keep distinct posters', () {
    final titles = StudioTitles()
      ..addAll([
        movie('first', ids: {'Tmdb': '1', 'Imdb': 'tt1'}),
        movie('different', ids: {'Tmdb': '2'}),
        // A shared ID cannot bridge contradictory catalogue metadata.
        movie('conflicting', ids: {'Tmdb': '1', 'Imdb': 'tt2'}),
        movie('show', ids: {'Tmdb': '1'}).copyWith(kind: MediaKind.show),
        MediaItem.plex(id: 'plex1', kind: MediaKind.movie, title: 'Same', year: 2000, guid: 'plex://movie/1'),
        MediaItem.plex(id: 'plex2', kind: MediaKind.movie, title: 'Same', year: 2000, guid: 'plex://movie/2'),
      ]);
    expect(titles.items, hasLength(6));
  });

  test('Plex stable guids group copies across different titles and libraries', () {
    final titles = StudioTitles()
      ..addAll([
        const MediaItem.plex(id: 'hd', kind: MediaKind.movie, title: 'Title', guid: 'plex://movie/1', libraryId: 'HD'),
        const MediaItem.plex(
          id: '4k',
          kind: MediaKind.movie,
          title: 'Translated',
          guid: 'plex://movie/1',
          libraryId: '4K',
        ),
      ]);
    expect(titles.items, hasLength(1));
    expect(titles.copiesFor(titles.items.single), hasLength(2));
  });

  test('refreshing either copy preserves the group and updates its real target', () {
    final hd = movie('hd');
    final uhd = movie('uhd', library: '4K');
    final titles = StudioTitles()..addAll([hd, uhd]);
    titles.replace(uhd.copyWith(viewCount: 1));
    expect(titles.copiesFor(hd).last.viewCount, 1);
    titles.replace(hd.copyWith(viewCount: 1));
    expect(titles.items.single.viewCount, 1);
    expect(titles.copiesFor(hd), hasLength(2));
  });
}
