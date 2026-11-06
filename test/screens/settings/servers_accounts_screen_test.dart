import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/connection/connection.dart';
import 'package:luroka/connection/connection_registry.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/profile_connection.dart';
import 'package:luroka/profiles/profile_connection_registry.dart';
import 'package:luroka/profiles/profile_registry.dart';
import 'package:luroka/screens/settings/servers_accounts_screen.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/services/plex_auth_service.dart';
import 'package:luroka/services/credential_vault.dart';
import 'package:provider/provider.dart';

import '../../test_helpers/profile_stack.dart';
import '../../test_helpers/multi_server_fixtures.dart';
import '../../test_helpers/prefs.dart';

class _PlexStatusClient implements MediaServerClient {
  final Object _session = Object();

  @override
  ServerId get serverId => ServerId('plex-server');

  @override
  Object get authenticationSessionId => _session;

  @override
  void close() {}

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  setUpAll(() => LocaleSettings.setLocaleSync(AppLocale.en));
  setUp(() {
    resetSharedPreferencesForTest();
    CredentialVault.resetKeyForTesting();
  });

  group('serverSignInStatus', () {
    test('maps the manager snapshot to online, offline and unknown', () {
      const status = {'srv-1': true, 'srv-2': false};
      expect(serverSignInStatus(serverId: 'srv-1', onlineIds: status), ServerSignInStatus.online);
      expect(serverSignInStatus(serverId: 'srv-2', onlineIds: status), ServerSignInStatus.offline);
      expect(serverSignInStatus(serverId: 'srv-3', onlineIds: status), ServerSignInStatus.unknown);
    });
  });

  group('usedByLabel', () {
    test('none, one, and the capped many form', () {
      expect(usedByLabel(profileNames: const []), t.serversAccounts.usedByNone);
      expect(usedByLabel(profileNames: const ['Ada']), 'Used by Ada');
      expect(usedByLabel(profileNames: const ['Ada', 'Linus', 'Grace']), 'Used by Ada and 2 more');
    });
  });

  testWidgets('lists every account and server with usage and per-server status', (tester) async {
    // The stack is built and seeded under [runAsync]: the memory database
    // schedules work through timers, which the widget-test FakeAsync zone
    // only advances inside `pump`.
    late ProfileStack stack;
    await tester.runAsync(() async {
      stack = await ProfileStack.create(withStorage: false);
      final jellyfin = JellyfinConnection(
        id: 'srv-1/user-1',
        baseUrl: 'https://jellyfin.example.com',
        baseUrls: const ['https://jellyfin.example.com'],
        serverName: 'Home',
        serverMachineId: 'srv-1',
        userId: 'user-1',
        userName: 'edde',
        accessToken: 'tok',
        deviceId: 'dev',
        createdAt: DateTime.utc(2026, 1, 15),
        lastAuthenticatedAt: DateTime.utc(2026, 4, 25),
      );
      final plex = PlexAccountConnection(
        id: 'plex-acc',
        accountToken: 'tok',
        clientIdentifier: 'client-uuid',
        accountLabel: 'edde@plex.tv',
        servers: [
          PlexServer(
            name: 'Plex Server',
            clientIdentifier: 'plex-server',
            accessToken: 'tok',
            owned: true,
            connections: [
              PlexConnection(
                protocol: 'https',
                address: 'plex.example.com',
                port: 32400,
                uri: 'https://plex.example.com:32400',
                local: false,
                relay: false,
                ipv6: false,
              ),
            ],
          ),
        ],
        activeProfile: null,
        createdAt: DateTime.utc(2026, 1, 15),
      );
      await stack.connections.upsert(jellyfin);
      await stack.connections.upsert(plex);
      await stack.profiles.upsert(Profile.local(id: 'p-ada', displayName: 'Ada', createdAt: DateTime.utc(2026, 1, 1)));
      await stack.profiles.upsert(
        Profile.local(id: 'p-linus', displayName: 'Linus', createdAt: DateTime.utc(2026, 1, 1)),
      );
      await stack.profileConnections.upsert(
        const ProfileConnection(
          profileId: 'p-ada',
          connectionId: 'srv-1/user-1',
          userToken: 'tok',
          userIdentifier: 'user-1',
        ),
      );
      await stack.profileConnections.upsert(
        const ProfileConnection(
          profileId: 'p-ada',
          connectionId: 'plex-acc',
          userToken: 'tok',
          userIdentifier: 'home-1',
        ),
      );
      await stack.profileConnections.upsert(
        const ProfileConnection(
          profileId: 'p-linus',
          connectionId: 'plex-acc',
          userToken: 'tok',
          userIdentifier: 'home-2',
        ),
      );
    });
    addTearDown(() => tester.runAsync(stack.dispose));
    final client = _PlexStatusClient();
    final servers = testMultiServer(clients: [client]);
    final seededCount = (await tester.runAsync(() => stack.connections.list()))!;
    debugPrint('seeded: ${seededCount.length} connections');

    await tester.pumpWidget(
      MultiProvider(
        providers: [
          Provider<ConnectionRegistry>.value(value: stack.connections),
          Provider<ProfileConnectionRegistry>.value(value: stack.profileConnections),
          Provider<ProfileRegistry>.value(value: stack.profiles),
          ChangeNotifierProvider<MultiServerProvider>.value(value: servers.provider),
        ],
        child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: const ServersAccountsScreen()),
      ),
    );
    // Timed pumps so drift's timer-scheduled stream emissions fire, plus a
    // real-async flush: the memory database completes its stream SELECTs on
    // real timers that the FakeAsync clock cannot advance.
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 50)));
    await tester.pump();
    debugPrint('texts: ${tester.widgetList<Text>(find.byType(Text)).map((t) => t.data).whereType<String>().toList()}');

    // Jellyfin: status is unknown (no session manager in this test) and the
    // used-by line names Ada.
    expect(find.text('Home'), findsOneWidget);
    expect(find.textContaining(t.serversAccounts.unknown), findsOneWidget);
    expect(find.textContaining('Ada'), findsWidgets);
    // Plex: the account row with the usage summary.
    expect(find.text('edde@plex.tv'), findsOneWidget);
    expect(find.text('Plex Server'), findsOneWidget);
    expect(find.text(t.serversAccounts.serversOnline(online: 1, total: 1)), findsOneWidget);
    servers.manager.debugMarkAuthErrorForTesting(ServerId('plex-server'));
    await tester.pumpAndSettle();
    expect(find.text(t.serversAccounts.serversOnline(online: 0, total: 1)), findsOneWidget);
    servers.manager.debugRegisterClientForTesting(client);
    servers.manager.debugEmitStatusForTesting();
    await tester.pumpAndSettle();
    expect(find.text(t.serversAccounts.serversOnline(online: 1, total: 1)), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump(const Duration(milliseconds: 100));
  });
}
