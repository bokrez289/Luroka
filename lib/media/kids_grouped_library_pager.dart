import 'dart:async';

import '../utils/media_server_http_client.dart';
import 'library_query.dart';
import 'media_item.dart';
import 'media_kind.dart';
import 'studio_titles.dart';

/// A page that also reports how many server rows were examined before kids
/// filtering. Its offset must advance by that count, not by the safe results.
abstract interface class KidsRawLibraryClient {
  Future<LibraryPage<MediaItem>> fetchKidsLibraryPage(
    String libraryId, {
    required LibraryQuery query,
    required void Function(int count) onRawCount,
    MediaKind? libraryKind,
    AbortController? abort,
  });
}

/// Maps raw server pages onto a stable, sequential index of distinct titles.
/// Fetches only far enough to satisfy the requested visible range, while
/// retaining source copies even when duplicates span server pages.
class KidsGroupedLibraryPager {
  KidsGroupedLibraryPager(this.fetchRaw, {this.publishPartialFirstPage = false, this.rawCountForPage});

  final Future<LibraryPage<MediaItem>> Function(int offset, int limit, AbortController? abort) fetchRaw;
  final bool publishPartialFirstPage;

  /// The number of server rows consumed before profile filtering.
  final int Function(LibraryPage<MediaItem> page)? rawCountForPage;
  final StudioTitles _titles = StudioTitles();
  int _rawOffset = 0;
  bool _finished = false;
  Future<void> _serial = Future.value();

  List<MediaItem> copiesFor(MediaItem item) => _titles.copiesFor(item);
  bool get hasMore => !_finished;
  int get knownTitleCount => _titles.items.length;

  Future<LibraryPage<MediaItem>> fetch(int offset, int limit, AbortController? abort) {
    final completion = Completer<LibraryPage<MediaItem>>();
    _serial = _serial.then((_) async {
      try {
        while (!_finished && _titles.items.length < offset + limit) {
          abort?.throwIfAborted();
          final pageSize = publishPartialFirstPage && _rawOffset == 0 ? limit.clamp(1, 48) : 100;
          final page = await fetchRaw(_rawOffset, pageSize, abort);
          abort?.throwIfAborted();
          _titles.addAll(page.items);
          final consumed = rawCountForPage?.call(page) ?? page.items.length;
          _rawOffset += consumed;
          if (consumed == 0 || _rawOffset >= page.totalCount) _finished = true;
          // Paint the first safe titles as soon as one raw page yields any.
          // The missing slots remain placeholders and load progressively.
          if (publishPartialFirstPage && offset == 0 && _titles.items.isNotEmpty) break;
        }
        final all = _titles.items;
        final slice = all.skip(offset).take(limit).toList();
        completion.complete(
          LibraryPage(
            items: slice,
            offset: offset,
            // Revisiting an earlier slice must not shrink the grid back to
            // that slice's end after later source pages have been grouped.
            totalCount: _finished ? all.length : all.length + 1,
          ),
        );
      } catch (error, stack) {
        completion.completeError(error, stack);
      }
    });
    return completion.future;
  }
}
