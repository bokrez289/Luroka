import 'dart:async';

import 'package:flutter/foundation.dart';

import '../media/media_item.dart';
import '../media/media_kind.dart';
import '../media/title_copies.dart';
import '../models/catalog/catalog_item.dart';
import '../utils/external_ids.dart';
import '../mixins/disposable_change_notifier_mixin.dart';
import '../services/catalog/catalog_library_matcher.dart';
import '../services/catalog/catalog_source.dart';
import '../services/catalog/tmdb_catalog_source.dart';
import 'catalog_sources_provider.dart';
import 'hidden_libraries_provider.dart';
import 'multi_server_provider.dart';

/// Home uses real library copies in TMDb rank order, never synthetic entries
/// that would offer a Play action for something the user cannot play.
class TrendingSpotlightProvider extends ChangeNotifier with DisposableChangeNotifierMixin {
  TrendingSpotlightProvider(this._sources, CatalogLibraryMatcher matcher, this._servers, this._hidden) {
    _sources.addListener(_changed);
    _servers.addOnlineServersListener(_serversChanged);
    _hidden.addListener(_hiddenChanged);
  }
  final CatalogSourcesProvider _sources;
  final MultiServerProvider _servers;
  final HiddenLibrariesProvider _hidden;
  List<MediaItem> _items = const [];
  List<MediaItem> get items => _items;
  Object? _source;
  bool get usesWeeklyTrends => _source is TmdbCatalogSource;
  DateTime? _loadedAt;
  bool _loading = false;
  bool get loading => _loading;
  int _generation = 0;
  List<MediaItem> _libraryItems = const [];
  List<CatalogItem> _candidates = const [];

  /// Spotlight must not issue dozens of reverse library searches on startup.
  /// Match public trends against the library rows Home has already fetched.
  void updateLibraryItems(Iterable<MediaItem> items) {
    _libraryItems = items.where((item) => item.kind == MediaKind.movie || item.kind == MediaKind.show).toList();
    _matchLoadedRows();
  }

  void _matchLoadedRows() {
    final found = <MediaItem>[];
    final seen = <String>{};
    for (final candidate in _candidates) {
      final ids = candidate.ids.toExternalIds();
      for (final copy in _libraryItems) {
        if (copy.kind != candidate.kind ||
            !_servers.onlineServerIds.contains(copy.serverId) ||
            !_hidden.allowsItem(copy)) {
          continue;
        }
        final copyIds =
            ExternalIds.fromJellyfinProviderIds(Map<String, Object?>.from(copy.raw?['ProviderIds'] as Map? ?? const {}))
                .fillFrom(ExternalIds.fromGuids(copy.raw?['Guid'] as List? ?? const []))
                .fillFrom(ExternalIds.fromLegacyPlexGuid(copy.guid));
        final exactTitle =
            candidate.year != null &&
            candidate.year == copy.year &&
            candidate.title.trim().toLowerCase() == copy.title?.trim().toLowerCase();
        if ((ids.intersects(copyIds) || (!contradicts(ids, copyIds) && exactTitle)) && seen.add(copy.globalKey)) {
          found.add(copy);
          break;
        }
      }
      if (found.length >= 8) break;
    }
    if (listEquals(_items, found)) return;
    _items = found;
    safeNotifyListeners();
  }

  void _changed() {
    if (!identical(_source, _sources.discoverySource)) {
      _generation++;
      _source = _sources.discoverySource;
      _items = const [];
      _candidates = const [];
      _loadedAt = null;
      _loading = false;
      safeNotifyListeners();
      ensureFresh();
    }
  }

  void _serversChanged(Set<String> _) {
    _invalidate();
  }

  void _hiddenChanged() {
    _invalidate();
  }

  void _invalidate() {
    _generation++;
    _loading = false;
    _loadedAt = null;
    _items = const [];
    _candidates = const [];
    safeNotifyListeners();
    ensureFresh();
  }

  void ensureFresh() {
    if (_loading || (_loadedAt != null && DateTime.now().difference(_loadedAt!) < const Duration(hours: 12))) return;
    unawaited(_load());
  }

  Future<void> refresh({bool force = false}) async {
    _generation++;
    _loadedAt = null;
    _loading = false;
    final source = _sources.discoverySource;
    if (force && source is CatalogDiscoveryRefresh) {
      await (source as CatalogDiscoveryRefresh).invalidateDiscoveryCache();
    }
    if (!isDisposed) await _load();
  }

  Future<void> _load() async {
    final source = _sources.discoverySource;
    _source = source;
    if (source == null || _servers.onlineServerIds.isEmpty) return;
    _loading = true;
    safeNotifyListeners();
    final generation = _generation;
    try {
      await _hidden.ensureInitialized();
      final pages = await Future.wait([
        source.fetchRow(source is TmdbCatalogSource ? CatalogRowId.trendingMovies : CatalogRowId.popularMovies),
        source.fetchRow(source is TmdbCatalogSource ? CatalogRowId.trendingShows : CatalogRowId.popularShows),
      ]);
      final candidates = <CatalogItem>[
        for (var i = 0; i < 20; i++)
          for (final page in pages)
            if (i < page.items.length) page.items[i],
      ];
      if (isDisposed || generation != _generation) return;
      _candidates = candidates;
      _matchLoadedRows();
      _loadedAt = DateTime.now();
      safeNotifyListeners();
    } catch (_) {
      /* Home retains its normal library features when TMDb fails. */
    } finally {
      if (generation == _generation) {
        _loading = false;
        safeNotifyListeners();
      }
    }
  }

  @override
  void dispose() {
    _generation++;
    _sources.removeListener(_changed);
    _servers.removeOnlineServersListener(_serversChanged);
    _hidden.removeListener(_hiddenChanged);
    super.dispose();
  }
}
