import 'dart:async';

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../connection/connection.dart';
import '../../connection/connection_registry.dart';
import '../../i18n/strings.g.dart';
import '../../profiles/profile.dart';
import '../../profiles/profile_connection.dart';
import '../../profiles/profile_connection_registry.dart';
import '../../profiles/profile_registry.dart';
import '../../profiles/active_profile_binder.dart';
import '../../profiles/active_profile_provider.dart';
import '../../providers/multi_server_provider.dart';
import '../../services/multi_server_manager.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/app_menu.dart';
import '../../widgets/backend_badge.dart';
import '../../widgets/focusable_popup_menu_button.dart';
import '../../widgets/focused_scroll_scaffold.dart';
import '../../widgets/setting_tile.dart';
import '../../widgets/settings_section.dart';
import 'add_connection_screen.dart';
import 'edit_jellyfin_connection_screen.dart';

/// Whether a server is signed in from this device's active session.
///
/// [online] and [offline] come from the [MultiServerManager]'s connect pass;
/// [unknown] means the manager has no client for that server — the active
/// profile does not use the connection, so there is genuinely nothing to
/// report rather than a failure.
enum ServerSignInStatus { online, offline, unknown }

/// Live overview of every connected account and server, with per-profile
/// usage — the surface the old Connections section never had.
///
/// The word "connection" is deliberately absent from this screen: users think
/// in accounts (Plex sign-in) and servers (the machine with the media), so
/// rows are presented exactly that way, each with its sign-in status and the
/// profiles that use it.
class ServersAccountsScreen extends StatefulWidget {
  const ServersAccountsScreen({super.key});

  @override
  State<ServersAccountsScreen> createState() => _ServersAccountsScreenState();
}

class _ServersAccountsScreenState extends State<ServersAccountsScreen> {
  MultiServerManager? _manager;
  StreamSubscription<Map<String, bool>>? _statusSub;

  /// Created once in [didChangeDependencies]: streams built inside `build`
  /// re-subscribe on every emission, and each fresh Drift watch query emits
  /// again on listen — an endless rebuild loop.
  Stream<List<Connection>>? _connectionsStream;
  Stream<List<ProfileConnection>>? _pcsStream;
  Stream<List<Profile>>? _profilesStream;

  /// Last known serverId → online snapshot. Seeded from the manager's current
  /// state so the first frame never flashes "offline" for a live server.
  Map<String, bool> _serverStatus = {};

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _connectionsStream ??= context.read<ConnectionRegistry>().watchConnections();
    _pcsStream ??= context.read<ProfileConnectionRegistry>().watchAll();
    _profilesStream ??= context.read<ProfileRegistry>().watchProfiles();

    final manager = Provider.of<MultiServerProvider?>(context, listen: false)?.serverManager;
    if (manager == _manager) return;
    _statusSub?.cancel();
    _manager = manager;
    if (manager == null) {
      _serverStatus = {};
      return;
    }
    _serverStatus = {
      for (final id in manager.onlineServerIds) id: true,
      for (final id in manager.offlineServerIds) id: false,
    };
    _statusSub = manager.statusStream.listen((status) {
      if (!mounted) return;
      // The stream is a complete snapshot, not a delta. Keeping old entries
      // turns servers removed during a Plex rebind into stale offline rows.
      setState(() => _serverStatus = Map.of(status));
    });
  }

  @override
  void dispose() {
    _statusSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FocusedScrollScaffold(
      title: Text(t.serversAccounts.title),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              StreamBuilder<List<Connection>>(
                stream: _connectionsStream,
                builder: (context, connectionsSnap) {
                  return StreamBuilder<List<ProfileConnection>>(
                    stream: _pcsStream,
                    builder: (context, pcsSnap) {
                      return StreamBuilder<List<Profile>>(
                        stream: _profilesStream,
                        builder: (context, profilesSnap) {
                          return _buildBody(
                            connections: connectionsSnap.data ?? const [],
                            pcs: pcsSnap.data ?? const [],
                            profiles: profilesSnap.data ?? const [],
                          );
                        },
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 24),
              SettingsGroup(
                children: [
                  SettingNavigationTile(
                    icon: Symbols.add_link_rounded,
                    title: t.connections.addConnection,
                    subtitle: t.connections.addConnectionSubtitleNoProfile,
                    onTap: () {
                      final active = context.read<ActiveProfileProvider>().active;
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => AddConnectionScreen(targetProfile: active, offerLibrarySelection: true),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ]),
          ),
        ),
      ],
    );
  }

  Widget _buildBody({
    required List<Connection> connections,
    required List<ProfileConnection> pcs,
    required List<Profile> profiles,
  }) {
    if (connections.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Text(
          t.serversAccounts.noServers,
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6)),
        ),
      );
    }
    return SettingsGroup(
      children: [
        for (final connection in connections)
          if (connection is PlexAccountConnection)
            _PlexAccountTile(
              connection: connection,
              serverStatus: _serverStatus,
              usedBy: _profileNamesUsing(connection.id, pcs, profiles),
            )
          else if (connection is JellyfinConnection)
            _MediaBrowserTile(
              connection: connection,
              status: serverSignInStatus(serverId: connection.serverMachineId, onlineIds: _serverStatus),
              usedBy: _profileNamesUsing(connection.id, pcs, profiles),
            ),
      ],
    );
  }
}

/// Status of one server against the session's known online set.
@visibleForTesting
ServerSignInStatus serverSignInStatus({required String serverId, required Map<String, bool> onlineIds}) {
  final online = onlineIds[serverId];
  if (online == null) return ServerSignInStatus.unknown;
  return online ? ServerSignInStatus.online : ServerSignInStatus.offline;
}

/// Names of the profiles that use a connection, most useful last (the list is
/// capped at one name + "and N more" so long households never wrap badly).
@visibleForTesting
String usedByLabel({required List<String> profileNames}) {
  if (profileNames.isEmpty) return t.serversAccounts.usedByNone;
  if (profileNames.length == 1) return t.serversAccounts.usedByOne(name: profileNames.single);
  return t.serversAccounts.usedByMany(name: profileNames.first, count: profileNames.length - 1);
}

List<String> _profileNamesUsing(String connectionId, List<ProfileConnection> pcs, List<Profile> profiles) {
  final namesById = {for (final profile in profiles) profile.id: profile.displayName};
  return [
    for (final pc in pcs)
      if (pc.connectionId == connectionId) ?namesById[pc.profileId],
  ];
}

class _StatusDot extends StatelessWidget {
  final ServerSignInStatus status;

  const _StatusDot({required this.status});

  @override
  Widget build(BuildContext context) {
    final color = switch (status) {
      ServerSignInStatus.online => const Color(0xFF66BB6A),
      ServerSignInStatus.offline => const Color(0xFFEF5350),
      ServerSignInStatus.unknown => Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.38),
    };
    return Semantics(
      label: switch (status) {
        ServerSignInStatus.online => t.serversAccounts.online,
        ServerSignInStatus.offline => t.serversAccounts.offline,
        ServerSignInStatus.unknown => t.serversAccounts.unknown,
      },
      child: Container(
        width: 9,
        height: 9,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}

/// One Plex account: header row plus a status line per server the account
/// exposes, since a single sign-in can reach many servers with independent
/// reachability.
class _PlexAccountTile extends StatelessWidget {
  final PlexAccountConnection connection;
  final Map<String, bool> serverStatus;
  final List<String> usedBy;

  const _PlexAccountTile({required this.connection, required this.serverStatus, required this.usedBy});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final muted = theme.colorScheme.onSurface.withValues(alpha: 0.6);
    final onlineCount = connection.servers.where((s) => serverStatus[s.clientIdentifier] == true).length;
    final allKnown = connection.servers.every((s) => serverStatus.containsKey(s.clientIdentifier));

    return ListTile(
      leading: BackendBadge(backend: connection.backend, size: 24),
      title: Text(connection.displayLabel),
      subtitle: Column(
        crossAxisAlignment: .start,
        children: [
          if (connection.servers.isNotEmpty && allKnown)
            Text(t.serversAccounts.serversOnline(online: onlineCount, total: connection.servers.length)),
          if (connection.servers.isNotEmpty)
            for (final server in connection.servers)
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Row(
                  children: [
                    _StatusDot(
                      status: serverSignInStatus(serverId: server.clientIdentifier, onlineIds: serverStatus),
                    ),
                    const SizedBox(width: 7),
                    Expanded(
                      child: Text(
                        server.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall?.copyWith(color: muted),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(switch (serverSignInStatus(serverId: server.clientIdentifier, onlineIds: serverStatus)) {
                      ServerSignInStatus.online => t.serversAccounts.online,
                      ServerSignInStatus.offline => t.serversAccounts.offline,
                      ServerSignInStatus.unknown => t.serversAccounts.unknown,
                    }, style: theme.textTheme.bodySmall?.copyWith(color: muted)),
                  ],
                ),
              ),
          Text(usedByLabel(profileNames: usedBy)),
        ],
      ),
      isThreeLine: connection.servers.isNotEmpty,
    );
  }
}

/// One Jellyfin or Emby server: a single row — the connection *is* the server.
class _MediaBrowserTile extends StatelessWidget {
  final JellyfinConnection connection;
  final ServerSignInStatus status;
  final List<String> usedBy;

  const _MediaBrowserTile({required this.connection, required this.status, required this.usedBy});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final muted = theme.colorScheme.onSurface.withValues(alpha: 0.6);
    final statusLabel = switch (status) {
      ServerSignInStatus.online => t.serversAccounts.online,
      ServerSignInStatus.offline => t.serversAccounts.offline,
      ServerSignInStatus.unknown => t.serversAccounts.unknown,
    };

    return ListTile(
      leading: BackendBadge(backend: connection.backend, size: 24),
      title: Text(connection.displayLabel),
      subtitle: Text(
        '$statusLabel · ${usedByLabel(profileNames: usedBy)}',
        style: theme.textTheme.bodySmall?.copyWith(color: muted),
      ),
      trailing: FocusablePopupMenuButton<String>(
        icon: const AppIcon(Symbols.more_vert_rounded, fill: 1),
        tooltip: t.profiles.manage,
        onSelected: (value) async {
          if (value != 'edit_urls') return;
          final changed = await Navigator.of(
            context,
          ).push<bool>(MaterialPageRoute(builder: (_) => EditJellyfinConnectionScreen(connection: connection)));
          if (changed != true || !context.mounted) return;
          // Rebind only if the active session actually uses this connection —
          // the same rule ProfileDetailScreen applies after an edit.
          final active = Provider.of<ActiveProfileProvider?>(context, listen: false)?.active;
          if (active == null) return;
          final pcs = await Provider.of<ProfileConnectionRegistry>(context, listen: false).listForProfile(active.id);
          if (!context.mounted) return;
          if (pcs.any((pc) => pc.connectionId == connection.id)) {
            unawaited(context.read<ActiveProfileBinder>().rebindIfActive(active.id));
          }
        },
        itemBuilder: (_) => [AppMenuItem(value: 'edit_urls', label: t.serversAccounts.editUrls)],
      ),
    );
  }
}
