import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/utils/error_dialog.dart';

void main() {
  testWidgets('error dialog focuses OK and dismisses with remote select', (tester) async {
    await tester.pumpWidget(MaterialApp(home: Builder(builder: (context) => Scaffold(
      body: TextButton(onPressed: () => showErrorDialog(context, 'Connection failed'), child: const Text('Open')),
    ))));
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    expect(find.text('Connection failed'), findsOneWidget);
    final button = tester.widget<TextButton>(find.widgetWithText(TextButton, t.common.ok));
    expect(button.autofocus, isTrue);
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    expect(find.text('Connection failed'), findsNothing);
  });
}
