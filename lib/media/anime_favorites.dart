import 'media_item.dart';
import 'media_kind.dart';
import 'media_library.dart';

/// Device-local, profile-scoped corrections to the inexpensive anime signals
/// already present on Favorites rows. No metadata or network requests are made.
class AnimeFavoritesRules {
  final Map<String, bool> libraries;
  final Map<String, bool> titles;

  AnimeFavoritesRules({Map<String, bool> libraries = const {}, Map<String, bool> titles = const {}})
    : libraries = Map.unmodifiable(libraries),
      titles = Map.unmodifiable(titles);

  factory AnimeFavoritesRules.fromJson(Map<String, dynamic>? data) {
    Map<String, bool> read(Object? raw) => raw is Map
        ? {
            for (final entry in raw.entries)
              if (entry.key is String && entry.value is bool) entry.key as String: entry.value as bool,
          }
        : {};
    return AnimeFavoritesRules(libraries: read(data?['libraries']), titles: read(data?['titles']));
  }

  Map<String, Object?> toJson() => {'libraries': libraries, 'titles': titles};

  AnimeFavoritesRules withLibrary(String key, bool? value) {
    final updated = Map<String, bool>.from(libraries);
    if (value == null) {
      updated.remove(key);
    } else {
      updated[key] = value;
    }
    return AnimeFavoritesRules(libraries: updated, titles: titles);
  }

  /// Apply a correction to every known copy so a different representative
  /// after a refresh does not silently discard the user's choice.
  AnimeFavoritesRules withTitles(Iterable<MediaItem> items, bool? value) {
    final updated = Map<String, bool>.from(titles);
    for (final item in items) {
      if (value == null) {
        updated.remove(item.globalKey);
      } else {
        updated[item.globalKey] = value;
      }
    }
    return AnimeFavoritesRules(libraries: libraries, titles: updated);
  }

  bool includesLibrary(MediaLibrary library) => libraries[library.globalKey] ?? animeLibraryName(library.title);

  bool? titleOverride(Iterable<MediaItem> copies) {
    final choices = copies.map((item) => titles[item.globalKey]).whereType<bool>().toSet();
    if (choices.contains(false)) return false;
    if (choices.contains(true)) return true;
    return null;
  }

  bool includesTitle(Iterable<MediaItem> copies, {Map<String, String> libraryTitles = const {}}) {
    final rows = copies.toList(growable: false);
    // Explicit title decisions take precedence over library guesses. If older
    // copies carry conflicting decisions, exclude rather than misclassify.
    final choice = titleOverride(rows);
    if (choice != null) return choice;
    return rows.any((item) => _hasAutomaticSignal(item, libraryTitles));
  }

  bool _hasAutomaticSignal(MediaItem item, Map<String, String> libraryTitles) {
    if (item.kind != MediaKind.movie && item.kind != MediaKind.show) return false;
    final key = item.libraryGlobalKey;
    final libraryMatch = key != null && libraries.containsKey(key)
        ? libraries[key]!
        : animeLibraryName((key == null ? null : libraryTitles[key]) ?? item.libraryTitle ?? '');
    return libraryMatch || hasExplicitAnimeMetadata(item);
  }
}

final _animeWord = RegExp(r'(^|[^a-z0-9])anime([^a-z0-9]|$)', caseSensitive: false);

/// Avoid matching unrelated names like "animal" or treating all animation as anime.
bool animeLibraryName(String title) => _animeWord.hasMatch(title);

bool hasExplicitAnimeMetadata(MediaItem item) {
  bool tagged(Iterable<String>? values) => values?.any((value) => value.trim().toLowerCase() == 'anime') ?? false;
  if (tagged(item.genres) || tagged(item.labels)) return true;
  final raw = item.raw;
  final providerIds = raw?['ProviderIds'];
  if (providerIds is Map) {
    for (final entry in providerIds.entries) {
      if (const {'anidb', 'anilist', 'mal', 'myanimelist'}.contains(entry.key.toString().toLowerCase()) &&
          entry.value != null &&
          entry.value.toString().trim().isNotEmpty &&
          entry.value.toString().trim() != '0') {
        return true;
      }
    }
  }
  final catalog = raw?['lurokaCatalog'];
  if (catalog is Map) {
    if (catalog['source'] == 'mal' || catalog['source'] == 'anilist') return true;
    final ids = catalog['ids'];
    if (ids is Map && (ids['mal'] != null || ids['anilist'] != null)) return true;
  }
  final guid = item.guid?.toLowerCase() ?? '';
  if (RegExp(r'^com\.plexapp\.agents\.hama://anidb[0-9]*-').hasMatch(guid)) return true;
  final guids = raw?['Guid'];
  if (guids is List) {
    return guids.whereType<Map>().any((entry) {
      final id = entry['id']?.toString().toLowerCase() ?? '';
      return id.startsWith('anidb://') || id.startsWith('anilist://') || id.startsWith('mal://');
    });
  }
  return false;
}
