import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/screens/offline_tv_recovery_screen.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';

void main() {
  setUp(() {
    LocaleSettings.setLocaleSync(AppLocale.en);
    TvDetectionService.debugSetAppleTVOverride(true);
  });
  tearDown(() => TvDetectionService.debugSetAppleTVOverride(null));

  testWidgets('Apple TV remote reaches reconnect and add-server actions', (tester) async {
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    var retries = 0;
    var additions = 0;
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: OfflineTvRecoveryScreen(
            reconnecting: false,
            onReconnect: () => retries++,
            onAddServer: () => additions++,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text(t.offlineRecovery.appleTvDescription), findsOneWidget);
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'offline_tv_reconnect');
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pump();
    expect(retries, 1);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'offline_tv_secondary');
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pump();
    expect(additions, 1);
    expect(tester.takeException(), isNull);
  });

  testWidgets('failed retry restores remote focus when reconnecting ends', (tester) async {
    var reconnecting = false;
    late StateSetter update;
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: StatefulBuilder(
            builder: (context, setState) {
              update = setState;
              return OfflineTvRecoveryScreen(
                reconnecting: reconnecting,
                onReconnect: () => setState(() => reconnecting = true),
                onAddServer: () {},
              );
            },
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pump();
    expect(find.text(t.offlineRecovery.retrying), findsOneWidget);
    update(() => reconnecting = false);
    await tester.pump();
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'offline_tv_reconnect');
  });

  testWidgets('Kids can ask a parent to switch profiles without an add-server action', (tester) async {
    var switches = 0;
    await tester.pumpWidget(
      MaterialApp(
        theme: monoTheme(MonoPalette.dark),
        home: OfflineTvRecoveryScreen(reconnecting: false, onReconnect: () {}, onSwitchProfile: () => switches++),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text(t.offlineRecovery.kidsDescription), findsOneWidget);
    expect(find.text(t.offlineRecovery.addServer), findsNothing);
    await tester.tap(find.byKey(const ValueKey('apple_tv_offline_secondary')));
    expect(switches, 1);
  });

  testWidgets('recovery remains usable on a small TV with enlarged text', (tester) async {
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(
      MaterialApp(
        theme: monoTheme(MonoPalette.dark),
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.6)),
          child: child!,
        ),
        home: OfflineTvRecoveryScreen(reconnecting: false, onReconnect: () {}, onAddServer: () {}),
      ),
    );
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byKey(const ValueKey('apple_tv_offline_secondary')));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });
}
