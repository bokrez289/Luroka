import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/widgets/luroka_launch_loader.dart';

void main() {
  Widget wrap(Widget child) => MaterialApp(
    theme: monoTheme(MonoPalette.dark),
    home: Scaffold(body: Center(child: child)),
  );

  testWidgets('renders the mark, filament and caption; settles for pumpAndSettle', (tester) async {
    await tester.pumpWidget(
      wrap(const LurokaLaunchLoader(caption: 'Loading servers', progress: null, loops: 4)),
    );

    // The loader is pumpAndSettle-safe: every animation is a finite one-shot.
    await tester.pumpAndSettle();

    expect(find.byType(CustomPaint), findsWidgets);
    expect(find.text('Loading servers'), findsOneWidget);
  });

  testWidgets('determinate progress fills the filament without any server names', (tester) async {
    await tester.pumpWidget(wrap(const LurokaLaunchLoader(progress: 0.5)));
    await tester.pumpAndSettle();

    expect(find.text('Frost'), findsNothing);
    expect(find.text('Ember'), findsNothing);
    expect(find.text('Ochre'), findsNothing);
  });

  testWidgets('parks on the lit frame when the platform disables animations', (tester) async {
    await tester.pumpWidget(
      wrap(
        MediaQuery(
          data: const MediaQueryData(disableAnimations: true),
          child: const LurokaLaunchLoader(caption: 'Static', loops: 4),
        ),
      ),
    );
    await tester.pump();
    await tester.pump(const Duration(seconds: 5));

    // No controllers tick under disableAnimations, so the frame is already
    // at rest and the caption never crossfades.
    expect(find.text('Static'), findsOneWidget);
    expect(tester.binding.hasScheduledFrame, isFalse);
  });
}
