import 'dart:convert';

import 'package:drift/drift.dart' show Value;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/connection/connection_registry.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/profile_connection.dart';
import 'package:luroka/profiles/profile_connection_registry.dart';
import 'package:luroka/profiles/profile_registry.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/services/credential_vault.dart';
import 'package:luroka/services/luroka_backup_crypto.dart';
import 'package:luroka/services/luroka_backup_snapshot.dart';

import '../test_helpers/backend_client_fixtures.dart';
import '../test_helpers/prefs.dart';

void main() {
  test('selected profiles exclude another adult, their activity, credentials and Kids policy', () async {
    resetSharedPreferencesForTest();
    CredentialVault.resetKeyForTesting();
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(db.close);
    final profiles = ProfileRegistry(db);
    for (final id in ['adult-one', 'adult-one-extra', 'adult-two', 'child-one', 'child-two']) {
      await profiles.upsert(Profile.local(id: id, displayName: id, createdAt: DateTime(2026)));
      await db
          .into(db.screenTimeDaily)
          .insert(
            ScreenTimeDailyCompanion(
              profileId: Value(id),
              localDate: const Value('2026-01-01'),
              durationMs: const Value(100),
              updatedAt: const Value(100),
            ),
          );
    }
    final first = testEmbyConnection(id: 'first-server', accessToken: 'first-secret');
    final second = testEmbyConnection(id: 'second-server', accessToken: 'other-secret');
    for (final connection in [first, second]) {
      await ConnectionRegistry(db).upsert(connection);
    }
    for (final (profile, connection) in [('adult-one', first), ('adult-two', second)]) {
      await ProfileConnectionRegistry(db).upsert(
        ProfileConnection(
          profileId: profile,
          connectionId: connection.id,
          userIdentifier: connection.userId,
          userToken: connection.accessToken,
        ),
      );
    }
    final prefs = await BaseSharedPreferencesService.sharedCache();
    await prefs.setString('user_adult-one_mal_session', 'first-tracker-secret');
    await prefs.setString('user_adult-one-extra_mal_session', 'overlapping-other-secret');
    await prefs.setString('mal_session', 'global-legacy-secret');
    await prefs.setString('user_adult-two_mal_session', 'other-tracker-secret');
    await prefs.setString('active_app_profile_id', 'adult-two');
    await prefs.setString(
      'luroka_kids_profiles_v1',
      jsonEncode({
        'parentPin': 'parent-pin-hash',
        'children': {
          'child-one': {'parentId': 'adult-one', 'maxAge': 7},
          'child-two': {'parentId': 'adult-two', 'maxAge': 12},
        },
        'watched': {
          'child-one': ['first-title'],
          'child-two': ['other-title'],
        },
      }),
    );

    final encrypted = await LurokaBackupSnapshot.exportSelected(
      db,
      'strong test phrase',
      selectedProfileIds: {'adult-one', 'child-one'},
      includeCredentials: true,
    );
    final payload = await LurokaBackupCrypto.decrypt(encrypted, 'strong test phrase');
    final serialized = jsonEncode(payload);
    expect(serialized, contains('first-secret'));
    expect(serialized, isNot(contains('other-secret')));
    expect(serialized, isNot(contains('other-tracker-secret')));
    expect(serialized, isNot(contains('overlapping-other-secret')));
    expect(serialized, isNot(contains('global-legacy-secret')));
    expect(serialized, isNot(contains('adult-two')));
    expect(serialized, isNot(contains('child-two')));
    expect(serialized, isNot(contains('other-title')));
    expect(payload['screenTimeDaily'], hasLength(2));
    expect((payload['preferences'] as Map).containsKey('active_app_profile_id'), isFalse);

    final withoutCredentials = await LurokaBackupSnapshot.exportSelected(
      db,
      'strong test phrase',
      selectedProfileIds: {'adult-one'},
      includeCredentials: false,
    );
    final clean = await LurokaBackupCrypto.decrypt(withoutCredentials, 'strong test phrase');
    expect(clean['connections'], isEmpty);
    expect(clean['profileConnections'], isEmpty);
    expect(jsonEncode(clean), isNot(contains('first-secret')));
    expect(jsonEncode(clean), isNot(contains('first-tracker-secret')));
    await expectLater(
      LurokaBackupSnapshot.exportSelected(
        db,
        'strong test phrase',
        selectedProfileIds: {'child-one'},
        includeCredentials: true,
      ),
      throwsStateError,
    );

    resetSharedPreferencesForTest();
    CredentialVault.resetKeyForTesting();
    final restored = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(restored.close);
    await LurokaBackupSnapshot.restore(restored, encrypted, 'strong test phrase');
    expect((await restored.select(restored.profiles).get()).map((p) => p.id).toSet(), {'adult-one', 'child-one'});
    expect((await restored.select(restored.connections).get()).map((c) => c.id), [first.id]);
    expect((await restored.select(restored.screenTimeDaily).get()), hasLength(2));

    resetSharedPreferencesForTest();
    CredentialVault.resetKeyForTesting();
    final existing = await BaseSharedPreferencesService.sharedCache();
    await existing.setString('luroka_kids_profiles_v1', jsonEncode({'parentPin': 'other-policy'}));
    final protectedDestination = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(protectedDestination.close);
    await expectLater(
      LurokaBackupSnapshot.restore(protectedDestination, encrypted, 'strong test phrase'),
      throwsStateError,
    );
    expect(await protectedDestination.select(protectedDestination.profiles).get(), isEmpty);
    expect(existing.getString('luroka_kids_profiles_v1'), contains('other-policy'));
  });
}
