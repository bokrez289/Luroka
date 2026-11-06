import '../media/library_query.dart';
import '../media/media_item.dart';
import '../media/media_kind.dart';
import '../media/media_library.dart';
import '../media/media_server_client.dart';
import '../utils/media_server_http_client.dart';

/// A small, library-scoped fallback when Home has not populated its cache yet.
/// Custom library names work without category heuristics or public catalog calls.
Future<List<MediaItem>> loadSearchSuggestions(
  List<MediaLibrary> libraries,
  MediaServerClient? Function(String serverId) resolve,
  AbortController abort,
) async {
  final visible = libraries
      .where(
        (library) =>
            !library.hidden &&
            !library.isShared &&
            library.serverId != null &&
            (library.kind == MediaKind.movie || library.kind == MediaKind.show || library.kind == MediaKind.unknown),
      )
      .take(6)
      .toList();
  final results = List<List<MediaItem>>.filled(visible.length, const []);
  var next = 0;
  Future<void> worker() async {
    while (next < visible.length && !abort.isAborted) {
      final index = next++;
      final library = visible[index];
      final client = resolve(library.serverId!);
      if (client == null) continue;
      try {
        final page = await client
            .fetchLibraryPagedContent(
              library.id,
              libraryKind: library.kind,
              abort: abort,
              query: LibraryQuery(
                kind: library.kind == MediaKind.unknown ? null : library.kind,
                includeKinds: library.defaultBrowseKinds,
                limit: 8,
                sort: const LibrarySort(field: 'addedAt'),
              ),
            )
            .timeout(const Duration(seconds: 5));
        results[index] = [
          for (final item in page.items)
            if (item.kind == MediaKind.movie || item.kind == MediaKind.show)
              item.copyWith(
                serverId: library.serverId,
                serverName: library.serverName,
                libraryId: library.id,
                libraryTitle: library.title,
              ),
        ];
      } catch (_) {
        /* Suggestions must never block searching. */
      }
    }
  }

  await Future.wait(List.generate(visible.length.clamp(0, 2), (_) => worker()));
  if (abort.isAborted) return const [];
  final seen = <String>{};
  return [
    for (var index = 0; index < 8; index++)
      for (final rows in results)
        if (index < rows.length) rows[index],
  ].where((item) => seen.add(item.globalKey)).take(18).toList();
}
