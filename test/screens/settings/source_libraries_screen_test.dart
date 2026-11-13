import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:luroka/connection/connection_registry.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_library.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/profiles/active_profile_provider.dart';
import 'package:luroka/profiles/active_profile_binder.dart';
import 'package:luroka/profiles/plex_home_service.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/profile_connection_registry.dart';
import 'package:luroka/profiles/profile_registry.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/screens/settings/source_libraries_screen.dart';
import 'package:luroka/screens/settings/add_connection_screen.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/services/profile_appearance_service.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/theme/mono_theme.dart';
import '../../test_helpers/multi_server_fixtures.dart';
import '../../test_helpers/prefs.dart';

class _Client implements MediaServerClient {
  _Client(this.id, {this.single = false});
  final String id;
  final bool single;
  @override
  ServerId get serverId => ServerId(id);
  @override
  String get serverName => 'Server $id';
  @override
  MediaBackend get backend => MediaBackend.plex;
  @override
  Future<List<MediaLibrary>> fetchLibraries() async => [
    for (final kind in [MediaKind.movie, if (!single) MediaKind.show])
      MediaLibrary(
        id: kind.name,
        title: '${kind.name} $id',
        kind: kind,
        backend: backend,
        serverId: id,
        serverName: serverName,
      ),
  ];
  @override
  void close() {}
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _Binder implements ActiveProfileBinder {
  @override
  void start({bool allowInitialPinPrompt = true}) {}
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  testWidgets('first run selects the only available library without another choice', (tester) async {
    resetSharedPreferencesForTest();
    ProfileAppearanceService.instance.resetForTesting();
    final storage = await StorageService.getInstance();
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    final registry = ProfileRegistry(db);
    final connections = ConnectionRegistry(db);
    final links = ProfileConnectionRegistry(db);
    final home = PlexHomeService(
      connections: connections,
      profileConnections: links,
      storage: storage,
      plexHomeUserFetcher: (_) async => [],
    );
    final active = ActiveProfileProvider(
      registry: registry,
      connections: connections,
      profileConnections: links,
      plexHome: home,
      storage: storage,
    );
    await registry.upsert(Profile.local(id: 'alex', displayName: 'Alex', createdAt: DateTime(2026)));
    await storage.setActiveProfileId('alex');
    await active.initialize();
    await ProfileAppearanceService.instance.markSourceSelectionPending('alex');
    final servers = testMultiServer(clients: [_Client('a', single: true)]);
    addTearDown(() async {
      await active.resetForTesting();
      active.dispose();
      await home.dispose();
      await db.close();
      ProfileAppearanceService.instance.resetForTesting();
    });
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<ActiveProfileProvider>.value(value: active),
          ChangeNotifierProvider<MultiServerProvider>.value(value: servers.provider),
          Provider<ActiveProfileBinder>.value(value: _Binder()),
        ],
        child: InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: Builder(
              builder: (context) => Scaffold(
                body: TextButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const SourceLibrariesScreen(profileId: 'alex', firstRun: true)),
                  ),
                  child: const Text('Open sources'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Open sources'));
    await tester.pumpAndSettle();
    expect(find.text('Open sources'), findsOneWidget);
    expect(storage.getSelectedSourceLibraries(profileId: 'alex'), {'a:movie'});
    expect(ProfileAppearanceService.instance.sourceSelectionPendingFor('alex'), isFalse);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  for (final tv in [false, true]) {
    testWidgets('adding a server preserves unsaved library choices on ${tv ? 'TV' : 'phone'}', (tester) async {
      resetSharedPreferencesForTest();
      LocaleSettings.setLocaleSync(AppLocale.en);
      await SettingsService.getInstance();
      final storage = await StorageService.getInstance();
      final db = AppDatabase.forTesting(NativeDatabase.memory());
      final registry = ProfileRegistry(db);
      final connections = ConnectionRegistry(db);
      final links = ProfileConnectionRegistry(db);
      final home = PlexHomeService(
        connections: connections,
        profileConnections: links,
        storage: storage,
        plexHomeUserFetcher: (_) async => [],
      );
      final active = ActiveProfileProvider(
        registry: registry,
        connections: connections,
        profileConnections: links,
        plexHome: home,
        storage: storage,
      );
      await registry.upsert(Profile.local(id: 'alex', displayName: 'Alex', createdAt: DateTime(2026)));
      await storage.setActiveProfileId('alex');
      await storage.saveSelectedSourceLibraries({'a:movie', 'a:show'}, profileId: 'alex');
      await active.initialize();
      final servers = testMultiServer(clients: [_Client('a')]);
      TvDetectionService.debugSetAppleTVOverride(tv);
      tester.view.physicalSize = tv ? const Size(960, 540) : const Size(390, 844);
      tester.view.devicePixelRatio = 1;
      addTearDown(() async {
        tester.view.reset();
        TvDetectionService.debugSetAppleTVOverride(null);
        await active.resetForTesting();
        active.dispose();
        await home.dispose();
        await db.close();
      });
      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider<ActiveProfileProvider>.value(value: active),
            ChangeNotifierProvider<MultiServerProvider>.value(value: servers.provider),
          ],
          child: InputModeTracker(
            child: MaterialApp(
              theme: monoTheme(MonoPalette.dark),
              home: Builder(
                builder: (context) => Scaffold(
                  body: TextButton(
                    onPressed: () => Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (_) => const SourceLibrariesScreen(profileId: 'alex'))),
                    child: const Text('Open sources'),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
      await tester.tap(find.text('Open sources'));
      await tester.pumpAndSettle();
      await tester.ensureVisible(find.text('show a'));
      await tester.tap(find.text('show a'));
      await tester.ensureVisible(find.byKey(const ValueKey('source-libraries-add-server')));
      await tester.tap(find.byKey(const ValueKey('source-libraries-add-server')));
      await tester.pumpAndSettle();
      expect(tester.widget<AddConnectionScreen>(find.byType(AddConnectionScreen)).targetProfile?.id, 'alex');
      servers.manager.debugRegisterClientForTesting(_Client('b'));
      tester.state<NavigatorState>(find.byType(Navigator)).pop(true);
      await tester.pumpAndSettle();
      expect(find.text('Newly connected'), findsOneWidget);
      expect(tester.getTopLeft(find.text('Server b')).dy, lessThan(tester.getTopLeft(find.text('Server a')).dy));
      expect(
        tester
            .widget<CheckboxListTile>(find.ancestor(of: find.text('show a'), matching: find.byType(CheckboxListTile)))
            .value,
        isFalse,
      );
      expect(
        tester
            .widget<CheckboxListTile>(find.ancestor(of: find.text('movie b'), matching: find.byType(CheckboxListTile)))
            .value,
        isFalse,
      );
      await tester.ensureVisible(find.text('movie b'));
      await tester.tap(find.text('movie b'));
      await tester.tap(find.text(t.common.save));
      await tester.pumpAndSettle();
      expect(storage.getSelectedSourceLibraries(profileId: 'alex'), {'a:movie', 'b:movie'});
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
    });

    testWidgets('server/library selection is saved per profile on ${tv ? 'TV' : 'phone'}', (tester) async {
      resetSharedPreferencesForTest();
      LocaleSettings.setLocaleSync(AppLocale.en);
      await SettingsService.getInstance();
      final storage = await StorageService.getInstance();
      final db = AppDatabase.forTesting(NativeDatabase.memory());
      final registry = ProfileRegistry(db);
      final connections = ConnectionRegistry(db);
      final links = ProfileConnectionRegistry(db);
      final home = PlexHomeService(
        connections: connections,
        profileConnections: links,
        storage: storage,
        plexHomeUserFetcher: (_) async => [],
      );
      final active = ActiveProfileProvider(
        registry: registry,
        connections: connections,
        profileConnections: links,
        plexHome: home,
        storage: storage,
      );
      await registry.upsert(Profile.local(id: 'alex', displayName: 'Alex', createdAt: DateTime(2026)));
      await storage.setActiveProfileId('alex');
      await active.initialize();
      final servers = testMultiServer(clients: [_Client('a'), _Client('b')]);
      TvDetectionService.debugSetAppleTVOverride(tv);
      tester.view.physicalSize = tv ? const Size(960, 540) : const Size(390, 844);
      tester.view.devicePixelRatio = 1;
      addTearDown(() async {
        tester.view.reset();
        TvDetectionService.debugSetAppleTVOverride(null);
        await active.resetForTesting();
        active.dispose();
        await home.dispose();
        await db.close();
      });
      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider<ActiveProfileProvider>.value(value: active),
            ChangeNotifierProvider<MultiServerProvider>.value(value: servers.provider),
          ],
          child: InputModeTracker(
            child: MaterialApp(
              home: Builder(
                builder: (context) => Scaffold(
                  body: TextButton(
                    onPressed: () => Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (_) => const SourceLibrariesScreen(profileId: 'alex'))),
                    child: const Text('Open sources'),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
      await tester.tap(find.text('Open sources'));
      await tester.pumpAndSettle();
      final serverB = find.text('Server b');
      await tester.ensureVisible(serverB);
      await tester.tap(serverB);
      await tester.pumpAndSettle();
      await tester.tap(find.text(t.common.save));
      await tester.pumpAndSettle();
      expect(storage.getSelectedSourceLibraries(profileId: 'alex'), {'a:movie', 'a:show'});
      expect(storage.getSelectedSourceLibraries(profileId: 'sam'), isNull);
      await tester.tap(find.text('Open sources'));
      await tester.pumpAndSettle();
      final b = tester.widget<CheckboxListTile>(
        find.ancestor(of: find.text('movie b'), matching: find.byType(CheckboxListTile)),
      );
      expect(b.value, isFalse);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
    });
  }
}
