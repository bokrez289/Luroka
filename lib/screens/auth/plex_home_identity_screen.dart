import 'package:flutter/material.dart';

import '../../connection/connection.dart';
import '../../focus/focusable_button.dart';
import '../../focus/key_event_utils.dart';
import '../../i18n/strings.g.dart';
import '../../models/plex/plex_home_user.dart';
import '../../profiles/plex_home_switch.dart';
import '../../profiles/profile.dart';
import '../../profiles/profile_avatar.dart';
import '../../widgets/connection_setup_scaffold.dart';
import '../profile/pin_entry_dialog.dart';

typedef PlexHomeIdentity = ({PlexHomeUser user, String token});

/// The server identity is chosen before creating or selecting a Luroka profile.
Future<PlexHomeIdentity?> selectPlexHomeIdentity(
  BuildContext context, {
  required PlexAccountConnection account,
  required List<PlexHomeUser> users,
  required String accountUuid,
}) async {
  Future<String?> authenticate(PlexHomeUser user) async {
    final result = await mintPlexHomeUserToken(
      account: account,
      homeUserUuid: user.uuid,
      requiresPin: user.protected,
      promptForPin: dialogPinPrompt(context, user.displayName),
      logLabel: user.displayName,
    );
    if (result.status == PlexHomeSwitchStatus.failed) throw StateError('Plex Home switch failed');
    return result.userToken;
  }

  if (users.length == 1 && !users.single.protected) {
    final user = users.single;
    final token = user.uuid == accountUuid ? account.accountToken : await authenticate(user);
    return token == null ? null : (user: user, token: token);
  }
  return Navigator.of(context).push<PlexHomeIdentity>(
    MaterialPageRoute(
      builder: (_) => PlexHomeIdentityScreen(account: account, users: users, authenticate: authenticate),
    ),
  );
}

class PlexHomeIdentityScreen extends StatefulWidget {
  const PlexHomeIdentityScreen({super.key, required this.account, required this.users, required this.authenticate});

  final PlexAccountConnection account;
  final List<PlexHomeUser> users;
  final Future<String?> Function(PlexHomeUser) authenticate;

  @override
  State<PlexHomeIdentityScreen> createState() => _PlexHomeIdentityScreenState();
}

class _PlexHomeIdentityScreenState extends State<PlexHomeIdentityScreen> {
  String? _pending;
  String? _error;

  Future<void> _select(PlexHomeUser user) async {
    if (_pending != null) return;
    setState(() {
      _pending = user.uuid;
      _error = null;
    });
    try {
      final token = await widget.authenticate(user);
      if (!mounted || token == null) return;
      Navigator.of(context).pop<PlexHomeIdentity>((user: user, token: token));
    } catch (_) {
      if (mounted) setState(() => _error = t.errors.failedToSwitchProfile(displayName: user.displayName));
    } finally {
      if (mounted) setState(() => _pending = null);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Focus(
      canRequestFocus: false,
      onKeyEvent: (_, event) => handleBackKeyNavigation(context, event),
      child: ConnectionSetupScaffold(
        title: t.onboarding.plexHomeTitle,
        description: t.onboarding.plexHomeHint,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (final (index, user) in widget.users.indexed)
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: FocusableButton(
                  autofocus: index == 0,
                  borderRadius: 16,
                  onPressed: _pending == null ? () => _select(user) : null,
                  child: Material(
                    color: colors.surfaceContainerLow,
                    borderRadius: BorderRadius.circular(16),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      leading: ProfileAvatar(
                        profile: Profile.virtualPlexHome(connectionId: widget.account.id, homeUser: user),
                        size: 44,
                      ),
                      title: Text(user.displayName),
                      trailing: _pending == user.uuid
                          ? const SizedBox(width: 22, height: 22, child: CircularProgressIndicator(strokeWidth: 2))
                          : Icon(user.protected ? Icons.lock_outline_rounded : Icons.chevron_right_rounded),
                      onTap: _pending == null ? () => _select(user) : null,
                    ),
                  ),
                ),
              ),
            if (_error != null) Text(_error!, style: TextStyle(color: colors.error)),
          ],
        ),
      ),
    );
  }
}
