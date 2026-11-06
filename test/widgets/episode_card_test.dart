import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_part.dart';
import 'package:luroka/media/media_stream.dart';
import 'package:luroka/media/media_version.dart';
import 'package:luroka/providers/download_provider.dart';
import 'package:luroka/services/download_manager_service.dart';
import 'package:luroka/services/download_storage_service.dart';
import 'package:luroka/services/jellyfin_api_cache.dart';
import 'package:luroka/services/plex_api_cache.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/collapsible_text.dart';
import 'package:luroka/widgets/episode_card.dart';
import 'package:luroka/widgets/media_progress_bar.dart';
import 'package:provider/provider.dart';

import '../test_helpers/media_items.dart';
import '../test_helpers/prefs.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    TvDetectionService.debugSetAppleTVOverride(false);
    LocaleSettings.setLocaleSync(AppLocale.en);
    await SettingsService.getInstance();
  });

  tearDown(() {
    TvDetectionService.debugSetAppleTVOverride(null);
  });

  testWidgets('overflowing summary stays in card semantics without an Expand label', (tester) async {
    final semantics = tester.ensureSemantics();
    const summary =
        'The expedition follows a careful team through an unfamiliar landscape while each discovery changes their plans.';
    final episode = testMediaItem(
      id: 'semantic_episode',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.episode,
      title: 'A Difficult Crossing',
      index: 3,
      summary: summary,
      durationMs: 42 * 60 * 1000,
    );

    await _pumpEpisodeCard(tester, episode);

    final summaryText = tester.widget<Text>(
      find.descendant(of: find.byType(CollapsibleText), matching: find.byType(Text)).first,
    );
    expect(summaryText.textSpan, isNotNull);
    expect(summaryText.textSpan!.toPlainText(), isNot(summary));

    final semanticNodes = <SemanticsNode>[];
    void collectSemantics(SemanticsNode node) {
      semanticNodes.add(node);
      node.visitChildren((child) {
        collectSemantics(child);
        return true;
      });
    }

    collectSemantics(tester.binding.renderViews.single.owner!.semanticsOwner!.rootSemanticsNode!);
    final cardSemantics = semanticNodes.singleWhere((node) => node.label.contains('A Difficult Crossing'));
    expect(
      cardSemantics.label,
      contains('The expedition follows'),
      reason: 'the visible two-line mobile synopsis is merged with the episode action',
    );
    expect(cardSemantics.label, isNot(contains('Expand')));
    expect(cardSemantics.getSemanticsData().hasAction(SemanticsAction.tap), isTrue);
    semantics.dispose();
  });

  testWidgets('TV keeps file size alongside media quality labels', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    final episode = testMediaItem(
      id: 'sized_episode',
      backend: MediaBackend.plex,
      kind: MediaKind.episode,
      title: 'A Large Episode',
      index: 4,
      durationMs: 52 * 60 * 1000,
      mediaVersions: const [
        MediaVersion(
          id: 'source',
          videoResolution: '1080',
          parts: [
            MediaPart(
              id: 'part-1',
              sizeBytes: 1536 * 1024 * 1024,
              streams: [
                MediaStream(id: 'audio', kind: MediaStreamKind.audio, codec: 'eac3', channels: 6, selected: true),
              ],
            ),
          ],
        ),
      ],
    );

    await _pumpEpisodeCard(tester, episode);

    final metadataWrap = find.ancestor(of: find.text('1.50 GB'), matching: find.byType(Wrap));
    expect(metadataWrap, findsOneWidget);
    expect(find.descendant(of: metadataWrap, matching: find.text('EAC3 5.1')), findsOneWidget);
  });

  testWidgets('downloaded episode shows the resume progress bar', (tester) async {
    final episode = testMediaItem(
      id: 'resumable_episode',
      backend: MediaBackend.plex,
      kind: MediaKind.episode,
      title: 'Halfway There',
      index: 5,
      durationMs: 40 * 60 * 1000,
      viewOffsetMs: 20 * 60 * 1000,
    );

    await _pumpEpisodeCard(tester, episode);

    expect(find.byType(MediaProgressBar), findsOneWidget);
  });

  testWidgets('mobile episode cards keep runtime while removing codec and file-size clutter', (tester) async {
    final episode = testMediaItem(
      id: 'mobile_episode',
      backend: MediaBackend.plex,
      kind: MediaKind.episode,
      title: 'A clean episode card',
      index: 2,
      durationMs: 42 * 60 * 1000,
      mediaVersions: const [
        MediaVersion(
          id: 'v',
          videoResolution: '1080',
          parts: [MediaPart(id: 'p', sizeBytes: 1024 * 1024 * 1024)],
        ),
      ],
    );
    await _pumpEpisodeCard(tester, episode);
    expect(find.text('1.00 GB'), findsNothing);
    expect(find.text('1080p'), findsNothing);
    expect(find.text('42min'), findsOneWidget);
    expect(find.text('2. A clean episode card'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('mobile episode artwork plays while the title opens details', (tester) async {
    final episode = testMediaItem(
      id: 'tap_episode',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.episode,
      title: 'Separate actions',
      index: 1,
    );
    var plays = 0;
    var details = 0;
    await _pumpEpisodeCard(tester, episode, onPlay: () => plays++, onDetails: () => details++);
    await tester.tap(find.text('1. Separate actions'));
    expect(details, 1);
    expect(plays, 0);
    await tester.tap(find.byKey(const ValueKey('episode_play_tap_episode')));
    expect(plays, 1);
    expect(details, 1);
  });
}

Future<void> _pumpEpisodeCard(
  WidgetTester tester,
  MediaItem episode, {
  VoidCallback? onPlay,
  VoidCallback? onDetails,
}) async {
  final db = AppDatabase.forTesting(NativeDatabase.memory());
  PlexApiCache.initialize(db);
  JellyfinApiCache.initialize(db);
  final downloadManager = DownloadManagerService(
    database: db,
    storageService: DownloadStorageService.instance,
    clientResolver: (serverId, {clientScopeId}) => null,
  );
  downloadManager.recoveryFuture = Future<void>.value();
  final downloadProvider = DownloadProvider.forTesting(downloadManager: downloadManager, database: db);
  await downloadProvider.ensureInitialized();
  addTearDown(() async {
    downloadProvider.dispose();
    downloadManager.dispose();
    await db.close();
  });

  await tester.pumpWidget(
    TranslationProvider(
      child: ChangeNotifierProvider<DownloadProvider>.value(
        value: downloadProvider,
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: Scaffold(
            body: SizedBox(
              width: 360,
              child: EpisodeCard(episode: episode, isOffline: true, onTap: onPlay ?? () {}, onDetails: onDetails),
            ),
          ),
        ),
      ),
    ),
  );
  await tester.pump();
}
