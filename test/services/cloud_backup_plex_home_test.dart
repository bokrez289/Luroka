import 'dart:convert';

import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/connection/connection.dart';
import 'package:luroka/connection/connection_registry.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/models/plex/plex_home_user.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/profile_registry.dart';
import 'package:luroka/profiles/profile_connection.dart';
import 'package:luroka/profiles/profile_connection_registry.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/services/credential_vault.dart';
import 'package:luroka/services/luroka_backup_crypto.dart';
import 'package:luroka/services/luroka_backup_snapshot.dart';
import '../test_helpers/prefs.dart';

void main() {
  test('local profile restores its linked Plex account and only its Home identity', () async {
    resetSharedPreferencesForTest();
    CredentialVault.resetKeyForTesting();
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(db.close);
    await ProfileRegistry(db).upsert(Profile.local(id: 'local', displayName: 'Luka', createdAt: DateTime(2026)));
    await ProfileRegistry(db).upsert(Profile.local(id: 'other', displayName: 'Other', createdAt: DateTime(2026)));
    await ConnectionRegistry(db).upsert(
      PlexAccountConnection(
        id: 'plex',
        accountToken: 'plex-owner-token',
        clientIdentifier: 'device',
        accountLabel: 'Plex',
        createdAt: DateTime(2026),
      ),
    );
    await ProfileConnectionRegistry(db).upsert(
      const ProfileConnection(
        profileId: 'local',
        connectionId: 'plex',
        userIdentifier: 'home-user',
        userToken: 'home-token',
      ),
    );
    final prefs = await BaseSharedPreferencesService.sharedCache();
    await prefs.setString(
      'plex_home_users_plex',
      jsonEncode([
        {'id': 1, 'uuid': 'home-user', 'title': 'My Home', 'protected': true, 'restricted': true},
        {'id': 2, 'uuid': 'another-user', 'title': 'Other Home', 'protected': false},
      ]),
    );
    final encrypted = await LurokaBackupSnapshot.exportSelected(
      db,
      'test password',
      selectedProfileIds: {'local'},
      includeCredentials: true,
    );
    final payload = await LurokaBackupCrypto.decrypt(encrypted, 'test password');
    LurokaBackupSnapshot.validateSelectedPayload(payload, expectedProfileIds: {'local'}, includeCredentials: true);
    expect(jsonEncode(payload), contains('plex-owner-token'));
    expect(jsonEncode(payload), isNot(contains('another-user')));
    final home = jsonDecode((payload['preferences'] as Map)['plex_home_users_plex'] as String) as List;
    expect(home.single['uuid'], 'home-user');
    expect(home.single['protected'], isTrue);
    expect(home.single['restricted'], isTrue);
    final preferences = payload['preferences'] as Map;
    final scopedCache = preferences['plex_home_users_plex'];
    preferences['plex_home_users_plex'] = jsonEncode([
      ...home,
      {'id': 2, 'uuid': 'another-user', 'title': 'Other Home'},
    ]);
    expect(
      () => LurokaBackupSnapshot.validateSelectedPayload(
        payload,
        expectedProfileIds: {'local'},
        includeCredentials: true,
      ),
      throwsFormatException,
    );
    preferences['plex_home_users_plex'] = scopedCache;
    final withoutCredentials = await LurokaBackupSnapshot.exportSelected(
      db,
      'test password',
      selectedProfileIds: {'local'},
      includeCredentials: false,
    );
    final withoutSecrets = await LurokaBackupCrypto.decrypt(withoutCredentials, 'test password');
    expect(withoutSecrets['connections'], isEmpty);
    expect(withoutSecrets['profileConnections'], isEmpty);
    expect((withoutSecrets['preferences'] as Map).containsKey('plex_home_users_plex'), isFalse);

    resetSharedPreferencesForTest();
    CredentialVault.resetKeyForTesting();
    final restored = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(restored.close);
    await LurokaBackupSnapshot.restore(restored, encrypted, 'test password');
    final account = await ConnectionRegistry(restored).get('plex') as PlexAccountConnection;
    expect(account.accountToken, 'plex-owner-token');
    final binding = (await ProfileConnectionRegistry(restored).listForProfile('local')).single;
    expect(binding.userIdentifier, 'home-user');
    expect(binding.userToken, 'home-token');
    expect((await BaseSharedPreferencesService.sharedCache()).getString('plex_home_users_plex'), contains('home-user'));
    expect((await restored.select(restored.profiles).get()).map((p) => p.id), ['local']);
  });
  test('selected Plex Home identity restores using only its scoped cache entry', () async {
    resetSharedPreferencesForTest();
    CredentialVault.resetKeyForTesting();
    final source = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(source.close);
    await ConnectionRegistry(source).upsert(
      PlexAccountConnection(
        id: 'plex',
        accountToken: 'account-secret',
        clientIdentifier: 'client',
        accountLabel: 'Plex',
        createdAt: DateTime(2026),
      ),
    );
    final home = PlexHomeUser(
      id: 123,
      uuid: 'selected-user',
      title: 'Selected',
      thumb: '',
      hasPassword: true,
      restricted: true,
      updatedAt: null,
      admin: false,
      guest: false,
      protected: true,
    );
    final profile = Profile.virtualPlexHome(connectionId: 'plex', homeUser: home);
    final encrypted = await LurokaBackupSnapshot.exportSelected(
      source,
      'test password',
      selectedProfileIds: {profile.id},
      selectedProfiles: [profile],
      includeCredentials: true,
    );
    final payload = await LurokaBackupCrypto.decrypt(encrypted, 'test password');
    expect(payload['profiles'], isEmpty);
    expect(payload['connections'], hasLength(1));
    expect(payload['profileConnections'], hasLength(1));
    final cache = jsonDecode((payload['preferences'] as Map)['plex_home_users_plex'] as String) as List;
    expect(cache.map((e) => e['uuid']), ['selected-user']);
    expect(cache.single['protected'], isTrue);
    await expectLater(
      LurokaBackupSnapshot.exportSelected(
        source,
        'test password',
        selectedProfileIds: {profile.id},
        selectedProfiles: [profile],
        includeCredentials: false,
      ),
      throwsStateError,
    );
    final unselected = Profile.virtualPlexHome(
      connectionId: 'plex',
      homeUser: PlexHomeUser(
        id: 1,
        uuid: 'not-selected',
        title: 'Unselected',
        thumb: '',
        hasPassword: false,
        restricted: false,
        updatedAt: null,
        admin: false,
        guest: false,
        protected: false,
      ),
    );
    await expectLater(
      LurokaBackupSnapshot.exportSelected(
        source,
        'test password',
        selectedProfileIds: {profile.id},
        selectedProfiles: [profile, unselected],
        includeCredentials: true,
      ),
      throwsArgumentError,
    );

    resetSharedPreferencesForTest();
    CredentialVault.resetKeyForTesting();
    final dest = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(dest.close);
    await LurokaBackupSnapshot.restore(dest, encrypted, 'test password');
    expect((await dest.select(dest.profileConnections).get()).single.profileId, profile.id);
    expect(
      (await BaseSharedPreferencesService.sharedCache()).getString('plex_home_users_plex'),
      contains('selected-user'),
    );
  });
}
