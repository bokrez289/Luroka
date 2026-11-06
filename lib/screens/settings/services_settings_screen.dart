import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../i18n/strings.g.dart';
import '../../models/catalog/catalog_item.dart';
import '../../providers/seerr_account_provider.dart';
import '../../providers/catalog_sources_provider.dart';
import '../../profiles/active_profile_provider.dart';
import 'tmdb_settings_screen.dart';
import '../../services/discord_rpc_service.dart';
import '../../services/settings_service.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/catalog_source_logo.dart';
import '../../widgets/focused_scroll_scaffold.dart';
import '../../widgets/focusable_list_tile.dart';
import '../../widgets/setting_tile.dart';
import '../../widgets/settings_section.dart';
import 'seerr_connect_screen.dart';
import 'seerr_settings_screen.dart';
import 'tracker_service_info.dart';
import 'integration_presentation.dart';
import 'tracker_integration_screen.dart';

/// Unified hub for all connected services: the watch-progress trackers
/// (Trakt, MyAnimeList, AniList, Simkl) and the Seerr request server. Each
/// row opens its service-specific settings screen.
class ServicesSettingsScreen extends StatelessWidget {
  const ServicesSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final profile = context.watch<ActiveProfileProvider?>()?.active;
    return FocusedScrollScaffold(
      title: Text(t.services.title),
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Text(
                t.services.hubSubtitle,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
              ),
            ),
            if (profile != null)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                child: Text(
                  t.profileIntegrations.forProfile(name: profile.displayName),
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: IntegrationHeader(
                source: CatalogSourceId.seerr,
                title: t.services.integrations,
                description: t.services.hubSubtitle,
              ),
            ),
            SettingsGroup(
              title: t.services.discoverySection,
              children: [
                _seerr(),
                Consumer<CatalogSourcesProvider>(
                  builder: (context, sources, _) => _ServiceHubRow(
                    leading: const CatalogSourceLogo(CatalogSourceId.tmdb, size: 24),
                    title: t.lurokaDiscovery.tmdbSettings,
                    description: integrationDescription(CatalogSourceId.tmdb),
                    connected: sources.tmdbSource != null,
                    username: null,
                    onTap: () =>
                        Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const TmdbSettingsScreen())),
                  ),
                ),
              ],
            ),
            SettingsGroup(
              title: t.services.trackingSection,
              children: [for (final info in TrackerServiceInfo.all) _TrackerHubRow(info)],
            ),
            if (DiscordRPCService.isAvailable)
              SettingsGroup(
                title: t.services.integrations,
                children: [
                  SettingSwitchTile(
                    pref: SettingsService.enableDiscordRPC,
                    icon: Symbols.chat_rounded,
                    title: t.settings.discordRichPresence,
                    subtitle: t.settings.discordRichPresenceDescription,
                  ),
                ],
              ),
            const SizedBox(height: 24),
          ]),
        ),
      ],
    );
  }

  Widget _seerr() => Consumer<SeerrAccountProvider>(
    builder: (context, account, _) => _ServiceHubRow(
      leading: const CatalogSourceLogo(CatalogSourceId.seerr, size: 24),
      title: t.services.names.seerr,
      description: integrationDescription(CatalogSourceId.seerr),
      connected: account.isConnected,
      username: account.isConnected ? account.displayName : null,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => account.isConnected ? const SeerrSettingsScreen() : const SeerrConnectScreen(),
          ),
        );
      },
    ),
  );
}

/// Hub row for a watch tracker. Owns the `watch` on that service's account
/// provider so only this row rebuilds when the connection state changes.
class _TrackerHubRow extends StatelessWidget {
  final TrackerServiceInfo info;

  const _TrackerHubRow(this.info);

  @override
  Widget build(BuildContext context) {
    final connected = info.isConnected(context);
    return _ServiceHubRow(
      leading: CatalogSourceLogo(info.logoSource, size: 24),
      title: info.displayName,
      description: integrationDescription(info.logoSource),
      connected: connected,
      username: connected ? info.username(context) : null,
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => TrackerIntegrationScreen(info: info)));
      },
    );
  }
}

class _ServiceHubRow extends StatelessWidget {
  final Widget leading;
  final String title;
  final String description;
  final bool connected;

  /// Non-null when connected. When null, the subtitle shows "Not connected".
  final String? username;

  final VoidCallback onTap;

  const _ServiceHubRow({
    required this.leading,
    required this.title,
    required this.description,
    required this.connected,
    required this.username,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return FocusableListTile(
      leading: leading,
      title: Text(title),
      subtitle: Text(
        '$description\n${!connected
            ? t.services.notConnected
            : username != null
            ? t.services.connectedAs(username: username!)
            : t.trakt.connected}',
      ),
      trailing: const AppIcon(Symbols.chevron_right_rounded, fill: 1),
      onTap: onTap,
    );
  }
}
