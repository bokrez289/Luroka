import 'dart:convert';

import 'package:http/http.dart' as http;

import '../connection/connection.dart';
import '../media/media_browser_dialect.dart';
import 'jellyfin_auth_header.dart';
import 'secure_server_pairing_client.dart';

/// Validate the target server and token before persisting a paired connection.
/// The phone must authenticate with a new TV-specific device ID, not reuse the
/// phone's existing session. Pairing requires trusted HTTPS; the legacy
/// allowInsecureHttp argument cannot bypass that requirement.
Future<JellyfinConnection> validatePairedServer(
  PairedServerConnection paired, {
  required http.Client client,
  bool allowInsecureHttp = false,
}) async {
  final base = Uri.parse(paired.baseUrl);
  if (base.scheme != 'https') {
    throw const FormatException('A secure server connection is required');
  }
  final prefix = base.pathSegments.where((part) => part.isNotEmpty).toList();
  Uri endpoint(List<String> suffix) => base.replace(pathSegments: [...prefix, ...suffix]);

  Future<Map<String, dynamic>> getJson(Uri uri, {Map<String, String> headers = const {}}) async {
    final request = http.Request('GET', uri)
      ..followRedirects = false
      ..headers.addAll({'Accept': 'application/json', ...headers});
    final response = await client.send(request).timeout(const Duration(seconds: 12));
    if (response.statusCode != 200 || (response.contentLength != null && response.contentLength! > 256 * 1024)) {
      throw const FormatException('Server verification failed');
    }
    final bytes = <int>[];
    await for (final chunk in response.stream.timeout(const Duration(seconds: 12))) {
      if (bytes.length + chunk.length > 256 * 1024) throw const FormatException('Server verification failed');
      bytes.addAll(chunk);
    }
    final data = jsonDecode(utf8.decode(bytes));
    if (data is! Map<String, dynamic>) throw const FormatException('Server verification failed');
    return data;
  }

  // This request deliberately carries no token. Do not send credentials to a
  // server whose identity differs from the one approved on the phone.
  final info = await getJson(endpoint(['System', 'Info', 'Public']));
  if (info['Id'] != paired.serverId) throw const FormatException('Server verification failed');
  // Server identity and tokens are verified only over trusted HTTPS.
  final product = info['ProductName'];
  if (product is String) {
    final normalized = product.toLowerCase();
    if ((normalized.contains('jellyfin') && paired.backend != 'jellyfin') ||
        (normalized.contains('emby') && paired.backend != 'emby')) {
      throw const FormatException('Server verification failed');
    }
  }
  final user = await getJson(
    endpoint(['Users', paired.userId]),
    headers: {
      'X-Emby-Token': paired.accessToken,
      'Authorization': buildJellyfinAuthHeader(
        clientName: 'Luroka TV',
        clientVersion: '1.0',
        deviceName: 'Luroka TV',
        deviceId: paired.deviceId,
        accessToken: paired.accessToken,
      ),
    },
  );
  if (user['Id'] != paired.userId || user['Name'] is! String) {
    throw const FormatException('Server verification failed');
  }
  final policy = user['Policy'];
  final now = DateTime.now();
  return JellyfinConnection(
    id: '${paired.serverId}/${paired.userId}',
    baseUrl: paired.baseUrl,
    serverName: info['ServerName'] is String ? info['ServerName'] as String : paired.serverName,
    serverMachineId: paired.serverId,
    userId: paired.userId,
    userName: user['Name'] as String,
    accessToken: paired.accessToken,
    deviceId: paired.deviceId,
    dialect: paired.backend == 'emby' ? MediaBrowserDialect.emby : MediaBrowserDialect.jellyfin,
    isAdministrator: policy is Map && policy['IsAdministrator'] == true,
    primaryImageTag: JellyfinConnection.readPrimaryImageTag(user),
    createdAt: now,
    lastAuthenticatedAt: now,
  );
}
