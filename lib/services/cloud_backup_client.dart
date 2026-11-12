import 'dart:convert';

import 'package:flutter/foundation.dart' show visibleForTesting;
import 'package:http/http.dart' as http;

import '../database/app_database.dart';
import 'cloud_backup_recovery.dart';
import 'luroka_backup_crypto.dart';
import 'luroka_backup_snapshot.dart';
import 'profile_backup_authorization.dart';

/// Client for a ciphertext-only backup endpoint. Not wired to UI or production
/// until the matching service and profile authorization have been reviewed.
final class CloudBackupClient {
  CloudBackupClient({http.Client? client})
    : _client = client ?? http.Client(),
      _ownsClient = client == null,
      _endpoint = Uri.https('backup.luroka.app', '/v1/backups');

  @visibleForTesting
  CloudBackupClient.forTesting({required http.Client client, required Uri endpoint}) : this._(client, endpoint);

  CloudBackupClient._(this._client, this._endpoint) : _ownsClient = false {
    if (_endpoint.scheme != 'https' || _endpoint.userInfo.isNotEmpty || _endpoint.hasQuery || _endpoint.hasFragment) {
      throw ArgumentError('The backup endpoint must be an HTTPS URL without credentials or parameters');
    }
  }

  static const _maxEnvelopeBytes = 48 * 1024 * 1024;
  static const _timeout = Duration(seconds: 45);
  final http.Client _client;
  final bool _ownsClient;
  final Uri _endpoint;

  /// Raw-payload test helper; production must use authorized profile selection.
  @visibleForTesting
  Future<CloudBackupReceipt> create(Map<String, Object?> payload) async {
    final code = CloudBackupRecoveryCode.generate();
    final keys = await code.deriveKeys();
    final envelope = await LurokaBackupCrypto.encrypt(payload, keys.encryptionPassword);
    final response = await _upload(keys, envelope);
    if (response.status != 201) throw const CloudBackupException('Could not store backup');
    return CloudBackupReceipt(code: code, expiresAt: _parseExpiry(response.body));
  }

  /// Authorization must still be current after snapshot encryption and before
  /// the first byte is sent. The UI must explain shared credentials separately.
  Future<CloudBackupReceipt> createSelected(
    AppDatabase db, {
    required AuthorizedBackupSelection selection,
    required CloudBackupRecoveryCode recoveryCode,
    required bool includeCredentials,
  }) async {
    selection.requireCurrent();
    if (includeCredentials != selection.includeCredentials) throw StateError('Credential approval is required');
    final keys = await recoveryCode.deriveKeys();
    final envelope = await LurokaBackupSnapshot.exportSelected(
      db,
      keys.encryptionPassword,
      selectedProfileIds: selection.profileIds,
      selectedProfiles: selection.profiles,
      includeCredentials: includeCredentials,
    );
    final payload = await LurokaBackupCrypto.decrypt(envelope, keys.encryptionPassword);
    LurokaBackupSnapshot.validateSelectedPayload(
      payload,
      expectedProfileIds: selection.profileIds,
      includeCredentials: selection.includeCredentials,
    );
    selection.requireCurrent();
    return _uploadSelected(selection, recoveryCode, keys, envelope);
  }

  /// Stores the exact already-encrypted local export. Callers can save it
  /// before uploading, so network uncertainty never destroys their only copy.
  Future<CloudBackupReceipt> uploadSelectedEnvelope({
    required AuthorizedBackupSelection selection,
    required CloudBackupRecoveryCode recoveryCode,
    required String envelope,
  }) async {
    selection.requireCurrent();
    final keys = await recoveryCode.deriveKeys();
    final payload = await LurokaBackupCrypto.decrypt(envelope, keys.encryptionPassword);
    LurokaBackupSnapshot.validateSelectedPayload(
      payload,
      expectedProfileIds: selection.profileIds,
      includeCredentials: selection.includeCredentials,
    );
    selection.requireCurrent();
    return _uploadSelected(selection, recoveryCode, keys, envelope);
  }

  Future<CloudBackupReceipt> _uploadSelected(
    AuthorizedBackupSelection selection,
    CloudBackupRecoveryCode recoveryCode,
    CloudBackupKeys keys,
    String envelope,
  ) async {
    final response = await _upload(keys, envelope);
    if (response.status == 409) {
      final existing = await _download(keys);
      final existingPayload = await LurokaBackupCrypto.decrypt(existing.body, keys.encryptionPassword);
      final currentPayload = await LurokaBackupCrypto.decrypt(envelope, keys.encryptionPassword);
      if (!_sameJson(existingPayload, currentPayload)) throw const CloudBackupException('Backup already exists');
      selection.requireCurrent();
      return CloudBackupReceipt(code: recoveryCode, expiresAt: existing.expiresAt);
    }
    if (response.status != 201) throw const CloudBackupException('Could not store backup');
    return CloudBackupReceipt(code: recoveryCode, expiresAt: _parseExpiry(response.body));
  }

  Future<({int status, List<int> body, String? expiry})> _upload(CloudBackupKeys keys, String envelope) async {
    final bytes = utf8.encode(envelope);
    if (bytes.length > _maxEnvelopeBytes) throw const FormatException('Backup is too large');
    return _send(
      'PUT',
      headers: {'X-Luroka-Backup-Lookup': keys.lookup, 'X-Luroka-Backup-Delete': keys.deletion},
      body: bytes,
      maxResponseBytes: 4096,
    );
  }

  DateTime _parseExpiry(List<int> body) {
    final result = jsonDecode(utf8.decode(body));
    if (result is! Map || result['expiresAt'] is! String) throw const FormatException('Invalid backup receipt');
    final expiresAt = DateTime.tryParse(result['expiresAt'] as String)?.toUtc();
    final now = DateTime.now().toUtc();
    if (expiresAt == null || expiresAt.isBefore(now) || expiresAt.isAfter(now.add(const Duration(days: 91)))) {
      throw const FormatException('Invalid backup receipt');
    }
    return expiresAt;
  }

  Future<Map<String, dynamic>> restore(CloudBackupRecoveryCode code) async {
    final keys = await code.deriveKeys();
    return LurokaBackupCrypto.decrypt((await _download(keys)).body, keys.encryptionPassword);
  }

  /// Uses the existing empty-database and interrupted-restore safeguards.
  Future<void> restoreToEmptyDatabase(AppDatabase db, CloudBackupRecoveryCode code) async {
    final prepared = await prepareRestore(code);
    await prepared.apply(db);
  }

  /// Decrypts once for a user-visible summary and retains the exact encrypted
  /// bytes for a later confirmed restore, avoiding a second server fetch.
  Future<PreparedCloudBackupRestore> prepareRestore(CloudBackupRecoveryCode code) async {
    final keys = await code.deriveKeys();
    final encoded = (await _download(keys)).body;
    final payload = await LurokaBackupCrypto.decrypt(encoded, keys.encryptionPassword);
    final profiles = payload['profiles'];
    final connections = payload['connections'];
    if (payload['schema'] != 1 || profiles is! List || profiles.length > 1000 || connections is! List) {
      throw const FormatException('Invalid backup content');
    }
    final names = <String>[];
    for (final profile in profiles) {
      if (profile is! Map || profile['displayName'] is! String || (profile['displayName'] as String).length > 256) {
        throw const FormatException('Invalid backup content');
      }
      names.add(profile['displayName'] as String);
    }
    final virtualNames = payload['virtualProfileNames'];
    if (virtualNames != null) {
      if (virtualNames is! List ||
          virtualNames.length > 1000 ||
          virtualNames.any((name) => name is! String || name.length > 256)) {
        throw const FormatException('Invalid backup content');
      }
      names.addAll(virtualNames.cast<String>());
    }
    return PreparedCloudBackupRestore._(
      encoded,
      keys.encryptionPassword,
      List.unmodifiable(names),
      connections.isNotEmpty,
    );
  }

  Future<({String body, DateTime expiresAt})> _download(CloudBackupKeys keys) async {
    final response = await _send('GET', headers: {'X-Luroka-Backup-Lookup': keys.lookup});
    if (response.status != 200) throw const CloudBackupException('Backup unavailable');
    final expiresAt = DateTime.tryParse(response.expiry ?? '')?.toUtc();
    final now = DateTime.now().toUtc();
    if (expiresAt == null || !expiresAt.isAfter(now) || expiresAt.isAfter(now.add(const Duration(days: 91)))) {
      throw const FormatException('Invalid backup expiry');
    }
    return (body: utf8.decode(response.body), expiresAt: expiresAt);
  }

  Future<void> delete(CloudBackupRecoveryCode code) async {
    final keys = await code.deriveKeys();
    final response = await _send(
      'DELETE',
      headers: {'X-Luroka-Backup-Lookup': keys.lookup, 'X-Luroka-Backup-Delete': keys.deletion},
      maxResponseBytes: 4096,
    );
    if (response.status != 204) throw const CloudBackupException('Could not delete backup');
  }

  Future<({int status, List<int> body, String? expiry})> _send(
    String method, {
    required Map<String, String> headers,
    List<int>? body,
    int maxResponseBytes = _maxEnvelopeBytes,
  }) async {
    final request = http.Request(method, _endpoint)
      ..followRedirects = false
      ..headers.addAll({'Accept': 'application/json', 'Cache-Control': 'no-store', ...headers});
    if (body != null) {
      request.headers['Content-Type'] = 'application/json';
      request.bodyBytes = body;
    }
    final response = await _client.send(request).timeout(_timeout);
    if (response.contentLength != null && response.contentLength! > maxResponseBytes) {
      throw const FormatException('Response too large');
    }
    final result = <int>[];
    await for (final chunk in response.stream.timeout(_timeout)) {
      if (result.length + chunk.length > maxResponseBytes) throw const FormatException('Response too large');
      result.addAll(chunk);
    }
    return (status: response.statusCode, body: result, expiry: response.headers['x-luroka-backup-expires']);
  }

  void close() {
    if (_ownsClient) _client.close();
  }
}

/// Keep this object in memory only; it retains sensitive recovery material.
final class PreparedCloudBackupRestore {
  const PreparedCloudBackupRestore._(this._envelope, this._password, this.profileNames, this.includesConnections);
  final String _envelope;
  final String _password;
  final List<String> profileNames;
  final bool includesConnections;

  Future<void> apply(AppDatabase db) => LurokaBackupSnapshot.restore(db, _envelope, _password);
}

final class CloudBackupReceipt {
  const CloudBackupReceipt({required this.code, required this.expiresAt});
  final CloudBackupRecoveryCode code;
  final DateTime expiresAt;
}

bool _sameJson(Object? a, Object? b) {
  if (a is Map && b is Map) {
    return a.length == b.length && a.keys.every((key) => b.containsKey(key) && _sameJson(a[key], b[key]));
  }
  if (a is List && b is List) {
    return a.length == b.length && Iterable<int>.generate(a.length).every((i) => _sameJson(a[i], b[i]));
  }
  return a == b;
}

final class CloudBackupException implements Exception {
  const CloudBackupException(this.message);
  final String message;
  @override
  String toString() => message;
}
