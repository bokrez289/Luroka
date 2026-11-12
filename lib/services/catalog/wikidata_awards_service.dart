import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../media/media_kind.dart';
import '../../models/catalog/catalog_item.dart';
import '../base_shared_preferences_service.dart';
import '../trackers/future_coalescer.dart';
import 'award_catalog.dart';
import 'discovery_awards.dart';
import 'public_catalog_cache.dart';

class AwardTitleReference {
  const AwardTitleReference({required this.imdb, required this.title, required this.kind, this.year, this.tmdb});
  final String imdb;
  final String title;
  final MediaKind kind;
  final int? year;
  final int? tmdb;

  CatalogItem toCatalog(CatalogSourceId source) => CatalogItem(
    source: source,
    kind: kind,
    title: title,
    year: year,
    ids: CatalogItemIds(imdb: imdb, tmdb: tmdb),
  );

  Map<String, Object?> toJson() => {'imdb': imdb, 'title': title, 'kind': kind.name, 'year': year, 'tmdb': tmdb};

  static AwardTitleReference? fromJson(Object? value) {
    if (value is! Map ||
        value['imdb'] is! String ||
        !RegExp(r'^tt\d+$').hasMatch(value['imdb'] as String) ||
        value['title'] is! String ||
        (value['title'] as String).isEmpty ||
        !{'movie', 'show'}.contains(value['kind'])) {
      return null;
    }
    return AwardTitleReference(
      imdb: value['imdb'] as String,
      title: value['title'] as String,
      kind: value['kind'] == 'show' ? MediaKind.show : MediaKind.movie,
      year: value['year'] is int ? value['year'] as int : null,
      tmdb: value['tmdb'] is int ? value['tmdb'] as int : null,
    );
  }
}

/// Public CC0 membership facts only. Title artwork, ratings, watch state and
/// library availability stay in their existing independent caches/providers.
class WikidataAwardsService {
  WikidataAwardsService({http.Client? httpClient, DateTime Function()? now})
    : _http = httpClient ?? http.Client(),
      _now = now ?? DateTime.now;
  final http.Client _http;
  final DateTime Function() _now;
  final _requests = KeyedFutureCoalescer<String, List<AwardTitleReference>>();
  final _memory = <String, ({DateTime at, List<AwardTitleReference> titles})>{};
  bool _disposed = false;
  static const _prefix = 'luroka_award_categories_v1:';
  static const freshness = Duration(days: 14);

  List<AwardTitleReference> seed(AwardCategory category, AwardSelection mode) {
    if (mode != AwardSelection.winners || category.seedId == null) return const [];
    final award = discoveryAwards.where((award) => award.id == category.seedId).firstOrNull;
    return [
      for (final entry in award?.entries ?? const <DiscoveryTitle>[])
        AwardTitleReference(imdb: entry.imdb, title: entry.title, year: entry.year, kind: category.kind),
    ];
  }

  Future<List<AwardTitleReference>> load(AwardCategory category, AwardSelection mode, {bool refresh = false}) {
    if (!RegExp(r'^Q\d+$').hasMatch(category.qid)) throw ArgumentError('Invalid award category');
    final key = '$_prefix${category.qid}:${mode.name}';
    return _requests.run(key, () async {
      final prefs = await BaseSharedPreferencesService.sharedCache();
      var saved = _memory[key];
      if (saved == null) {
        try {
          final encoded = PublicCatalogCache.shared.getString(prefs, key);
          final raw = encoded == null ? null : jsonDecode(encoded);
          if (raw is Map && raw['at'] is String && raw['titles'] is List) {
            final titles = (raw['titles'] as List)
                .map(AwardTitleReference.fromJson)
                .whereType<AwardTitleReference>()
                .toList();
            final at = DateTime.tryParse(raw['at'] as String);
            if (at != null && titles.isNotEmpty) saved = (at: at, titles: titles);
          }
        } catch (_) {
          /* A bad membership cache is refetched, not treated as no awards. */
        }
      }
      if (!refresh && saved != null && _now().difference(saved.at) < freshness) {
        _memory[key] = saved;
        return saved.titles;
      }
      try {
        final response = await _http
            .get(
              Uri.https('query.wikidata.org', '/sparql', {'format': 'json', 'query': buildQuery(category, mode)}),
              headers: {
                'Accept': 'application/sparql-results+json',
                'User-Agent': 'Luroka/awards (https://github.com/bokrez289/plezy)',
              },
            )
            .timeout(const Duration(seconds: 18));
        if (response.statusCode != 200) throw StateError('Wikidata HTTP ${response.statusCode}');
        final body = jsonDecode(response.body);
        if (body is! Map || body['results'] is! Map || body['results']['bindings'] is! List) {
          throw const FormatException('Invalid awards response');
        }
        final titles = parseBindings(body['results']['bindings'] as List, category.kind);
        if (!_disposed && titles.isNotEmpty) {
          final at = _now();
          _memory[key] = (at: at, titles: titles);
          await PublicCatalogCache.shared.setString(
            prefs, key,
            jsonEncode({'at': at.toIso8601String(), 'titles': titles.map((title) => title.toJson()).toList()}),
          );
        }
        return titles.isNotEmpty ? titles : saved?.titles ?? seed(category, mode);
      } catch (_) {
        if (saved != null) return saved.titles;
        final fallback = seed(category, mode);
        if (fallback.isNotEmpty) return fallback;
        throw StateError('Award membership is unavailable');
      }
    });
  }

  static String buildQuery(AwardCategory category, AwardSelection mode) {
    if (!RegExp(r'^Q\d+$').hasMatch(category.qid)) throw ArgumentError('Invalid award category');
    final property = mode == AwardSelection.winners ? 'P166' : 'P1411';
    return '''SELECT DISTINCT ?work ?workLabel ?imdb ?tmdb ?kind ?date WHERE {
  { ?work p:$property ?statement . ?statement ps:$property wd:${category.qid} . }
  UNION { ?person p:$property ?statement . ?statement ps:$property wd:${category.qid} ; pq:P1686 ?work . }
  ?work wdt:P345 ?imdb . FILTER(REGEX(?imdb, "^tt[0-9]+\$"))
  OPTIONAL { ?work wdt:P577 ?date . }
  OPTIONAL { ?work wdt:P4947 ?movieId . }
  OPTIONAL { ?work wdt:P4983 ?showId . }
  BIND(IF(BOUND(?showId), "show", IF(BOUND(?movieId), "movie", "${category.kind.name}")) AS ?kind)
  BIND(COALESCE(?showId, ?movieId) AS ?tmdb)
  SERVICE wikibase:label { bd:serviceParam wikibase:language "en" . }
} ORDER BY DESC(?date) LIMIT 1500''';
  }

  static List<AwardTitleReference> parseBindings(List bindings, MediaKind fallbackKind) {
    final byId = <String, AwardTitleReference>{};
    String? value(Map row, String key) => row[key] is Map ? row[key]['value'] as String? : null;
    for (final raw in bindings) {
      if (raw is! Map) continue;
      final imdb = value(raw, 'imdb');
      final title = value(raw, 'workLabel');
      if (imdb == null ||
          !RegExp(r'^tt\d+$').hasMatch(imdb) ||
          title == null ||
          title.isEmpty ||
          RegExp(r'^Q\d+$').hasMatch(title)) {
        continue;
      }
      final kind = switch (value(raw, 'kind')) {
        'show' => MediaKind.show,
        'movie' => MediaKind.movie,
        _ => fallbackKind,
      };
      final year = int.tryParse(RegExp(r'^\d{4}').firstMatch(value(raw, 'date') ?? '')?.group(0) ?? '');
      final previous = byId['${kind.name}/$imdb'];
      byId['${kind.name}/$imdb'] = AwardTitleReference(
        imdb: imdb,
        title: title,
        kind: kind,
        year: previous?.year != null && (year == null || previous!.year! < year) ? previous!.year : year,
        tmdb: int.tryParse(value(raw, 'tmdb') ?? '') ?? previous?.tmdb,
      );
    }
    final titles = byId.values.toList()
      ..sort((a, b) {
        final year = (b.year ?? 0).compareTo(a.year ?? 0);
        return year != 0 ? year : a.title.compareTo(b.title);
      });
    return titles.take(500).toList();
  }

  void dispose() {
    _disposed = true;
    _http.close();
  }
}
