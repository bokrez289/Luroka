import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

import 'jellyfin_auth_header.dart';
import 'secure_server_pairing_client.dart';

/// Authenticates a new TV-specific session from the phone. Neither password
/// nor token is sent to the Luroka relay. HTTP server access is refused unless
/// the caller explicitly explains and receives approval for its risks.
Future<PairedServerConnection> authenticateServerForTv({
  required http.Client client,
  required String backend,
  required String baseUrl,
  required String username,
  required String password,
  bool allowInsecureHttp = false,
}) async {
  final base = Uri.tryParse(baseUrl.trim());
  if (!const {'emby', 'jellyfin'}.contains(backend) ||
      base == null ||
      base.host.isEmpty ||
      base.userInfo.isNotEmpty ||
      base.hasQuery ||
      base.hasFragment ||
      (base.scheme != 'https' && !(base.scheme == 'http' && allowInsecureHttp)) ||
      username.trim().isEmpty) {
    throw const FormatException('Invalid server connection');
  }
  final prefix = base.pathSegments.where((part) => part.isNotEmpty).toList();
  Uri endpoint(List<String> suffix) => base.replace(pathSegments: [...prefix, ...suffix]);
  Future<Map<String, dynamic>> requestJson(
    String method,
    Uri url, {
    Map<String, String> headers = const {},
    String? body,
  }) async {
    final request = http.Request(method, url)
      ..followRedirects = false
      ..headers.addAll({'Accept': 'application/json', ...headers});
    if (body != null) {
      request.headers['Content-Type'] = 'application/json';
      request.body = body;
    }
    final response = await client.send(request).timeout(const Duration(seconds: 12));
    if (response.statusCode != 200 || (response.contentLength != null && response.contentLength! > 256 * 1024)) {
      throw const FormatException('Server authentication failed');
    }
    final bytes = <int>[];
    await for (final chunk in response.stream.timeout(const Duration(seconds: 12))) {
      if (bytes.length + chunk.length > 256 * 1024) throw const FormatException('Server authentication failed');
      bytes.addAll(chunk);
    }
    final data = jsonDecode(utf8.decode(bytes));
    if (data is! Map<String, dynamic>) throw const FormatException('Server authentication failed');
    return data;
  }

  final info = await requestJson('GET', endpoint(['System', 'Info', 'Public']));
  final serverId = info['Id'];
  final serverName = info['ServerName'];
  if (serverId is! String || serverId.isEmpty || serverName is! String || serverName.isEmpty) {
    throw const FormatException('Server authentication failed');
  }
  final product = info['ProductName'];
  if (product is String) {
    final value = product.toLowerCase();
    if ((value.contains('emby') && backend != 'emby') || (value.contains('jellyfin') && backend != 'jellyfin')) {
      throw const FormatException('Server authentication failed');
    }
  }
  // A fresh identity is sent during auth and transferred to the TV alongside
  // the token. It is never the phone's existing media-server device ID.
  final deviceId = const Uuid().v4();
  final response = await requestJson(
    'POST',
    endpoint(['Users', 'AuthenticateByName']),
    headers: {
      'Authorization': buildJellyfinAuthHeader(
        clientName: 'Luroka TV',
        clientVersion: '1.0',
        deviceName: 'Luroka TV',
        deviceId: deviceId,
      ),
    },
    body: jsonEncode({'Username': username, 'Pw': password}),
  );
  final user = response['User'];
  final token = response['AccessToken'];
  if (user is! Map || user['Id'] is! String || user['Name'] is! String || token is! String || token.isEmpty) {
    throw const FormatException('Server authentication failed');
  }
  return PairedServerConnection(
    backend: backend,
    baseUrl: base.toString(),
    serverId: serverId,
    serverName: serverName,
    userId: user['Id'] as String,
    userName: user['Name'] as String,
    deviceId: deviceId,
    accessToken: token,
  );
}
