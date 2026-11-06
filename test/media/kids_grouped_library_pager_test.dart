import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/kids_grouped_library_pager.dart';
import 'package:luroka/media/library_query.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';

void main() {
  test('advances past filtered and empty source pages without losing later safe titles', () async {
    final offsets = <int>[];
    var rawCount = 0;
    final pager = KidsGroupedLibraryPager(
      (offset, limit, _) async {
        offsets.add(offset);
        rawCount = (250 - offset).clamp(0, limit);
        final items = [
          for (var i = offset; i < offset + rawCount; i++)
            if (i >= 100 && i.isEven) MediaItem.plex(id: '$i', kind: MediaKind.movie, title: 'Title $i', serverId: 'a'),
        ];
        return LibraryPage(items: items, totalCount: 250, offset: offset);
      },
      rawCountForPage: (_) => rawCount,
      publishPartialFirstPage: true,
    );
    final first = await pager.fetch(0, 20, null);
    expect(offsets, [0, 20]);
    expect(first.items.first.id, '100');
    final next = await pager.fetch(first.items.length, 100, null);
    expect([...first.items, ...next.items], hasLength(75));
    expect(next.totalCount, 75);
    expect(offsets, [0, 20, 120, 220]);
  });

  test('first safe grouped titles publish without waiting for the next server page', () async {
    final rows = [
      for (var i = 0; i < 100; i++)
        MediaItem.plex(id: '$i', kind: MediaKind.movie, title: 'Title ${i ~/ 2}', year: 2024, serverId: 'a'),
    ];
    final offsets = <int>[];
    final pager = KidsGroupedLibraryPager((offset, limit, _) async {
      offsets.add(offset);
      return LibraryPage(items: rows.skip(offset).take(limit).toList(), totalCount: rows.length, offset: offset);
    }, publishPartialFirstPage: true);
    final first = await pager.fetch(0, 48, null);
    expect(first.items, hasLength(24));
    expect(offsets, [0]);
    expect(first.totalCount, greaterThan(first.items.length));
    final next = await pager.fetch(24, 24, null);
    expect(next.items, hasLength(24));
    expect(offsets, [0, 48]);
    expect({...first.items.map((e) => e.id), ...next.items.map((e) => e.id)}, hasLength(48));
  });

  test('groups copies across raw pages without dropping later titles or corrupting offsets', () async {
    final rows = [
      for (var i = 0; i < 105; i++)
        MediaItem.plex(id: '$i', kind: MediaKind.movie, title: 'Title $i', year: 2024, serverId: 'a'),
      const MediaItem.plex(id: 'duplicate', kind: MediaKind.movie, title: 'Title 0', year: 2024, serverId: 'a'),
      const MediaItem.plex(id: 'last', kind: MediaKind.movie, title: 'Last', year: 2024, serverId: 'a'),
    ];
    final requests = <int>[];
    final pager = KidsGroupedLibraryPager((offset, limit, _) async {
      requests.add(offset);
      return LibraryPage(items: rows.skip(offset).take(limit).toList(), totalCount: rows.length, offset: offset);
    });
    final first = await pager.fetch(0, 25, null);
    expect(first.items, hasLength(25));
    expect(requests, [0]);
    final last = await pager.fetch(100, 25, null);
    expect(requests, [0, 100]);
    expect(last.totalCount, 106);
    expect(last.items.map((item) => item.id), ['100', '101', '102', '103', '104', 'last']);
    expect(pager.copiesFor(first.items.first).map((copy) => copy.id), ['0', 'duplicate']);
    final revisit = await pager.fetch(0, 25, null);
    expect(revisit.items.map((item) => item.id), first.items.map((item) => item.id));
    expect(requests, [0, 100]);
  });

  test('revisiting earlier pages never hides known later titles or ends the catalog', () async {
    final pager = KidsGroupedLibraryPager((offset, limit, _) async {
      final end = (offset + limit).clamp(0, 420);
      return LibraryPage(
        items: [
          for (var i = offset; i < end; i++)
            MediaItem.plex(id: '$i', kind: MediaKind.movie, title: 'Title $i', serverId: 'a'),
        ],
        totalCount: 420,
        offset: offset,
      );
    }, publishPartialFirstPage: true);

    final first = await pager.fetch(0, 48, null);
    expect(first.totalCount, 49);
    final second = await pager.fetch(48, 48, null);
    expect(second.items, hasLength(48));
    expect(pager.knownTitleCount, 148);
    final earlier = await pager.fetch(0, 48, null);
    expect(earlier.totalCount, 149);
    expect(pager.hasMore, isTrue);
    final rest = await pager.fetch(96, 400, null);
    expect(rest.totalCount, 420);
    expect(rest.items.last.id, '419');
    expect(pager.hasMore, isFalse);
  });
}
