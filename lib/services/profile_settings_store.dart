import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/// Device-local settings documents, keyed by the full Luroka profile ID.
///
/// Each document is committed as a single preference so an interrupted legacy
/// migration cannot leave a profile with only some of its settings. Operations
/// on the same profile are serialized; operations on different profiles do not
/// block one another.
class ProfileSettingsStore {
  ProfileSettingsStore(this._prefs);

  final SharedPreferencesWithCache _prefs;
  final Map<String, Future<void>> _pending = {};
  final Set<String> _deleted = {};
  final Map<String, (String, Map<String, Object?>)> _decoded = {};
  bool _clearing = false;
  Future<void>? _migration;
  final Map<int, Future<void>> _additionalMigrations = {};

  static const _prefix = 'luroka_profile_settings_v1_';
  static const _legacyMigrationKey = 'luroka_profile_settings_legacy_migrated_v1';

  static bool isDocumentKey(String key) => key.startsWith(_prefix);

  static String keyForProfile(String profileId) {
    if (profileId.trim().isEmpty) throw ArgumentError.value(profileId, 'profileId', 'Must not be empty');
    return '$_prefix${base64Url.encode(utf8.encode(profileId))}';
  }

  /// Returns null for a profile that has not yet been initialized.
  /// Unsupported or corrupt documents are never silently overwritten.
  Map<String, Object?>? read(String profileId) {
    final values = _readDocument(profileId);
    return values == null ? null : _copy(values);
  }

  Map<String, Object?>? _readDocument(String profileId) {
    final raw = _prefs.get(keyForProfile(profileId));
    if (raw == null) {
      _decoded.remove(profileId);
      return null;
    }
    if (raw is! String) throw const FormatException('Invalid profile settings document');
    final cached = _decoded[profileId];
    if (cached != null && cached.$1 == raw) return cached.$2;
    final values = decodeDocument(raw);
    _decoded[profileId] = (raw, values);
    return values;
  }

  static Map<String, Object?> decodeDocument(String raw) {
    final decoded = jsonDecode(raw);
    if (decoded is! Map || decoded['version'] != 1 || decoded['values'] is! Map) {
      throw const FormatException('Unsupported profile settings document');
    }
    return Map<String, Object?>.from(decoded['values'] as Map);
  }

  /// Initializes once, preserving an existing document on retries.
  ///
  /// Pass a snapshot of legacy values for existing profiles, or an empty map
  /// for a new profile. Subsequent changes to that snapshot have no effect.
  Future<void> initialize(String profileId, {Map<String, Object?> initialValues = const {}}) {
    if (_clearing || _deleted.contains(profileId)) {
      return Future<void>.error(StateError('Profile settings were deleted'));
    }
    final initial = _copy(initialValues);
    return _serialize(profileId, () async {
      if (read(profileId) != null) return;
      await _save(profileId, initial);
    });
  }

  /// Copies the old device-wide preferences to profiles that already exist at
  /// upgrade time. New profiles must be initialized with empty overrides.
  ///
  /// The marker is written only after every document is durable. A retry after
  /// an interrupted migration leaves already-written documents untouched.
  Future<void> migrateLegacy({required Iterable<String> profileIds, required Iterable<String> preferenceKeys}) {
    final running = _migration;
    if (running != null) return running;
    if (_prefs.getBool(_legacyMigrationKey) == true) return Future<void>.value();
    final ids = profileIds.toSet();
    final snapshot = <String, Object?>{
      for (final key in preferenceKeys)
        if (_prefs.containsKey(key)) key: _prefs.get(key),
    };
    late final Future<void> migration;
    migration = () async {
      for (final id in ids) {
        await initialize(id, initialValues: snapshot);
      }
      await _prefs.setBool(_legacyMigrationKey, true);
    }();
    _migration = migration;
    return migration.whenComplete(() {
      if (identical(_migration, migration)) _migration = null;
    });
  }

  /// Seeds preferences newly made profile-specific on installations that have
  /// already completed the first migration. Existing profile overrides win.
  Future<void> migrateAdditionalLegacy({
    required Iterable<String> profileIds,
    required Iterable<String> preferenceKeys,
    int revision = 2,
  }) {
    if (revision < 2) throw ArgumentError.value(revision, 'revision', 'Must be at least 2');
    final running = _additionalMigrations[revision];
    if (running != null) return running;
    final marker = 'luroka_profile_settings_additional_migrated_v$revision';
    if (_prefs.getBool(marker) == true) return Future<void>.value();
    final snapshot = <String, Object?>{
      for (final key in preferenceKeys)
        if (_prefs.containsKey(key)) key: _prefs.get(key),
    };
    final ids = profileIds.toSet();
    late final Future<void> migration;
    migration = () async {
      for (final id in ids) {
        if (_clearing || _deleted.contains(id)) throw StateError('Profile settings were deleted');
        await _serialize(id, () async {
          final existing = read(id) ?? <String, Object?>{};
          if (snapshot.keys.every(existing.containsKey)) return;
          await _save(id, {...snapshot, ...existing});
        });
      }
      await _prefs.setBool(marker, true);
    }();
    _additionalMigrations[revision] = migration;
    return migration.whenComplete(() {
      if (identical(_additionalMigrations[revision], migration)) _additionalMigrations.remove(revision);
    });
  }

  /// Updates one profile's document without allowing concurrent edits to
  /// replace one another. The profile ID is captured by the caller.
  Future<void> update(String profileId, Map<String, Object?> changes, {Set<String> remove = const {}}) {
    if (_clearing || _deleted.contains(profileId)) {
      return Future<void>.error(StateError('Profile settings were deleted'));
    }
    final ownedChanges = _copy(changes);
    final ownedRemove = Set<String>.of(remove);
    return _serialize(profileId, () async {
      final values = read(profileId);
      if (values == null) throw StateError('Profile settings have not been initialized');
      values.removeWhere((key, _) => ownedRemove.contains(key));
      values.addAll(ownedChanges);
      await _save(profileId, values);
    });
  }

  Future<void> delete(String profileId) {
    keyForProfile(profileId);
    _deleted.add(profileId);
    return _serialize(profileId, () => _prefs.remove(keyForProfile(profileId)));
  }

  /// Clears all documents during device sign-out, including documents for
  /// profiles no longer present in the current registry.
  Future<void> clearAll(Iterable<String> profileIds) async {
    _clearing = true;
    _deleted.addAll(profileIds);
    _deleted.addAll(_pending.keys);
    try {
      await Future.wait(_pending.values.toList());
      final keys = _prefs.keys.where((key) => key.startsWith(_prefix)).toList();
      for (final key in keys) {
        try {
          _deleted.add(utf8.decode(base64Url.decode(key.substring(_prefix.length))));
        } on FormatException {
          // A malformed key is still removed below.
        }
      }
      await Future.wait(keys.map(_prefs.remove));
    } finally {
      _clearing = false;
    }
  }

  Future<void> _save(String profileId, Map<String, Object?> values) async {
    final key = keyForProfile(profileId);
    final previous = _prefs.get(key);
    try {
      await _prefs.setString(key, jsonEncode({'version': 1, 'values': values}));
    } catch (error, stack) {
      // SharedPreferences updates its cache before the platform write. Restore
      // that cache as well as possible so a retry cannot mistake a failed write
      // for a committed document and complete the migration marker prematurely.
      try {
        if (previous == null) {
          await _prefs.remove(key);
        } else if (previous is String) {
          await _prefs.setString(key, previous);
        }
      } catch (_) {
        // Keep the original failure; the cache was already restored by the
        // attempted operation even if the platform rejected it too.
      }
      Error.throwWithStackTrace(error, stack);
    }
  }

  static Map<String, Object?> _copy(Map<String, Object?> values) =>
      Map<String, Object?>.from(jsonDecode(jsonEncode(values)) as Map);

  Future<void> _serialize(String profileId, Future<void> Function() operation) {
    keyForProfile(profileId); // Validate before queuing.
    final previous = _pending[profileId];
    final result = previous == null ? Future<void>.sync(operation) : previous.then((_) => operation());
    final settled = result.then<void>((_) {}, onError: (Object error, StackTrace stack) {});
    _pending[profileId] = settled;
    unawaited(
      settled.then((_) {
        if (identical(_pending[profileId], settled)) _pending.remove(profileId);
      }),
    );
    return result;
  }
}

/// A captured profile's view of selected preference keys. Other keys continue
/// to use the shared device store. Capturing the owner prevents a delayed
/// write from landing in a different profile after a switch.
class ProfileSettingsView implements SharedPreferencesWithCache {
  ProfileSettingsView(this._prefs, this._store, this._profileId, this._scopedKeys);

  final SharedPreferencesWithCache _prefs;
  final ProfileSettingsStore _store;
  final String _profileId;
  final Set<String> _scopedKeys;

  Map<String, Object?> get _values => _store._readDocument(_profileId) ?? const {};

  @override
  Set<String> get keys => {..._prefs.keys.difference(_scopedKeys), ..._values.keys.where(_scopedKeys.contains)};

  @override
  bool containsKey(String key) => _scopedKeys.contains(key) ? _values.containsKey(key) : _prefs.containsKey(key);

  @override
  Object? get(String key) {
    final value = _scopedKeys.contains(key) ? _values[key] : _prefs.get(key);
    return value is List ? List<Object?>.of(value) : value;
  }

  @override
  bool? getBool(String key) => get(key) as bool?;

  @override
  int? getInt(String key) => get(key) as int?;

  @override
  double? getDouble(String key) => get(key) as double?;

  @override
  String? getString(String key) => get(key) as String?;

  @override
  List<String>? getStringList(String key) => (get(key) as List<Object?>?)?.cast<String>().toList();

  Future<void> _write(String key, Object value) async {
    await _store.initialize(_profileId);
    await _store.update(_profileId, {key: value});
  }

  @override
  Future<void> setBool(String key, bool value) =>
      _scopedKeys.contains(key) ? _write(key, value) : _prefs.setBool(key, value);

  @override
  Future<void> setInt(String key, int value) =>
      _scopedKeys.contains(key) ? _write(key, value) : _prefs.setInt(key, value);

  @override
  Future<void> setDouble(String key, double value) =>
      _scopedKeys.contains(key) ? _write(key, value) : _prefs.setDouble(key, value);

  @override
  Future<void> setString(String key, String value) =>
      _scopedKeys.contains(key) ? _write(key, value) : _prefs.setString(key, value);

  @override
  Future<void> setStringList(String key, List<String> value) =>
      _scopedKeys.contains(key) ? _write(key, List<String>.of(value)) : _prefs.setStringList(key, value);

  @override
  Future<void> remove(String key) async {
    if (!_scopedKeys.contains(key)) return _prefs.remove(key);
    await _store.initialize(_profileId);
    await _store.update(_profileId, const {}, remove: {key});
  }

  @override
  Future<void> reloadCache() => _prefs.reloadCache();

  @override
  Future<void> clear() => throw UnsupportedError('Clearing all preferences through a profile view is not supported');
}
