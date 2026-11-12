import 'dart:async';

import 'package:flutter/foundation.dart';

import '../media/catalog_item_ref.dart';
import '../media/library_query.dart';
import '../media/media_filter.dart';
import '../media/media_item.dart';
import '../media/media_kind.dart';
import '../media/media_library.dart';
import '../media/media_server_client.dart';
import '../services/catalog/catalog_source.dart';
import '../utils/media_server_http_client.dart';

typedef HomeFavoriteLibrary = ({MediaLibrary library, MediaServerClient client});

/// Session-only Favorites handoff. Background previews are bounded and never
/// replace a newer full Favorites-screen publication.
class HomeFavoritesSnapshot extends ChangeNotifier {
  HomeFavoritesSnapshot({DateTime Function()? now}) : _now = now ?? DateTime.now;

  static const int maxItems = 128;
  static const int maxLibraries = 6;
  static const int pageSize = 20;
  static const Duration refreshInterval = Duration(minutes: 30);
  static const Duration requestTimeout = Duration(seconds: 4);
  static const Duration totalBudget = Duration(seconds: 8);
  final DateTime Function() _now;
  List<MediaItem> _items = const [];
  List<MediaItem> get items => _items;
  int _generation = 0;
  bool _disposed = false;
  bool _loading = false;
  AbortController? _abort;
  DateTime? _lastAttempt;
  DateTime? _lastFullSnapshot;
  Duration _attemptInterval = refreshInterval;
  Object? _lastSignature;
  int _libraryCursor = 0;

  bool get isLoading => _loading;

  void replace(Iterable<MediaItem> items) {
    if (_disposed) return;
    cancelBackground();
    _lastFullSnapshot = _now();
    final next = List<MediaItem>.unmodifiable(items.take(maxItems));
    if (listEquals(_items, next)) return;
    _items = next;
    notifyListeners();
  }

  void cancelBackground() {
    _generation++;
    _abort?.abort();
    _abort = null;
    if (_loading) _lastAttempt = null;
    _loading = false;
  }

  /// At most six filtered library pages and one Plex watchlist page, with two
  /// workers. The caller starts this only after Home is ready and supplies a
  /// live guard for profile binding, visibility, and active playback.
  Future<void> ensureBackground({
    required List<HomeFavoriteLibrary> libraries,
    required CatalogSource? plexWatchlist,
    required bool Function() canRun,
  }) async {
    if (_disposed || _loading || !canRun()) return;
    final inventory = libraries
        .where(
          (entry) =>
              entry.client.capabilities.userFavorites && !entry.library.kind.isMusic && entry.library.serverId != null,
        )
        .toList();
    if (inventory.isEmpty && plexWatchlist == null) return;
    final now = _now();
    final signature = Object.hashAll([
      for (final entry in inventory) (entry.library.globalKey, identityHashCode(entry.client)),
      identityHashCode(plexWatchlist),
    ]);
    if (_lastFullSnapshot != null && now.difference(_lastFullSnapshot!) < refreshInterval) return;
    if (_lastSignature == signature && _lastAttempt != null && now.difference(_lastAttempt!) < _attemptInterval) return;
    if (_lastSignature != signature) _libraryCursor = 0;
    _lastSignature = signature;
    _lastAttempt = now;
    final eligible = inventory.isEmpty
        ? <HomeFavoriteLibrary>[]
        : [
            for (var i = 0; i < inventory.length.clamp(0, maxLibraries); i++)
              inventory[(_libraryCursor + i) % inventory.length],
          ];
    final generation = ++_generation;
    final abort = AbortController();
    _abort = abort;
    _loading = true;
    final previous = _items;
    final rows = <String, List<MediaItem>>{};
    final successful = <String>{};
    final tasks = <Future<void> Function()>[];

    bool current() => !_disposed && generation == _generation && !abort.isAborted && canRun();
    for (final entry in eligible) {
      tasks.add(() async {
        if (!current()) return;
        try {
          final library = entry.library;
          final page = await entry.client
              .fetchLibraryPagedContent(
                library.id,
                query: LibraryQuery(
                  kind: library.kind == MediaKind.unknown ? null : library.kind,
                  includeKinds: library.defaultBrowseKinds.where((kind) => kind != MediaKind.unknown).toList(),
                  limit: pageSize,
                  sort: const LibrarySort(field: 'title', direction: LibrarySortDirection.ascending),
                  filters: const [
                    LibraryFilter(field: MediaFilterField.favorite, values: ['1']),
                  ],
                ),
                libraryKind: library.kind,
                abort: abort,
              )
              .timeout(requestTimeout);
          if (!current()) return;
          rows[library.globalKey] = [
            for (final item in page.items.take(pageSize))
              if ((item.kind == MediaKind.movie || item.kind == MediaKind.show) &&
                  (item.serverId == null || item.serverId == library.serverId) &&
                  (item.libraryId == null || item.libraryId == library.id))
                item.copyWith(
                  libraryId: item.libraryId ?? library.id,
                  libraryTitle: item.libraryTitle ?? library.title,
                  serverId: item.serverId ?? library.serverId,
                  serverName: item.serverName ?? library.serverName,
                  isFavorite: true,
                ),
          ];
          successful.add(library.globalKey);
        } catch (_) {
          // Keep the previous source's rows on timeout or transient failure.
        }
      });
    }
    if (plexWatchlist != null) {
      tasks.insert(0, () async {
        if (!current()) return;
        try {
          final page = await plexWatchlist
              .fetchRow(CatalogRowId.watchlist, page: 1, limit: pageSize)
              .timeout(requestTimeout);
          if (!current()) return;
          rows['plex-watchlist'] = [
            for (final item in page.items.take(pageSize))
              if (item.kind == MediaKind.movie || item.kind == MediaKind.show) item.toMediaItem(),
          ];
          successful.add('plex-watchlist');
        } catch (_) {
          // A cloud failure must not remove usable local Favorites.
        }
      });
    }
    final guard = Timer.periodic(const Duration(milliseconds: 250), (_) {
      if (!current()) abort.abort();
    });
    final deadline = Timer(totalBudget, abort.abort);
    try {
      var next = 0;
      Future<void> worker() async {
        while (next < tasks.length && current()) {
          await tasks[next++]();
        }
      }

      await Future.wait(List.generate(tasks.length.clamp(0, 2), (_) => worker()));
      if (_disposed || generation != _generation || !canRun() || successful.isEmpty) return;
      final allowed = {for (final entry in inventory) entry.library.globalKey};
      final merged = <String, MediaItem>{
        for (final item in rows['plex-watchlist'] ?? const <MediaItem>[]) item.globalKey: item,
        for (final entry in eligible)
          for (final item in rows[entry.library.globalKey] ?? const <MediaItem>[]) item.globalKey: item,
        for (final item in previous)
          if (item.isCatalogItem
              ? plexWatchlist != null && !successful.contains('plex-watchlist')
              : allowed.contains(item.libraryGlobalKey) && !successful.contains(item.libraryGlobalKey))
            item.globalKey: item,
      };
      if (inventory.isNotEmpty && eligible.any((entry) => successful.contains(entry.library.globalKey))) {
        _libraryCursor = (_libraryCursor + eligible.length) % inventory.length;
      }
      final updated = List<MediaItem>.unmodifiable(merged.values.take(maxItems));
      if (!listEquals(_items, updated)) {
        _items = updated;
        notifyListeners();
      }
    } finally {
      guard.cancel();
      deadline.cancel();
      if (generation == _generation) {
        _abort = null;
        _loading = false;
        if (!canRun()) {
          _lastAttempt = null;
        } else {
          _attemptInterval = successful.length == tasks.length ? refreshInterval : const Duration(minutes: 5);
        }
      }
    }
  }

  @override
  void dispose() {
    _disposed = true;
    cancelBackground();
    super.dispose();
  }
}
