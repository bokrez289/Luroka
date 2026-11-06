import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../media/media_hub.dart';
import '../media/media_item.dart';
import '../media/media_kind.dart';
import '../media/media_library.dart';
import '../profiles/profile.dart';
import '../models/kids_avatar.dart';
import 'base_shared_preferences_service.dart';

/// Device-local parental controls. Connections and server watch state remain
/// shared; this store owns only Luroka's restrictions and viewing exclusions.
class KidsProfileService extends ChangeNotifier {
  KidsProfileService._();
  static final instance = KidsProfileService._();
  static const _key = 'luroka_kids_profiles_v1';
  SharedPreferencesWithCache? _prefs;
  Future<void>? _initializing;
  Map<String, dynamic> _data = {};
  String? _activeId;
  final Set<String> _approvedParents = {};
  final Map<String, ({String? libraryId, List<String>? genres, String? rating})> _itemContext = {};
  Future<void>? _writes;
  String _committedJson = '{}';

  Future<void> initialize() {
    if (_prefs != null) return Future.value();
    return _initializing ??= _load();
  }

  Future<void> _load() async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    final raw = prefs.getString(_key);
    // Malformed policy must not silently turn a child into an adult.
    if (raw != null) _data = Map<String, dynamic>.from(jsonDecode(raw) as Map);
    _committedJson = jsonEncode(_data);
    _prefs = prefs;
  }

  Map<String, dynamic> get _children => (_data['children'] as Map?)?.cast<String, dynamic>() ?? {};
  bool get hasKids => _children.isNotEmpty;
  bool isKids(String? id) => id != null && _children.containsKey(id);
  bool get isActiveKids => isKids(_activeId);
  String? get activeId => _activeId;
  int ageFor(String id) => ((_children[id] as Map?)?['maxAge'] as int?) ?? 7;
  bool themeFor(String id) => ((_children[id] as Map?)?['theme'] as bool?) ?? true;
  bool get useKidsTheme => isActiveKids && themeFor(_activeId!);
  bool get isOlderKids => isActiveKids && ageFor(_activeId!) >= 12;
  Set<String>? librariesFor(String id) => ((_children[id] as Map?)?['libraries'] as List?)?.cast<String>().toSet();
  bool animationOnlyFor(String id) => ((_children[id] as Map?)?['animationOnly'] as bool?) ?? false;
  bool allowUnratedFor(String id) => ((_children[id] as Map?)?['allowUnrated'] as bool?) ?? false;
  int? dailyWatchMinutesFor(String id) => (_children[id] as Map?)?['dailyWatchMinutes'] as int?;
  int? bedtimeStartFor(String id) => (_children[id] as Map?)?['bedtimeStart'] as int?;
  int? bedtimeEndFor(String id) => (_children[id] as Map?)?['bedtimeEnd'] as int?;

  /// Local clock minutes; a bedtime may cross midnight.
  bool isBedtime(String id, DateTime now) {
    final start = bedtimeStartFor(id), end = bedtimeEndFor(id);
    if (start == null || end == null || start == end) return false;
    final minute = now.hour * 60 + now.minute;
    return start < end ? minute >= start && minute < end : minute >= start || minute < end;
  }

  bool get hasLibraryRestriction => isActiveKids && librariesFor(_activeId!) != null;
  bool get animationOnly => isActiveKids && animationOnlyFor(_activeId!);
  bool get allowUnrated => isActiveKids && allowUnratedFor(_activeId!);
  bool libraryAllowed(String? serverId, String? libraryId) {
    if (!hasLibraryRestriction) return true;
    return serverId != null && libraryId != null && librariesFor(_activeId!)!.contains('$serverId:$libraryId');
  }

  bool allowsLibrary(MediaLibrary library) =>
      !isActiveKids ||
      ((library.kind == MediaKind.movie || library.kind == MediaKind.show) &&
          libraryAllowed(library.serverId, library.id));

  /// Retain trusted library/genre metadata from scoped server responses for
  /// sparse episodes and subsequent direct lookups. Never carries across users.
  MediaItem withContext(MediaItem item, {String? libraryId}) {
    if (!isActiveKids) return libraryId == null ? item : item.copyWith(libraryId: libraryId);
    final own = _itemContext[item.globalKey];
    final parent =
        _itemContext['${item.serverId}:${item.grandparentId}'] ?? _itemContext['${item.serverId}:${item.parentId}'];
    final resolved = item.copyWith(
      libraryId: libraryId ?? item.libraryId ?? own?.libraryId ?? parent?.libraryId,
      genres: item.genres?.isNotEmpty == true ? item.genres : own?.genres ?? parent?.genres,
    );
    _itemContext[item.globalKey] = (
      libraryId: resolved.libraryId,
      genres: resolved.genres,
      rating: _strictestRating(item.contentRating, own?.rating),
    );
    if (_itemContext.length > 4096) _itemContext.remove(_itemContext.keys.first);
    return resolved;
  }

  // Sparse cached rows must not downgrade a stricter classification already
  // observed in this profile session. Profile/policy changes clear the cache.
  static String? _strictestRating(String? first, String? second) {
    if (isUnrated(first)) return second ?? first;
    if (isUnrated(second)) return first;
    final a = ratingAge(first), b = ratingAge(second);
    if (a == null) return first;
    if (b == null) return second;
    return a >= b ? first : second;
  }

  KidsAvatarKind avatarFor(String id) => KidsAvatarKind.fromId((_children[id] as Map?)?['avatar'] as String?);
  String? parentFor(String id) => (_children[id] as Map?)?['parentId'] as String?;
  bool hideKidsFor(String? id) => ((_data['hideKids'] as Map?)?[id] as bool?) ?? false;
  bool hasHideKidsPreference(String id) => (_data['hideKids'] as Map?)?.containsKey(id) ?? false;
  bool get hasParentPin => (_data['parentPin'] as String?)?.isNotEmpty ?? false;
  bool verifyParentPin(String pin) => hasParentPin && verifyPin(pin, _data['parentPin'] as String);

  void selectProfile(String? id) {
    if (_activeId == id) return;
    _activeId = id;
    _approvedParents.clear();
    _itemContext.clear();
    notifyListeners();
  }

  Future<void> _save() {
    final encoded = jsonEncode(_data);
    final previous = _writes;
    final write = () async {
      if (previous != null) await previous;
      final prefs = _prefs;
      try {
        if (prefs == null) throw StateError('Parental controls are not initialized');
        await prefs.setString(_key, encoded);
        _committedJson = encoded;
      } catch (_) {
        if (jsonEncode(_data) == encoded) {
          _data = Map<String, dynamic>.from(jsonDecode(_committedJson) as Map);
          _approvedParents.clear();
          notifyListeners();
        }
        rethrow;
      }
    }();
    late final Future<void> queued;
    queued = write.catchError((Object _) {}).whenComplete(() {
      if (identical(_writes, queued)) _writes = null;
    });
    _writes = queued;
    notifyListeners();
    return write;
  }

  Future<void> setParentPin(String pin) async {
    if (!RegExp(r'^\d{4}$').hasMatch(pin)) throw ArgumentError('A four-digit PIN is required');
    _data['parentPin'] = computePinHash(pin);
    await _save();
  }

  Future<void> setChild(
    String id, {
    required String parentId,
    required int maxAge,
    bool theme = true,
    KidsAvatarKind? avatar,
    Set<String>? allowedLibraries,
    bool? restrictLibraries,
    bool? animationOnly,
    bool? allowUnrated,
    bool updateTimeLimits = false,
    int? dailyWatchMinutes,
    int? bedtimeStart,
    int? bedtimeEnd,
  }) async {
    if (!hasParentPin) throw StateError('Set a parent PIN first');
    if (isKids(parentId) || id == parentId) throw ArgumentError('An adult parent is required');
    if (!const [0, 7, 12, 16].contains(maxAge)) throw ArgumentError('Unsupported age group');
    if (updateTimeLimits &&
        ((dailyWatchMinutes != null && (dailyWatchMinutes < 1 || dailyWatchMinutes > 1440)) ||
            (bedtimeStart == null) != (bedtimeEnd == null) ||
            (bedtimeStart != null && (bedtimeStart < 0 || bedtimeStart >= 1440)) ||
            (bedtimeEnd != null && (bedtimeEnd < 0 || bedtimeEnd >= 1440)) ||
            (bedtimeStart != null && bedtimeStart == bedtimeEnd))) {
      throw ArgumentError('Invalid Kids time limits');
    }
    _data['children'] = {
      ..._children,
      id: {
        'parentId': parentId,
        'maxAge': maxAge,
        'theme': theme,
        'avatar': (avatar ?? avatarFor(id)).name,
        'libraries': restrictLibraries == false ? null : allowedLibraries?.toList() ?? librariesFor(id)?.toList(),
        'animationOnly': animationOnly ?? animationOnlyFor(id),
        'allowUnrated': allowUnrated ?? allowUnratedFor(id),
        'dailyWatchMinutes': updateTimeLimits ? dailyWatchMinutes : dailyWatchMinutesFor(id),
        'bedtimeStart': updateTimeLimits ? bedtimeStart : bedtimeStartFor(id),
        'bedtimeEnd': updateTimeLimits ? bedtimeEnd : bedtimeEndFor(id),
      },
    };
    _approvedParents.clear();
    _itemContext.clear();
    await _save();
  }

  Future<void> removeProfile(String id) async {
    _data['children'] = {..._children}..remove(id);
    _data['watched'] = {...?(_data['watched'] as Map?)}..remove(id);
    _data['hideKids'] = {...?(_data['hideKids'] as Map?)}..remove(id);
    await _save();
  }

  Future<void> setHideKids(String id, bool value) async {
    _data['hideKids'] = {...?(_data['hideKids'] as Map?), id: value};
    await _save();
  }

  /// Unknown/unrated values fail closed. Numeric IMDb scores are never
  /// interpreted as age classifications. Explicit country prefixes are
  /// accepted only for supported classification systems.
  static int? ratingAge(String? rating) {
    if (rating == null) return null;
    var value = rating.trim().toUpperCase();
    final separator = value.indexOf('/');
    if (separator >= 0) {
      final country = value.substring(0, separator).toLowerCase();
      value = value.substring(separator + 1);
      if (!(_countryRatings[country]?.contains(value) ?? false)) return null;
    }
    return _ratingAges[value];
  }

  static const _ratingAges = <String, int>{
    'G': 0,
    'TV-Y': 0,
    'TV-G': 0,
    'U': 0,
    'FSK 0': 0,
    '0': 0,
    'TV-Y7': 7,
    'TV-Y7-FV': 7,
    'PG': 7,
    'TV-PG': 7,
    'FSK 6': 6,
    '6': 6,
    '12': 12,
    '12A': 12,
    'FSK 12': 12,
    'PG-13': 13,
    'TV-14': 14,
    '14A': 14,
    '15': 15,
    'MA15+': 15,
    'M': 15,
    '16': 16,
    'FSK 16': 16,
    'R': 17,
    '18A': 18,
    '18': 18,
    'FSK 18': 18,
    'TV-MA': 18,
    'NC-17': 18,
    'R18+': 18,
  };

  static const _usRatings = [
    'G',
    'PG',
    'PG-13',
    'R',
    'NC-17',
    'TV-Y',
    'TV-Y7',
    'TV-Y7-FV',
    'TV-G',
    'TV-PG',
    'TV-14',
    'TV-MA',
  ];
  static const _ukRatings = ['U', 'PG', '12', '12A', '15', '18'];
  static const _countryRatings = {
    'us': _usRatings,
    'usa': _usRatings,
    'gb': _ukRatings,
    'uk': _ukRatings,
    'de': ['0', '6', '12', '16', '18', 'FSK 0', 'FSK 6', 'FSK 12', 'FSK 16', 'FSK 18'],
    'au': ['G', 'PG', 'M', 'MA15+', 'R18+'],
    'ca': ['G', 'PG', '14A', '18A', 'R'],
  };

  /// Query hints keep adult-only first pages from making a kids library look
  /// empty. Results are still checked locally; server filtering is not trusted
  /// as the access boundary.
  List<String> get allowedRatingValues => [
    for (final entry in _ratingAges.entries)
      if (entry.value <= ageFor(_activeId ?? '')) entry.key,
    for (final country in _countryRatings.entries)
      for (final rating in country.value)
        if (_ratingAges[rating]! <= ageFor(_activeId ?? '')) ...[
          '${country.key}/$rating',
          '${country.key.toUpperCase()}/$rating',
        ],
  ];

  bool allows(MediaItem item) {
    if (!isActiveKids) return true;
    item = withContext(item);
    if (!libraryAllowed(item.serverId, item.libraryId)) return false;
    if (animationOnly && !(item.genres?.any((genre) => genre.trim().toLowerCase() == 'animation') ?? false)) {
      return false;
    }
    if (!const [MediaKind.movie, MediaKind.show, MediaKind.season, MediaKind.episode].contains(item.kind)) return false;
    final maximum = ageFor(_activeId!);
    final knownRatings = [
      _itemContext[item.globalKey]?.rating,
      if (item.kind == MediaKind.season || item.kind == MediaKind.episode) ...[
        _itemContext['${item.serverId}:${item.grandparentId}']?.rating,
        _itemContext['${item.serverId}:${item.parentId}']?.rating,
      ],
    ];
    // A child/season's permissive label cannot override its series or a known
    // stricter item record. This also applies when unrated content is enabled.
    if (knownRatings.any(
      (rating) => !isUnrated(rating) && (ratingAge(rating) == null || ratingAge(rating)! > maximum),
    )) {
      _approvedParents.remove(item.globalKey);
      return false;
    }
    final age = ratingAge(item.contentRating);
    final parentContext =
        _itemContext['${item.serverId}:${item.grandparentId}'] ?? _itemContext['${item.serverId}:${item.parentId}'];
    final parentRating = parentContext?.rating;
    if (isUnrated(item.contentRating) && parentRating != null && !isUnrated(parentRating)) {
      final parentAge = ratingAge(parentRating);
      if (parentAge == null || parentAge > ageFor(_activeId!)) return false;
    }
    // Unrated series descendants may inherit from an already verified parent.
    // An explicit unknown classification is never inherited.
    final inherited =
        isUnrated(item.contentRating) &&
        (item.kind == MediaKind.season || item.kind == MediaKind.episode) &&
        [
          item.grandparentId,
          item.parentId,
        ].whereType<String>().any((id) => _approvedParents.contains('${item.serverId}:$id'));
    final unrated = isUnrated(item.contentRating);
    final allowed = age != null ? age <= ageFor(_activeId!) : inherited || (unrated && allowUnrated);
    if (allowed && (item.kind == MediaKind.show || item.kind == MediaKind.season)) {
      _approvedParents.add(item.globalKey);
    } else if (!allowed && (item.kind == MediaKind.show || item.kind == MediaKind.season)) {
      _approvedParents.remove(item.globalKey);
    }
    return allowed;
  }

  /// Missing ratings and explicit unrated markers are distinct from an
  /// unrecognized country classification. The latter is always hidden.
  static bool isUnrated(String? value) =>
      value == null ||
      const {'', 'NR', 'UR', 'UNRATED', 'NOT RATED', 'UNRATED/NOT RATED'}.contains(value.trim().toUpperCase());

  MediaItem? allowedItem(MediaItem? item) => item != null && allows(item) ? item : null;
  List<MediaItem> _preparePolicyContext(Iterable<MediaItem> items) {
    final snapshot = items.toList();
    // A mixed response can list episodes before their series. Classifications
    // must not depend on server ordering or which shelf is filtered first.
    for (final item in snapshot) {
      withContext(item);
    }
    for (final item in snapshot) {
      if (item.kind == MediaKind.show || item.kind == MediaKind.season) allows(item);
    }
    return snapshot;
  }

  List<MediaItem> filter(Iterable<MediaItem> items, {bool continueWatching = false}) {
    if (!isActiveKids && (!continueWatching || !hideKidsFor(_activeId))) {
      return items is List<MediaItem> ? items : items.toList();
    }
    final snapshot = isActiveKids ? _preparePolicyContext(items) : items;
    return snapshot
        .where((item) => allows(item) && (!continueWatching || !isHiddenFromContinueWatching(item)))
        .toList();
  }

  List<MediaHub> filterHubs(Iterable<MediaHub> hubs) {
    if (!isActiveKids && !hideKidsFor(_activeId)) return hubs is List<MediaHub> ? hubs : hubs.toList();
    if (isActiveKids) {
      hubs = hubs.toList();
      _preparePolicyContext(hubs.expand((hub) => hub.items));
    }
    return hubs
        .map((hub) => hub.copyWith(items: filter(hub.items, continueWatching: hub.usesContinueWatchingAction)))
        .where((hub) => hub.items.isNotEmpty || (!isActiveKids && !hub.usesContinueWatchingAction))
        .toList();
  }

  static String titleKey(MediaItem item) =>
      '${item.serverId}:${item.kind == MediaKind.episode
          ? item.grandparentId ?? item.parentId ?? item.id
          : item.kind == MediaKind.season
          ? item.parentId ?? item.id
          : item.id}';

  /// Capture the child owner before awaiting persistence. Full-series keys
  /// suppress the next episode as well as the episode the child just watched.
  Future<void> recordPlayback(MediaItem item) async {
    final owner = _activeId;
    if (!isKids(owner)) return;
    final watched = {...?(_data['watched'] as Map?)};
    final keys = {...?((watched[owner] as List?)?.cast<String>())};
    if (!keys.add(titleKey(item))) return;
    watched[owner] = keys.toList();
    _data['watched'] = watched;
    await _save();
  }

  bool isHiddenFromContinueWatching(MediaItem item) {
    if (isActiveKids || !hideKidsFor(_activeId)) return false;
    final watched = _data['watched'] as Map?;
    final key = titleKey(item);
    return _children.keys.any((id) => (watched?[id] as List?)?.contains(key) ?? false);
  }

  int? continueWatchingFetchCount(int? requested) {
    if (requested == null || isActiveKids || !hideKidsFor(_activeId)) return requested;
    final watched = _data['watched'] as Map?;
    final excluded = <String>{for (final id in _children.keys) ...?((watched?[id] as List?)?.cast<String>())};
    return requested + excluded.length.clamp(0, 500);
  }

  Future<void> clearWatched() async {
    _data.remove('watched');
    await _save();
  }

  List<String> viewingExclusionsFor(String id) =>
      List.unmodifiable(((_data['watched'] as Map?)?[id] as List?)?.cast<String>() ?? const <String>[]);

  Future<void> restoreViewingExclusions(String id, List<String> keys) async {
    if (!isKids(id) || isActiveKids) throw StateError('An adult must restore a kids profile');
    _data['watched'] = {...?(_data['watched'] as Map?), id: keys.toSet().toList()};
    await _save();
  }

  Future<void> clear() async {
    await initialize();
    _data = {};
    _approvedParents.clear();
    _itemContext.clear();
    await _save();
  }

  @visibleForTesting
  void resetForTesting() {
    _data = {};
    _activeId = null;
    _prefs = null;
    _initializing = null;
    _approvedParents.clear();
    _itemContext.clear();
    _writes = null;
    _committedJson = '{}';
  }
}

extension KidsFilteredItems on Iterable<MediaItem> {
  List<MediaItem> allowedForProfile({bool continueWatching = false}) =>
      KidsProfileService.instance.filter(this, continueWatching: continueWatching);
}
