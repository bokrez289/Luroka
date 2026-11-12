import 'dart:convert';

import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/connection/connection.dart';
import 'package:luroka/connection/connection_registry.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/models/plex/plex_home_user.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/services/credential_vault.dart';
import 'package:luroka/services/luroka_backup_crypto.dart';
import 'package:luroka/services/luroka_backup_snapshot.dart';
import '../test_helpers/prefs.dart';

void main() {
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
