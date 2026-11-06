import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_version.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/library_selection_panel.dart';
import 'package:luroka/widgets/movie_copy_picker.dart';

import '../test_helpers/prefs.dart';

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
    LocaleSettings.setLocaleSync(AppLocale.en);
  });
  tearDown(() => TvDetectionService.debugSetAppleTVOverride(null));

  for (final tv in [false, true]) {
    testWidgets('${tv ? 'TV' : 'phone'} opens a known single copy while other libraries are still loading', (
      tester,
    ) async {
      TvDetectionService.debugSetAppleTVOverride(tv);
      final show = MediaItem.plex(id: 'show', kind: MediaKind.show, title: 'Show', serverId: 'srv', libraryId: 'hd');
      final state = ValueNotifier(MovieCopySearchState(copies: [show], searching: true));
      addTearDown(state.dispose);
      MediaItem? chosen;
      await tester.pumpWidget(
        MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: Scaffold(
            body: Builder(
              builder: (context) => TextButton(
                onPressed: () async =>
                    chosen = await chooseProgressiveMovieCopy(context, state, openSingleImmediately: true),
                child: const Text('Open'),
              ),
            ),
          ),
        ),
      );
      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();
      expect(chosen, same(show));
      expect(find.byType(LibrarySelectionPanel), findsNothing);
    });

    testWidgets('${tv ? 'TV' : 'phone'} asks when multiple copies are already known', (tester) async {
      TvDetectionService.debugSetAppleTVOverride(tv);
      final first = MediaItem.plex(id: 'hd', kind: MediaKind.show, title: 'Show', serverId: 'srv', libraryTitle: 'HD');
      final second = MediaItem.plex(
        id: 'uhd',
        kind: MediaKind.show,
        title: 'Show',
        serverId: 'srv',
        libraryTitle: '4K',
      );
      final state = ValueNotifier(MovieCopySearchState(copies: [first, second], searching: true));
      addTearDown(state.dispose);
      MediaItem? chosen;
      await tester.pumpWidget(
        MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: Scaffold(
            body: Builder(
              builder: (context) => TextButton(
                onPressed: () async =>
                    chosen = await chooseProgressiveMovieCopy(context, state, openSingleImmediately: true),
                child: const Text('Open'),
              ),
            ),
          ),
        ),
      );
      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();
      expect(chosen, isNull);
      expect(find.byType(LibrarySelectionPanel), findsOneWidget);
      await tester.tap(find.text('4K'));
      await tester.pumpAndSettle();
      expect(chosen, same(second));
    });
  }

  for (final kind in [MediaKind.movie, MediaKind.show]) {
    testWidgets('${kind.name} source chooser preserves the exact library copy and resume position', (tester) async {
      TvDetectionService.debugSetAppleTVOverride(true);
      tester.view.physicalSize = const Size(960, 540);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      final hd = MediaItem.plex(
        id: 'hd',
        kind: kind,
        title: 'A shared title',
        serverId: 'server',
        serverName: 'Home server',
        libraryId: 'HD',
        libraryTitle: 'HD library',
        year: 2025,
        durationMs: 7200000,
        mediaVersions: const [MediaVersion(id: 'hd', videoResolution: '1080')],
      );
      final uhd = MediaItem.plex(
        id: 'uhd',
        kind: kind,
        title: hd.title,
        year: hd.year,
        serverId: hd.serverId,
        serverName: hd.serverName,
        durationMs: hd.durationMs,
        libraryId: '4K',
        libraryTitle: '4K library',
        editionTitle: 'Extended edition',
        viewOffsetMs: 3600000,
        mediaVersions: const [MediaVersion(id: 'uhd', videoResolution: '4k')],
      );
      MediaItem? chosen;
      await tester.pumpWidget(
        InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: Scaffold(
              body: Builder(
                builder: (context) => TextButton(
                  onPressed: () async {
                    chosen = await chooseMovieCopy(context, [hd, uhd]);
                  },
                  child: const Text('Open'),
                ),
              ),
            ),
          ),
        ),
      );
      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();
      expect(find.byType(LibrarySelectionPanel), findsOneWidget);
      expect(find.textContaining('Home server'), findsNothing);
      expect(find.textContaining('Extended edition'), findsOneWidget);
      expect(find.textContaining(t.common.resume), findsOneWidget);
      expect(FocusManager.instance.primaryFocus?.debugLabel, 'library_choice_${hd.globalKey}');
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pumpAndSettle();
      expect(chosen, isNull);
      await tester.sendKeyEvent(LogicalKeyboardKey.enter);
      await tester.pumpAndSettle();
      expect(chosen, same(uhd));
      expect(chosen!.viewOffsetMs, 3600000);
      expect(chosen!.libraryId, '4K');
      expect(find.byType(LibrarySelectionPanel), findsNothing);
      expect(tester.takeException(), isNull);
    });
  }
}
