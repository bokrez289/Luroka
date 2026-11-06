import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../i18n/strings.g.dart';
import '../../media/media_kind.dart';
import '../../media/detail_enrichment.dart';
import '../../media/media_rating.dart';
import '../../media/show_episode_state.dart';
import '../../models/catalog/catalog_item.dart';
import '../../models/catalog/catalog_cast_member.dart';
import '../../utils/external_ids.dart';
import '../base_shared_preferences_service.dart';
import '../trackers/future_coalescer.dart';
import 'catalog_source.dart';
import 'discovery_awards.dart';
import 'public_catalog_cache.dart';

/// Key-free public metadata from Stremio's Cinemeta service. Its `top`
/// catalog is popularity ordered, not a weekly viewing/trending chart.
class CinemetaCatalogSource
    implements CatalogSource, CatalogHubSource, CatalogCommunityRatings, CatalogDiscoveryRefresh {
  @override
  Future<void> invalidateDiscoveryCache() async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    await PublicCatalogCache.shared.removePrefix(prefs, 'luroka_cinemeta_public_v1:/catalog/');
  }

  CinemetaCatalogSource({http.Client? httpClient}) : _http = httpClient ?? http.Client();
  final http.Client _http;
  final _changes = WatchlistChangeNotifier();
  final _loads = KeyedFutureCoalescer<String, Map<String, dynamic>>();
  bool _disposed = false;
  @override
  CatalogSourceId get id => CatalogSourceId.cinemeta;
  @override
  String get displayName => 'Cinemeta';
  @override
  bool get supportsWatchlist => false;
  @override
  Listenable get watchlistChanges => _changes;
  @override
  List<CatalogRowId> get supportedRows => const [CatalogRowId.popularMovies, CatalogRowId.popularShows];

  Future<Map<String, dynamic>> _get(String path) => _loads.run(path, () async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    final key = 'luroka_cinemeta_public_v1:$path';
    Map<String, dynamic>? stale;
    try {
      final cached = PublicCatalogCache.shared.getString(prefs, key);
      if (cached != null) {
        final json = jsonDecode(cached) as Map<String, dynamic>;
        stale = json['body'] as Map<String, dynamic>;
        if (DateTime.now().difference(DateTime.parse(json['at'] as String)) < const Duration(hours: 12)) return stale;
      }
    } catch (_) {
      /* Refetch damaged public cache. */
    }
    try {
      final response = await _http
          .get(Uri.parse('https://v3-cinemeta.strem.io$path'))
          .timeout(const Duration(seconds: 12));
      if (response.statusCode != 200) throw StateError('Cinemeta HTTP ${response.statusCode}');
      final body = jsonDecode(response.body) as Map<String, dynamic>;
      if (!_disposed) {
        await PublicCatalogCache.shared.setString(prefs, key, jsonEncode({'at': DateTime.now().toIso8601String(), 'body': body}));
      }
      return body;
    } catch (_) {
      if (stale != null) return stale;
      throw StateError(t.lurokaDiscovery.publicFeedError);
    }
  });

  static CatalogItem? mapItem(Map<String, dynamic> meta, MediaKind kind) {
    final imdb = meta['imdb_id'] ?? meta['id'];
    final title = meta['name'];
    if (imdb is! String || !RegExp(r'^tt\d+$').hasMatch(imdb) || title is! String || title.isEmpty) return null;
    final score = double.tryParse('${meta['imdbRating']}');
    final validScore = score != null && score.isFinite && score > 0 && score <= 10 ? score : null;
    final year = RegExp(r'^\d{4}').firstMatch('${meta['year'] ?? meta['releaseInfo'] ?? ''}');
    String? artwork(dynamic value) => value is String && Uri.tryParse(value)?.scheme == 'https' ? value : null;
    final trailers = meta['trailers'] as List? ?? const [];
    final youtubeId = trailers
        .whereType<Map>()
        .map((trailer) => trailer['source'])
        .whereType<String>()
        .where((id) => RegExp(r'^[A-Za-z0-9_-]{11}$').hasMatch(id))
        .firstOrNull;
    return CatalogItem(
      source: CatalogSourceId.cinemeta,
      kind: kind,
      title: title,
      ids: CatalogItemIds(imdb: imdb, tmdb: meta['moviedb_id'] is int ? meta['moviedb_id'] as int : null),
      year: year == null ? null : int.tryParse(year.group(0)!),
      overview: meta['description'] as String?,
      runtimeMinutes: int.tryParse(RegExp(r'^\d+').firstMatch('${meta['runtime']}')?.group(0) ?? ''),
      rating: validScore,
      ratings: validScore == null ? null : [MediaRatingSource(source: 'imdb', value: validScore)],
      genres: (meta['genres'] as List?)?.whereType<String>().toList(),
      posterUrl: artwork(meta['poster']),
      backdropUrl: artwork(meta['background']),
      logoUrl: artwork(meta['logo']),
      releaseDate: DateTime.tryParse('${meta['released'] ?? ''}'),
      trailerUrl: youtubeId == null ? null : 'https://www.youtube.com/watch?v=$youtubeId',
      cast: [for (final name in (meta['cast'] as List? ?? const []).whereType<String>()) CatalogCastMember(name: name)],
    );
  }

  String _type(MediaKind kind) => kind == MediaKind.movie ? 'movie' : 'series';
  @override
  Future<CatalogPage> fetchRow(CatalogRowId row, {int page = 1, int limit = 25}) async {
    if (!supportedRows.contains(row)) throw ArgumentError('Unsupported Cinemeta row');
    final kind = row == CatalogRowId.popularMovies ? MediaKind.movie : MediaKind.show;
    // Public catalog pages are fixed at 100; expose that actual pagination.
    final skip = (page - 1) * 100;
    final body = await _get('/catalog/${_type(kind)}/top${skip == 0 ? '' : '/skip=$skip'}.json');
    final metas = body['metas'] as List? ?? [];
    return CatalogPage(
      items: [
        for (final meta in metas)
          if (meta is Map<String, dynamic>) ?mapItem(meta, kind),
      ].take(limit).toList(),
      hasMore: metas.length >= 100,
    );
  }

  @override
  Future<List<CatalogItem>> search(String query, {int limit = 30}) async {
    if (query.trim().length < 2) return const [];
    final results = await Future.wait([
      for (final kind in [MediaKind.movie, MediaKind.show])
        () async {
          final body = await _get('/catalog/${_type(kind)}/top/search=${Uri.encodeComponent(query.trim())}.json');
          return [
            for (final meta in body['metas'] as List? ?? [])
              if (meta is Map<String, dynamic>) ?mapItem(meta, kind),
          ];
        }(),
    ]);
    return results.expand((items) => items).take(limit).toList();
  }

  Future<CatalogItem> enrichPreview(CatalogItem item) async {
    final imdb = item.ids.imdb;
    if (imdb == null) return item;
    final body = await _get('/meta/${_type(item.kind)}/$imdb.json');
    final meta = body['meta'];
    if (meta is! Map<String, dynamic>) return item;
    final enriched = mapItem(meta, item.kind);
    if (enriched?.ids.imdb != imdb) return item;
    return item.enrichedWith(enriched!);
  }

  Future<List<DetailVideo>> fetchTitleVideos(MediaKind kind, String imdb) async {
    if (!RegExp(r'^tt\d+$').hasMatch(imdb) || (kind != MediaKind.movie && kind != MediaKind.show)) return const [];
    final meta = (await _get('/meta/${_type(kind)}/$imdb.json'))['meta'];
    if (meta is! Map || (meta['imdb_id'] ?? meta['id']) != imdb) return const [];
    final seen = <String>{};
    return [
      for (final trailer in (meta['trailers'] as List? ?? const []).whereType<Map>())
        if (trailer['source'] case final String key when RegExp(r'^[\w-]{11}$').hasMatch(key) && seen.add(key))
          DetailVideo(
            url: 'https://www.youtube.com/watch?v=$key',
            name: trailer['name'] is String ? trailer['name'] : t.detailComposition.trailer,
            type: 'Trailer',
            thumbnail: 'https://img.youtube.com/vi/$key/hqdefault.jpg',
          ),
    ].take(8).toList();
  }

  Future<ShowSchedule> fetchShowSchedule(String imdb) async {
    if (!RegExp(r'^tt\d+$').hasMatch(imdb)) return const ShowSchedule();
    final body = await _get('/meta/series/$imdb.json');
    final meta = body['meta'];
    if (meta is! Map || (meta['imdb_id'] ?? meta['id']) != imdb) return const ShowSchedule();
    final status = '${meta['status'] ?? ''}'.toLowerCase();
    final seen = <String>{};
    final episodes = <ScheduledEpisode>[];
    for (final video in (meta['videos'] as List? ?? const []).whereType<Map>()) {
      final season = int.tryParse('${video['season']}');
      final number = int.tryParse('${video['episode']}');
      final date = DateTime.tryParse('${video['released'] ?? ''}');
      if (season == null ||
          number == null ||
          season <= 0 ||
          number <= 0 ||
          date == null ||
          !seen.add('$season:$number')) {
        continue;
      }
      final thumb = video['thumbnail'];
      episodes.add(
        ScheduledEpisode(
          season: season,
          number: number,
          released: date,
          title: video['title'] is String ? video['title'] as String : null,
          summary: video['overview'] is String ? video['overview'] as String : null,
          thumbnail: thumb is String && Uri.tryParse(thumb)?.scheme == 'https' ? thumb : null,
        ),
      );
    }
    return ShowSchedule(
      episodes: episodes,
      ended: ['ended', 'canceled', 'cancelled'].contains(status)
          ? true
          : ['continuing', 'returning series', 'airing'].contains(status)
          ? false
          : null,
    );
  }

  @override
  Future<CatalogDetail> fetchDetail(CatalogItem item, {int castLimit = 20, int relatedLimit = 20}) async => () async {
    final enriched = await enrichPreview(item);
    return CatalogDetail(item: enriched, cast: enriched.cast?.take(castLimit).toList() ?? const []);
  }();

  String _awardTitle(String id) => switch (id) {
    'imdb100' => t.lurokaDiscovery.imdb100,
    'imdbTv100' => t.lurokaDiscovery.imdbTv100,
    'oscars' => t.lurokaDiscovery.oscars,
    'emmys' => t.lurokaDiscovery.emmys,
    'emmyComedy' => t.lurokaDiscovery.emmyComedy,
    'bafta' => t.lurokaDiscovery.bafta,
    _ => t.lurokaDiscovery.cannes,
  };
  @override
  Future<List<CatalogHub>> fetchHubs({int limit = 25}) async {
    final result = <CatalogHub>[];
    for (final award in discoveryAwards) {
      try {
        result.add(
          CatalogHub(
            id: award.id,
            title: _awardTitle(award.id),
            page: await fetchHub(award.id, limit: award.entries.length),
          ),
        );
      } catch (_) {
        /* Other collections remain usable. */
      }
    }
    return result;
  }

  @override
  Future<CatalogPage> fetchHub(String id, {int page = 1, int limit = 25}) async {
    final award = discoveryAwards.firstWhere((award) => award.id == id);
    return CatalogPage(
      items: [
        for (final entry in award.entries.skip((page - 1) * limit).take(limit))
          CatalogItem(
            source: this.id,
            kind: award.kind,
            title: entry.title,
            year: entry.year,
            ids: CatalogItemIds(imdb: entry.imdb),
          ),
      ],
      hasMore: page * limit < award.entries.length,
    );
  }

  @override
  Future<List<MediaRatingSource>> fetchCommunityRatings(MediaKind kind, CatalogItemIds ids) async {
    if ((kind != MediaKind.movie && kind != MediaKind.show) || ids.imdb == null) return const [];
    final item = await enrichPreview(CatalogItem(source: id, kind: kind, title: '', ids: ids));
    return item.ratings ?? const [];
  }

  @override
  Future<CatalogItemIds?> resolveItemIds(MediaKind kind, ExternalIds external) async =>
      external.imdb == null ? null : CatalogItemIds.fromExternal(external);
  @override
  Future<void> ensureWatchlistLoaded() async {}
  @override
  bool? isOnWatchlist(MediaKind kind, CatalogItemIds ids) => null;
  @override
  Future<void> addToWatchlist(MediaKind kind, CatalogItemIds ids) async =>
      throw UnsupportedError('No Cinemeta watchlist');
  @override
  Future<void> removeFromWatchlist(MediaKind kind, CatalogItemIds ids) async =>
      throw UnsupportedError('No Cinemeta watchlist');
  @override
  void dispose() {
    _disposed = true;
    _http.close();
    _changes.dispose();
  }
}
