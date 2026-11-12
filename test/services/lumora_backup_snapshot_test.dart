import 'package:drift/drift.dart' show Value;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/connection/connection_registry.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/models/seerr/seerr_session.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/profile_connection.dart';
import 'package:luroka/profiles/profile_connection_registry.dart';
import 'package:luroka/profiles/profile_registry.dart';
import 'package:luroka/services/credential_vault.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/services/luroka_backup_snapshot.dart';
import 'package:luroka/services/profile_settings_store.dart';
import 'package:luroka/services/seerr/seerr_session_store.dart';

import '../test_helpers/backend_client_fixtures.dart';
import '../test_helpers/prefs.dart';

void main() {
  test('encrypted snapshot restores identities and viewing history under the destination vault', () async {
    resetSharedPreferencesForTest();
    CredentialVault.resetKeyForTesting();
    final source = AppDatabase.forTesting(NativeDatabase.memory());
    final connection = testEmbyConnection();
    await ConnectionRegistry(source).upsert(connection);
    await ProfileRegistry(source).upsert(Profile.local(id: 'adult', displayName: 'Adult', createdAt: DateTime(2026)));
    await ProfileConnectionRegistry(source).upsert(
      ProfileConnection(
        profileId: 'adult',
        connectionId: connection.id,
        userIdentifier: connection.userId,
        userToken: connection.accessToken,
      ),
    );
    await const SeerrSessionStore().save(
      'adult',
      const SeerrSession(
        baseUrl: 'https://example.com',
        method: SeerrAuthMethod.local,
        identifier: 'adult',
        secret: 'test-secret',
        cookie: 'test-cookie',
        userId: 1,
        permissions: 1,
        displayName: 'Adult',
        instanceLabel: 'Seerr',
        createdAt: 1,
      ),
    );
    final prefs = await BaseSharedPreferencesService.sharedCache();
    final settings = ProfileSettingsStore(prefs);
    await settings.initialize('adult', initialValues: {'theme_mode': 'dark', 'audio_output_device': 'local-output'});
    await settings.initialize('other', initialValues: {'theme_mode': 'light'});
    await prefs.setString('user_other_seerr_session', 'unrelated');
    await source
        .into(source.screenTimeDaily)
        .insert(
          const ScreenTimeDailyCompanion(
            profileId: Value('adult'),
            localDate: Value('2026-01-01'),
            durationMs: Value(1234),
            updatedAt: Value(1234),
          ),
        );
    final backup = await LurokaBackupSnapshot.export(source, 'test passphrase');
    expect(backup, isNot(contains(connection.accessToken)));
    await source.close();

    resetSharedPreferencesForTest();
    CredentialVault.resetKeyForTesting();
    final target = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(target.close);
    await expectLater(LurokaBackupSnapshot.restore(target, backup, 'wrong password'), throwsA(anything));
    expect(await target.select(target.connections).get(), isEmpty);
    LurokaBackupSnapshot.debugAfterCommit = () async => throw StateError('simulated interruption');
    addTearDown(() => LurokaBackupSnapshot.debugAfterCommit = null);
    await expectLater(LurokaBackupSnapshot.restore(target, backup, 'test passphrase'), throwsStateError);
    LurokaBackupSnapshot.debugAfterCommit = null;
    expect(await const SeerrSessionStore().load('adult'), isNull);
    await LurokaBackupSnapshot.recoverInterruptedRestore(target);
    final restored = (await ConnectionRegistry(target).list()).single;
    expect(restored.toConfigJson()['accessToken'], connection.accessToken);
    expect((await ProfileConnectionRegistry(target).listForProfile('adult')).single.userToken, connection.accessToken);
    expect((await const SeerrSessionStore().load('adult'))?.secret, 'test-secret');
    expect((await BaseSharedPreferencesService.sharedCache()).getString('user_other_seerr_session'), isNull);
    final restoredSettings = ProfileSettingsStore(await BaseSharedPreferencesService.sharedCache());
    expect(restoredSettings.read('adult'), {'theme_mode': 'dark'});
    expect(restoredSettings.read('other'), isNull);
    expect((await target.select(target.screenTimeDaily).get()).single.durationMs, 1234);
    await expectLater(LurokaBackupSnapshot.restore(target, backup, 'test passphrase'), throwsStateError);
    expect((await target.select(target.profiles).get()), hasLength(1));
  });
}
