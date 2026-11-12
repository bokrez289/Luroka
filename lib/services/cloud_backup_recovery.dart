import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';

/// A user-held, high-entropy recovery capability. Never transmit or log it.
///
/// The server receives only independently derived lookup/deletion values, not
/// the recovery code or the key used to encrypt the backup.
final class CloudBackupRecoveryCode {
  CloudBackupRecoveryCode._(this._secret);

  static const _prefix = 'lrb1-';
  static const _secretLength = 32;
  static final _hkdf = Hkdf(hmac: Hmac.sha256(), outputLength: _secretLength);
  static final _salt = utf8.encode('luroka-cloud-backup-v1');
  final Uint8List _secret;

  factory CloudBackupRecoveryCode.generate() {
    final random = Random.secure();
    return CloudBackupRecoveryCode._(Uint8List.fromList(List.generate(_secretLength, (_) => random.nextInt(256))));
  }

  factory CloudBackupRecoveryCode.parse(String input) {
    final code = input.trim();
    if (!code.startsWith(_prefix)) throw const FormatException('Invalid recovery code');
    final encoded = code.substring(_prefix.length);
    if (!RegExp(r'^[A-Za-z0-9_-]{43}$').hasMatch(encoded)) {
      throw const FormatException('Invalid recovery code');
    }
    try {
      final secret = base64Url.decode(base64Url.normalize(encoded));
      if (secret.length != _secretLength || _encode(secret) != encoded) {
        throw const FormatException('Invalid recovery code');
      }
      return CloudBackupRecoveryCode._(Uint8List.fromList(secret));
    } on FormatException {
      throw const FormatException('Invalid recovery code');
    }
  }

  /// Explicitly reveal the code only for the user-facing recovery UI.
  String reveal() => '$_prefix${_encode(_secret)}';

  Future<CloudBackupKeys> deriveKeys() async {
    Future<String> derive(String label) async {
      final key = await _hkdf.deriveKey(secretKey: SecretKey(_secret), nonce: _salt, info: utf8.encode(label));
      return _encode(await key.extractBytes());
    }

    return CloudBackupKeys._(
      lookup: await derive('lookup'),
      deletion: await derive('deletion'),
      encryptionPassword: await derive('encryption'),
    );
  }

  static String _encode(List<int> bytes) => base64Url.encode(bytes).replaceAll('=', '');
}

/// Values have distinct purposes; the encryption password must stay local.
final class CloudBackupKeys {
  const CloudBackupKeys._({required this.lookup, required this.deletion, required this.encryptionPassword});

  final String lookup;
  final String deletion;
  final String encryptionPassword;
}
