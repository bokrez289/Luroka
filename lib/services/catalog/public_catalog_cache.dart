import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/platform_detector.dart';

/// Public, refetchable catalog responses. tvOS UserDefaults has a strict size
/// limit, so on Apple TV these live in a bounded process-local cache instead.
class PublicCatalogCache {
  PublicCatalogCache({bool? isAppleTV, this.maxBytes = 2 * 1024 * 1024})
    : _isAppleTV = isAppleTV ?? TvDetectionService.isAppleTVSync();

  static final shared = PublicCatalogCache();
  static const prefixes = [
    'luroka_cinemeta_public_v1:',
    'luroka_tmdb_public_v1:',
    'luroka_cinemeta_imdb_v1:',
    'luroka_award_categories_v1:',
  ];

  final bool _isAppleTV;
  final int maxBytes;
  final _memory = <String, String>{};
  int _bytes = 0;

  String? getString(SharedPreferencesWithCache prefs, String key) {
    if (!_isAppleTV) return prefs.getString(key);
    final value = _memory.remove(key);
    if (value != null) _memory[key] = value;
    return value;
  }

  Future<void> setString(SharedPreferencesWithCache prefs, String key, String value) async {
    if (!_isAppleTV) {
      await prefs.setString(key, value);
      return;
    }
    final previous = _memory.remove(key);
    if (previous != null) _bytes -= utf8.encode(previous).length;
    final size = utf8.encode(value).length;
    if (size > maxBytes) return;
    while (_bytes + size > maxBytes && _memory.isNotEmpty) {
      final oldest = _memory.keys.first;
      _bytes -= utf8.encode(_memory.remove(oldest)!).length;
    }
    _memory[key] = value;
    _bytes += size;
  }

  Future<void> removePrefix(SharedPreferencesWithCache prefs, String prefix) async {
    if (!_isAppleTV) {
      for (final key in prefs.keys.where((key) => key.startsWith(prefix)).toList()) {
        await prefs.remove(key);
      }
      return;
    }
    for (final key in _memory.keys.where((key) => key.startsWith(prefix)).toList()) {
      _bytes -= utf8.encode(_memory.remove(key)!).length;
    }
  }

  /// Remove only old disposable public responses; never touch credentials or
  /// the tvOS database recovery image. Run before other startup writes.
  static Future<void> removeLegacyAppleTVCaches(SharedPreferencesWithCache prefs) async {
    if (!TvDetectionService.isAppleTVSync()) return;
    for (final key in prefs.keys.where((key) => prefixes.any(key.startsWith)).toList()) {
      await prefs.remove(key);
    }
  }
}
