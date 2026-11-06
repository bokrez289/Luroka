import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/studio_discovery.dart';

void main() {
  MediaItem movie(String id, {int? addedAt, double? rating, int? offset, int? played}) => MediaItem.plex(
    id: id,
    kind: MediaKind.movie,
    title: id,
    addedAt: addedAt,
    rating: rating,
    viewOffsetMs: offset,
    durationMs: 100000,
    viewCount: played,
  );

  test('shelves omit unknown metadata and rank real dates, ratings and watch history', () {
    final data = StudioDiscovery([
      movie('Unknown'),
      movie('Older', addedAt: 10, rating: 9, played: 3),
      movie('Newer', addedAt: 20, rating: 8, played: 1),
      movie('Unrated', addedAt: 0, rating: 0),
    ]);
    expect(data.recentlyAdded.map((item) => item.id), ['Newer', 'Older']);
    expect(data.topRated.map((item) => item.id), ['Older', 'Newer']);
    expect(data.mostWatched.map((item) => item.id), ['Older', 'Newer']);
    expect(data.continueWatching, isEmpty);
    expect(data.featured?.id, 'Older');
  });

  test('resume shelf includes partial shows and rewatch progress, excludes completion and unknown runtimes', () {
    final data = StudioDiscovery([
      movie('Completed', offset: 100000, played: 1),
      movie('Rewatch', offset: 30000, played: 1),
      const MediaItem.plex(id: 'Unknown runtime', kind: MediaKind.movie, viewOffsetMs: 5),
      const MediaItem.plex(
        id: 'Partial series',
        kind: MediaKind.show,
        leafCount: 20,
        viewedLeafCount: 4,
        lastViewedAt: 100,
      ),
      const MediaItem.plex(id: 'Finished series', kind: MediaKind.show, leafCount: 20, viewedLeafCount: 20),
    ]);
    expect(data.continueWatching.map((item) => item.id), ['Partial series', 'Rewatch']);
    expect(data.featured?.id, 'Partial series');
  });

  test('large studio shelves are bounded and ties are deterministic', () {
    final data = StudioDiscovery(
      List.generate(100, (index) => movie('Title ${index.toString().padLeft(3, '0')}', rating: 8)),
    );
    expect(data.topRated, hasLength(20));
    expect(data.topRated.first.id, 'Title 000');
    expect(data.topRated.last.id, 'Title 019');
    expect(StudioDiscovery([]).featured, isNull);
  });
}
