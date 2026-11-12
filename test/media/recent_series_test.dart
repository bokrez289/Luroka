import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/recent_series.dart';

void main() {
  test('groups episodes across pages by server and series without inventing metadata', () {
    MediaItem episode(String id, String server) => MediaItem.plex(
      id: id,
      serverId: server,
      kind: MediaKind.episode,
      title: 'Episode',
      grandparentId: 'series',
      grandparentTitle: 'Show',
      grandparentThumbPath: '/poster',
      year: 2026,
      summary: 'Episode plot',
      addedAt: 100,
    );
    final rows = groupRecentSeries([episode('a', 'one'), episode('b', 'one'), episode('a', 'two')]);
    expect(rows, hasLength(2));
    expect(rows.first.kind, MediaKind.show);
    expect(rows.first.id, 'series');
    expect(rows.first.title, 'Show');
    expect(rows.first.thumbPath, '/poster');
    expect(rows.first.summary, isNull);
    expect(rows.first.year, isNull);
    expect(rows.first.addedAt, 100);
  });
  test('prefers real series information and retains episode recency', () {
    final rows = groupRecentSeries([
      const MediaItem.plex(id: 'e', kind: MediaKind.episode, grandparentId: 's', addedAt: 200),
      const MediaItem.plex(id: 's', kind: MediaKind.show, title: 'Series', year: 2000, addedAt: 10),
    ]);
    expect(rows.single.year, 2000);
    expect(rows.single.addedAt, 200);
  });
}
