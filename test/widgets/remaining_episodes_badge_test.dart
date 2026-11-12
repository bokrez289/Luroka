import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/utils/media_server_http_client.dart';
import 'package:luroka/widgets/remaining_episodes_badge.dart';
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
}
