import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/person_filmography.dart';

void main() {
  MediaItem movie(String id, String title, {int? year, String? date}) => MediaItem(
    id: id,
    backend: MediaBackend.jellyfin,
    kind: MediaKind.movie,
    title: title,
    year: year,
  ).copyWith(originallyAvailableAt: date);

  test('filmography sorting uses release dates globally and keeps undated titles last', () {
    final source = [
      movie('unknown', 'Undated'),
      movie('old', 'Old film', year: 1995),
      movie('b', 'Beta', date: '2026-05-01'),
      movie('a', 'Alpha', date: '2026-05-01'),
      movie('new', 'New film', date: '2026-10-01'),
    ];
    expect(sortPersonFilmography(source, PersonFilmographySort.newest).map((i) => i.id), [
      'new',
      'a',
      'b',
      'old',
      'unknown',
    ]);
    expect(sortPersonFilmography(source, PersonFilmographySort.oldest).map((i) => i.id), [
      'old',
      'a',
      'b',
      'new',
      'unknown',
    ]);
    expect(source.first.id, 'unknown');
  });

  test('A–Z uses the backend sort title with deterministic ties', () {
    final source = [movie('z', 'Zulu'), movie('b', 'The Apple').copyWith(titleSort: 'Apple'), movie('a', 'apple')];
    expect(sortPersonFilmography(source, PersonFilmographySort.title).map((i) => i.id), ['a', 'b', 'z']);
  });
}
