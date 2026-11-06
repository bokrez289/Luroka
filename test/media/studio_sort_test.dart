import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/studio_sort.dart';

void main() {
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
