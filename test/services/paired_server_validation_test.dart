import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:luroka/services/paired_server_validation.dart';
import 'package:luroka/services/secure_server_pairing_client.dart';

PairedServerConnection connection({String url = 'https://media.example/emby'}) => PairedServerConnection(
  backend: 'emby',
  baseUrl: url,
  serverId: 'server-id',
  serverName: 'Server',
  userId: 'user-id',
  userName: 'User',
  deviceId: 'new-tv-device-id',
  accessToken: 'private-token',
);

void main() {
  test('checks server identity without credentials before authenticating the token', () async {
    final seen = <http.Request>[];
    final client = MockClient((request) async {
      seen.add(request);
      expect(request.followRedirects, isFalse);
      if (seen.length == 1) {
        expect(request.url.path, '/emby/System/Info/Public');
        expect(request.headers.containsKey('Authorization'), isFalse);
        expect(request.headers.containsKey('X-Emby-Token'), isFalse);
        return http.Response(
          jsonEncode({'Id': 'server-id', 'ServerName': 'Real server', 'ProductName': 'Emby Server'}),
          200,
        );
      }
      expect(request.url.path, '/emby/Users/user-id');
      expect(request.headers['X-Emby-Token'], 'private-token');
      return http.Response(
        jsonEncode({
          'Id': 'user-id',
          'Name': 'Real user',
          'Policy': {'IsAdministrator': false},
        }),
        200,
      );
    });
    final result = await validatePairedServer(connection(), client: client);
    expect(result.serverName, 'Real server');
    expect(result.userName, 'Real user');
    expect(result.deviceId, 'new-tv-device-id');
    expect(seen, hasLength(2));
  });

  test('never sends token after server mismatch, redirect, or unapproved HTTP', () async {
    var calls = 0;
    final mismatch = MockClient((request) async {
      calls++;
      expect(request.headers.containsKey('Authorization'), isFalse);
      expect(request.headers.containsKey('X-Emby-Token'), isFalse);
      return http.Response('{"Id":"different-server"}', 200);
    });
    await expectLater(validatePairedServer(connection(), client: mismatch), throwsFormatException);
    expect(calls, 1);
    calls = 0;
    await expectLater(
      validatePairedServer(connection(url: 'http://media.example'), client: mismatch),
      throwsFormatException,
    );
    expect(calls, 0);
    final insecure = MockClient((request) async {
      calls++;
      if (request.url.path.endsWith('/Public')) {
        expect(request.headers.containsKey('X-Emby-Token'), isFalse);
        return http.Response('{"Id":"server-id"}', 200);
      }
      return http.Response('{"Id":"user-id","Name":"Alice"}', 200);
    });
    await expectLater(
      validatePairedServer(connection(url: 'http://media.example'), client: insecure, allowInsecureHttp: true),
      throwsFormatException,
    );
    expect(calls, 0);
    final redirect = MockClient(
      (request) async => http.Response('', 302, headers: {'location': 'https://attacker.invalid'}),
    );
    await expectLater(validatePairedServer(connection(), client: redirect), throwsFormatException);
  });
}
