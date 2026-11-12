import 'package:qr_flutter/qr_flutter.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:luroka/connection/connection.dart';
import 'package:luroka/media/media_browser_dialect.dart';
import 'package:luroka/profiles/active_profile_provider.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/screens/settings/phone_server_pairing_screen.dart';
import 'package:luroka/screens/settings/tv_server_pairing_dialog.dart';
import 'package:luroka/services/secure_server_pairing_client.dart';
import 'package:provider/provider.dart';

class _AdultProfile extends ChangeNotifier implements ActiveProfileProvider {
  _AdultProfile({String? initialId = 'adult', this.existingProfiles = false}) : _activeId = initialId;

  String? _activeId;
  final bool existingProfiles;
  int _generation = 0;

  @override
  String? get activeId => _activeId;

  @override
  int get identityMutationGeneration => _generation;

  @override
  bool get isInitialized => true;

  @override
  List<Profile> get profiles =>
      existingProfiles ? [Profile.local(id: 'existing', displayName: 'Existing', createdAt: DateTime(2026))] : [];

  void revokePairingAccess() {
    _activeId = 'another-adult';
    _generation++;
    notifyListeners();
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  for (final firstRun in [false, true]) {
    testWidgets(
      'phone and TV pair ${firstRun ? 'on first run' : 'with an adult profile'} without exposing credentials',
      (tester) async {
        tester.view.physicalSize = const Size(1600, 900);
        tester.view.devicePixelRatio = 1;
        addTearDown(tester.view.reset);
        String? session, tvAuth, phoneAuth, phonePublic, tvPublic;
        Map<String, dynamic>? ciphertext;
        final relayTraffic = <String>[];
        final relayHttp = MockClient((request) async {
          relayTraffic.add('${request.url} ${request.headers} ${request.body}');
          final id = request.headers['X-Luroka-Pair-Session'];
          final auth = request.headers['X-Luroka-Pair-Auth'];
          if (request.method == 'POST' && request.url.path == '/v1/pairings') {
            session = id;
            tvPublic = (jsonDecode(request.body) as Map)['publicKey'] as String;
            tvAuth = auth;
            return http.Response('', 201);
          }
          expect(id, session);
          if (request.method == 'POST' && request.url.path == '/v1/pairings/join') {
            phoneAuth = auth;
            phonePublic = (jsonDecode(request.body) as Map)['publicKey'] as String;
            return http.Response('', 204);
          }
          if (request.method == 'PUT') {
            expect(auth, phoneAuth);
            ciphertext = Map<String, dynamic>.from(jsonDecode(request.body) as Map);
            return http.Response('', 204);
          }
          if (request.method == 'GET') {
            expect(auth, tvAuth);
            return http.Response(jsonEncode({'peerPublicKey': ?phonePublic, 'payload': ?ciphertext}), 200);
          }
          expect(request.method, 'DELETE');
          return http.Response('', 204);
        });
        final serverHttp = MockClient((request) async {
          expect(request.followRedirects, isFalse);
          if (request.url.path == '/System/Info/Public') {
            expect(request.headers.containsKey('Authorization'), isFalse);
            return http.Response('{"Id":"server-id","ServerName":"Private home","ProductName":"Jellyfin Server"}', 200);
          }
          if (request.url.path == '/Users/AuthenticateByName') {
            expect(jsonDecode(request.body), {'Username': 'Alice', 'Pw': 'private-password'});
            return http.Response('{"AccessToken":"private-token","User":{"Id":"user-id","Name":"Alice"}}', 200);
          }
          expect(request.url.path, '/Users/user-id');
          expect(request.headers['X-Emby-Token'], 'private-token');
          return http.Response('{"Id":"user-id","Name":"Alice"}', 200);
        });
        final relay = ServerPairingClient.forTesting(client: relayHttp, base: Uri.https('connect.invalid'));
        final invitation = ValueNotifier<Uri?>(null);
        addTearDown(invitation.dispose);
        final profile = _AdultProfile(initialId: firstRun ? null : 'adult');
        addTearDown(profile.dispose);
        JellyfinConnection? result;
        await tester.pumpWidget(
          ChangeNotifierProvider<ActiveProfileProvider>.value(
            value: profile,
            child: Row(
              textDirection: TextDirection.ltr,
              children: [
                Expanded(
                  child: MaterialApp(
                    home: Scaffold(
                      body: Builder(
                        builder: (context) => TextButton(
                          onPressed: () async {
                            result = await showTvServerPairing(
                              context,
                              MediaBrowserDialect.jellyfin,
                              relay: relay,
                              validationClient: serverHttp,
                            );
                          },
                          child: const Text('Start TV pairing'),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialApp(
                    home: ValueListenableBuilder<Uri?>(
                      valueListenable: invitation,
                      builder: (_, value, _) => value == null
                          ? const Scaffold(body: Text('Phone ready'))
                          : PhoneServerPairingScreen(initialInvitation: value, relay: relay, serverHttp: serverHttp),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
        await tester.tap(find.text('Start TV pairing'));
        await _pumpUi(tester);
        invitation.value = ServerPairingInvite(sessionId: session!, tvPublicKey: tvPublic!).toBrowserUri();
        expect(find.byKey(const ValueKey('server-pairing-invitation')), findsNothing);
        expect(invitation.value!.scheme, 'https');
        expect(invitation.value!.host, 'connect.luroka.app');
        await _pumpUi(tester);
        if (find.text('Connect').evaluate().isNotEmpty) {
          await tester.tap(find.text('Connect'));
          await _pumpUi(tester);
        }
        await tester.pump(const Duration(seconds: 2));
        await _pumpUi(tester);
        expect(find.text('Codes match'), findsNWidgets(2));
        await tester.tap(find.text('Codes match').first);
        await tester.tap(find.text('Codes match').last);
        await _pumpUi(tester);
        await tester.enterText(find.widgetWithText(TextField, 'Server URL'), 'https://media.example');
        await tester.enterText(find.widgetWithText(TextField, 'Username'), 'Alice');
        await tester.enterText(find.widgetWithText(TextField, 'Password'), 'private-password');
        await tester.ensureVisible(find.text('Sign in and send'));
        await tester.tap(find.text('Sign in and send'));
        for (var i = 0; i < 10 && find.text('Connection sent. Finish setup on your TV.').evaluate().isEmpty; i++) {
          await _pumpUi(tester);
        }
        expect(find.text('Could not sign in or complete pairing. Check the server and try again.'), findsNothing);
        expect(find.text('Connection sent. Finish setup on your TV.'), findsOneWidget);
        await tester.pump(const Duration(seconds: 2));
        for (var i = 0; i < 10 && result == null; i++) {
          await _pumpUi(tester);
        }
        expect(result?.userName, 'Alice');
        expect(result?.accessToken, 'private-token');
        final observed = relayTraffic.join('\n');
        for (final secret in ['media.example', 'Private home', 'Alice', 'private-password', 'private-token']) {
          expect(observed, isNot(contains(secret)));
        }
      },
    );
  }

  testWidgets('TV pairing does not bypass profile selection on an existing installation', (tester) async {
    final profile = _AdultProfile(initialId: null, existingProfiles: true);
    addTearDown(profile.dispose);
    final methods = <String>[];
    final relay = ServerPairingClient.forTesting(
      client: MockClient((request) async {
        methods.add(request.method);
        return http.Response('', 201);
      }),
      base: Uri.https('connect.invalid'),
    );
    await tester.pumpWidget(
      ChangeNotifierProvider<ActiveProfileProvider>.value(
        value: profile,
        child: MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) => TextButton(
                onPressed: () => showTvServerPairing(context, MediaBrowserDialect.jellyfin, relay: relay),
                child: const Text('Start TV pairing'),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Start TV pairing'));
    await _pumpUi(tester);
    expect(find.text('Pairing is available only from an adult profile.'), findsOneWidget);
    expect(methods, isEmpty);
  });

  testWidgets('TV pairing cancels immediately when the active profile changes', (tester) async {
    final profile = _AdultProfile();
    addTearDown(profile.dispose);
    final methods = <String>[];
    final relay = ServerPairingClient.forTesting(
      client: MockClient((request) async {
        methods.add(request.method);
        return http.Response('', request.method == 'POST' ? 201 : 204);
      }),
      base: Uri.https('connect.invalid'),
    );
    await tester.pumpWidget(
      ChangeNotifierProvider<ActiveProfileProvider>.value(
        value: profile,
        child: MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) => TextButton(
                onPressed: () => showTvServerPairing(context, MediaBrowserDialect.jellyfin, relay: relay),
                child: const Text('Start TV pairing'),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Start TV pairing'));
    await _pumpUi(tester);
    expect(find.byType(QrImageView), findsOneWidget);
    profile.revokePairingAccess();
    await _pumpUi(tester);
    expect(find.text('Profile access changed. Pairing was cancelled.'), findsOneWidget);
    expect(methods, contains('DELETE'));
  });
}

Future<void> _pumpUi(WidgetTester tester) async {
  await tester.pump();
  await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 150)));
  await tester.pump(const Duration(milliseconds: 400));
}
