import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/widgets/catalog_preview.dart';
import 'package:luroka/widgets/cycling_media_backdrop.dart';
import '../test_helpers/media_items.dart';

void main() {
  for (final height in [110.0, 160.0, 240.0]) {
    testWidgets('catalog artwork and text remain separate at height $height', (tester) async {
      tester.view.physicalSize = const Size(960, 540);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      final item = testMediaItem(
        title: 'A very long movie title for the living room',
        summary: 'A readable synopsis should stay beside the image, never over it. ' * 8,
        year: 2026,
      );
      await tester.pumpWidget(
        MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.3)),
            child: child!,
          ),
          home: Scaffold(
            body: SizedBox(
              height: height,
              child: CatalogPreview(
                item: item,
                artwork: item,
                titleKey: const Key('title'),
                summaryKey: const Key('summary'),
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final artwork = tester.getRect(find.byType(CyclingMediaBackdrop));
      final title = tester.getRect(find.byKey(const Key('title')));
      expect(title.left, greaterThan(artwork.right));
      expect(tester.getRect(find.byKey(const Key('summary'))).bottom, lessThanOrEqualTo(height));
      expect(tester.takeException(), isNull);
    });
  }
}
