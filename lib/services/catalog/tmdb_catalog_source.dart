import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

import '../../i18n/strings.g.dart';
import '../../media/media_kind.dart';
import '../../media/detail_enrichment.dart';
import '../../media/media_rating.dart';
import '../../models/catalog/catalog_cast_member.dart';
import '../../models/catalog/catalog_item.dart';
import '../../utils/external_ids.dart';
import '../../utils/app_logger.dart';
import '../base_shared_preferences_service.dart';
import '../trackers/future_coalescer.dart';
import 'catalog_source.dart';
import 'discovery_awards.dart';
import 'public_catalog_cache.dart';

/// Optional distributor-provided key. Any key supplied this way is embedded
/// in the application binary and must be treated as extractable.
const kDefaultTmdbCredential = String.fromEnvironment('LUROKA_TMDB_API_KEY');

/// Public TMDb catalog. No user watchlist or account mutation permissions.
/// Successful responses are cached for 12 hours; credentials never enter cache
/// keys, payloads, error messages, or the app's HTTP logging interceptors.
class TmdbCatalogSource implements CatalogSource, CatalogHubSource, CatalogCommunityRatings, CatalogDiscoveryRefresh {
  @override
  Future<void> invalidateDiscoveryCache() async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    await PublicCatalogCache.shared.removePrefix(prefs, '$_cachePrefix/trending/');
  }

  TmdbCatalogSource(this._credential, {http.Client? httpClient}) : _http = httpClient ?? http.Client();

  final String _credential;
  final http.Client _http;
  final _changes = WatchlistChangeNotifier();
  final _loads = KeyedFutureCoalescer<String, Map<String, dynamic>>();
  final _ratingLoads = KeyedFutureCoalescer<String, List<MediaRatingSource>>();
  bool _disposed = false;
  static const _cachePrefix = 'luroka_tmdb_public_v1:';

  @override
  CatalogSourceId get id => CatalogSourceId.tmdb;
  @override
  String get displayName => 'TMDb';
  @override
  bool get supportsWatchlist => false;
  @override
  Listenable get watchlistChanges => _changes;
  @override
  List<CatalogRowId> get supportedRows => const [CatalogRowId.trendingMovies, CatalogRowId.trendingShows];

  Future<Map<String, dynamic>> _get(String path, [Map<String, dynamic> query = const {}]) {
    final cacheKey = '$_cachePrefix$path:${jsonEncode(query)}';
    return _loads.run(cacheKey, () async {
      final prefs = await BaseSharedPreferencesService.sharedCache();
      Map<String, dynamic>? stale;
      try {
        final encoded = PublicCatalogCache.shared.getString(prefs, cacheKey);
        if (encoded != null) {
          final saved = jsonDecode(encoded) as Map<String, dynamic>;
          stale = saved['body'] as Map<String, dynamic>;
          final at = DateTime.parse(saved['at'] as String);
          if (DateTime.now().difference(at) < const Duration(hours: 12)) return stale;
        }
      } catch (_) {
        /* A corrupt public cache is refetched. */
      }
      try {
        final body = await _request(path, query);
        if (!_disposed) {
          await PublicCatalogCache.shared.setString(prefs, cacheKey, jsonEncode({'at': DateTime.now().toIso8601String(), 'body': body}));
        }
        return body;
      } catch (error) {
        // Do not log transport errors or request URLs: either can contain the
        // API credential. An HTTP status is enough to distinguish rejected
        // credentials, throttling and a server outage in exported logs.
        if (error is _TmdbHttpFailure) {
          appLogger.w('TMDb request failed with HTTP ${error.status}');
        } else {
          appLogger.w('TMDb request failed before a valid response');
        }
        if (stale != null) return stale;
        // Transport exceptions can contain the request URL and API key.
        throw StateError(t.lurokaDiscovery.feedError);
      }
    });
  }

  Future<Map<String, dynamic>> _request(String path, Map<String, dynamic> query) async {
    final bearer = _credential.contains('.');
    final uri = Uri.https('api.themoviedb.org', '/3$path', {
      for (final entry in query.entries) entry.key: '${entry.value}',
      if (!bearer) 'api_key': _credential,
    });
    final response = await _http
        .get(uri, headers: {if (bearer) 'Authorization': 'Bearer $_credential'})
        .timeout(const Duration(seconds: 15));
    if (response.statusCode != 200) throw _TmdbHttpFailure(response.statusCode);
    return jsonDecode(response.body) as Map<String, dynamic>;
  }

  Future<void> validate() async {
    // Intentionally uncached: a previously cached feed cannot validate a new key.
    try {
      final result = await _request('/authentication', {});
      if (result['success'] != true) throw StateError('Invalid TMDb credential');
    } catch (_) {
      throw StateError(t.lurokaDiscovery.invalidKey);
    }
  }

  /// Uses the same credential-safe public cache as discovery. IDs are resolved
  /// through TMDb's external-ID endpoint, never a fuzzy title search.
  Future<DetailEnrichment> fetchDetailEnrichment(
    MediaKind kind,
    CatalogItemIds ids, {
    String language = 'en-US',
  }) async {
    if (kind != MediaKind.movie && kind != MediaKind.show) return const DetailEnrichment();
    final type = kind == MediaKind.movie ? 'movie' : 'tv';
    var tmdb = ids.tmdb;
    if (tmdb == null && ids.imdb != null && RegExp(r'^tt\d+$').hasMatch(ids.imdb!)) {
      final found = await _get('/find/${ids.imdb}', {'external_source': 'imdb_id'});
      final results = found[kind == MediaKind.movie ? 'movie_results' : 'tv_results'];
      if (results is List && results.isNotEmpty && results.first is Map) tmdb = results.first['id'] as int?;
    }
    if (tmdb == null) return const DetailEnrichment();
    // A failure in one optional section must not suppress the other.
    final failedEndpoints = <String>{};
    Future<Map<String, dynamic>> optional(String endpoint, Map<String, dynamic> query) async {
      try {
        final body = await _get('/$type/$tmdb/$endpoint', query);
        failedEndpoints.remove(endpoint);
        return body;
      } catch (_) {
        failedEndpoints.add(endpoint);
        return const {};
      }
    }

    final responses = await Future.wait([
      optional('videos', {'language': language}),
      optional('reviews', {'language': language}),
    ]);
    final rawVideos = (responses[0]['results'] as List? ?? const []).whereType<Map>().toList();
    if (rawVideos.isEmpty && language != 'en-US') {
      rawVideos.addAll(
        ((await optional('videos', {'language': 'en-US'}))['results'] as List? ?? const []).whereType<Map>(),
      );
    }
    final seen = <String>{};
    final counts = <String, int>{};
    int rank(Map video) => switch ('${video['type']}'.toLowerCase()) {
      'trailer' => 0,
      'teaser' => 1,
      'featurette' => 2,
      'behind the scenes' => 3,
      'clip' => 4,
      _ => 5,
    };
    rawVideos.sort((a, b) {
      final order = rank(a).compareTo(rank(b));
      return order != 0 ? order : (b['official'] == true ? 1 : 0).compareTo(a['official'] == true ? 1 : 0);
    });
    final videos = <DetailVideo>[];
    for (final video in rawVideos) {
      final key = video['key'];
      if (video['site'] != 'YouTube' || key is! String || !RegExp(r'^[\w-]{11}$').hasMatch(key) || !seen.add(key)) {
        continue;
      }
      final category = '${video['type'] ?? 'Clip'}';
      if ((counts[category] ?? 0) >= 3) continue;
      counts[category] = (counts[category] ?? 0) + 1;
      videos.add(
        DetailVideo(
          url: 'https://www.youtube.com/watch?v=$key',
          name: '${video['name'] ?? category}',
          type: category,
          thumbnail: 'https://img.youtube.com/vi/$key/hqdefault.jpg',
        ),
      );
    }
    final reviews = <DetailReview>[];
    var rawReviews = responses[1]['results'] as List? ?? const [];
    if (rawReviews.isEmpty && language != 'en-US') {
      rawReviews = (await optional('reviews', {'language': 'en-US'}))['results'] as List? ?? const [];
    }
    for (final review in rawReviews.whereType<Map>()) {
      final content = review['content'];
      if (content is! String || content.trim().isEmpty) continue;
      final author = review['author_details'] as Map?;
      final rating = (author?['rating'] as num?)?.toDouble();
      reviews.add(
        DetailReview(
          id: '${review['id']}',
          author:
              '${author?['name']?.toString().trim().isNotEmpty == true ? author!['name'] : review['author'] ?? 'TMDb member'}',
          content: content.trim(),
          source: 'TMDb',
          rating: rating != null && rating.isFinite && rating >= 0 && rating <= 10 ? rating : null,
          date: DateTime.tryParse('${review['created_at']}'),
          url: review['url'] as String?,
        ),
      );
    }
    return DetailEnrichment(videos: videos, reviews: reviews, reviewsFailed: failedEndpoints.contains('reviews'));
  }

  /// Cinemeta explicitly names its score imdbRating. Never substitutes TMDb's
  /// vote_average, and verifies the returned IMDb identity before using it.
  @override
  Future<List<MediaRatingSource>> fetchCommunityRatings(MediaKind kind, CatalogItemIds ids) {
    if (kind != MediaKind.movie && kind != MediaKind.show) return Future.value(const []);
    return _ratingLoads.run('${kind.name}:${ids.canonicalKey}', () async {
      var imdb = ids.imdb;
      final type = kind == MediaKind.movie ? 'movie' : 'tv';
      if (imdb == null && ids.tmdb != null) {
        final body = await _get('/$type/${ids.tmdb}/external_ids');
        imdb = body['imdb_id'] as String?;
      }
      if (imdb == null || !RegExp(r'^tt\d+$').hasMatch(imdb)) return const [];
      final prefs = await BaseSharedPreferencesService.sharedCache();
      final key = 'luroka_cinemeta_imdb_v1:$imdb';
      try {
        final cached = PublicCatalogCache.shared.getString(prefs, key);
        if (cached != null) {
          final json = jsonDecode(cached) as Map<String, dynamic>;
          if (DateTime.now().difference(DateTime.parse(json['at'] as String)) < const Duration(hours: 24)) {
            return [MediaRatingSource(source: 'imdb', value: (json['value'] as num).toDouble())];
          }
        }
      } catch (_) {
        /* Refetch a damaged public score cache. */
      }
      final mediaType = kind == MediaKind.movie ? 'movie' : 'series';
      final response = await _http
          .get(Uri.https('v3-cinemeta.strem.io', '/meta/$mediaType/$imdb.json'))
          .timeout(const Duration(seconds: 8));
      if (response.statusCode != 200) return const [];
      final meta = (jsonDecode(response.body) as Map<String, dynamic>)['meta'] as Map?;
      if (meta == null || (meta['imdb_id'] ?? meta['id']) != imdb) return const [];
      final score = double.tryParse('${meta['imdbRating']}');
      if (score == null || !score.isFinite || score <= 0 || score > 10) return const [];
      if (!_disposed) {
        await PublicCatalogCache.shared.setString(prefs, key, jsonEncode({'at': DateTime.now().toIso8601String(), 'value': score}));
      }
      return [MediaRatingSource(source: 'imdb', value: score)];
    });
  }

  Future<CatalogItem> enrichPreview(CatalogItem item) async {
    final type = item.kind == MediaKind.movie ? 'movie' : 'tv';
    CatalogItem enriched = item;
    try {
      enriched = item.enrichedWith(
        mapItem(
          await _get('/$type/${item.ids.tmdb}', {'append_to_response': 'external_ids', 'language': 'en-US'}),
          item.kind,
        ),
      );
    } catch (_) {
      /* The row itself remains useful. */
    }
    try {
      final scores = await fetchCommunityRatings(enriched.kind, enriched.ids);
      if (scores.isNotEmpty) {
        enriched = enriched.enrichedWith(
          CatalogItem(
            source: id,
            kind: item.kind,
            title: item.title,
            ids: enriched.ids,
            ratings: [...scores, ...?enriched.ratings?.where((r) => r.source != 'imdb')],
          ),
        );
      }
    } catch (_) {
      /* A missing IMDb score does not hide the title. */
    }
    return enriched;
  }

  static String? image(dynamic path, String size) =>
      path is String && path.startsWith('/') ? 'https://image.tmdb.org/t/p/$size$path' : null;

  static CatalogItem mapItem(Map<String, dynamic> json, MediaKind kind) {
    final date = DateTime.tryParse('${json['release_date'] ?? json['first_air_date'] ?? ''}');
    final external = json['external_ids'] as Map<String, dynamic>?;
    final vote = (json['vote_average'] as num?)?.toDouble();
    final genreRows = json['genres'] as List?;
    return CatalogItem(
      source: CatalogSourceId.tmdb,
      kind: kind,
      title: '${json['title'] ?? json['name'] ?? ''}',
      originalTitle: (json['original_title'] ?? json['original_name']) as String?,
      ids: CatalogItemIds(
        tmdb: json['id'] as int?,
        imdb: (external?['imdb_id'] ?? json['imdb_id']) as String?,
        tvdb: external?['tvdb_id'] as int?,
      ),
      year: date?.year,
      releaseDate: date,
      overview: json['overview'] as String?,
      rating: vote != null && vote > 0 ? vote : null,
      ratings: vote != null && vote > 0 ? [MediaRatingSource(source: 'tmdb', value: vote)] : null,
      votes: json['vote_count'] as int?,
      runtimeMinutes: json['runtime'] as int?,
      genres: genreRows?.map((g) => '${(g as Map)['name']}').toList(),
      posterUrl: image(json['poster_path'], 'w342'),
      backdropUrl: image(json['backdrop_path'], 'w1280'),
      posterVariants: image(json['poster_path'], 'w500') == null ? null : {500: image(json['poster_path'], 'w500')!},
      backdropVariants: image(json['backdrop_path'], 'w1280') == null
          ? null
          : {1280: image(json['backdrop_path'], 'w1280')!},
      episodeCount: json['number_of_episodes'] as int?,
      isAdult: json['adult'] as bool?,
      tagline: json['tagline'] as String?,
      airStatus: switch (json['status']) {
        'Returning Series' || 'In Production' => CatalogAirStatus.airing,
        'Ended' => CatalogAirStatus.ended,
        'Canceled' => CatalogAirStatus.canceled,
        _ => null,
      },
    );
  }

  CatalogPage _page(Map<String, dynamic> body, MediaKind kind) => CatalogPage(
    items: [
      for (final row in body['results'] as List? ?? const [])
        if (row is Map<String, dynamic> && row['adult'] != true) mapItem(row, kind),
    ],
    hasMore: (body['page'] as int? ?? 1) < (body['total_pages'] as int? ?? 1),
    totalResults: body['total_results'] as int?,
  );

  @override
  Future<CatalogPage> fetchRow(CatalogRowId row, {int page = 1, int limit = 25}) async {
    final kind = row == CatalogRowId.trendingMovies ? MediaKind.movie : MediaKind.show;
    if (!supportedRows.contains(row)) throw ArgumentError('Unsupported TMDb row');
    final type = kind == MediaKind.movie ? 'movie' : 'tv';
    return _page(await _get('/trending/$type/week', {'page': page, 'language': 'en-US'}), kind);
  }

  @override
  Future<List<CatalogItem>> search(String query, {int limit = 30}) async {
    if (query.trim().isEmpty) return const [];
    final body = await _get('/search/multi', {'query': query.trim(), 'include_adult': false, 'language': 'en-US'});
    return [
      for (final row in body['results'] as List? ?? const [])
        if (row is Map<String, dynamic> && row['adult'] != true && const ['movie', 'tv'].contains(row['media_type']))
          mapItem(row, row['media_type'] == 'movie' ? MediaKind.movie : MediaKind.show),
    ].take(limit).toList();
  }

  @override
  Future<CatalogDetail> fetchDetail(CatalogItem item, {int castLimit = 20, int relatedLimit = 20}) async {
    if (item.ids.tmdb == null && item.ids.imdb != null) {
      final found = await _get('/find/${item.ids.imdb}', {'external_source': 'imdb_id', 'language': 'en-US'});
      final rows = found[item.kind == MediaKind.movie ? 'movie_results' : 'tv_results'] as List? ?? [];
      if (rows.isEmpty) return CatalogDetail(item: item);
      item = item.enrichedWith(mapItem(Map<String, dynamic>.from(rows.first as Map), item.kind));
    }
    final type = item.kind == MediaKind.movie ? 'movie' : 'tv';
    final body = await _get('/$type/${item.ids.tmdb}', {
      'append_to_response': 'external_ids,credits,recommendations',
      'language': 'en-US',
    });
    return CatalogDetail(
      item: item.enrichedWith(mapItem(body, item.kind)),
      cast: [
        for (final actor in (body['credits'] as Map?)?['cast'] as List? ?? const [])
          if (actor is Map && actor['name'] is String)
            CatalogCastMember(
              name: actor['name'] as String,
              secondary: actor['character'] as String?,
              imageUrl: image(actor['profile_path'], 'w185'),
            ),
      ].take(castLimit).toList(),
      related: _page(
        body['recommendations'] as Map<String, dynamic>? ?? {},
        item.kind,
      ).items.take(relatedLimit).toList(),
    );
  }

  String awardTitle(String id) => switch (id) {
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
    final hubs = <CatalogHub>[];
    // Membership facts are bundled; title metadata is loaded on demand.
    for (final award in discoveryAwards) {
      try {
        hubs.add(
          CatalogHub(
            id: award.id,
            title: awardTitle(award.id),
            page: await fetchHub(award.id, limit: award.entries.length),
          ),
        );
      } catch (_) {
        /* One unavailable collection cannot hide the others. */
      }
    }
    return hubs;
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
  Future<CatalogItemIds?> resolveItemIds(MediaKind kind, ExternalIds external) async =>
      external.tmdb == null ? null : CatalogItemIds.fromExternal(external);
  @override
  Future<void> ensureWatchlistLoaded() async {}
  @override
  bool? isOnWatchlist(MediaKind kind, CatalogItemIds ids) => null;
  @override
  Future<void> addToWatchlist(MediaKind kind, CatalogItemIds ids) async => throw UnsupportedError('No TMDb watchlist');
  @override
  Future<void> removeFromWatchlist(MediaKind kind, CatalogItemIds ids) async =>
      throw UnsupportedError('No TMDb watchlist');

  /// The best poster for a TMDb id, as a fetchable CDN URL; null when the id
  /// is unknown or the lookup fails. Used for Watch Together artwork where a
  /// participant has no copy of their own. English or language-less images
  /// first, then the most voted.
  Future<String?> posterUrlFor({required String tmdbId, required bool movie}) async {
    try {
      final body = await _get('/${movie ? 'movie' : 'tv'}/$tmdbId/images', const {'include_image_language': 'en,null'});
      final posters = body['posters'];
      if (posters is! List || posters.isEmpty) return null;
      String? bestPath;
      var bestScore = -1.0;
      for (final poster in posters) {
        if (poster is! Map) continue;
        final path = poster['file_path'];
        if (path is! String || path.isEmpty) continue;
        final vote = (poster['vote_count'] as num?)?.toDouble() ?? 0;
        if (vote > bestScore) {
          bestScore = vote;
          bestPath = path;
        }
      }
      if (bestPath == null) return null;
      return 'https://image.tmdb.org/t/p/w500/${bestPath.startsWith('/') ? bestPath.substring(1) : bestPath}';
    } catch (_) {
      return null;
    }
  }

  @override
  void dispose() {
    _disposed = true;
    _http.close();
    _changes.dispose();
  }
}

class _TmdbHttpFailure implements Exception {
  const _TmdbHttpFailure(this.status);
  final int status;
}
