import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/providers/companion_remote_provider.dart';
import 'package:luroka/services/companion_remote/companion_remote_peer_service.dart';
import 'package:luroka/services/settings_mutation_service.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/widgets/setting_tile.dart';
import 'package:provider/provider.dart';

import '../test_helpers/prefs.dart';

/// A companion host that declines to apply the setting: `stopHostServer`
/// leaves the server running, which is what `applyCompanionRemoteServerSetting`
/// reports as `false`. Crypto-not-ready and a caught start failure reach the
/// same return, so this stands in for all three.
class _DecliningCompanionRemoteProvider extends CompanionRemoteProvider {
  _DecliningCompanionRemoteProvider() : super.forTesting(peerServiceFactory: CompanionRemotePeerService.new);
  int calls = 0;

  @override
  bool get isHostServerRunning => true;

  @override
  Future<void> stopHostServer({void Function()? checkCurrent}) async {
    calls++;
    checkCurrent?.call();
  }

  @override
  Future<void> startHostServer({void Function()? checkCurrent}) async {
    calls++;
    checkCurrent?.call();
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late _DecliningCompanionRemoteProvider companion;

  setUp(() async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    final settings = await SettingsService.getInstance();
    // The disable path: the effect asks the host to stop, and it doesn't.
    await settings.write(SettingsService.enableCompanionRemoteServer, false);
    companion = _DecliningCompanionRemoteProvider();
  });

  tearDown(() => companion.dispose());

  Future<BuildContext> pumpHost(WidgetTester tester, {Widget? child}) async {
    late BuildContext captured;
    await tester.pumpWidget(
      ChangeNotifierProvider<CompanionRemoteProvider>.value(
        value: companion,
        child: MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                captured = context;
                return child ?? const SizedBox.shrink();
              },
            ),
          ),
        ),
      ),
    );
    return captured;
  }

  testWidgets('the retired remote setting does not start or stop a host', (tester) async {
    final context = await pumpHost(tester);

    final failure = await const SettingsMutationService().applyEffects(
      context,
      SettingsService.enableCompanionRemoteServer,
      rebuildRoot: false,
    );

    expect(failure, isNull);
    expect(companion.calls, 0);
  });

  testWidgets('bulk settings replay does not restart the retired host', (tester) async {
    final context = await pumpHost(tester);

    final failures = await const SettingsMutationService().applyStoredEffects(
      context,
      previousRootConfiguration: SettingsMutationService.captureRootConfiguration(),
    );

    expect(failures, isEmpty);
    expect(companion.calls, 0);
  });

  testWidgets('the legacy preference has no runtime effect when toggled', (tester) async {
    await pumpHost(
      tester,
      child: SettingSwitchTile(
        pref: SettingsService.enableCompanionRemoteServer,
        icon: Icons.phone_android,
        title: 'Companion Remote Server',
      ),
    );

    // Switch it on, then off: the off write is the one whose effect declines.
    await tester.tap(find.byType(Switch));
    await tester.pumpAndSettle();
    await tester.tap(find.byType(Switch));
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
    expect(companion.calls, 0);
  });
}
