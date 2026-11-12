import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/studio_sort.dart';

void main() {
  test('newest release uses the release date within a year rather than title order', () {
    final earlier = MediaItem.plex(
      id: 'a',
      kind: MediaKind.movie,
      title: 'A',
      year: 2026,
      originallyAvailableAt: '2026-01-01',
    );
    final later = MediaItem.plex(
      id: 'z',
      kind: MediaKind.movie,
      title: 'Z',
      year: 2026,
      originallyAvailableAt: '2026-10-01',
    );
    final rows = [earlier, later]..sort(StudioSort.newest.compare);
    expect(rows.map((item) => item.id), ['z', 'a']);
    for (final backend in MediaBackend.values) {
      expect(StudioSort.newest.forBackend(backend).field, 'originallyAvailableAt');
    }
  });

  test('episode recency uses actual episode dates rather than series import dates', () {
    final oldShowWithNewEpisode = MediaItem.plex(
      id: 'old',
      kind: MediaKind.show,
      title: 'Old show',
      addedAt: 10,
      raw: const {'lastEpisodeAddedAt': '300'},
    );
    final newerShow = MediaItem.plex(
      id: 'new',
      kind: MediaKind.show,
      title: 'New show',
      addedAt: 200,
      raw: const {studioEpisodeAddedAtKey: 250},
    );
    final unknown = MediaItem.plex(id: 'unknown', kind: MediaKind.show, title: 'Unknown', addedAt: 999);
    final rows = [unknown, newerShow, oldShowWithNewEpisode]..sort(StudioSort.recentlyAddedEpisode.compare);
    expect(rows.map((item) => item.id), ['old', 'new', 'unknown']);
    final iso = newerShow.copyWith(raw: {'DateLastMediaAdded': '2026-10-29T12:00:00Z'});
    expect(studioEpisodeAddedAt(iso), DateTime.utc(2026, 10, 29, 12).millisecondsSinceEpoch ~/ 1000);
  });

  test('episode recency is only offered for shows and uses server episode-add sorting', () {
    expect(StudioSort.recentlyAddedEpisode.availableFor(null), isFalse);
    expect(StudioSort.recentlyAddedEpisode.availableFor(MediaKind.movie), isFalse);
    expect(StudioSort.recentlyAddedEpisode.availableFor(MediaKind.show), isTrue);
    for (final backend in MediaBackend.values) {
      expect(StudioSort.recentlyAddedEpisode.forBackend(backend).field, 'episode.addedAt');
    }
  });
}
