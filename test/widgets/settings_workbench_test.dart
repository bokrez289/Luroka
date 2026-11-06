import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/focusable_list_tile.dart';
import 'package:luroka/widgets/settings_workbench.dart';

void main() {
  tearDown(() => TvDetectionService.debugSetAppleTVOverride(null));

  for (final tv in [true, false]) {
    testWidgets('${tv ? 'TV' : 'phone'} menus open one section and return to the same entry', (tester) async {
      tester.view.physicalSize = tv ? const Size(960, 540) : const Size(320, 568);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      TvDetectionService.debugSetAppleTVOverride(tv);
      final sound = FocusNode(debugLabel: 'SoundAction');
      final hidden = FocusNode(debugLabel: 'HiddenWatchAction');
      addTearDown(sound.dispose);
      addTearDown(hidden.dispose);
      var actions = 0;
      await tester.pumpWidget(
        InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.oled),
            home: Scaffold(
              body: Center(
                child: SizedBox(
                  width: tv ? 700 : 320,
                  height: tv ? 420 : 500,
                  child: SettingsWorkbench(
                    sections: [
                      SettingsWorkbenchSection(
                        id: 'watch',
                        title: 'Watch',
                        icon: Symbols.play_arrow_rounded,
                        description: 'Choose your playback pace.',
                        children: [
                          for (var i = 0; i < 8; i++)
                            FocusableListTile(
                              focusNode: i == 0 ? hidden : null,
                              title: Text('Watch option $i'),
                              onTap: () {},
                            ),
                        ],
                      ),
                      SettingsWorkbenchSection(
                        id: 'sound',
                        title: 'Sound',
                        icon: Symbols.speaker_rounded,
                        description: 'Your listening experience.',
                        children: [
                          FocusableListTile(
                            focusNode: sound,
                            title: const Text('Choose audio'),
                            onTap: () => actions++,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      final tab = find.byWidgetPredicate(
        (widget) => widget is FocusableListTile && widget.focusNode?.debugLabel == 'SettingsEntry:sound',
      );
      if (tv) {
        tester.widget<FocusableListTile>(tab).focusNode!.requestFocus();
        await tester.pump();
        expect(find.text('Choose audio'), findsNothing);
        await tester.sendKeyEvent(LogicalKeyboardKey.enter);
      } else {
        await tester.tap(tab);
      }
      await tester.pumpAndSettle();
      expect(sound.hasFocus, isTrue);
      expect(hidden.canRequestFocus, isFalse);
      hidden.requestFocus();
      await tester.pump();
      expect(sound.hasFocus, isTrue, reason: 'inactive pages cannot steal remote focus');
      final rect = tester.getRect(find.text('Choose audio'));
      expect(rect.bottom, lessThan(tester.view.physicalSize.height));
      expect(rect.top, greaterThanOrEqualTo(0));
      await tester.sendKeyEvent(LogicalKeyboardKey.enter);
      await tester.pumpAndSettle();
      expect(actions, 1);
      if (tv) {
        await tester.sendKeyEvent(LogicalKeyboardKey.arrowLeft);
        await tester.pumpAndSettle();
        expect(tester.widget<FocusableListTile>(tab).focusNode!.hasFocus, isTrue);
        expect(find.text('Choose audio'), findsNothing);
      }
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
    });
  }
}
