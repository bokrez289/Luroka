import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/profiles/active_profile_provider.dart';
import 'package:luroka/screens/settings/pairing_link_host.dart';
import 'package:luroka/screens/settings/phone_server_pairing_screen.dart';
import 'package:luroka/services/kids_profile_service.dart';
import 'package:luroka/services/secure_server_pairing_client.dart';
import 'package:luroka/services/secure_server_pairing_crypto.dart';
import 'package:provider/provider.dart';

class _ReadyProfile extends ChangeNotifier implements ActiveProfileProvider {
  @override
  String? get activeId => 'adult';

  @override
  int get identityMutationGeneration => 0;

  @override
  bool get isInitialized => true;
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const channel = MethodChannel('com.luroka/pairing_links');
  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
    KidsProfileService.instance.resetForTesting();
  });
  testWidgets('cold invitation opens phone setup without automatically joining', (tester) async {
    final id = ServerPairingKeyPair.newSessionId();
    final key = await ServerPairingKeyPair.create(sessionId: id, isTv: true);
    final value = ServerPairingInvite(sessionId: id, tvPublicKey: key.publicKey).toUri().toString();
    var taken = false;
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, (call) async {
      if (call.method != 'takeInitialInvitation' || taken) return null;
      taken = true;
      return value;
    });
    final navigator = GlobalKey<NavigatorState>();
    final profile = _ReadyProfile();
    addTearDown(profile.dispose);
    await tester.pumpWidget(
      ChangeNotifierProvider<ActiveProfileProvider>.value(
        value: profile,
        child: MaterialApp(
          navigatorKey: navigator,
          home: const Scaffold(body: Text('Home')),
          builder: (_, child) => PairingLinkHost(navigatorKey: navigator, enabledOverride: true, child: child!),
        ),
      ),
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));
    expect(find.byType(PhoneServerPairingScreen), findsOneWidget);
    expect(find.text('Connect'), findsOneWidget, reason: 'user must explicitly join');
    await tester.pumpWidget(const SizedBox.shrink());
  });
}
