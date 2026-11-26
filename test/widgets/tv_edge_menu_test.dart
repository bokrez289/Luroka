import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/widgets/tv_edge_menu.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/i18n/strings.g.dart';
import '../test_helpers/prefs.dart';

void main() {
  test('TV profiles default to top bar and sidebar', () {
    expect(SettingsService.tvEdgeMenu.defaultValue, isTrue);
  });

  test('an explicit top-bar-only choice remains disabled', () async {
    resetSharedPreferencesForTest();
    final settings = await SettingsService.getInstance();
    expect(settings.read(SettingsService.tvEdgeMenu), isTrue);
    await settings.write(SettingsService.tvEdgeMenu, false);
    expect(settings.read(SettingsService.tvEdgeMenu), isFalse);
  });

  testWidgets('library entry opens focused; Right dismisses without choosing another library', (tester) async {
    final origin = FocusNode(debugLabel: 'poster');
    addTearDown(origin.dispose);
    String? destination;
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => Scaffold(
            body: TextButton(
              focusNode: origin,
              autofocus: true,
              onPressed: () async {
                destination = await showDialog<String>(
                  context: context,
                  builder: (dialog) => TvEdgeMenu(
                    current: 'library:two',
                    libraryLabel: 'Libraries',
                    entries: const [(id: 'libraries', label: 'All libraries', icon: Icons.folder)],
                    libraryEntries: const [
                      (id: 'library:one', label: 'Movies', icon: Icons.movie),
                      (id: 'library:two', label: 'Anime', icon: Icons.tv),
                    ],
                    onChoose: (id) => Navigator.pop(dialog, id),
                    onClose: () => Navigator.pop(dialog),
                  ),
                );
                origin.requestFocus();
              },
              child: const Text('Poster'),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Poster'));
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'tv_edge_library:two');
    // A delayed focus request from the underlying page must not let its top
    // navigation receive keys while the drawer is visible.
    origin.requestFocus();
    await tester.pump();
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'tv_edge_library:two');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowLeft);
    await tester.pump();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'tv_edge_library:two');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    expect(find.byType(TvEdgeMenu), findsNothing);
    expect(destination, isNull);
    expect(origin.hasFocus, isTrue);
  });

  testWidgets('Libraries is one expandable heading and Settings remains fixed', (tester) async {
    String? choice;
    await tester.pumpWidget(
      TranslationProvider(
        child: MaterialApp(
          home: Scaffold(
            body: TvEdgeMenu(
              current: 'discover',
              libraryLabel: 'Libraries',
              entries: const [
                (id: 'profile', label: 'Alex', icon: Icons.account_circle),
                (id: 'discover', label: 'Home', icon: Icons.home),
                (id: 'libraries', label: 'All libraries', icon: Icons.folder),
                (id: 'settings', label: 'Settings', icon: Icons.settings),
              ],
              libraryEntries: const [
                (id: 'library:a', label: 'Movies', icon: Icons.movie),
                (id: 'library:b', label: 'Anime', icon: Icons.tv),
              ],
              onChoose: (id) => choice = id,
              onClose: () {},
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('All libraries'), findsNothing);
    expect(find.text('Home'), findsNothing);
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'tv_edge_library:a');
    expect(find.text('Libraries'), findsOneWidget);
    expect(find.text('Movies'), findsOneWidget);
    expect(find.text('Anime'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);
    await tester.tap(find.text('Libraries'));
    await tester.pumpAndSettle();
    expect(find.text('Movies'), findsNothing);
    expect(find.text('Settings'), findsOneWidget);
    expect(choice, isNull);
    await tester.tap(find.text('Libraries'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Anime'));
    expect(choice, 'library:b');
  });
}
