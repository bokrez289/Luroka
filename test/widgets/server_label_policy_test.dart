import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/utils/server_label_policy.dart';
import '../test_helpers/multi_server_fixtures.dart';

void main() {
  testWidgets('labels follow active-profile access including offline servers, not global or online count', (
    tester,
  ) async {
    final provider = testMultiServer().provider;
    provider.setExpectedVisibleServerIds({'one'});
    await tester.pumpWidget(
      ChangeNotifierProvider<MultiServerProvider>.value(
        value: provider,
        child: MaterialApp(home: Builder(builder: (context) => Text(showServerLabels(context) ? 'show' : 'hide'))),
      ),
    );
    expect(find.text('hide'), findsOneWidget);
    provider.setExpectedVisibleServerIds({'one', 'offline-two'});
    await tester.pump();
    expect(find.text('show'), findsOneWidget);
    provider.setExpectedVisibleServerIds({'different-profile-only-server'});
    await tester.pump();
    expect(find.text('hide'), findsOneWidget);
  });
}
