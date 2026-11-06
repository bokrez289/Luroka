import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_library.dart';
import 'package:luroka/widgets/tv_library_dropdown.dart';

void main() {
  final libraries = List.generate(
    8,
    (index) => MediaLibrary(
      id: '$index',
      backend: MediaBackend.jellyfin,
      title: index < 2 ? 'Movies' : 'Library $index',
      kind: MediaKind.movie,
      serverId: 'server$index',
      serverName: 'Server $index',
    ),
  );
  testWidgets('long library names wrap in the compact TV picker', (tester) async {
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    const title = 'International Animated Family Movie Collection';
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: TvLibraryDropdown(
            anchor: const Rect.fromLTWH(400, 10, 100, 36),
            libraries: [
              const MediaLibrary(
                id: '1',
                backend: MediaBackend.plex,
                title: title,
                kind: MediaKind.movie,
                serverId: 'server',
              ),
            ],
            selectedKey: null,
            loading: false,
            emptyMessage: 'Empty',
            onSelected: (_) {},
            onClose: () {},
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(tester.widget<Text>(find.text(title)).maxLines, 2);
    expect(tester.takeException(), isNull);
  });
  testWidgets('single-server gallery omits the server label', (tester) async {
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: TvLibraryDropdown(
      anchor: const Rect.fromLTWH(100, 0, 100, 50),
      libraries: const [MediaLibrary(id: '1', backend: MediaBackend.plex, title: 'Movies',
          kind: MediaKind.movie, serverId: 'server', serverName: 'PC server')],
      selectedKey: null, loading: false, emptyMessage: 'Empty', onSelected: (_) {}, onClose: () {},
    ))));
    await tester.pumpAndSettle();
    expect(find.text('Movies'), findsOneWidget);
    expect(find.text('PC server'), findsNothing);
  });
  testWidgets('a selected library below the first gallery page is scrolled into focus', (tester) async {
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final many = List.generate(
      40,
      (index) => MediaLibrary(
        id: '$index',
        title: 'Library $index',
        backend: MediaBackend.plex,
        kind: MediaKind.movie,
        serverId: 'server',
        serverName: 'My server',
      ),
    );
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          home: Scaffold(
            body: TvLibraryDropdown(
              anchor: const Rect.fromLTWH(200, 0, 100, 56),
              libraries: many,
              selectedKey: many.last.globalKey,
              loading: false,
              emptyMessage: 'Empty',
              onSelected: (_) {},
              onClose: () {},
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'tv_library_${many.last.globalKey}');
    expect(find.text('Library 39').hitTestable(), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
  for (final size in [const Size(960, 540), const Size(1280, 720)]) {
    testWidgets('centered library gallery selects and dismisses with remote at $size', (tester) async {
      tester.view.physicalSize = size;
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      String? selected;
      var closed = 0;
      await tester.pumpWidget(
        InputModeTracker(
          child: MaterialApp(
            home: Scaffold(
              body: TvLibraryDropdown(
                anchor: const Rect.fromLTWH(360, 10, 100, 36),
                libraries: libraries,
                selectedKey: libraries[1].globalKey,
                loading: false,
                emptyMessage: 'Empty',
                onSelected: (key) => selected = key,
                onClose: () => closed++,
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(FocusManager.instance.primaryFocus?.debugLabel, 'tv_library_${libraries[1].globalKey}');
      expect(find.text('Server 0'), findsWidgets);
      expect(find.text('Server 1'), findsWidgets);
      final rect = tester.getRect(find.byKey(const ValueKey('tv_library_dropdown')));
      expect(rect.center.dx, closeTo(size.width / 2, 1));
      expect(rect.top, closeTo(56, 1));
      expect(rect.width, lessThanOrEqualTo(680));
      expect(rect.bottom, lessThanOrEqualTo(size.height - 16));
      await tester.sendKeyEvent(LogicalKeyboardKey.enter);
      expect(selected, libraries[1].globalKey);
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
      await tester.pumpAndSettle();
      expect(FocusManager.instance.primaryFocus?.debugLabel, 'tv_library_server_null');
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pumpAndSettle();
      expect(FocusManager.instance.primaryFocus?.debugLabel, 'tv_library_${libraries.first.globalKey}');
      final serverChip = find.widgetWithText(ChoiceChip, 'Server 1');
      await tester.ensureVisible(serverChip);
      await tester.tap(serverChip);
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('tv_library_card_${libraries[0].globalKey}')), findsNothing);
      expect(find.byKey(ValueKey('tv_library_card_${libraries[1].globalKey}')), findsOneWidget);
      await tester.sendKeyEvent(LogicalKeyboardKey.escape);
      expect(closed, 1);
      expect(tester.takeException(), isNull);
    });
  }
}
