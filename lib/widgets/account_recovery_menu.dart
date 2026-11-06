import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../focus/focusable_button.dart';
import '../i18n/strings.g.dart';
import '../profiles/active_profile_provider.dart';
import '../screens/profile/parent_access.dart';
import '../screens/profile/profile_teardown.dart';
import '../screens/settings/add_connection_screen.dart';
import '../screens/settings/servers_accounts_screen.dart';
import '../services/kids_profile_service.dart';
import '../utils/error_dialog.dart';
import 'app_menu.dart';

/// Account recovery never depends on a reachable media server. In particular,
/// offline Downloads must not strand the user behind the Home-only profile menu.
class AccountRecoveryMenu extends StatefulWidget {
  const AccountRecoveryMenu({super.key, this.onConnectionAdded});
  final VoidCallback? onConnectionAdded;
  @override
  State<AccountRecoveryMenu> createState() => _AccountRecoveryMenuState();
}

class _AccountRecoveryMenuState extends State<AccountRecoveryMenu> {
  final _menu = GlobalKey<AppMenuButtonState<String>>();
  bool _busy = false;
  Future<void> _select(String value) async {
    if (_busy) return;
    if (value != 'logout' && (!await ensureParentAccess(context) || !mounted)) return;
    setState(() => _busy = true);
    try {
      if (value == 'add') {
        final profile = context.read<ActiveProfileProvider?>()?.active;
        final added = await Navigator.of(
          context,
        ).push<bool>(MaterialPageRoute(builder: (_) => AddConnectionScreen(targetProfile: profile)));
        if (mounted && added == true) widget.onConnectionAdded?.call();
      } else if (value == 'accounts') {
        await Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ServersAccountsScreen()));
      } else if (value == 'logout') {
        await confirmAndLogoutAllProfiles(context);
      }
    } catch (_) {
      if (mounted) showErrorDialog(context, t.errors.connectionFailed);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (KidsProfileService.instance.isActiveKids) return const SizedBox.shrink();
    return FocusableButton(
      onPressed: _busy ? null : () => _menu.currentState?.showButtonMenu(focusFirstItem: true),
      child: AppMenuButton<String>(
        key: _menu,
        enabled: !_busy,
        adaptiveSheet: true,
        tooltip: t.serversAccounts.title,
        icon: const Icon(Icons.manage_accounts_outlined),
        onSelected: _select,
        entriesBuilder: (_) => [
          AppMenuItem(value: 'add', icon: Icons.add_link_rounded, label: t.connections.addConnection),
          AppMenuItem(value: 'accounts', icon: Icons.dns_outlined, label: t.serversAccounts.title),
          const AppMenuDivider(),
          AppMenuItem(value: 'logout', icon: Icons.logout_rounded, label: t.common.logout),
        ],
      ),
    );
  }
}
