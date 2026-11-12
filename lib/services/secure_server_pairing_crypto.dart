import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart' as digest;
import 'package:cryptography/cryptography.dart';

/// Ephemeral, end-to-end encryption for phone-to-TV connection setup.
///
/// Both devices must show and explicitly confirm [PairingSession.checkCode]
/// before accepting credentials. This primitive is not yet wired to a relay or
/// UI; a public key or six-digit check code alone is not an authentication key.
final class ServerPairingKeyPair {
  ServerPairingKeyPair._(this._keyPair, this.publicKey, this.sessionId, this.isTv);

  static final _exchange = X25519();
  final SimpleKeyPair _keyPair;
  final String publicKey;
  final String sessionId;
  final bool isTv;

  static String newSessionId() {
    final random = Random.secure();
    return _encode(List.generate(32, (_) => random.nextInt(256)));
  }

  static Future<ServerPairingKeyPair> create({required String sessionId, required bool isTv}) async {
    _decode32(sessionId);
    final keyPair = await _exchange.newKeyPair();
    final public = await keyPair.extractPublicKey();
    return ServerPairingKeyPair._(keyPair, _encode(public.bytes), sessionId, isTv);
  }

  Future<PairingSession> connect(String remotePublicKey) async {
    final remote = _decode32(remotePublicKey);
    if (remotePublicKey == publicKey || remote.every((byte) => byte == 0)) {
      throw const FormatException('Invalid pairing public key');
    }
    final tvKey = isTv ? publicKey : remotePublicKey;
    final phoneKey = isTv ? remotePublicKey : publicKey;
    final transcript = utf8.encode('luroka-server-pair-v1|$sessionId|$tvKey|$phoneKey');
    final shared = await _exchange.sharedSecretKey(
      keyPair: _keyPair,
      remotePublicKey: SimplePublicKey(remote, type: KeyPairType.x25519),
    );
    if ((await shared.extractBytes()).every((byte) => byte == 0)) {
      throw const FormatException('Invalid pairing public key');
    }
    final hkdf = Hkdf(hmac: Hmac.sha256(), outputLength: 32);
    final key = await hkdf.deriveKey(
      secretKey: shared,
      nonce: digest.sha256.convert(transcript).bytes,
      info: utf8.encode('payload encryption'),
    );
    final checkKey = await hkdf.deriveKey(
      secretKey: shared,
      nonce: digest.sha256.convert(transcript).bytes,
      info: utf8.encode('verification code'),
    );
    final check = await checkKey.extractBytes();
    final number = ((check[0] << 24) | (check[1] << 16) | (check[2] << 8) | check[3]) % 1000000;
    return PairingSession._(key, transcript, number.toString().padLeft(6, '0'), isTv);
  }
}

final class PairingSession {
  PairingSession._(this._key, this._transcript, this.checkCode, this._isTv);
  final SecretKey _key;
  final List<int> _transcript;
  final String checkCode;
  final bool _isTv;
  bool _confirmed = false;
  bool _consumed = false;
  static final _cipher = AesGcm.with256bits();
  static const _maxPayloadBytes = 32 * 1024;

  /// Call only after the user has compared the code on both devices.
  bool confirm(String code) => _confirmed = code == checkCode;

  /// One phone-to-TV payload, after explicit matching-code confirmation.
  Future<String> encrypt(Map<String, Object?> payload) async {
    if (!_confirmed || _isTv || _consumed) throw StateError('Pairing is not authorized');
    final bytes = utf8.encode(jsonEncode(payload));
    if (bytes.length > _maxPayloadBytes) throw const FormatException('Pairing payload too large');
    // Reserve before awaiting, so concurrent calls cannot reuse this session.
    _consumed = true;
    final box = await _cipher.encrypt(bytes, secretKey: _key, aad: _transcript);
    return jsonEncode({
      'version': 1,
      'nonce': base64Encode(box.nonce),
      'ciphertext': base64Encode(box.cipherText),
      'mac': base64Encode(box.mac.bytes),
    });
  }

  /// The relay must also enforce one-use delivery and a short expiry.
  Future<Map<String, dynamic>> decrypt(String envelope) async {
    if (!_confirmed || !_isTv || _consumed) throw StateError('Pairing is not authorized');
    if (envelope.length > 2 * _maxPayloadBytes) throw const FormatException('Pairing payload too large');
    final data = jsonDecode(envelope);
    if (data is! Map ||
        data.length != 4 ||
        data['version'] != 1 ||
        data['nonce'] is! String ||
        data['ciphertext'] is! String ||
        data['mac'] is! String) {
      throw const FormatException('Invalid pairing payload');
    }
    final nonce = base64Decode(data['nonce'] as String);
    final ciphertext = base64Decode(data['ciphertext'] as String);
    final mac = base64Decode(data['mac'] as String);
    if (nonce.length != 12 || mac.length != 16 || ciphertext.length > _maxPayloadBytes) {
      throw const FormatException('Invalid pairing payload');
    }
    // Consume before asynchronous decryption to prevent concurrent replay.
    _consumed = true;
    final clear = await _cipher.decrypt(
      SecretBox(ciphertext, nonce: nonce, mac: Mac(mac)),
      secretKey: _key,
      aad: _transcript,
    );
    final payload = jsonDecode(utf8.decode(clear));
    if (payload is! Map<String, dynamic>) throw const FormatException('Invalid pairing payload');
    return payload;
  }
}

String _encode(List<int> bytes) => base64UrlEncode(bytes).replaceAll('=', '');

List<int> _decode32(String value) {
  if (!RegExp(r'^[A-Za-z0-9_-]{43}$').hasMatch(value)) throw const FormatException('Invalid pairing value');
  final bytes = base64Url.decode(base64Url.normalize(value));
  if (bytes.length != 32 || _encode(bytes) != value) throw const FormatException('Invalid pairing value');
  return bytes;
}
