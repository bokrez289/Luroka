import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:luroka/services/secure_server_pairing_client.dart';
import 'package:luroka/services/cloud_backup_recovery.dart';

void main() {
  test('recovery code travels encrypted and requires confirmation', () async {
    String? session, tvAuth, phoneAuth, peer;
    Map<String, dynamic>? ciphertext;
    final observed = <String>[];
    final transport = MockClient((request) async {
      observed.add('${request.url} ${request.headers} ${request.body}');
      final id = request.headers['X-Luroka-Pair-Session'];
      final auth = request.headers['X-Luroka-Pair-Auth'];
      if (request.method == 'POST' && request.url.path == '/v1/pairings') {
        session = id;
        tvAuth = auth;
        return http.Response('', 201);
      }
      expect(id, session);
      if (request.method == 'POST') {
        phoneAuth = auth;
        peer = (jsonDecode(request.body) as Map)['publicKey'] as String;
        return http.Response('', 204);
      }
      if (request.method == 'PUT') {
        expect(auth, phoneAuth);
        ciphertext = Map<String, dynamic>.from(jsonDecode(request.body) as Map);
        return http.Response('', 204);
      }
      expect(auth, tvAuth);
      return http.Response(jsonEncode({'peerPublicKey': peer, 'payload': ?ciphertext}), 200);
    });
    final client = ServerPairingClient.forTesting(client: transport, base: Uri.https('connect.invalid'));
    final tv = await client.createTvAttempt();
    final invite = ServerPairingInvite(
      sessionId: tv.invite.sessionId,
      tvPublicKey: tv.invite.tvPublicKey,
      secret: tv.invite.secret,
      recovery: true,
    );
    final parsed = ServerPairingInvite.parse(invite.toBrowserUri());
    expect(parsed.recovery, isTrue);
    final phone = await client.join(parsed);
    await tv.poll();
    expect(phone.checkCode, tv.checkCode);
    final code = CloudBackupRecoveryCode.generate().reveal();
    await expectLater(phone.sendRecoveryCode(code), throwsStateError);
    expect(phone.confirm(phone.checkCode), isTrue);
    await phone.sendRecoveryCode(code);
    await tv.poll();
    await expectLater(tv.takeRecoveryCode(), throwsStateError);
    expect(tv.confirm(tv.checkCode!), isTrue);
    expect(await tv.takeRecoveryCode(), code);
    await expectLater(tv.takeRecoveryCode(), throwsStateError);
    expect(observed.join('\n'), isNot(contains(code)));
  });
  test('phone and TV exchange connection data only after matching confirmation', () async {
    String? tvAuth, phoneAuth, session, phoneKey;
    Map<String, dynamic>? envelope;
    final observed = <String>[];
    final transport = MockClient((request) async {
      observed.add('${request.url} ${request.headers} ${request.body}');
      expect(request.url.query, isEmpty);
      expect(request.url.fragment, isEmpty);
      expect(request.followRedirects, isFalse);
      final id = request.headers['X-Luroka-Pair-Session'];
      final auth = request.headers['X-Luroka-Pair-Auth'];
      if (request.method == 'POST' && request.url.path == '/v1/pairings') {
        session = id;
        tvAuth = auth;
        return http.Response('', 201);
      }
      expect(id, session);
      if (request.method == 'POST' && request.url.path == '/v1/pairings/join') {
        phoneAuth = auth;
        phoneKey = (jsonDecode(request.body) as Map)['publicKey'] as String;
        return http.Response('', 204);
      }
      if (request.method == 'PUT') {
        expect(auth, phoneAuth);
        envelope = Map<String, dynamic>.from(jsonDecode(request.body) as Map);
        return http.Response('', 204);
      }
      if (request.method == 'GET') {
        expect(auth, tvAuth);
        return http.Response(jsonEncode({'peerPublicKey': phoneKey, 'payload': ?envelope}), 200);
      }
      expect(request.method, 'DELETE');
      expect(auth, tvAuth);
      return http.Response('', 204);
    });
    final client = ServerPairingClient.forTesting(client: transport, base: Uri.https('connect.invalid'));
    final tv = await client.createTvAttempt();
    final invite = ServerPairingInvite.parse(tv.invite.toUri());
    expect(invite.toUri().toString(), isNot(contains('private-server')));
    final phone = await client.join(invite);
    await tv.poll();
    expect(tv.checkCode, phone.checkCode);
    final connection = PairedServerConnection(
      backend: 'emby',
      baseUrl: 'https://private-server.example',
      serverId: 'private-id',
      serverName: 'Private name',
      userId: 'private-user-id',
      userName: 'Alice',
      deviceId: 'private-device-id',
      accessToken: 'secret-token',
    );
    await expectLater(phone.sendConnection(connection), throwsStateError);
    expect(phone.confirm(phone.checkCode), isTrue);
    await phone.sendConnection(connection);
    await tv.poll();
    await expectLater(tv.takeConnection(), throwsStateError);
    expect(tv.confirm(tv.checkCode!), isTrue);
    final restored = await tv.takeConnection();
    expect(restored.toJson(), connection.toJson());
    await expectLater(tv.takeConnection(), throwsStateError);
    await tv.cancel();
    final network = observed.join('\n');
    for (final secret in [
      'private-server',
      'private-id',
      'Private name',
      'Alice',
      'private-device-id',
      'secret-token',
    ]) {
      expect(network, isNot(contains(secret)));
    }
  });

  test('rejects unexpected connection fields and unsafe addresses', () {
    expect(() => ServerPairingInvite.parse(Uri.parse('https://example.com/?secret=bad')), throwsFormatException);
    expect(() => PairedServerConnection.fromJson({'password': 'private'}), throwsFormatException);
    expect(
      () => PairedServerConnection(
        backend: 'jellyfin',
        baseUrl: 'https://u:p@example.com',
        serverId: 'server',
        serverName: 'server',
        userId: 'user',
        userName: 'user',
        deviceId: 'device',
        accessToken: 'token',
      ),
      throwsFormatException,
    );
  });
}
