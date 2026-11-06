import 'dart:async';

import '../media/library_cover.dart';
import '../media/library_query.dart';
import '../media/media_kind.dart';
import '../media/media_library.dart';
import '../media/media_server_client.dart';
import '../utils/media_server_http_client.dart';
import 'storage_service.dart';

/// Owned by one profile session. Reopening or moving focus never shuffles a
/// library's cover. Only bounded metadata recipes are persisted, not images.
class LibraryCoverService {
  LibraryCoverService({required this.profileId, required this.storage, DateTime Function()? now})
    : _now = now ?? DateTime.now;
  final String? profileId;
  final Future<StorageService> storage;
  final DateTime Function() _now;
  final _recipes = <String, LibraryCoverRecipe>{};
  final _requests = <String, Future<LibraryCoverRecipe>>{};
  final _aborts = <AbortController>{};
  Future<void>? _hydration;
  Future<void> _writes = Future.value();
  bool _disposed = false;

  String _key(MediaLibrary library, MediaServerClient client) => '${client.cacheServerId}\u0000${library.globalKey}';

  Future<void> _hydrate() => _hydration ??= () async {
    try {
      final saved = (await storage).getLibraryCoverRecipes(profileId: profileId);
      if (_disposed) return;
      for (final entry in saved.entries) {
        final recipe = LibraryCoverRecipe.fromJson(entry.value);
        if (recipe != null) _recipes[entry.key] = recipe;
      }
    } catch (_) {
      /* Artwork always has an immediate, local fallback. */
    }
  }();

  Future<LibraryCoverRecipe> load(MediaLibrary library, MediaServerClient client, {bool refresh = false}) async {
    await _hydrate();
    final key = _key(library, client);
    final cached = _recipes[key];
    if (!refresh && cached?.freshAt(_now()) == true) return cached!;
    if (_disposed) return cached ?? LibraryCoverRecipe(createdAt: _now(), images: const []);
    final pending = _requests[key];
    if (pending != null) return pending;
    late final Future<LibraryCoverRecipe> request;
    request = _fetch(library, client)
        .then((recipe) async {
          if (!_disposed) {
            _recipes[key] = recipe;
            final newest = _recipes.entries.toList()..sort((a, b) => b.value.createdAt.compareTo(a.value.createdAt));
            _recipes.removeWhere((key, _) => !newest.take(48).any((entry) => entry.key == key));
            _writes = _writes.then((_) async {
              if (_disposed) return;
              try {
                await (await storage).saveLibraryCoverRecipes({
                  for (final entry in _recipes.entries) entry.key: entry.value.toJson(),
                }, profileId: profileId);
              } catch (_) {
                /* Keep the session recipe even if disk is unavailable. */
              }
            });
            await _writes;
          }
          return recipe;
        })
        .catchError((Object _) => cached ?? LibraryCoverRecipe(createdAt: _now(), images: const []))
        .whenComplete(() {
          if (identical(_requests[key], request)) _requests.remove(key);
        });
    _requests[key] = request;
    return request;
  }

  Future<LibraryCoverRecipe> _fetch(MediaLibrary library, MediaServerClient client) async {
    final abort = AbortController();
    _aborts.add(abort);
    try {
      final page = await client
          .fetchLibraryPagedContent(
            library.id,
            libraryKind: library.kind,
            abort: abort,
            query: LibraryQuery(
              kind: library.kind == MediaKind.unknown ? null : library.kind,
              includeKinds: library.defaultBrowseKinds,
              limit: 12,
              sort: const LibrarySort(field: 'addedAt'),
            ),
          )
          .timeout(
            const Duration(seconds: 8),
            onTimeout: () {
              abort.abort();
              throw TimeoutException('Library cover lookup timed out');
            },
          );
      abort.throwIfAborted();
      final paths = <String>{};
      final titles = <String>{};
      final images = <LibraryCoverImage>[];
      for (final item in page.items) {
        final path = libraryCoverImagePath(item.thumbPath ?? item.artPath, library.backend);
        final title = '${item.displayTitle.toLowerCase()}\u0000${item.year ?? ''}';
        if (path == null || paths.contains(path) || titles.contains(title)) continue;
        paths.add(path);
        titles.add(title);
        final ratio = item.thumbPath == null
            ? 1.6
            : switch (item.kind) {
                MediaKind.album || MediaKind.artist || MediaKind.track => 1.0,
                MediaKind.clip || MediaKind.photo || MediaKind.episode => 1.6,
                _ => 2 / 3,
              };
        images.add(LibraryCoverImage(path: path, poster: ratio == 2 / 3, aspectRatio: ratio));
      }
      final selected = images.length <= 4
          ? images
          : List.generate(4, (index) => images[(index * (images.length - 1) / 3).round()]);
      return LibraryCoverRecipe(createdAt: _now(), images: selected);
    } finally {
      _aborts.remove(abort);
    }
  }

  void dispose() {
    _disposed = true;
    for (final abort in _aborts) {
      abort.abort();
    }
    _aborts.clear();
  }
}
