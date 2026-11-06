import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:luroka/media/media_hub.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/providers/explore_provider.dart';
import 'package:luroka/screens/discovery_collections_screen.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';

import '../test_helpers/prefs.dart';

class _Collections extends ChangeNotifier implements ExploreProvider {
  @override
  bool get customizableShelves => false;
  @override
  bool get isLoading => false;
  @override
  List<ExploreRowHub> get rowHubs => [
    const ExploreRowHub.providerHub(
      providerHubId: 'oscars',
      hub: MediaHub(
        id: 'oscars',
        title: 'Oscars · Best Picture',
        type: 'movie',
        items: [MediaItem.plex(id: 'local', kind: MediaKind.movie, title: 'A library winner')],
      ),
    ),
    const ExploreRowHub.providerHub(
      providerHubId: 'other-provider-hub',
      hub: MediaHub(
        id: 'other',
        title: 'Unrelated feed',
        type: 'movie',
        items: [MediaItem.plex(id: 'other', kind: MediaKind.movie, title: 'Another title')],
      ),
    ),
  ];
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  testWidgets('awards browser offers verified collection rows without unrelated discovery shelves', (tester) async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
    final provider = _Collections();
    addTearDown(provider.dispose);
    await tester.pumpWidget(
      ChangeNotifierProvider<ExploreProvider>.value(
        value: provider,
        child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: const DiscoveryCollectionsScreen()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Oscars · Academy Awards'), findsOneWidget);
    expect(find.text('Primetime Emmys'), findsOneWidget);
    expect(find.text('Berlin · Berlinale'), findsOneWidget);
    expect(find.text('Unrelated feed'), findsNothing);
    expect(tester.takeException(), isNull);
  });
}
