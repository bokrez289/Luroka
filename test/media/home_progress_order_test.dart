import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/home_progress.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';

MediaItem item(String id, {int? played, int? added, String library = 'tv'}) => MediaItem(
  id: id,
  backend: MediaBackend.jellyfin,
  kind: MediaKind.episode,
  serverId: 'server',
  libraryId: library,
).copyWith(lastViewedAt: played, addedAt: added);

void main() {
  test('mixed servers never promote undated Emby rows using a neighbor date', () {
    final emby = rankHomeProgress([item('undated'), item('known', played: 200)], embyHomeResumeStream);
    final other = item('other', played: 100).copyWith(serverId: 'other');
    expect(orderHomeProgress([...emby, other]).map((item) => item.id), ['known', 'other', 'undated']);
  });

  test('library ingestion never changes viewing order when enrichment is incomplete', () {
    final rows = rankHomeProgress([
      item('most-recent-undated', added: 1),
      item('known', played: 100),
      item('older-undated', added: 999999),
    ], 'nextUp');
    expect(orderHomeProgress(rows).map((item) => item.id), rows.map((item) => item.id));
    expect(orderHomeProgress(rows).first.lastViewedAt, isNull);
  });

  test('equal timestamps have deterministic ordering regardless of library completion', () {
    final a = rankHomeProgress([
      item('a2', played: 100, library: 'a'),
      item('a1', played: 100, library: 'a'),
    ], 'resume');
    final b = rankHomeProgress([item('b', played: 100, library: 'b')], 'resume');
    expect(orderHomeProgress([...a, ...b]).map((item) => item.id), ['a2', 'a1', 'b']);
    expect(orderHomeProgress([...b, ...a]).map((item) => item.id), ['a2', 'a1', 'b']);
  });

  test('48-item split shelves retain their own ordering after the combined merge', () {
    final resume = rankHomeProgress([
      for (var i = 0; i < 49; i++) withHomeProgressRole(item('resume-$i', played: 1000 - i), HomeProgressRole.resume),
    ], 'resume');
    final next = rankHomeProgress([
      for (var i = 0; i < 49; i++) withHomeProgressRole(item('next-$i', played: 500 - i), HomeProgressRole.nextUp),
    ], 'nextUp');
    final rows = limitHomeProgressRows(orderHomeProgress([...next, ...resume]), 48, split: true);
    expect(rows.where(isHomeNextUp).length, 48);
    expect(rows.where((item) => !isHomeNextUp(item)).length, 48);
    expect(rows.where(isHomeNextUp).first.id, 'next-0');
  });
}
