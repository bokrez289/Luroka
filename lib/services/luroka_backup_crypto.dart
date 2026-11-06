import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';

/// Password-encrypted, authenticated portable backup envelope.
/// The caller is responsible for producing and validating the payload.
abstract final class LurokaBackupCrypto {
  static const _iterations = 310000;
  static const _maxBytes = 32 * 1024 * 1024;
  static final _aad = utf8.encode('luroka-backup-v1');
  static final _cipher = AesGcm.with256bits();

  static Future<SecretKey> _derive(String password, List<int> salt, int iterations) => Pbkdf2(
    macAlgorithm: Hmac.sha256(),
    iterations: iterations,
    bits: 256,
  ).deriveKey(secretKey: SecretKey(utf8.encode(password)), nonce: salt);

  static Future<String> encrypt(Map<String, Object?> payload, String password) async {
    if (password.isEmpty) throw ArgumentError.value(password, 'password', 'must not be empty');
    final bytes = utf8.encode(jsonEncode(payload));
    if (bytes.length > _maxBytes) throw const FormatException('Backup is too large');
    final random = Random.secure();
    final salt = List<int>.generate(16, (_) => random.nextInt(256));
    final box = await _cipher.encrypt(bytes, secretKey: await _derive(password, salt, _iterations), aad: _aad);
    return jsonEncode({
      'format': 'luroka-encrypted-backup',
      'version': 1,
      'kdf': 'pbkdf2-hmac-sha256',
      'iterations': _iterations,
      'salt': base64Encode(salt),
      'nonce': base64Encode(box.nonce),
      'ciphertext': base64Encode(box.cipherText),
      'mac': base64Encode(box.mac.bytes),
    });
  }

  static Future<Map<String, dynamic>> decrypt(String encoded, String password) async {
    if (password.isEmpty || encoded.length > _maxBytes * 2) throw const FormatException('Invalid backup');
    final raw = jsonDecode(encoded);
    if (raw is! Map<String, dynamic> ||
        raw['format'] != 'luroka-encrypted-backup' ||
        raw['version'] != 1 ||
        raw['kdf'] != 'pbkdf2-hmac-sha256' ||
        raw['iterations'] is! int) {
      throw const FormatException('Unsupported backup format');
    }
    final iterations = raw['iterations'] as int;
    if (iterations < _iterations || iterations > 1000000) throw const FormatException('Invalid backup key derivation');
    Uint8List decode(String key) {
      final value = raw[key];
      if (value is! String) throw const FormatException('Invalid backup envelope');
      return base64Decode(value);
    }

    final salt = decode('salt');
    final nonce = decode('nonce');
    final mac = decode('mac');
    final ciphertext = decode('ciphertext');
    if (salt.length != 16 || nonce.length != 12 || mac.length != 16 || ciphertext.length > _maxBytes) {
      throw const FormatException('Invalid backup envelope');
    }
    final clear = await _cipher.decrypt(
      SecretBox(ciphertext, nonce: nonce, mac: Mac(mac)),
      secretKey: await _derive(password, salt, iterations),
      aad: _aad,
    );
    final payload = jsonDecode(utf8.decode(clear));
    if (payload is! Map<String, dynamic>) throw const FormatException('Invalid backup content');
    return payload;
  }
}
