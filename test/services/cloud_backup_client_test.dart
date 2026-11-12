import 'dart:convert';

import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/profile_registry.dart';
import 'package:luroka/services/cloud_backup_client.dart';
import 'package:luroka/services/cloud_backup_recovery.dart';
import 'package:luroka/services/credential_vault.dart';
import 'package:luroka/services/luroka_backup_crypto.dart';
import 'package:luroka/services/profile_backup_authorization.dart';

import '../test_helpers/prefs.dart';

void main() {
  test('upload and restore expose only encrypted content and derived capabilities', () async {
    String? ciphertext;
    String? lookup;
    String? deletion;
    final requests = <http.Request>[];
    final transport = MockClient((request) async {
      requests.add(request);
      expect(request.url.query, isEmpty);
      expect(request.url.fragment, isEmpty);
      expect(request.followRedirects, isFalse);
      final currentLookup = request.headers['X-Luroka-Backup-Lookup'];
      switch (request.method) {
        case 'PUT':
          lookup = currentLookup;
          deletion = request.headers['X-Luroka-Backup-Delete'];
          ciphertext = request.body;
          return http.Response(
            jsonEncode({'expiresAt': DateTime.now().toUtc().add(const Duration(days: 90)).toIso8601String()}),
            201,
          );
        case 'GET':
          expect(currentLookup, lookup);
          expect(request.headers.containsKey('X-Luroka-Backup-Delete'), isFalse);
          return http.Response(
            ciphertext!,
            200,
            headers: {
              'x-luroka-backup-expires': DateTime.now().toUtc().add(const Duration(days: 90)).toIso8601String(),
            },
          );
        case 'DELETE':
          expect(currentLookup, lookup);
          expect(request.headers['X-Luroka-Backup-Delete'], deletion);
          return http.Response('', 204);
        default:
          fail('Unexpected HTTP method');
      }
    });
    final client = CloudBackupClient.forTesting(
      client: transport,
      endpoint: Uri.https('backup.invalid', '/v1/backups'),
    );
    final receipt = await client.create({'username': 'sensitive username', 'token': 'sensitive token'});
    final recovered = await client.restore(receipt.code);
    await client.delete(receipt.code);
    expect(recovered, {'username': 'sensitive username', 'token': 'sensitive token'});
    expect(requests.map((r) => r.method), ['PUT', 'GET', 'DELETE']);
    final network = requests.map((r) => '${r.url} ${r.headers} ${r.body}').join('\n');
    expect(network, isNot(contains('sensitive username')));
    expect(network, isNot(contains('sensitive token')));
    expect(network, isNot(contains(receipt.code.reveal())));
    expect(network, isNot(contains((await receipt.code.deriveKeys()).encryptionPassword)));
    expect(jsonDecode(ciphertext!), isA<Map>());
  });

  test('refuses plaintext endpoints and fails closed on server errors', () async {
    final transport = MockClient((_) async => http.Response('not found', 404));
    expect(
      () => CloudBackupClient.forTesting(client: transport, endpoint: Uri.parse('http://backup.invalid/v1/backups')),
      throwsArgumentError,
    );
    final client = CloudBackupClient.forTesting(
      client: transport,
      endpoint: Uri.https('backup.invalid', '/v1/backups'),
    );
    await expectLater(client.create({'profile': 'test'}), throwsA(isA<CloudBackupException>()));
  });

  test('selected snapshot can be restored into a clean installation', () async {
    resetSharedPreferencesForTest();
    CredentialVault.resetKeyForTesting();
    final source = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(source.close);
    await ProfileRegistry(
      source,
    ).upsert(Profile.local(id: 'selected', displayName: 'Selected', createdAt: DateTime(2026)));
    await ProfileRegistry(
      source,
    ).upsert(Profile.local(id: 'excluded', displayName: 'Excluded', createdAt: DateTime(2026)));
    String? encrypted;
    final transport = MockClient((request) async {
      if (request.method == 'PUT') {
        encrypted = request.body;
        return http.Response(
          jsonEncode({'expiresAt': DateTime.now().toUtc().add(const Duration(days: 90)).toIso8601String()}),
          201,
        );
      }
      return http.Response(
        encrypted!,
        200,
        headers: {'x-luroka-backup-expires': DateTime.now().toUtc().add(const Duration(days: 90)).toIso8601String()},
      );
    });
    final client = CloudBackupClient.forTesting(
      client: transport,
      endpoint: Uri.https('backup.invalid', '/v1/backups'),
    );
    final selection = await AuthorizedBackupSelection.authorize(
      activeProfileId: 'selected',
      profiles: [Profile.local(id: 'selected', displayName: 'Selected', createdAt: DateTime(2026))],
      selectedProfileIds: {'selected'},
      isCurrent: () => true,
      isKid: (_) => false,
      parentFor: (_) => null,
      approveActiveProfile: (_) async => true,
      approveParent: () async => false,
      approveOtherAdult: (_) async => false,
      includeCredentials: false,
      approveSharedCredentials: () async => false,
    );
    final receipt = await client.createSelected(
      source,
      selection: selection,
      recoveryCode: CloudBackupRecoveryCode.generate(),
      includeCredentials: false,
    );
    expect(encrypted, isNot(contains('Selected')));
    resetSharedPreferencesForTest();
    CredentialVault.resetKeyForTesting();
    final destination = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(destination.close);
    final preview = await client.prepareRestore(receipt.code);
    expect(preview.profileNames, ['Selected']);
    expect(preview.includesConnections, isFalse);
    await preview.apply(destination);
    expect((await destination.select(destination.profiles).get()).map((row) => row.id), ['selected']);
    await expectLater(client.restoreToEmptyDatabase(destination, receipt.code), throwsStateError);
  });

  test('retry after a lost upload response keeps the original expiry', () async {
    resetSharedPreferencesForTest();
    CredentialVault.resetKeyForTesting();
    final source = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(source.close);
    final profile = Profile.local(id: 'owner', displayName: 'Owner', createdAt: DateTime(2026));
    await ProfileRegistry(source).upsert(profile);
    final selection = await AuthorizedBackupSelection.authorize(
      activeProfileId: 'owner',
      profiles: [profile],
      selectedProfileIds: {'owner'},
      isCurrent: () => true,
      isKid: (_) => false,
      parentFor: (_) => null,
      approveActiveProfile: (_) async => true,
      approveParent: () async => false,
      approveOtherAdult: (_) async => false,
      includeCredentials: false,
      approveSharedCredentials: () async => false,
    );
    String? stored;
    final expiry = DateTime.now().toUtc().add(const Duration(days: 30));
    final transport = MockClient((request) async {
      if (request.method == 'PUT') {
        if (stored == null) {
          stored = request.body;
          throw http.ClientException('simulated lost response');
        }
        return http.Response('', 409);
      }
      return http.Response(stored!, 200, headers: {'x-luroka-backup-expires': expiry.toIso8601String()});
    });
    final client = CloudBackupClient.forTesting(
      client: transport,
      endpoint: Uri.https('backup.invalid', '/v1/backups'),
    );
    final code = CloudBackupRecoveryCode.generate();
    await expectLater(
      client.createSelected(source, selection: selection, recoveryCode: code, includeCredentials: false),
      throwsA(isA<http.ClientException>()),
    );
    final receipt = await client.createSelected(
      source,
      selection: selection,
      recoveryCode: code,
      includeCredentials: false,
    );
    expect(receipt.expiresAt, expiry);
  });

  test('credential-free approval cannot upload an envelope with hidden tracker credentials', () async {
    final owner = Profile.local(id: 'owner', displayName: 'Owner', createdAt: DateTime(2026));
    final selection = await AuthorizedBackupSelection.authorize(
      activeProfileId: owner.id,
      profiles: [owner],
      selectedProfileIds: {owner.id},
      isCurrent: () => true,
      isKid: (_) => false,
      parentFor: (_) => null,
      approveActiveProfile: (_) async => true,
      approveParent: () async => true,
      approveOtherAdult: (_) async => true,
      includeCredentials: false,
      approveSharedCredentials: () async => false,
    );
    var requests = 0;
    final transport = MockClient((_) async {
      requests++;
      return http.Response('', 201);
    });
    final client = CloudBackupClient.forTesting(
      client: transport,
      endpoint: Uri.https('backup.invalid', '/v1/backups'),
    );
    final code = CloudBackupRecoveryCode.generate();
    final keys = await code.deriveKeys();
    final envelope = await LurokaBackupCrypto.encrypt({
      'schema': 1,
      'scope': 'selected',
      'selectedProfileIds': ['owner'],
      'connections': [],
      'profiles': [
        {'id': 'owner'},
      ],
      'profileConnections': [],
      'screenTimeDaily': [],
      'screenTimeSessions': [],
      'offlineWatchProgress': [],
      'preferences': {'user_owner_mal_session': 'secret-token'},
    }, keys.encryptionPassword);
    await expectLater(
      client.uploadSelectedEnvelope(selection: selection, recoveryCode: code, envelope: envelope),
      throwsStateError,
    );
    expect(requests, 0);
  });

  test('selected-envelope retry rejects rows belonging to another profile before any upload', () async {
    final owner = Profile.local(id: 'owner', displayName: 'Owner', createdAt: DateTime(2026));
    final selection = await AuthorizedBackupSelection.authorize(
      activeProfileId: owner.id,
      profiles: [owner],
      selectedProfileIds: {owner.id},
      isCurrent: () => true,
      isKid: (_) => false,
      parentFor: (_) => null,
      approveActiveProfile: (_) async => true,
      approveParent: () async => false,
      approveOtherAdult: (_) async => false,
      includeCredentials: false,
      approveSharedCredentials: () async => false,
    );
    var requests = 0;
    final client = CloudBackupClient.forTesting(
      client: MockClient((_) async {
        requests++;
        return http.Response('', 201);
      }),
      endpoint: Uri.https('backup.invalid', '/v1/backups'),
    );
    final code = CloudBackupRecoveryCode.generate();
    final keys = await code.deriveKeys();
    final envelope = await LurokaBackupCrypto.encrypt({
      'schema': 1,
      'scope': 'selected',
      'selectedProfileIds': ['owner'],
      'connections': [],
      'profiles': [
        {'id': 'owner'},
      ],
      'profileConnections': [],
      'screenTimeDaily': [
        {'profileId': 'unselected'},
      ],
      'screenTimeSessions': [],
      'offlineWatchProgress': [],
      'preferences': <String, Object?>{},
    }, keys.encryptionPassword);
    await expectLater(
      client.uploadSelectedEnvelope(selection: selection, recoveryCode: code, envelope: envelope),
      throwsFormatException,
    );
    expect(requests, 0);
  });
}
