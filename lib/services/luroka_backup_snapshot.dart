import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import '../database/app_database.dart';
import '../models/seerr/seerr_session.dart';
import '../models/shader_preset.dart';
import '../profiles/profile.dart';
import '../models/plex/plex_home_user.dart';
import '../profiles/plex_home_cache_codec.dart';
import 'base_shared_preferences_service.dart';
import 'credential_vault.dart';
import 'luroka_backup_crypto.dart';
import 'sensitive_prefs.dart';
import 'settings_service.dart';
import 'profile_settings_store.dart';

/// Captures portable identity and local viewing data inside the encrypted
/// envelope. Restore currently requires an empty identity database; it never
/// overwrites existing profiles or reconnects a running session.
abstract final class LurokaBackupSnapshot {
  static const _kidsKey = 'luroka_kids_profiles_v1';
  static const _activeKey = 'active_app_profile_id';
  static const _journalKey = 'luroka_backup_restore_journal_v1';
  // Only explicitly reviewed per-profile slots are portable in a scoped export.
  // In particular, do not export arbitrary `user_<scope>_*` keys or pending
  // write queues, which may contain data belonging to a different profile.
  static const _scopedBackupKeys = <String>{
    ...profileScopedCredentialBaseKeys,
    'catalog_active_source',
    'luroka_discovery_shelves_v1',
    'watch_together_recent_rooms',
    'metadata_recent_tags',
  };

  @visibleForTesting
  static Future<void> Function()? debugAfterCommit;

  static bool _portableKey(String key, Iterable<String> profileIds, Iterable<String> connectionIds) =>
      key == _kidsKey ||
      key == _activeKey ||
      key == 'luroka_household_setup_complete' ||
      key == 'luroka_household_setup_pending' ||
      key == 'luroka_show_other_plex_home_profiles' ||
      key == SettingsService.localLastPlayedAt.key ||
      profileIds.any((id) => key.startsWith('user_${profileUserScope(id)}_')) ||
      profileIds.any((id) => key == 'luroka_profile_avatar_${profileUserScope(id)}') ||
      profileIds.any((id) => key == ProfileSettingsStore.keyForProfile(id)) ||
      connectionIds.any((id) => key == 'plex_home_users_$id') ||
      (key != 'custom_download_path' &&
          key != 'custom_download_path_type' &&
          SettingsService.portablePrefs.any((pref) => pref.key == key));

  // A selected-profile export cannot safely attribute device-wide legacy
  // preferences to one person. Full-installation backup may retain those
  // values; this path carries only keys whose owner is explicit.
  static bool _selectedPortableKey(String key, Iterable<String> profileIds, Iterable<String> connectionIds) =>
      key == _kidsKey ||
      key == _activeKey ||
      profileIds.any((id) => key == 'luroka_profile_avatar_${profileUserScope(id)}') ||
      profileIds.any((id) => key == ProfileSettingsStore.keyForProfile(id)) ||
      profileIds.any((id) => _scopedBackupKeys.any((suffix) => key == profileScopedPrefsKey(id, suffix))) ||
      connectionIds.any((id) => key == 'plex_home_users_$id');

  static Future<String> export(AppDatabase db, String password) async {
    return _export(db, password);
  }

  /// Build a scoped backup after the caller has obtained authorization for
  /// every selected profile. This is not an authorization mechanism and is not
  /// exposed to the UI until that enforcement is in place.
  static Future<String> exportSelected(
    AppDatabase db,
    String password, {
    required Set<String> selectedProfileIds,
    required bool includeCredentials,
    List<Profile> selectedProfiles = const [],
  }) async {
    if (selectedProfileIds.isEmpty) throw ArgumentError('Select at least one profile');
    if (selectedProfiles.any((profile) => !selectedProfileIds.contains(profile.id)) ||
        selectedProfiles.map((profile) => profile.id).toSet().length != selectedProfiles.length) {
      throw ArgumentError('Profile metadata must match the selected profiles');
    }
    return _export(
      db,
      password,
      selectedProfileIds: Set<String>.unmodifiable(selectedProfileIds),
      includeCredentials: includeCredentials,
      selectedProfiles: List.unmodifiable(selectedProfiles),
    );
  }

  /// Verify that a decrypted scoped export contains *only* the profiles that
  /// the caller authorized. This is deliberately shared by local creation and
  /// envelope retry: retrying a file must not turn a previous authorization
  /// into permission to upload a broader export.
  static void validateSelectedPayload(
    Map<String, dynamic> payload, {
    required Set<String> expectedProfileIds,
    required bool includeCredentials,
  }) {
    if (payload['schema'] != 1 || payload['scope'] != 'selected') {
      throw const FormatException('Backup selection changed');
    }
    final selected = _stringList(payload['selectedProfileIds'], 'selectedProfileIds').toSet();
    if (selected.length != expectedProfileIds.length ||
        selected.length != _stringList(payload['selectedProfileIds'], 'selectedProfileIds').length ||
        !selected.containsAll(expectedProfileIds)) {
      throw const FormatException('Backup selection changed');
    }

    final profiles = _mapList(payload['profiles'], 'profiles');
    final bindings = _mapList(payload['profileConnections'], 'profileConnections');
    final connections = _mapList(payload['connections'], 'connections');
    final profileIds = <String>{};
    for (final row in profiles) {
      final id = row['id'];
      if (id is! String || !expectedProfileIds.contains(id) || !profileIds.add(id)) {
        throw const FormatException('Backup selection changed');
      }
    }
    final bindingProfileIds = <String>{};
    final connectionIds = <String>{};
    for (final row in bindings) {
      final profileId = row['profileId'];
      final connectionId = row['connectionId'];
      if (profileId is! String || connectionId is! String || !expectedProfileIds.contains(profileId)) {
        throw const FormatException('Backup selection changed');
      }
      bindingProfileIds.add(profileId);
      connectionIds.add(connectionId);
    }
    // A virtual Plex Home profile has no database profile row, but it does
    // have a binding. Every selected id must occur in one or the other.
    if (!({...profileIds, ...bindingProfileIds}.containsAll(expectedProfileIds))) {
      throw const FormatException('Backup selection changed');
    }

    final exportedConnectionIds = <String>{};
    for (final row in connections) {
      final id = row['id'];
      if (id is! String || !exportedConnectionIds.add(id)) {
        throw const FormatException('Invalid backup connections');
      }
    }
    if (!includeCredentials) {
      if (connections.isNotEmpty || bindings.isNotEmpty) {
        throw StateError('Credential approval is required');
      }
    } else if (exportedConnectionIds.length != connectionIds.length ||
        !exportedConnectionIds.containsAll(connectionIds)) {
      throw const FormatException('Invalid backup connections');
    }

    for (final key in const ['screenTimeDaily', 'screenTimeSessions', 'offlineWatchProgress']) {
      for (final row in _mapList(payload[key], key)) {
        final profileId = row['profileId'];
        if (profileId is! String || !expectedProfileIds.contains(profileId)) {
          throw const FormatException('Backup selection changed');
        }
      }
    }

    final preferences = payload['preferences'];
    if (preferences is! Map) throw const FormatException('Invalid backup preferences');
    for (final entry in preferences.entries) {
      final key = entry.key;
      if (key is! String || !_selectedPortableKey(key, expectedProfileIds, exportedConnectionIds)) {
        throw const FormatException('Invalid backup preferences');
      }
      if (!includeCredentials && isSensitivePrefKey(key)) {
        throw StateError('Credential approval is required');
      }
      if (key.startsWith('user_') &&
          !expectedProfileIds.any(
            (id) => _scopedBackupKeys.any((suffix) => key == profileScopedPrefsKey(id, suffix)),
          )) {
        throw const FormatException('Invalid backup preferences');
      }
      if (key == _activeKey && entry.value is String && !expectedProfileIds.contains(entry.value)) {
        throw const FormatException('Backup selection changed');
      }
      if (key == _kidsKey) _validateScopedKidsPreference(entry.value, expectedProfileIds);
    }
  }

  static List<String> _stringList(Object? value, String name) {
    if (value is! List || value.any((item) => item is! String)) throw FormatException('Invalid $name');
    return value.cast<String>();
  }

  static List<Map<String, dynamic>> _mapList(Object? value, String name) {
    if (value is! List || value.length > 200000 || value.any((item) => item is! Map)) {
      throw FormatException('Invalid $name');
    }
    return [for (final item in value) Map<String, dynamic>.from(item as Map)];
  }

  static void _validateScopedKidsPreference(Object? value, Set<String> profileIds) {
    if (value is! String) throw const FormatException('Invalid Kids preferences');
    final decoded = jsonDecode(value);
    if (decoded is! Map) throw const FormatException('Invalid Kids preferences');
    for (final field in ['children', 'watched', 'hideKids']) {
      final entries = decoded[field];
      if (entries != null &&
          (entries is! Map || entries.keys.any((key) => key is! String || !profileIds.contains(key)))) {
        throw const FormatException('Invalid Kids preferences');
      }
    }
    final children = decoded['children'] as Map? ?? const {};
    if (children.isNotEmpty && (decoded['parentPin'] is! String || (decoded['parentPin'] as String).isEmpty)) {
      throw const FormatException('Invalid Kids preferences');
    }
    for (final child in children.values) {
      if (child is! Map || child['parentId'] is! String || !profileIds.contains(child['parentId'])) {
        throw const FormatException('Invalid Kids preferences');
      }
    }
  }

  static Future<String> _export(
    AppDatabase db,
    String password, {
    Set<String>? selectedProfileIds,
    bool includeCredentials = true,
    List<Profile> selectedProfiles = const [],
  }) async {
    final allConnections = await db.select(db.connections).get();
    final allBindings = await db.select(db.profileConnections).get();
    final allProfiles = await db.select(db.profiles).get();
    final virtuals = <String, Profile>{};
    for (final profile in selectedProfiles.where((p) => p.isPlexHome)) {
      final parent = profile.parentConnectionId;
      final uuid = profile.plexHomeUserUuid;
      if (parent == null ||
          uuid == null ||
          uuid.isEmpty ||
          profile.id != plexHomeProfileId(accountConnectionId: parent, homeUserUuid: uuid) ||
          !allConnections.any((row) => row.id == parent && row.kind == 'plex')) {
        throw const FormatException('Invalid Plex Home profile');
      }
      virtuals[profile.id] = profile;
    }
    final availableIds = {
      ...allProfiles.map((row) => row.id),
      ...allBindings.map((row) => row.profileId),
      ...virtuals.keys,
    };
    if (selectedProfileIds != null && !availableIds.containsAll(selectedProfileIds)) {
      throw ArgumentError('Unknown profile');
    }
    if (selectedProfileIds != null && !includeCredentials && selectedProfileIds.any(virtuals.containsKey)) {
      throw StateError('Virtual profiles require their connection to be included');
    }
    final profileRows = selectedProfileIds == null
        ? allProfiles
        : allProfiles.where((row) => selectedProfileIds.contains(row.id)).toList();
    if (selectedProfileIds != null &&
        selectedProfileIds.any((id) => !virtuals.containsKey(id) && !profileRows.any((row) => row.id == id))) {
      throw StateError('Virtual profiles require a separately reviewed restore flow');
    }
    final joinRows = !includeCredentials
        ? <ProfileConnectionRow>[]
        : selectedProfileIds == null
        ? allBindings
        : allBindings.where((row) => selectedProfileIds.contains(row.profileId)).toList();
    final selectedConnectionIds = joinRows.map((row) => row.connectionId).toSet();
    if (selectedProfileIds != null && includeCredentials) {
      for (final profile in virtuals.values.where((p) => selectedProfileIds.contains(p.id))) {
        selectedConnectionIds.add(profile.parentConnectionId!);
      }
      for (final row in profileRows.where((row) => row.kind == 'plex_home')) {
        final config = jsonDecode(row.configJson);
        if (config is! Map || config['parentConnectionId'] is! String) {
          throw const FormatException('Invalid Plex Home profile');
        }
        selectedConnectionIds.add(config['parentConnectionId'] as String);
      }
      if (!allConnections.map((row) => row.id).toSet().containsAll(selectedConnectionIds)) {
        throw StateError('A selected profile has an unavailable connection');
      }
    }
    final connectionRows = !includeCredentials
        ? <ConnectionRow>[]
        : selectedProfileIds == null
        ? allConnections
        : allConnections.where((row) => selectedConnectionIds.contains(row.id)).toList();
    final profileIds =
        selectedProfileIds ?? {...profileRows.map((row) => row.id), ...joinRows.map((row) => row.profileId)};
    final connectionIds = connectionRows.map((row) => row.id).toSet();
    final exportedConnections = <Map<String, dynamic>>[];
    for (final row in connectionRows) {
      final config = jsonDecode(row.configJson);
      if (config is! Map<String, dynamic>) throw const FormatException('Invalid connection');
      final revealed = (await CredentialVault.revealConnectionConfig(row.kind, config)).config;
      bool lost(Object? original, Object? clear) {
        if (original is String && CredentialVault.isProtected(original)) return clear is! String || clear.isEmpty;
        if (original is List && clear is List && original.length == clear.length) {
          return [for (var i = 0; i < original.length; i++) lost(original[i], clear[i])].contains(true);
        }
        if (original is Map && clear is Map) return original.keys.any((key) => lost(original[key], clear[key]));
        return false;
      }

      if (lost(config, revealed)) throw StateError('A connection credential could not be recovered');
      exportedConnections.add({...row.toJson(), 'configJson': jsonEncode(revealed)});
    }
    final exportedBindings = <Map<String, dynamic>>[];
    for (final row in joinRows) {
      final token = await CredentialVault.reveal(row.userToken);
      if (token == null) throw StateError('A profile credential could not be recovered');
      exportedBindings.add({...row.toJson(), 'userToken': token});
    }
    for (final profile in virtuals.values.where((p) => selectedProfileIds!.contains(p.id))) {
      if (!joinRows.any((row) => row.profileId == profile.id && row.connectionId == profile.parentConnectionId)) {
        exportedBindings.add(
          ProfileConnectionRow(
            profileId: profile.id,
            connectionId: profile.parentConnectionId!,
            userToken: '',
            userIdentifier: profile.plexHomeUserUuid!,
            isDefault: false,
          ).toJson(),
        );
      }
    }
    final prefs = await BaseSharedPreferencesService.sharedCache();
    if (selectedProfileIds != null) {
      final kidsRaw = prefs.getString(_kidsKey);
      if (kidsRaw != null) {
        final decoded = jsonDecode(kidsRaw);
        if (decoded is! Map || (decoded['children'] != null && decoded['children'] is! Map)) {
          throw const FormatException('Invalid Kids preferences');
        }
        final children = decoded['children'] as Map? ?? const {};
        if (children.keys.any((id) => id is String && selectedProfileIds.contains(id)) &&
            (decoded['parentPin'] is! String || (decoded['parentPin'] as String).isEmpty)) {
          throw StateError('Kids profiles require a parent PIN');
        }
      }
    }
    final preferences = <String, Object?>{};
    for (final connectionId in virtuals.values.map((p) => p.parentConnectionId!).toSet()) {
      final users = <PlexHomeUser>[];
      for (final profile in virtuals.values.where(
        (p) => selectedProfileIds!.contains(p.id) && p.parentConnectionId == connectionId,
      )) {
        users.add(
          PlexHomeUser(
            id: 0,
            uuid: profile.plexHomeUserUuid!,
            title: profile.displayName,
            thumb: profile.avatarThumbUrl ?? '',
            hasPassword: profile.plexProtected,
            restricted: profile.plexRestricted,
            updatedAt: null,
            admin: profile.plexAdmin,
            guest: false,
            protected: profile.plexProtected,
          ),
        );
      }
      if (users.isNotEmpty) preferences['plex_home_users_$connectionId'] = encodePlexHomeUsersCacheJson(users);
    }
    if (selectedProfileIds != null) {
      final selectedScopes = selectedProfileIds.map(profileUserScope).toSet();
      if (availableIds
          .where((id) => !selectedProfileIds.contains(id))
          .map(profileUserScope)
          .any(selectedScopes.contains)) {
        throw StateError('Selected profiles share a settings scope with an unselected profile');
      }
    }
    for (final key in prefs.keys.where((key) => _portableKey(key, profileIds, connectionIds))) {
      if (selectedProfileIds != null && !_selectedPortableKey(key, profileIds, connectionIds)) continue;
      if (!includeCredentials && isSensitivePrefKey(key)) continue;
      if (selectedProfileIds != null && key.startsWith('user_')) {
        if (!selectedProfileIds.any(
          (id) => _scopedBackupKeys.any((suffix) => key == profileScopedPrefsKey(id, suffix)),
        )) {
          continue;
        }
        // Match the longest known scope: `user_alice_...` must not capture
        // `user_alice_child_...` when alice_child is a different profile.
        final matches = availableIds.where((id) => key.startsWith('user_${profileUserScope(id)}_')).toList()
          ..sort((a, b) => profileUserScope(b).length.compareTo(profileUserScope(a).length));
        if (matches.isEmpty || !selectedProfileIds.contains(matches.first)) continue;
      }
      // These legacy values can contain another person's cached identity or
      // credential, and cannot be attributed safely to a selected profile.
      if (selectedProfileIds != null &&
          (key.startsWith('plex_home_users_') || (isSensitivePrefKey(key) && !key.startsWith('user_')))) {
        continue;
      }
      // This legacy global map isn't scoped to one person.
      if (selectedProfileIds != null && key == SettingsService.localLastPlayedAt.key) continue;
      var value = prefs.get(key);
      if (selectedProfileIds != null && key == _activeKey && !profileIds.contains(value)) continue;
      if (selectedProfileIds != null && key == _kidsKey) {
        if (value is! String) throw const FormatException('Invalid Kids preferences');
        final decoded = jsonDecode(value);
        if (decoded is! Map) throw const FormatException('Invalid Kids preferences');
        final scoped = <String, Object?>{};
        for (final field in ['children', 'watched', 'hideKids']) {
          final entries = decoded[field];
          if (entries == null) continue;
          if (entries is! Map) throw const FormatException('Invalid Kids preferences');
          scoped[field] = Map<String, dynamic>.fromEntries(
            entries.entries
                .where((entry) => entry.key is String && profileIds.contains(entry.key))
                .map((entry) => MapEntry(entry.key as String, entry.value)),
          );
        }
        final children = scoped['children'] as Map<String, dynamic>? ?? {};
        // A selected child may never be downgraded into an ordinary profile.
        if (children.keys.any((id) => !profileIds.contains(id))) {
          throw const FormatException('Invalid Kids preferences');
        }
        for (final child in children.values) {
          if (child is! Map || child['parentId'] is! String || !profileIds.contains(child['parentId'])) {
            throw StateError('Include the linked parent when backing up a Kids profile');
          }
        }
        if (children.isNotEmpty && decoded['parentPin'] is String) scoped['parentPin'] = decoded['parentPin'];
        if (children.isEmpty) {
          // Do not restore an empty Kids policy over a local policy left by a
          // prior installation; it may protect device-local child profiles.
          continue;
        }
        value = jsonEncode(scoped);
      }
      if (profileIds.any((id) => key == ProfileSettingsStore.keyForProfile(id))) {
        if (value is! String) throw const FormatException('Invalid profile settings');
        final portableKeys = SettingsService.portablePrefs.map((pref) => pref.key).toSet();
        final settings = ProfileSettingsStore.decodeDocument(value);
        for (final entry in SettingsService.legacyBoolPrefs.entries) {
          final legacy = settings[entry.key];
          if (!settings.containsKey(entry.value.key) && legacy is bool) {
            settings[entry.value.key] = entry.value.fromLegacy(legacy).name;
          }
        }
        final seasonPoster = settings['use_season_poster'];
        if (!settings.containsKey(SettingsService.episodePosterMode.key) && seasonPoster is bool) {
          settings[SettingsService.episodePosterMode.key] =
              (seasonPoster ? EpisodePosterMode.seasonPoster : EpisodePosterMode.seriesPoster).name;
        }
        settings.removeWhere((key, _) => !portableKeys.contains(key));
        final shader = settings[SettingsService.globalShaderPreset.key];
        if (shader is String && ShaderPreset.fromId(shader) == null) {
          settings[SettingsService.globalShaderPreset.key] = ShaderPreset.none.id;
        }
        value = jsonEncode({'version': 1, 'values': settings});
      }
      if (isSeerrSessionPrefKey(key) && value is String) {
        final session = SeerrSession.decode(value);
        final secret = await CredentialVault.reveal(session.secret);
        if (secret == null) throw StateError('A Seerr credential could not be recovered');
        value = session.copyWith(secret: secret).encode();
      }
      if (value is bool || value is int || value is double || value is String || value is List<String>) {
        preferences[key] = value;
      }
    }
    return LurokaBackupCrypto.encrypt({
      'schema': 1,
      if (selectedProfileIds != null) 'scope': 'selected',
      if (selectedProfileIds != null) 'selectedProfileIds': selectedProfileIds.toList()..sort(),
      if (selectedProfileIds != null)
        'virtualProfileNames': [for (final profile in virtuals.values) profile.displayName],
      'connections': exportedConnections,
      'profiles': [for (final row in profileRows) row.toJson()],
      'profileConnections': exportedBindings,
      'screenTimeDaily': [
        for (final row in await db.select(db.screenTimeDaily).get())
          if (selectedProfileIds == null || profileIds.contains(row.profileId)) row.toJson(),
      ],
      'screenTimeSessions': [
        for (final row in await db.select(db.screenTimeSessions).get())
          if (selectedProfileIds == null || profileIds.contains(row.profileId)) row.toJson(),
      ],
      'offlineWatchProgress': [
        for (final row in await db.select(db.offlineWatchProgress).get())
          if (selectedProfileIds == null || profileIds.contains(row.profileId)) row.toJson(),
      ],
      'preferences': preferences,
    }, password);
  }

  static Future<void> restore(AppDatabase db, String encoded, String password) async {
    await recoverInterruptedRestore(db);
    final payload = await LurokaBackupCrypto.decrypt(encoded, password);
    if (payload['schema'] != 1) throw const FormatException('Unsupported backup content');
    List<T> rows<T>(String key, T Function(Map<String, dynamic>) parse) {
      final value = payload[key];
      if (value is! List || value.length > 200000) throw FormatException('Invalid $key');
      return [for (final row in value) parse(Map<String, dynamic>.from(row as Map))];
    }

    final connections = rows('connections', ConnectionRow.fromJson);
    final profiles = rows('profiles', ProfileRow.fromJson);
    final bindings = rows('profileConnections', ProfileConnectionRow.fromJson);
    final daily = rows('screenTimeDaily', ScreenTimeDailyRow.fromJson);
    final sessions = rows('screenTimeSessions', ScreenTimeSessionRow.fromJson);
    final pending = rows('offlineWatchProgress', OfflineWatchProgressItem.fromJson);
    final values = payload['preferences'];
    final profileIds = {...profiles.map((row) => row.id), ...bindings.map((row) => row.profileId)};
    if (values is! Map<String, dynamic> ||
        values.keys.any((key) => !_portableKey(key, profileIds, connections.map((row) => row.id)))) {
      throw const FormatException('Invalid backup preferences');
    }
    if (payload['scope'] == 'selected') {
      final selected = payload['selectedProfileIds'];
      if (selected is! List ||
          selected.isEmpty ||
          selected.any((id) => id is! String) ||
          selected.toSet().length != selected.length) {
        throw const FormatException('Invalid profile selection');
      }
      final selectedIds = selected.cast<String>().toSet();
      if (!selectedIds.containsAll(profileIds) ||
          daily.any((row) => !selectedIds.contains(row.profileId)) ||
          sessions.any((row) => !selectedIds.contains(row.profileId)) ||
          pending.any((row) => !selectedIds.contains(row.profileId))) {
        throw const FormatException('Invalid profile selection');
      }
      final kidsRaw = values[_kidsKey];
      if (kidsRaw != null) {
        if (kidsRaw is! String) throw const FormatException('Invalid Kids preferences');
        final policy = jsonDecode(kidsRaw);
        if (policy is! Map || (policy['children'] != null && policy['children'] is! Map)) {
          throw const FormatException('Invalid Kids preferences');
        }
        final children = policy['children'] as Map? ?? const {};
        if (children.isNotEmpty && (policy['parentPin'] is! String || (policy['parentPin'] as String).isEmpty)) {
          throw const FormatException('Invalid Kids preferences');
        }
        for (final entry in children.entries) {
          if (entry.key is! String ||
              !selectedIds.contains(entry.key) ||
              entry.value is! Map ||
              (entry.value as Map)['parentId'] is! String ||
              !selectedIds.contains((entry.value as Map)['parentId'])) {
            throw const FormatException('Invalid Kids preferences');
          }
        }
      }
    } else if (payload.containsKey('scope')) {
      throw const FormatException('Unsupported backup scope');
    }
    for (final value in values.values) {
      if (value is! bool &&
          value is! int &&
          value is! double &&
          value is! String &&
          !(value is List && value.every((item) => item is String))) {
        throw const FormatException('Invalid backup preference');
      }
    }
    for (final entry in values.entries.toList()) {
      if (profileIds.any((id) => entry.key == ProfileSettingsStore.keyForProfile(id))) {
        if (entry.value is! String) throw const FormatException('Invalid profile settings');
        final settings = ProfileSettingsStore.decodeDocument(entry.value as String);
        final portableKeys = SettingsService.portablePrefs.map((pref) => pref.key).toSet();
        if (settings.keys.any((key) => !portableKeys.contains(key))) {
          throw const FormatException('Invalid profile settings');
        }
      }
      if (isSeerrSessionPrefKey(entry.key)) {
        if (entry.value is! String) throw const FormatException('Invalid Seerr session');
        final session = SeerrSession.decode(entry.value as String);
        values[entry.key] = session.copyWith(secret: await CredentialVault.protect(session.secret)).encode();
      }
    }
    if ((await db.select(db.connections).get()).isNotEmpty ||
        (await db.select(db.profiles).get()).isNotEmpty ||
        (await db.select(db.profileConnections).get()).isNotEmpty ||
        (await db.select(db.screenTimeDaily).get()).isNotEmpty ||
        (await db.select(db.screenTimeSessions).get()).isNotEmpty ||
        (await db.select(db.offlineWatchProgress).get()).isNotEmpty) {
      throw StateError('Restore requires an empty profile database');
    }
    final protectedConnections = <ConnectionRow>[];
    for (final row in connections) {
      final config = jsonDecode(row.configJson);
      if (config is! Map<String, dynamic>) throw const FormatException('Invalid connection');
      protectedConnections.add(
        row.copyWith(configJson: jsonEncode(await CredentialVault.protectConnectionConfig(row.kind, config))),
      );
    }
    final protectedBindings = <ProfileConnectionRow>[];
    for (final row in bindings) {
      protectedBindings.add(row.copyWith(userToken: await CredentialVault.protect(row.userToken)));
    }
    final prefs = await BaseSharedPreferencesService.sharedCache();
    final existingPolicy = prefs.getString(_kidsKey);
    final incomingPolicy = values[_kidsKey];
    if (existingPolicy != null && incomingPolicy is String && existingPolicy != incomingPolicy) {
      // Never silently replace existing parental policy, even when the identity
      // database is empty. Recovery must be resolved explicitly by the owner.
      throw StateError('Existing parental controls prevent backup restore');
    }
    final journalId = const Uuid().v4();
    var committed = false;
    try {
      await db.runIdentityMutation(() async {
        final currentPolicy = prefs.getString(_kidsKey);
        if (currentPolicy != null && incomingPolicy is String && currentPolicy != incomingPolicy) {
          throw StateError('Existing parental controls prevent backup restore');
        }
        await prefs.setString(_journalKey, jsonEncode({'id': journalId, 'preferences': values}));
        await db.transaction(() async {
          // Recheck under the transaction in case another identity appeared.
          if ((await db.select(db.connections).get()).isNotEmpty ||
              (await db.select(db.profiles).get()).isNotEmpty ||
              (await db.select(db.profileConnections).get()).isNotEmpty ||
              (await db.select(db.screenTimeDaily).get()).isNotEmpty ||
              (await db.select(db.screenTimeSessions).get()).isNotEmpty ||
              (await db.select(db.offlineWatchProgress).get()).isNotEmpty) {
            throw StateError('Restore requires an empty profile database');
          }
          for (final row in protectedConnections) {
            await db.into(db.connections).insert(row);
          }
          for (final row in profiles) {
            await db.into(db.profiles).insert(row);
          }
          for (final row in protectedBindings) {
            await db.into(db.profileConnections).insert(row);
          }
          for (final row in daily) {
            await db.into(db.screenTimeDaily).insert(row);
          }
          for (final row in sessions) {
            await db.into(db.screenTimeSessions).insert(row);
          }
          for (final row in pending) {
            await db.into(db.offlineWatchProgress).insert(row);
          }
          await db.customStatement('CREATE TABLE IF NOT EXISTS luroka_backup_restore_marker (id TEXT PRIMARY KEY)');
          await db.customStatement('INSERT INTO luroka_backup_restore_marker (id) VALUES (?)', [journalId]);
        });
        committed = true;
        await debugAfterCommit?.call();
        await _applyPreferences(prefs, values);
        await prefs.remove(_journalKey);
      });
    } catch (_) {
      if (!committed) await prefs.remove(_journalKey);
      rethrow;
    }
  }

  /// Finish preference writes after a committed database transaction.
  static Future<void> recoverInterruptedRestore(AppDatabase db) async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    final raw = prefs.getString(_journalKey);
    if (raw == null) return;
    final journal = jsonDecode(raw);
    if (journal is! Map || journal['id'] is! String || journal['preferences'] is! Map) {
      throw const FormatException('Invalid restore journal');
    }
    final table = await db
        .customSelect("SELECT name FROM sqlite_master WHERE type = 'table' AND name = 'luroka_backup_restore_marker'")
        .get();
    if (table.isNotEmpty) {
      final marker = await db
          .customSelect(
            'SELECT id FROM luroka_backup_restore_marker WHERE id = ?',
            variables: [Variable.withString(journal['id'] as String)],
          )
          .get();
      if (marker.isNotEmpty) await _applyPreferences(prefs, Map<String, dynamic>.from(journal['preferences'] as Map));
    }
    await prefs.remove(_journalKey);
  }

  static Future<void> _applyPreferences(SharedPreferencesWithCache prefs, Map<String, dynamic> values) async {
    for (final entry in values.entries) {
      switch (entry.value) {
        case final bool value:
          await prefs.setBool(entry.key, value);
        case final int value:
          await prefs.setInt(entry.key, value);
        case final double value:
          await prefs.setDouble(entry.key, value);
        case final String value:
          await prefs.setString(entry.key, value);
        case final List value:
          await prefs.setStringList(entry.key, value.cast<String>());
        default:
          throw const FormatException('Invalid preference');
      }
    }
  }
}
