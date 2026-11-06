import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_library.dart';
import 'package:luroka/screens/libraries/mobile_library_picker.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import '../../test_helpers/prefs.dart';

void main() {
  testWidgets('phone library picker searches and returns the selected scoped library', (tester) async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
    TvDetectionService.debugSetAppleTVOverride(false);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final libraries = [
      for (var i = 0; i < 8; i++)
        MediaLibrary(id: '$i', title: i == 6 ? 'Anime movies' : 'Library $i', backend: MediaBackend.plex),
    ];
    String? selected;
    await tester.pumpWidget(
      MaterialApp(
        theme: monoTheme(MonoPalette.lurokaCoral),
        home: Scaffold(
          body: Builder(
            builder: (context) => TextButton(
              onPressed: () async => selected = await showModalBottomSheet<String>(
                context: context,
                isScrollControlled: true,
                builder: (_) => MobileLibraryPicker(libraries: libraries, selectedKey: libraries.first.globalKey),
              ),
              child: const Text('Open'),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'anime');
    await tester.pumpAndSettle();
    expect(find.text('Anime movies'), findsOneWidget);
    expect(find.text('Library 0'), findsNothing);
    await tester.tap(find.text('Anime movies'));
    await tester.pumpAndSettle();
    expect(selected, libraries[6].globalKey);
    expect(tester.takeException(), isNull);
  });
}
