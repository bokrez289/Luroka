import 'dart:convert';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:luroka/database/app_database.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/services/plex_api_cache.dart';
import 'package:luroka/services/jellyfin_api_cache.dart';
import 'package:luroka/services/file_picker_service.dart';
import 'package:luroka/widgets/focusable_list_tile.dart';
import 'package:luroka/widgets/video_controls/models/track_controls_state.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/overlay_sheet.dart';
import 'package:luroka/widgets/video_controls/sheets/subtitle_search_sheet.dart';
import 'package:provider/provider.dart';

import '../test_helpers/backend_client_fixtures.dart';
import '../test_helpers/multi_server_fixtures.dart';
import '../test_helpers/theme.dart';

class _SubtitlePicker implements FilePickerDelegate {
  _SubtitlePicker(this.path, this.size);
  final String path;
  final int size;
  @override
  Future<FilePickerResult?> pickFiles({FileType type = FileType.any, List<String>? allowedExtensions, bool withData = false}) async =>
      FilePickerResult([PlatformFile(name: 'test.srt', path: path, size: size)]);
  @override
  Future<String?> getDirectoryPath({String? dialogTitle}) async => null;
  @override
  Future<String?> saveFile({String? dialogTitle, String? fileName, dynamic bytes, FileType type = FileType.any, List<String>? allowedExtensions}) async => null;
}

void main() {
  group('resolveSubtitleSearchLanguageCode', () {
    test('prefers saved language over system language', () {
      expect(resolveSubtitleSearchLanguageCode(savedLanguageCode: 'fr', systemLocale: const Locale('nl')), 'fr');
    });

    test('normalizes saved locale or three-letter language', () {
      expect(resolveSubtitleSearchLanguageCode(savedLanguageCode: 'pt_BR', systemLocale: const Locale('nl')), 'pt');
      expect(resolveSubtitleSearchLanguageCode(savedLanguageCode: 'eng', systemLocale: const Locale('nl')), 'en');
    });

    test('falls back to system language when saved language is invalid', () {
      expect(resolveSubtitleSearchLanguageCode(savedLanguageCode: 'zz', systemLocale: const Locale('nl')), 'nl');
    });

    test('falls back to English when saved and system languages are invalid', () {
      expect(resolveSubtitleSearchLanguageCode(savedLanguageCode: 'zz', systemLocale: const Locale('xx')), 'en');
    });
  });

  group('sheet geometry', () {
    setUp(() {
      LocaleSettings.setLocaleSync(AppLocale.en);
      // The 720 assertion below is the desktop-window ceiling, so pin both
      // gates it reads rather than inheriting the host OS.
      PlatformDetector.debugSetIsDesktopOSOverride(true);
      TvDetectionService.debugSetAppleTVOverride(false);
    });

    tearDown(() {
      PlatformDetector.debugSetIsDesktopOSOverride(null);
      TvDetectionService.debugSetAppleTVOverride(null);
    });

    testWidgets('search body keeps a stable height so the focused field cannot slide', (tester) async {
      tester.view.physicalSize = const Size(1280, 1400);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.reset);

      await _pumpSearchSheet(tester);

      // No MultiServerProvider, so the search resolves to no client and the
      // results area is empty. A shrink-wrapping body would collapse here.
      final emptyHeight = _sheetHeight(tester);
      final fieldTop = tester.getTopLeft(find.byType(TextField)).dy;
      expect(emptyHeight, 720, reason: 'search surface fills the windowed height ceiling');

      // Switching to the language picker and filtering it down to a couple of
      // matches must not move the geometry either.
      await tester.tap(find.text('English'));
      await tester.pumpAndSettle();
      expect(_sheetHeight(tester), emptyHeight);

      await tester.enterText(find.byType(TextField), 'zulu');
      await tester.pumpAndSettle();
      expect(find.text('Zulu'), findsOneWidget);
      expect(_sheetHeight(tester), emptyHeight, reason: 'per-keystroke match count must not resize the sheet');
      expect(tester.getTopLeft(find.byType(TextField)).dy, fieldTop);
    });
  });

  group('search error contract', () {
    late AppDatabase database;

    setUp(() {
      LocaleSettings.setLocaleSync(AppLocale.en);
      database = AppDatabase.forTesting(NativeDatabase.memory());
      PlexApiCache.initialize(database);
    });

    tearDown(() => database.close());

    testWidgets('HTTP 500 from searchSubtitles shows the sheet error state, not "no subtitles found"', (tester) async {
      final client = testPlexClient(serverId: ServerId('server'), handler: (_) async => http.Response('{}', 500));
      final provider = testMultiServer(clients: [client]).provider;

      await _pumpSearchSheet(tester, multiServer: provider);

      // [PlexClient._wrapListApiCall] rethrows HTTP failures; the sheet's
      // catch must render its error text instead of an empty-result state,
      // and that text is the localized reason, never the raw exception.
      expect(find.text(t.errors.searchFailed(error: t.errors.reasonServerError)), findsOneWidget);
      expect(find.textContaining('HTTP 500'), findsNothing);
      expect(find.text(t.videoControls.noSubtitlesFound), findsNothing);
      expect(find.byType(CircularProgressIndicator), findsNothing);
    });
  });

  testWidgets('Jellyfin server-native search results are shown', (tester) async {
    LocaleSettings.setLocaleSync(AppLocale.en);
    final client = testJellyfinClient(
      handler: (request) async {
        expect(request.url.path, '/Items/item-1/RemoteSearch/Subtitles/eng');
        return http.Response(
          jsonEncode([
            {
              'Id': 'subtitle-1',
              'Name': 'English by OpenSubtitles',
              'ProviderName': 'Open Subtitles',
              'Format': 'srt',
              'ThreeLetterISOLanguageName': 'eng',
            },
          ]),
          200,
          headers: {'content-type': 'application/json'},
        );
      },
    );
    final provider = testMultiServer(clients: [client]).provider;

    await _pumpSearchSheet(tester, multiServer: provider, ratingKey: 'item-1', serverId: 'srv-1');

    expect(find.text('English by OpenSubtitles'), findsWidgets);
    expect(find.text(t.videoControls.noSubtitlesFound), findsNothing);
  });

  testWidgets('Jellyfin subtitle file is uploaded using the selected language', (tester) async {
    final directory = Directory.systemTemp.createTempSync('luroka-subtitle-test-');
    final file = File('${directory.path}/test.srt');
    file.writeAsStringSync('1\n00:00:01,000 --> 00:00:02,000\nHello\n');
    FilePickerService.setDelegateForTesting(_SubtitlePicker(file.path, file.lengthSync()));
    addTearDown(() {
      FilePickerService.setDelegateForTesting(null);
      directory.deleteSync(recursive: true);
    });
    Map<String, dynamic>? uploaded;
    final client = testJellyfinClient(handler: (request) async {
      if (request.method == 'POST') {
        uploaded = jsonDecode(request.body) as Map<String, dynamic>;
        return http.Response('', 204);
      }
      return http.Response('[]', 200, headers: {'content-type': 'application/json'});
    });
    final provider = testMultiServer(clients: [client]).provider;
    await _pumpSearchSheet(tester, multiServer: provider, ratingKey: 'item-1', serverId: 'srv-1');
    final button = tester.widget<TextButton>(find.ancestor(
      of: find.textContaining(t.subtitleUpload.chooseFile), matching: find.byType(TextButton),
    ).first);
    await tester.runAsync(() async {
      button.onPressed!();
      await Future<void>.delayed(const Duration(milliseconds: 300));
    });
    await tester.pumpAndSettle();
    expect(uploaded?['Language'], 'eng');
    expect(utf8.decode(base64Decode(uploaded!['Data'] as String)), contains('Hello'));
    expect(find.text(t.subtitleUpload.success), findsOneWidget);
  });

  testWidgets('captures server external tracks before downloading instead of using an offline snapshot', (
    tester,
  ) async {
    final database = AppDatabase.forTesting(NativeDatabase.memory());
    JellyfinApiCache.initialize(database);
    addTearDown(database.close);
    final calls = <String>[];
    final client = testJellyfinClient(
      handler: (request) async {
        if (request.url.path.contains('/RemoteSearch/Subtitles/eng')) {
          return http.Response(
            jsonEncode([
              {'Id': 'remote-new', 'Name': 'Download English', 'Format': 'srt', 'ThreeLetterISOLanguageName': 'eng'},
            ]),
            200,
            headers: {'content-type': 'application/json'},
          );
        }
        if (request.method == 'POST') {
          calls.add('download');
          return http.Response('', 204);
        }
        calls.add('source');
        return http.Response(
          jsonEncode({
            'Id': 'item-1',
            'Type': 'Movie',
            'Name': 'Movie',
            'MediaSources': [
              {
                'Id': 'source-1',
                'MediaStreams': [
                  {'Index': 8, 'Type': 'Subtitle', 'IsExternal': true, 'Codec': 'srt', 'Language': 'eng'},
                  {'Index': 2, 'Type': 'Subtitle', 'IsExternal': false, 'Codec': 'ass', 'Language': 'eng'},
                ],
              },
            ],
          }),
          200,
          headers: {'content-type': 'application/json'},
        );
      },
    );
    final provider = testMultiServer(clients: [client]).provider;
    Set<int>? baseline;
    await _pumpSearchSheet(
      tester,
      multiServer: provider,
      ratingKey: 'item-1',
      serverId: 'srv-1',
      onDownloadedWithBaseline: ({required serverId, required ratingKey, required previousSourceIds}) async {
        baseline = previousSourceIds;
        calls.add('apply');
        return SubtitleDownloadApplyOutcome.applied;
      },
    );
    final action = tester
        .widget<FocusableListTile>(
          find.ancestor(of: find.text('Download English').first, matching: find.byType(FocusableListTile)).first,
        )
        .onTap;
    await tester.runAsync(() async => await (action as dynamic)());
    expect(baseline, {8});
    expect(calls, ['source', 'download', 'apply']);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));
    await tester.runAsync(() => Future<void>.delayed(Duration.zero));
    await tester.pump();
    expect(find.byType(SubtitleSearchSheet), findsNothing);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox());
  });
}

/// Height of the sheet box the host lays out, i.e. what the user sees.
double _sheetHeight(WidgetTester tester) {
  return tester.getSize(find.descendant(of: find.byType(OverlaySheetHost), matching: find.byType(AnimatedSize))).height;
}

Future<void> _pumpSearchSheet(
  WidgetTester tester, {
  MultiServerProvider? multiServer,
  String ratingKey = '1',
  String serverId = 'server',
  Future<SubtitleDownloadApplyOutcome> Function({
    required String serverId,
    required String ratingKey,
    required Set<int> previousSourceIds,
  })?
  onDownloadedWithBaseline,
}) async {
  final app = MaterialApp(
    theme: ThemeData(splashFactory: InkRipple.splashFactory, extensions: const [testMonoTokens]),
    home: OverlaySheetHost(
      child: Builder(
        builder: (context) => Scaffold(
          body: ElevatedButton(
            onPressed: () => OverlaySheetController.of(context).show<void>(
              builder: (_) => SubtitleSearchSheet(
                ratingKey: ratingKey,
                serverId: serverId,
                onSubtitleDownloadedWithBaseline: onDownloadedWithBaseline,
              ),
            ),
            child: const Text('Open'),
          ),
        ),
      ),
    ),
  );
  await tester.pumpWidget(
    multiServer == null ? app : ChangeNotifierProvider<MultiServerProvider>.value(value: multiServer, child: app),
  );
  await tester.tap(find.text('Open'));
  await tester.pumpAndSettle();
}
