import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_browser_dialect.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/active_profile_provider.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/screens/settings/source_libraries_screen.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:provider/provider.dart';
import '../../test_helpers/multi_server_fixtures.dart';
import '../../test_helpers/prefs.dart';
import 'package:luroka/screens/settings/add_connection_screen.dart';
import 'package:luroka/screens/settings/add_jellyfin_screen.dart';
import 'package:luroka/screens/settings/add_plex_account_screen.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/widgets/backend_badge.dart';

class _Active extends ChangeNotifier implements ActiveProfileProvider {
  _Active(this.profile);
  final Profile profile;
  int generation = 0;
  @override
  String? get activeId => profile.id;
  @override
  int get identityMutationGeneration => generation;
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// The "Add connection" picker is the only route to a new server, so a backend
/// missing from this list is unreachable no matter how complete its client is.
void main() {
  Widget app(Widget home) => MaterialApp(
    theme: monoTheme(MonoPalette.dark),
    home: InputModeTracker(child: home),
  );

  Profile profile(String id) =>
      Profile.local(id: id, displayName: id, sortOrder: 0, createdAt: DateTime.fromMillisecondsSinceEpoch(0));

  testWidgets('offers Plex, Jellyfin and Emby, each with its own badge', (tester) async {
    await tester.pumpWidget(app(const AddConnectionScreen()));
    await tester.pumpAndSettle();

    expect(find.text('Sign in with Plex'), findsOneWidget);
    expect(find.text('Connect to Jellyfin'), findsOneWidget);
    expect(find.text('Connect to Emby'), findsOneWidget);

    final badges = tester.widgetList<BackendBadge>(find.byType(BackendBadge)).map((b) => b.backend).toList();
    expect(badges, containsAll(<MediaBackend>[MediaBackend.plex, MediaBackend.jellyfin, MediaBackend.emby]));
  });

  /// The pushed sign-in screen starts a 2s LAN discovery sweep and a
  /// platform package-info read, neither of which settles under
  /// `pumpAndSettle`. Bounded frames are enough: the route's widget exists as
  /// soon as the push completes.
  Future<AddJellyfinScreen> tapCard(WidgetTester tester, String label) async {
    await tester.tap(find.text(label));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));
    return tester.widget<AddJellyfinScreen>(find.byType(AddJellyfinScreen));
  }

  testWidgets('the Emby card opens the sign-in screen bound to the Emby dialect', (tester) async {
    await tester.pumpWidget(app(const AddConnectionScreen()));
    await tester.pumpAndSettle();

    final screen = await tapCard(tester, 'Connect to Emby');
    expect(screen.dialect, MediaBrowserDialect.emby);
    expect(screen.targetProfile, isNull);
    expect(find.text('Add Emby server'), findsOneWidget);
  });

  testWidgets('the Jellyfin card still opens the Jellyfin dialect', (tester) async {
    await tester.pumpWidget(app(const AddConnectionScreen()));
    await tester.pumpAndSettle();

    final screen = await tapCard(tester, 'Connect to Jellyfin');
    expect(screen.dialect, MediaBrowserDialect.jellyfin);
    expect(find.text('Add Jellyfin server'), findsOneWidget);
  });

  testWidgets('the Plex card is unaffected by the new option', (tester) async {
    await tester.pumpWidget(app(const AddConnectionScreen()));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Sign in with Plex'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));

    expect(find.byType(AddPlexAccountScreen), findsOneWidget);
    expect(find.byType(AddJellyfinScreen), findsNothing);
  });

  testWidgets('a scoped Emby card names the profile it will bind to', (tester) async {
    final target = profile('Living Room');
    await tester.pumpWidget(app(AddConnectionScreen(targetProfile: target)));
    await tester.pumpAndSettle();

    expect(find.text('Sign in to your Emby server. Binds to Living Room.'), findsOneWidget);
    expect(find.text('Sign in to your Jellyfin server. Binds to Living Room.'), findsOneWidget);

    final screen = await tapCard(tester, 'Connect to Emby');
    expect(screen.dialect, MediaBrowserDialect.emby);
    expect(screen.targetProfile?.id, target.id);
  });

  testWidgets('the D-pad steps through all three backend cards', (tester) async {
    await tester.pumpWidget(app(const AddConnectionScreen()));
    await tester.pumpAndSettle();

    // The cards share a debugLabel, so track focus-node identity instead.
    final visited = <FocusNode>{};
    for (var i = 0; i < 6; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pumpAndSettle();
      final focused = FocusManager.instance.primaryFocus;
      if (focused != null) visited.add(focused);
    }

    expect(find.byType(BackendBadge), findsNWidgets(3));
    expect(visited.length, greaterThanOrEqualTo(3), reason: 'D-pad did not reach every backend card');
  });

  for (final selectedBefore in [true, false]) {
    testWidgets('successful server add explains ${selectedBefore ? 'explicit selection' : 'default visibility'}', (
      tester,
    ) async {
      resetSharedPreferencesForTest();
      SettingsService.resetForTesting();
      await SettingsService.getInstance();
      final storage = await StorageService.getInstance();
      final owner = profile('owner');
      if (selectedBefore) await storage.saveSelectedSourceLibraries({'existing:movies'}, profileId: owner.id);
      final active = _Active(owner);
      addTearDown(active.dispose);
      final servers = testMultiServer();
      bool? completed;
      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider<ActiveProfileProvider>.value(value: active),
            ChangeNotifierProvider<MultiServerProvider>.value(value: servers.provider),
          ],
          child: app(
            Builder(
              builder: (context) => Scaffold(
                body: TextButton(
                  onPressed: () async => completed = await Navigator.of(context).push<bool>(
                    MaterialPageRoute(
                      builder: (_) => AddConnectionScreen(targetProfile: owner, offerLibrarySelection: true),
                    ),
                  ),
                  child: const Text('Start'),
                ),
              ),
            ),
          ),
        ),
      );
      await tester.tap(find.text('Start'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Connect to Emby'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 400));
      tester.state<NavigatorState>(find.byType(Navigator)).pop(true);
      await tester.pumpAndSettle();
      expect(find.text('Connected and ready'), findsOneWidget);
      expect(
        find.textContaining(selectedBefore ? 'not automatically included' : 'accessible libraries are visible'),
        findsOneWidget,
      );
      await tester.tap(find.text('Choose libraries later'));
      await tester.pumpAndSettle();
      expect(completed, isTrue);
      expect(find.byType(SourceLibrariesScreen), findsNothing);
      expect(storage.getSelectedSourceLibraries(profileId: owner.id), selectedBefore ? {'existing:movies'} : isNull);
    });
  }

  testWidgets('library review opens after a successful server connection', (tester) async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    await SettingsService.getInstance();
    final owner = profile('owner');
    final active = _Active(owner);
    addTearDown(active.dispose);
    final servers = testMultiServer();
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<ActiveProfileProvider>.value(value: active),
          ChangeNotifierProvider<MultiServerProvider>.value(value: servers.provider),
        ],
        child: app(
          Builder(
            builder: (context) => Scaffold(
              body: TextButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => AddConnectionScreen(targetProfile: owner, offerLibrarySelection: true),
                  ),
                ),
                child: const Text('Start'),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Start'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Connect to Emby'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));
    tester.state<NavigatorState>(find.byType(Navigator)).pop(true);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Choose libraries'));
    await tester.pumpAndSettle();
    expect(tester.widget<SourceLibrariesScreen>(find.byType(SourceLibrariesScreen)).profileId, owner.id);
    expect(tester.takeException(), isNull);
  });

  testWidgets('a profile change during sign-in prevents the library prompt', (tester) async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    await SettingsService.getInstance();
    final owner = profile('owner');
    final active = _Active(owner);
    addTearDown(active.dispose);
    final servers = testMultiServer();
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<ActiveProfileProvider>.value(value: active),
          ChangeNotifierProvider<MultiServerProvider>.value(value: servers.provider),
        ],
        child: app(
          Builder(
            builder: (context) => Scaffold(
              body: TextButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => AddConnectionScreen(targetProfile: owner, offerLibrarySelection: true),
                  ),
                ),
                child: const Text('Start'),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Start'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Connect to Emby'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));
    active.generation++;
    tester.state<NavigatorState>(find.byType(Navigator)).pop(true);
    await tester.pumpAndSettle();
    expect(find.text('Connected and ready'), findsNothing);
    expect(find.byType(SourceLibrariesScreen), findsNothing);
  });
}
