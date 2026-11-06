import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/focus/focusable_wrapper.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/library_choice_grid.dart';
import 'package:luroka/widgets/library_selection_panel.dart';

void main() {
  tearDown(() => TvDetectionService.debugSetAppleTVOverride(null));

  Future<void> mount(
    WidgetTester tester, {
    Size size = const Size(960, 540),
    double scale = 1,
    required List<LibraryChoice> choices,
    VoidCallback? onClose,
  }) async {
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    TvDetectionService.debugSetAppleTVOverride(size.width >= 700);
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(scale)),
            child: child!,
          ),
          home: Scaffold(
            body: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 700, maxHeight: size.height * 0.82),
                child: LibrarySelectionPanel(
                  title: 'Select library',
                  subtitle: 'Home server',
                  choices: choices,
                  onClose: onClose ?? () {},
                  previewBuilder: (context, choice) => LibrarySelectionPreview(
                    title: choice.title,
                    artwork: const ColoredBox(key: ValueKey('cover_art'), color: Colors.blue),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets(
    'TV uses a smaller landscape preview, starts at current library and scrolls in both directions without activation',
    (tester) async {
      final selected = <int>[];
      var closed = false;
      final choices = List.generate(
        24,
        (index) => LibraryChoice(
          id: '$index',
          title: 'Archive $index',
          icon: Icons.video_library_outlined,
          selected: index == 10,
          onSelected: () => selected.add(index),
        ),
      );
      await mount(tester, choices: choices, onClose: () => closed = true);
      expect(FocusManager.instance.primaryFocus?.debugLabel, 'library_choice_10');
      final preview = tester.getSize(find.byType(LibrarySelectionPreview));
      final list = tester.getSize(find.byKey(const ValueKey('library_selection_list')));
      expect(list.width, greaterThan(preview.width * 1.7));
      expect(preview.width, lessThan(list.width));
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pumpAndSettle();
      expect(tester.widget<FocusableWrapper>(find.byKey(const ValueKey('library_choice_10'))).checked, isTrue);
      expect(tester.widget<FocusableWrapper>(find.byKey(const ValueKey('library_choice_11'))).checked, isFalse);
      for (var i = 0; i < 5; i++) {
        await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
        await tester.pumpAndSettle();
      }
      for (var i = 0; i < 13; i++) {
        await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
        await tester.pumpAndSettle();
      }
      expect(FocusManager.instance.primaryFocus?.debugLabel, 'library_choice_3');
      expect(selected, isEmpty);
      final row = tester.getRect(find.byKey(const ValueKey('library_choice_3')));
      final viewport = tester.getRect(find.byKey(const ValueKey('library_selection_list')));
      expect(row.top, greaterThanOrEqualTo(viewport.top));
      expect(row.bottom, lessThanOrEqualTo(viewport.bottom));
      await tester.sendKeyEvent(LogicalKeyboardKey.enter);
      expect(selected, [3]);
      await tester.sendKeyEvent(LogicalKeyboardKey.escape);
      expect(closed, isTrue);
      expect(tester.takeException(), isNull);
    },
  );

  for (final (size, scale) in [
    (const Size(320, 640), 1.5),
    (const Size(640, 320), 1.0),
    (const Size(960, 540), 1.5),
    (const Size(1280, 720), 2.0),
  ]) {
    testWidgets('chooser fits $size with text scale $scale and long names', (tester) async {
      await mount(
        tester,
        size: size,
        scale: scale,
        choices: [
          for (var i = 0; i < 12; i++)
            LibraryChoice(
              id: '$i',
              title: 'A very long custom library name that must remain accessible $i',
              icon: Icons.folder_outlined,
              subtitle: 'Another home server with a long display name',
              detail: '4K · HDR · Dolby Atmos · Extended edition',
              onSelected: () {},
            ),
        ],
      );
      expect(find.byKey(const ValueKey('library_selection_list')), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }
}
