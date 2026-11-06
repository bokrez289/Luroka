import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import '../database/app_database.dart';
import '../models/seerr/seerr_session.dart';
import '../profiles/profile.dart';
import 'base_shared_preferences_service.dart';
import 'credential_vault.dart';
import 'luroka_backup_crypto.dart';
import 'sensitive_prefs.dart';
import 'settings_service.dart';

/// Captures portable identity and local viewing data inside the encrypted
/// envelope. Restore currently requires an empty identity database; it never
/// overwrites existing profiles or reconnects a running session.
abstract final class LurokaBackupSnapshot {
  static const _kidsKey = 'luroka_kids_profiles_v1';
  static const _activeKey = 'active_app_profile_id';
  static const _journalKey = 'luroka_backup_restore_journal_v1';

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
      connectionIds.any((id) => key == 'plex_home_users_$id') ||
      (key != 'custom_download_path' &&
          key != 'custom_download_path_type' &&
          SettingsService.portablePrefs.any((pref) => pref.key == key));

  static Future<String> export(AppDatabase db, String password) async {
    final connectionRows = await db.select(db.connections).get();
    final joinRows = await db.select(db.profileConnections).get();
    final profileRows = await db.select(db.profiles).get();
    final profileIds = {...profileRows.map((row) => row.id), ...joinRows.map((row) => row.profileId)};
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
    final prefs = await BaseSharedPreferencesService.sharedCache();
    final preferences = <String, Object?>{};
    for (final key in prefs.keys.where((key) => _portableKey(key, profileIds, connectionIds))) {
      var value = prefs.get(key);
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
      'connections': exportedConnections,
      'profiles': [for (final row in profileRows) row.toJson()],
      'profileConnections': exportedBindings,
      'screenTimeDaily': [for (final row in await db.select(db.screenTimeDaily).get()) row.toJson()],
      'screenTimeSessions': [for (final row in await db.select(db.screenTimeSessions).get()) row.toJson()],
      'offlineWatchProgress': [for (final row in await db.select(db.offlineWatchProgress).get()) row.toJson()],
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
    final journalId = const Uuid().v4();
    var committed = false;
    try {
      await db.runIdentityMutation(() async {
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
