import 'package:flutter/foundation.dart';

import '../../media/media_item.dart';
import '../../media/media_item_merge.dart';
import '../../media/media_kind.dart';
import '../../media/ids.dart';
import '../../media/media_server_client.dart';
import '../../utils/external_ids.dart';
import '../../models/catalog/catalog_item.dart';
import '../../providers/multi_server_provider.dart';
import '../../providers/hidden_libraries_provider.dart';
import '../../utils/title_match_candidates.dart';
import '../../utils/global_key_utils.dart';
import '../data_aggregation_service.dart';

/// Matches external catalog items back to the user's libraries.
///
/// One reverse-lookup fan-out per tap (see
/// `DataAggregationService.findByExternalIdsAcrossServers`), memoized for
/// the session per server: a server's answer is replaced only by that
/// server. A wave every expected server answered is kept when positive
/// (library membership rarely shrinks mid-session); negatives expire so
/// newly-added media is picked up, and so does any wave a server sat out —
/// a server that failed, was cancelled, or was never asked at all because
/// it is offline is not evidence of absence, and the next tap after
/// [negativeTtl] asks it again while its last-known copies stay on screen.
/// Profile-scoped via the provider subtree. Membership changes invalidate
/// coverage immediately and discard copies belonging to departed servers.
class CatalogLibraryMatcher {
  static const Duration negativeTtl = Duration(minutes: 10);

  final MultiServerProvider _multiServer;
  final HiddenLibrariesProvider? hiddenLibraries;
  final DateTime Function() _now;
  final Map<String, _Entry> _cache = {};
  Set<String> _serverIds = {};
  int _scopeGeneration = 0;
  final Map<String, Future<LibraryLookupResult>> _inFlight = {};

  CatalogLibraryMatcher(this._multiServer, {this.hiddenLibraries}) : _now = DateTime.now {
    _listenToServerScope();
  }

  @visibleForTesting
  CatalogLibraryMatcher.withClock(this._multiServer, this._now, {this.hiddenLibraries}) {
    _listenToServerScope();
  }

  void _listenToServerScope() {
    _syncServerScope();
    _multiServer.addListener(_syncServerScope);
  }

  void _syncServerScope() {
    final serverIds = _multiServer.expectedServerIds.toSet();
    if (setEquals(serverIds, _serverIds)) return;
    _serverIds = serverIds;
    _scopeGeneration++;
    for (final entry in _cache.values) {
      entry.byServer.removeWhere((serverId, _) => !serverIds.contains(serverId));
    }
  }

  void dispose() => _multiServer.removeListener(_syncServerScope);

  String _keyFor(CatalogItem item) =>
      '${item.source.name}/${item.entryIdentityKey}/${item.ids.allKeys.join(',')}/${lookupTitles(item).join('\u0000')}';

  bool _fresh(CatalogItem item) {
    final cached = _cache[_keyFor(item)];
    return cached != null &&
        cached.scopeGeneration == _scopeGeneration &&
        (_isAuthoritativeHit(cached.result) || _now().difference(cached.at) < negativeTtl);
  }

  /// Warm one small catalog batch through servers with a genuine id index.
  /// Unsupported/failed servers remain unqueried so match() still retries them.
  Future<void> prefetchMatches(
    List<CatalogItem> items, {
    Future<void> Function(List<CatalogItem>)? onBatchComplete,
    bool Function()? current,
  }) async {
    _syncServerScope();
    final generation = _scopeGeneration;
    final eligible = items
        .where(
          (item) =>
              item.ids.toExternalIds().hasCatalogIds &&
              item.season == null &&
              stripSeasonSuffix(item.title) == null &&
              !_fresh(item),
        )
        .toList();
    for (final kind in [MediaKind.movie, MediaKind.show]) {
      final ofKind = eligible.where((item) => item.kind == kind).toList();
      for (var start = 0; start < ofKind.length; start += 20) {
        if (generation != _scopeGeneration || !(current?.call() ?? true)) return;
        final batch = ofKind.skip(start).take(20).toList();
        final answered = <String, List<MediaItem>>{};
        for (final serverId in _serverIds) {
          if (!_multiServer.onlineServerIds.contains(serverId)) continue;
          final client = _multiServer.getClientForServer(ServerId(serverId));
          if (client is! BatchCatalogLookupClient) continue;
          try {
            final result = await (client as BatchCatalogLookupClient).findByExternalIdsBatch(
              batch.map((item) => item.ids.toExternalIds()).toList(),
              kind: kind,
            );
            if (result != null) answered[serverId] = result;
          } catch (_) {
            /* Individual matching retains its normal retry path. */
          }
        }
        _syncServerScope();
        if (generation != _scopeGeneration || answered.isEmpty) continue;
        for (final item in batch) {
          final matches = [
            for (final rows in answered.values)
              for (final copy in rows)
                if (copy.kind == item.kind &&
                    item.ids.toExternalIds().intersects(
                      ExternalIds.fromJellyfinProviderIds(
                        Map<String, Object?>.from(copy.raw?['ProviderIds'] as Map? ?? const {}),
                      ),
                    ))
                  copy,
          ];
          final key = _keyFor(item);
          final warmed = _fold(_cache[key]?.byServer, (
            items: matches,
            succeededServerIds: answered.keys.toSet(),
            failedServerIds: <String>{},
            cancelledServerIds: <String>{},
            unqueriedServerIds: _serverIds.difference(answered.keys.toSet()),
          ));
          _cache[key] = answered.length == _serverIds.length
              ? warmed
              : (
                  at: _now().subtract(negativeTtl),
                  scopeGeneration: warmed.scopeGeneration,
                  byServer: warmed.byServer,
                  result: warmed.result,
                );
        }
        await onBatchComplete?.call(batch);
      }
    }
  }

  /// Explicit fallback; the default match never exposes unselected copies.
  Future<LibraryLookupResult> matchOtherSources(CatalogItem item) async {
    final result = await _matchAll(item);
    return (
      items: await Future.wait(result.items.map(_stampSourceLibrary)),
      succeededServerIds: result.succeededServerIds,
      cancelledServerIds: result.cancelledServerIds,
      failedServerIds: result.failedServerIds,
      unqueriedServerIds: result.unqueriedServerIds,
    );
  }

  Future<MediaItem> _stampSourceLibrary(MediaItem copy) async {
    if (copy.libraryId != null || copy.serverId == null) return copy;
    try {
      return await _multiServer.getClientForServer(ServerId(copy.serverId!))?.stampLibrary(copy) ?? copy;
    } catch (_) {
      return copy;
    }
  }

  Future<LibraryLookupResult> match(CatalogItem item) async {
    if (hiddenLibraries == null) return _matchAll(item);
    await hiddenLibraries?.ensureInitialized();
    final result = await _matchAll(item);
    if (hiddenLibraries == null) return result;
    final copies = hiddenLibraries!.hasSourceSelection
        ? await Future.wait(result.items.map(_stampSourceLibrary))
        : result.items;
    final selected = hiddenLibraries!.selectedSourceLibraries;
    final selectedServers = selected == null
        ? null
        : {
            for (final key in selected)
              if (parseGlobalKey(key) case final parsed?) parsed.serverId,
          };
    Set<String> relevant(Set<String> servers) =>
        selectedServers == null ? servers : servers.intersection(selectedServers);
    return (
      items: copies.where(hiddenLibraries!.allowsItem).toList(),
      succeededServerIds: relevant(result.succeededServerIds),
      cancelledServerIds: relevant(result.cancelledServerIds),
      failedServerIds: relevant(result.failedServerIds),
      unqueriedServerIds: relevant(result.unqueriedServerIds),
    );
  }

  Future<LibraryLookupResult> _matchAll(CatalogItem item) async {
    _syncServerScope();
    final scopeGeneration = _scopeGeneration;
    final titles = lookupTitles(item);
    // Do not use `identityKey`: its canonical series ids make every MAL/AniList
    // season collide. All five Mushoku Tensei entries (`mal39535 s1`,
    // `mal45576 s1`, `mal51179 s2`, `mal55888 s2`, `mal59193 s3`) collapse to
    // `imdb:tt13293588`, so the first season-gated result would poison the rest.
    // Namespace by source too: MAL and AniList can share a MAL id while
    // carrying different titles. The id forms and the title candidates join
    // the key because a detail load can enrich an item with external ids its
    // row form lacked (: Plex rows carry only a rating key) or additional
    // lookup titles; the richer lookup must not be short-circuited by the
    // poorer form's cached negative.
    final key = _keyFor(item);
    final cached = _cache[key];
    if (cached != null &&
        cached.scopeGeneration == scopeGeneration &&
        (_isAuthoritativeHit(cached.result) || _now().difference(cached.at) < negativeTtl)) {
      return cached.result;
    }

    // A sequel entry's year is its own season's, not the parent show's, so a
    // ±1 window around it excludes the very show we are looking for. Fribb
    // does not map a season for every entry, so fall back to the title: a
    // strippable season suffix says "sequel" just as reliably.
    final isSequel = (item.season?.isSequel ?? false) || stripSeasonSuffix(item.title) != null;
    final requestKey = '$scopeGeneration/$key';
    final pending = _inFlight[requestKey];
    if (pending != null) return pending;
    final request = () async {
      final result = await _multiServer.aggregationService.findByExternalIdsAcrossServers(
        item.ids.toExternalIds(),
        kind: item.kind,
        serverIds: _serverIds,
        titles: titles,
        year: isSequel ? null : item.year,
        plexGuid: _plexGuidFor(item),
        season: item.season,
      );
      _syncServerScope();
      if (scopeGeneration != _scopeGeneration) return _matchAll(item);
      final entry = _fold(cached?.byServer, result);
      _cache[key] = entry;
      return entry.result;
    }();
    _inFlight[requestKey] = request;
    late final LibraryLookupResult result;
    try {
      result = await request;
    } finally {
      if (identical(_inFlight[requestKey], request)) {
        _inFlight.remove(requestKey)?.ignore();
      }
    }
    return result;
  }

  /// Fold a wave into the last-known per-server answers.
  ///
  /// Stated positively: only a server in the succeeded set may replace its
  /// own entry, because it is the only one that just answered. Servers in
  /// the failed, cancelled or unqueried sets keep their previous copies — a
  /// timeout, a client abort, and an expected server that could not execute
  /// the query are none of them evidence of removal —
  /// and their sets pass through so the UI still names them unchecked and
  /// the wave is retried after [negativeTtl]. Everything else is dropped:
  /// a server in none of the four sets is no longer on the account.
  ///
  /// Membership is the answering server's to define, but each copy it
  /// returns again is folded onto its predecessor by [mergeLibraryCopy]:
  /// the library stamp is best-effort, and a retry that lost it must not
  /// overwrite a labeled copy with an unlabeled one for the rest of the
  /// session.
  _Entry _fold(Map<String?, List<MediaItem>>? previous, LibraryLookupResult result) {
    bool sawNoAnswerFrom(String? serverId) =>
        result.failedServerIds.contains(serverId) ||
        result.cancelledServerIds.contains(serverId) ||
        result.unqueriedServerIds.contains(serverId);
    final byServer = <String?, List<MediaItem>>{};
    // Copies of the servers that just answered, about to be replaced by
    // whatever they returned this time.
    final replaced = <String, MediaItem>{};
    for (final MapEntry(:key, :value) in previous?.entries ?? const <MapEntry<String?, List<MediaItem>>>[]) {
      if (sawNoAnswerFrom(key)) {
        byServer[key] = value;
      } else {
        for (final item in value) {
          replaced[item.globalKey] = item;
        }
      }
    }
    for (final item in result.items) {
      final prior = replaced[item.globalKey];
      (byServer[item.serverId] ??= []).add(prior == null ? item : mergeLibraryCopy(prior, item));
    }
    // Carried and enriched copies are absent from `result.items`, so a wave
    // with a predecessor is rebuilt around them; a first wave already is the
    // whole answer.
    return (
      at: _now(),
      scopeGeneration: _scopeGeneration,
      byServer: byServer,
      result: previous == null
          ? result
          : (
              items: [for (final items in byServer.values) ...items]..sort(compareLibraryCopies),
              succeededServerIds: result.succeededServerIds,
              cancelledServerIds: result.cancelledServerIds,
              failedServerIds: result.failedServerIds,
              unqueriedServerIds: result.unqueriedServerIds,
            ),
    );
  }

  /// The title candidates a lookup for [item] spends its request budget on.
  ///
  /// Prefer the source's original title, then its display title and aliases.
  /// MAL and AniList supply typed native titles, but other sources may supply
  /// production/romaji titles or no original title at all. Server indexes can
  /// search original titles when present; they do not make aliases redundant.
  /// Each admitted title brings its season-stripped partner within the same
  /// four-query budget. Later families are best-effort and may not fit.
  ///
  /// A detail load that changes this list is what tells the detail screen
  /// to ask again.
  static List<String> lookupTitles(CatalogItem item) =>
      titleMatchCandidates([item.originalTitle, item.title, ...item.altTitles]);

  /// Whether [result] may be memoized for the rest of the session: a hit
  /// every expected server took part in. One that sat out — failed,
  /// cancelled or never asked — leaves the answer incomplete, so it expires
  /// with [negativeTtl] instead of being cached until the profile switches.
  static bool _isAuthoritativeHit(LibraryLookupResult result) =>
      result.items.isNotEmpty &&
      result.failedServerIds.isEmpty &&
      result.cancelledServerIds.isEmpty &&
      result.unqueriedServerIds.isEmpty;

  /// The exact `plex://` guid for a Plex Discover item, which its own rating
  /// key already is. Free — no request, no cloud lookup; other sources get
  /// null and fall back to the title candidates.
  String? _plexGuidFor(CatalogItem item) {
    final plexId = item.ids.plex;
    if (item.source != CatalogSourceId.plex || plexId == null || plexId.isEmpty) return null;
    return 'plex://${item.kind == MediaKind.movie ? 'movie' : 'show'}/$plexId';
  }
}

/// Last-known copies keyed by [MediaItem.serverId] alongside the wave they
/// assemble into; [at] stamps the newest wave for [CatalogLibraryMatcher.negativeTtl].
typedef _Entry = ({
  DateTime at,
  int scopeGeneration,
  Map<String?, List<MediaItem>> byServer,
  LibraryLookupResult result,
});
