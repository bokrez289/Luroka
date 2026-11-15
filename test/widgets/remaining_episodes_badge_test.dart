import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_version.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/utils/media_server_http_client.dart';
import 'package:luroka/widgets/remaining_episodes_badge.dart';
import 'package:luroka/widgets/media_card.dart';
import 'package:luroka/widgets/app_icon.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../test_helpers/multi_server_fixtures.dart';
import '../test_helpers/prefs.dart';

class _Client implements MediaServerClient, PreviewMetadataClient {
  int calls = 0;
  @override
  void close() {}
  @override
  ServerId get serverId => ServerId('server');
  @override
  Future<MediaItem?> fetchPreviewItem(String id, {required AbortController abort}) async {
    calls++;
    return MediaItem.plex(id: id, kind: MediaKind.show, leafCount: 10, viewedLeafCount: 8);
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
  });
  for (final enabled in [true, false]) {
    testWidgets('remaining episode counts are delayed and respect enabled=$enabled', (tester) async {
      RemainingEpisodesBadge.resetQueueForTesting();
      await SettingsService.instance.write(SettingsService.showRemainingEpisodes, enabled);
      final client = _Client();
      final servers = testMultiServer(clients: [client]);
      await tester.pumpWidget(
        ChangeNotifierProvider<MultiServerProvider>.value(
          value: servers.provider,
          child: const MaterialApp(
            home: RemainingEpisodesBadge(
              item: MediaItem.plex(id: 'episode', kind: MediaKind.episode, serverId: 'server', grandparentId: 'series'),
            ),
          ),
        ),
      );
      expect(client.calls, 0);
      await tester.pump(const Duration(seconds: 2));
      await tester.pump();
      expect(client.calls, enabled ? 1 : 0);
      expect(find.text('2'), enabled ? findsOneWidget : findsNothing);
      expect(find.byTooltip('2 episodes left'), enabled ? findsOneWidget : findsNothing);
      expect(find.text('2 episodes left'), findsNothing);
      await tester.pumpWidget(const SizedBox());
    });
  }

  for (final tv in [false, true]) {
    testWidgets('episode and version badges coexist on ${tv ? 'TV' : 'mobile'}', (tester) async {
      RemainingEpisodesBadge.resetQueueForTesting();
      TvDetectionService.debugSetAppleTVOverride(tv);
      addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
      await SettingsService.instance.write(SettingsService.showRemainingEpisodes, true);
      final client = _Client();
      final servers = testMultiServer(clients: [client]);
      const item = MediaItem.plex(
        id: 'episode',
        kind: MediaKind.episode,
        serverId: 'server',
        grandparentId: 'series',
        mediaVersions: [MediaVersion(id: 'a'), MediaVersion(id: 'b'), MediaVersion(id: 'c')],
      );
      await tester.pumpWidget(
        ChangeNotifierProvider<MultiServerProvider>.value(
          value: servers.provider,
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: Scaffold(
              body: Center(
                child: SizedBox(
                  width: 250,
                  height: 160,
                  child: MediaCard(
                    item: item,
                    width: 250,
                    height: 160,
                    viewModeOverride: ViewMode.grid,
                    fullBleedImage: true,
                    cinemaArtwork: true,
                    isInContinueWatching: true,
                    usesContinueWatchingAction: true,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
      expect(find.byType(RemainingEpisodesBadge), findsOneWidget);
      await tester.pump();
      await tester.pump(const Duration(seconds: 2));
      await tester.pump();
      await tester.pump();
      expect(client.calls, 1);
      final remaining = find.byType(RemainingEpisodesBadge);
      final copies = find.byKey(const ValueKey('media-copy-count'));
      expect(find.descendant(of: remaining, matching: find.byWidgetPredicate(
        (widget) => widget is AppIcon && widget.icon == Symbols.format_list_numbered_rounded,
      )), findsOneWidget);
      expect(find.descendant(of: remaining, matching: find.text('2')), findsOneWidget);
      expect(find.descendant(of: copies, matching: find.byIcon(Icons.file_copy_rounded)), findsOneWidget);
      expect(find.descendant(of: copies, matching: find.text('3')), findsOneWidget);
      expect(tester.getRect(remaining).right, lessThanOrEqualTo(tester.getRect(copies).left));
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox());
    });
  }
}
