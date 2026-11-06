import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_library.dart';
import 'package:luroka/screens/libraries/library_quick_picker_sheet.dart';

void main() {
  testWidgets('groups libraries by server and reports selection', (tester) async {
    final libraries = [
      const MediaLibrary(
        id: '1',
        backend: MediaBackend.plex,
        title: 'Movies',
        kind: MediaKind.movie,
        serverId: 'plex-server',
        serverName: 'Plex Server',
      ),
      const MediaLibrary(
        id: '2',
        backend: MediaBackend.jellyfin,
        title: 'Shows',
        kind: MediaKind.show,
        serverId: 'jellyfin-server',
        serverName: 'Jellyfin Server',
      ),
    ];
    String? selectedKey;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: LibraryQuickPickerSheet(
            libraries: libraries,
            selectedLibraryKey: libraries.last.globalKey,
            isLoading: false,
            groupByServer: true,
            emptyMessage: 'No libraries',
            onSelected: (key) => selectedKey = key,
          ),
        ),
      ),
    );

    expect(find.text('Plex Server'), findsOneWidget);
    expect(find.text('Jellyfin Server'), findsOneWidget);
    expect(find.text('Movies'), findsWidgets);
    expect(find.text('Shows'), findsWidgets);

    await tester.tap(find.byKey(ValueKey('library_quick_picker_${libraries.first.globalKey}')));
    expect(selectedKey, libraries.first.globalKey);
  });

  testWidgets('shows per-row server names without grouping when multiple servers are visible', (tester) async {
    final libraries = [
      const MediaLibrary(
        id: '1',
        backend: MediaBackend.plex,
        title: 'Movies',
        kind: MediaKind.movie,
        serverId: 'plex-server',
        serverName: 'Plex Server',
      ),
      const MediaLibrary(
        id: '2',
        backend: MediaBackend.jellyfin,
        title: 'Shows',
        kind: MediaKind.show,
        serverId: 'jellyfin-server',
        serverName: 'Jellyfin Server',
      ),
    ];

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: LibraryQuickPickerSheet(
            libraries: libraries,
            selectedLibraryKey: null,
            isLoading: false,
            groupByServer: false,
            emptyMessage: 'No libraries',
            onSelected: (_) {},
          ),
        ),
      ),
    );

    expect(find.text('Movies'), findsWidgets);
    expect(find.text('Shows'), findsWidgets);
    expect(find.text('Plex Server'), findsOneWidget);
    expect(find.text('Jellyfin Server'), findsOneWidget);
  });
}
