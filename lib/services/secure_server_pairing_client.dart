import 'dart:convert';

import 'package:flutter/foundation.dart' show visibleForTesting;
import 'package:http/http.dart' as http;

import 'secure_server_pairing_crypto.dart';

/// A QR invitation contains no server address, username, token or password.
/// The fragment is handled locally; it must never be sent to a web server.
final class ServerPairingInvite {
  const ServerPairingInvite({required this.sessionId, required this.tvPublicKey});
  final String sessionId;
  final String tvPublicKey;

  Uri toUri() => Uri(scheme: 'luroka', host: 'pair', fragment: 'v1.$sessionId.$tvPublicKey');
  Uri toBrowserUri() => Uri.https('connect.luroka.app', '/pair').replace(fragment: 'v1.$sessionId.$tvPublicKey');

  static ServerPairingInvite parse(Uri uri) {
    final appLink = uri.scheme == 'luroka' && uri.host == 'pair' && uri.path.isEmpty && !uri.hasPort;
    final webLink = uri.scheme == 'https' && uri.host == 'connect.luroka.app' && uri.path == '/pair' && !uri.hasPort;
    if ((!appLink && !webLink) || uri.hasQuery || uri.userInfo.isNotEmpty) {
      throw const FormatException('Invalid pairing invitation');
    }
    final parts = uri.fragment.split('.');
    if (parts.length != 3 || parts[0] != 'v1' || !_validValue(parts[1]) || !_validValue(parts[2])) {
      throw const FormatException('Invalid pairing invitation');
    }
    return ServerPairingInvite(sessionId: parts[1], tvPublicKey: parts[2]);
  }
}

/// Experimental protocol client. There is intentionally no UI/deep-link or
/// production deployment until user confirmation and transport are reviewed.
final class ServerPairingClient {
  ServerPairingClient({http.Client? client})
    : _client = client ?? http.Client(),
      _ownsClient = client == null,
      _base = Uri.https('connect.luroka.app');

  @visibleForTesting
  ServerPairingClient.forTesting({required http.Client client, required Uri base}) : this._(client, base);

  ServerPairingClient._(this._client, this._base) : _ownsClient = false {
    if (_base.scheme != 'https' ||
        _base.userInfo.isNotEmpty ||
        _base.hasQuery ||
        _base.hasFragment ||
        (_base.path.isNotEmpty && _base.path != '/')) {
      throw ArgumentError('Invalid pairing endpoint');
    }
  }

  final http.Client _client;
  final bool _ownsClient;
  final Uri _base;
  static const _timeout = Duration(seconds: 20);
  static const _maxResponse = 64 * 1024;

  Future<TvPairingAttempt> createTvAttempt() async {
    final id = ServerPairingKeyPair.newSessionId();
    final auth = ServerPairingKeyPair.newSessionId();
    final keys = await ServerPairingKeyPair.create(sessionId: id, isTv: true);
    final response = await _request('POST', '/v1/pairings', id, auth, {'publicKey': keys.publicKey});
    if (response.status != 201) throw const PairingTransportException();
    return TvPairingAttempt._(this, id, auth, keys);
  }

  Future<PhonePairingAttempt> join(ServerPairingInvite invite) async {
    // Parse and validate even when an invite was constructed programmatically.
    final checked = ServerPairingInvite.parse(invite.toUri());
    final auth = ServerPairingKeyPair.newSessionId();
    final keys = await ServerPairingKeyPair.create(sessionId: checked.sessionId, isTv: false);
    final session = await keys.connect(checked.tvPublicKey);
    final response = await _request('POST', '/v1/pairings/join', checked.sessionId, auth, {
      'publicKey': keys.publicKey,
    });
    if (response.status != 204) throw const PairingTransportException();
    return PhonePairingAttempt._(this, checked.sessionId, auth, session);
  }

  Future<({int status, String body})> _request(
    String method,
    String path,
    String id,
    String auth, [
    Map<String, Object?>? jsonBody,
  ]) async {
    final request = http.Request(method, _base.replace(path: path))
      ..followRedirects = false
      ..headers.addAll({'Cache-Control': 'no-store', 'X-Luroka-Pair-Session': id, 'X-Luroka-Pair-Auth': auth});
    if (jsonBody != null) {
      request.headers['Content-Type'] = 'application/json';
      request.body = jsonEncode(jsonBody);
    }
    final response = await _client.send(request).timeout(_timeout);
    if (response.contentLength != null && response.contentLength! > _maxResponse) {
      throw const PairingTransportException();
    }
    final bytes = <int>[];
    await for (final chunk in response.stream.timeout(_timeout)) {
      if (bytes.length + chunk.length > _maxResponse) throw const PairingTransportException();
      bytes.addAll(chunk);
    }
    return (status: response.statusCode, body: utf8.decode(bytes));
  }

  void close() {
    if (_ownsClient) _client.close();
  }
}

final class TvPairingAttempt {
  TvPairingAttempt._(this._client, this._id, this._auth, this._keys) : _age = Stopwatch()..start();
  final ServerPairingClient _client;
  final String _id;
  final String _auth;
  final ServerPairingKeyPair _keys;
  final Stopwatch _age;
  String? _phonePublic;
  PairingSession? _session;
  String? _pendingEnvelope;
  bool _polling = false;
  bool _closed = false;

  ServerPairingInvite get invite => ServerPairingInvite(sessionId: _id, tvPublicKey: _keys.publicKey);
  String? get checkCode => _session?.checkCode;
  bool get hasPayload => _pendingEnvelope != null;
  bool confirm(String code) =>
      !_closed && _age.elapsed < const Duration(minutes: 5) && (_session?.confirm(code) ?? false);

  /// Polling may receive ciphertext before the TV user confirms. It remains
  /// encrypted in memory until [takeConnection] is explicitly authorized.
  Future<void> poll() async {
    _checkAge(_age);
    if (_closed) throw StateError('Pairing is closed');
    if (_pendingEnvelope != null || _polling) return;
    _polling = true;
    try {
      final response = await _client._request('GET', '/v1/pairings', _id, _auth);
      if (_closed) return;
      if (response.status != 200) throw const PairingTransportException();
      final data = jsonDecode(response.body);
      if (data is! Map || data.keys.any((k) => k != 'peerPublicKey' && k != 'payload')) {
        throw const FormatException('Invalid pairing response');
      }
      final peer = data['peerPublicKey'];
      if (peer != null) {
        if (peer is! String || !_validValue(peer) || (_phonePublic != null && _phonePublic != peer)) {
          throw const FormatException('Invalid pairing peer');
        }
        if (_session == null) {
          _phonePublic = peer;
          _session = await _keys.connect(peer);
          if (_closed) return;
        }
      }
      if (data.containsKey('payload')) {
        if (_session == null || data['payload'] is! Map) throw const FormatException('Invalid pairing payload');
        _pendingEnvelope = jsonEncode(data['payload']);
      }
    } finally {
      _polling = false;
    }
  }

  Future<PairedServerConnection> takeConnection() async {
    _checkAge(_age);
    if (_closed) throw StateError('Pairing is closed');
    if (_session == null || _pendingEnvelope == null) throw StateError('Pairing is incomplete');
    final envelope = _pendingEnvelope!;
    final result = PairedServerConnection.fromJson(await _session!.decrypt(envelope));
    _pendingEnvelope = null;
    return result;
  }

  Future<void> cancel() async {
    _closed = true;
    _pendingEnvelope = null;
    final response = await _client._request('DELETE', '/v1/pairings', _id, _auth);
    if (response.status != 204 && response.status != 404) throw const PairingTransportException();
  }
}

final class PhonePairingAttempt {
  PhonePairingAttempt._(this._client, this._id, this._auth, this._session) : _age = Stopwatch()..start();
  final ServerPairingClient _client;
  final String _id;
  final String _auth;
  final PairingSession _session;
  final Stopwatch _age;
  bool _closed = false;
  String get checkCode => _session.checkCode;
  bool confirm(String code) => !_closed && _age.elapsed < const Duration(minutes: 5) && _session.confirm(code);

  /// This explicitly typed payload contains an access token, never a password.
  Future<void> sendConnection(PairedServerConnection connection) async {
    if (_closed) throw StateError('Pairing is closed');
    _checkAge(_age);
    final envelope = await _session.encrypt(connection.toJson());
    if (_closed) throw StateError('Pairing is closed');
    _checkAge(_age);
    final response = await _client._request(
      'PUT',
      '/v1/pairings/payload',
      _id,
      _auth,
      Map<String, Object?>.from(jsonDecode(envelope) as Map),
    );
    if (response.status != 204) throw const PairingTransportException();
  }

  /// Cancel the whole pairing, including an undelivered encrypted payload.
  /// The relay removes it atomically; if TV delivery won the race, the TV
  /// still has to pass its own authorization and server-validation checks.
  Future<void> cancel() async {
    _closed = true;
    final response = await _client._request('DELETE', '/v1/pairings/join', _id, _auth);
    if (response.status != 204 && response.status != 404) throw const PairingTransportException();
  }
}

void _checkAge(Stopwatch age) {
  if (age.elapsed >= const Duration(minutes: 5)) throw StateError('Pairing has expired');
}

/// Minimal allowlisted connection data; unknown fields and passwords are never
/// accepted by this transfer format. Connection validation is still required
/// before persisting it on the TV.
final class PairedServerConnection {
  PairedServerConnection({
    required this.backend,
    required this.baseUrl,
    required this.serverId,
    required this.serverName,
    required this.userId,
    required this.userName,
    required this.deviceId,
    required this.accessToken,
  }) {
    final uri = Uri.tryParse(baseUrl);
    if (!const {'emby', 'jellyfin'}.contains(backend) ||
        uri == null ||
        !const {'http', 'https'}.contains(uri.scheme) ||
        uri.host.isEmpty ||
        uri.userInfo.isNotEmpty ||
        uri.hasQuery ||
        uri.hasFragment ||
        [serverId, serverName, userId, userName, deviceId, accessToken].any((v) => v.isEmpty || v.length > 4096)) {
      throw const FormatException('Invalid paired connection');
    }
  }

  final String backend, baseUrl, serverId, serverName, userId, userName, deviceId, accessToken;

  Map<String, Object?> toJson() => {
    'backend': backend,
    'baseUrl': baseUrl,
    'serverId': serverId,
    'serverName': serverName,
    'userId': userId,
    'userName': userName,
    'deviceId': deviceId,
    'accessToken': accessToken,
  };

  factory PairedServerConnection.fromJson(Map<String, dynamic> value) {
    const keys = {'backend', 'baseUrl', 'serverId', 'serverName', 'userId', 'userName', 'deviceId', 'accessToken'};
    if (value.length != keys.length ||
        value.keys.any((key) => !keys.contains(key)) ||
        keys.any((key) => value[key] is! String)) {
      throw const FormatException('Invalid paired connection');
    }
    return PairedServerConnection(
      backend: value['backend'] as String,
      baseUrl: value['baseUrl'] as String,
      serverId: value['serverId'] as String,
      serverName: value['serverName'] as String,
      userId: value['userId'] as String,
      userName: value['userName'] as String,
      deviceId: value['deviceId'] as String,
      accessToken: value['accessToken'] as String,
    );
  }
}

final class PairingTransportException implements Exception {
  const PairingTransportException();
  @override
  String toString() => 'Pairing service unavailable';
}

bool _validValue(String value) {
  if (!RegExp(r'^[A-Za-z0-9_-]{43}$').hasMatch(value)) return false;
  try {
    final bytes = base64Url.decode(base64Url.normalize(value));
    return bytes.length == 32 && base64UrlEncode(bytes).replaceAll('=', '') == value;
  } on FormatException {
    return false;
  }
}
