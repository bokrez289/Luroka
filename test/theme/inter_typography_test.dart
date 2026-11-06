import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/theme/mono_theme.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    final loader = FontLoader('Inter')..addFont(rootBundle.load('assets/fonts/Inter-Regular.ttf'));
    await loader.load();
  });

  testWidgets('bundled Inter reaches headings, body, app bars and buttons in every core palette', (tester) async {
    for (final palette in [MonoPalette.light, MonoPalette.dark, MonoPalette.oled]) {
      final theme = monoTheme(palette);
      await tester.pumpWidget(
        MaterialApp(
          theme: theme,
          home: Scaffold(
            appBar: AppBar(title: const Text('Luroka')),
            body: Column(
              children: [
                Text('Season 2', style: theme.textTheme.headlineLarge),
                const Text('A modern, readable episode description.'),
                FilledButton(onPressed: () {}, child: const Text('Resume')),
              ],
            ),
          ),
        ),
      );
      for (final label in ['Luroka', 'Season 2', 'A modern, readable episode description.', 'Resume']) {
        final finder = find.text(label);
        final text = tester.widget<Text>(finder);
        final style = DefaultTextStyle.of(tester.element(finder)).style.merge(text.style);
        expect(style.fontFamily, 'Inter', reason: label);
      }
      expect(tester.takeException(), isNull);
    }
    expect(await rootBundle.loadString('assets/licenses/Inter-OFL.txt'), contains('SIL OPEN FONT LICENSE'));
    await tester.pumpWidget(const SizedBox.shrink());
  });
}
