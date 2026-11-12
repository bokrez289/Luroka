import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:luroka/services/pairing_phone_auth.dart';

void main() {
  test('authenticates directly without redirects using a new TV device identity', () async {
    final seen = <http.Request>[];
    final client = MockClient((request) async {
      seen.add(request);
      expect(request.followRedirects, isFalse);
      if (request.method == 'GET') {
        expect(request.headers.containsKey('Authorization'), isFalse);
        return http.Response('{"Id":"server","ServerName":"Home","ProductName":"Emby Server"}', 200);
      }
      expect(request.url.host, 'media.example');
      expect(jsonDecode(request.body), {'Username': 'private-user', 'Pw': 'private-password'});
      return http.Response('{"AccessToken":"private-token","User":{"Id":"user","Name":"User"}}', 200);
    });
    final result = await authenticateServerForTv(
      client: client,
      backend: 'emby',
      baseUrl: 'https://media.example',
      username: 'private-user',
      password: 'private-password',
    );
    expect(result.accessToken, 'private-token');
    expect(result.deviceId, isNotEmpty);
    expect(seen.last.headers['Authorization'], contains(result.deviceId));
    expect(seen, hasLength(2));
  });

  test('rejects insecure URLs by default and never follows a redirect with a password', () async {
    var calls = 0;
    final client = MockClient((request) async {
      calls++;
      return calls == 1
          ? http.Response('{"Id":"server","ServerName":"Home"}', 200)
          : http.Response('', 302, headers: {'location': 'https://attacker.invalid'});
    });
    await expectLater(
      authenticateServerForTv(
        client: client,
        backend: 'emby',
        baseUrl: 'http://media.example',
        username: 'user',
        password: 'password',
      ),
      throwsFormatException,
    );
    expect(calls, 0);
    await expectLater(
      authenticateServerForTv(
        client: client,
        backend: 'emby',
        baseUrl: 'https://media.example',
        username: 'user',
        password: 'password',
      ),
      throwsFormatException,
    );
    expect(calls, 2);
  });
}
