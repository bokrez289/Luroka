import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/widgets/quit_luroka_dialog.dart';
import 'package:luroka/i18n/strings.g.dart';

void main() {
  for (final exit in [false, true]) {
    testWidgets('quit dialog returns $exit without overflow on a narrow screen', (tester) async {
      tester.view.physicalSize = const Size(320, 640);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      bool? result;
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) => Scaffold(
              body: TextButton(
                onPressed: () async {
                  result = await showQuitLurokaDialog(context);
                },
                child: const Text('Open'),
              ),
            ),
          ),
        ),
      );
      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();
      expect(find.text(t.startup.quitLuroka), findsOneWidget);
      expect(tester.takeException(), isNull);
      await tester.tap(find.text(exit ? t.common.exitApp : t.common.stay));
      await tester.pumpAndSettle();
      expect(result, exit);
    });
  }
}
