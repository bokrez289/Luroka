import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/widgets/tv_context_hints.dart';

void main() {
  setUpAll(() => LocaleSettings.setLocaleSync(AppLocale.en));

  testWidgets('names the remote keys: OK select, arrows browse, back', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: TvContextHints()));

    expect(find.text('OK'), findsOneWidget);
    expect(find.text(t.tvHints.select), findsOneWidget);
    expect(find.text(t.tvHints.browse), findsOneWidget);
    expect(find.text(t.tvHints.back), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
