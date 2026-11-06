import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../i18n/strings.g.dart';
import '../../navigation/profile_session_screen.dart';
import '../../profiles/active_profile_provider.dart';
import '../../profiles/profile_avatar.dart';
import '../../services/kids_profile_service.dart';
import '../../services/profile_appearance_service.dart';
import '../../utils/error_dialog.dart';
import '../../widgets/focused_scroll_scaffold.dart';
import 'add_local_profile_screen.dart';
import 'kids_settings_screen.dart';
import 'parent_access.dart';
import 'profile_detail_screen.dart';
import 'profile_switch_screen.dart';

/// Post-sign-in household welcome. Settings uses the separate family dashboard.
class HouseholdSetupScreen extends StatefulWidget {
  const HouseholdSetupScreen({super.key, this.onboarding = false, this.initialPromptHandled = false});
  final bool onboarding;
  final bool initialPromptHandled;
  @override
  State<HouseholdSetupScreen> createState() => _HouseholdSetupScreenState();
}

class _HouseholdSetupScreenState extends State<HouseholdSetupScreen> {
  bool _finishing = false;

  Future<void> _finish() async {
    if (_finishing || !mounted) return;
    setState(() => _finishing = true);
    try {
      await ProfileAppearanceService.instance.completeSetup();
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => ProfileSessionScreen(initialPromptHandled: widget.initialPromptHandled)),
      );
    } catch (_) {
      if (mounted) {
        setState(() => _finishing = false);
        showErrorDialog(context, t.household.saveFailed);
      }
    }
  }

  Future<void> _add() async {
    if (!await ensureParentAccess(context) || !mounted) return;
    await Navigator.of(context).push(MaterialPageRoute(builder: (_) => const AddLocalProfileScreen()));
  }

  @override
  Widget build(BuildContext context) {
    final active = context.watch<ActiveProfileProvider>();
    final childSession = KidsProfileService.instance.isActiveKids;
    if (childSession && !widget.onboarding) return const KidsSettingsScreen();
    final profile = active.active;
    return PopScope(
      canPop: !widget.onboarding,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop && widget.onboarding) _finish();
      },
      child: FocusedScrollScaffold(
        automaticallyImplyLeading: !widget.onboarding,
        onBackPressed: widget.onboarding ? _finish : null,
        title: Text(widget.onboarding ? t.household.welcome : t.household.profiles),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(24),
            sliver: SliverList.list(
              children: [
                Text(
                  widget.onboarding ? t.household.welcomeHint : t.household.manageHint,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 24),
                if (profile != null) ...[
                  Row(
                    children: [
                      ProfileAvatar(profile: profile, size: 80, avatarUrl: active.avatarUrlFor(profile.id)),
                      const SizedBox(width: 20),
                      Expanded(child: Text(profile.displayName, style: Theme.of(context).textTheme.headlineSmall)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  if (!childSession)
                    OutlinedButton.icon(
                      onPressed: () => Navigator.of(
                        context,
                      ).push(MaterialPageRoute(builder: (_) => ProfileDetailScreen(profile: profile))),
                      icon: const Icon(Icons.edit_rounded),
                      label: Text(t.household.personalise),
                    ),
                ],
                const SizedBox(height: 20),
                if (!childSession) ...[
                  FilledButton.icon(
                    key: const ValueKey('household-add-profile'),
                    onPressed: _finishing ? null : _add,
                    icon: const Icon(Icons.person_add_alt_1_rounded),
                    label: Text(t.household.addProfile),
                  ),
                  const SizedBox(height: 12),
                  Text(t.household.addHint),
                  const SizedBox(height: 12),
                  Text(t.household.sharedHint),
                ],
                const SizedBox(height: 20),
                OutlinedButton.icon(
                  onPressed: _finishing
                      ? null
                      : () => Navigator.of(
                          context,
                          rootNavigator: true,
                        ).push(MaterialPageRoute(builder: (_) => const ProfileSwitchScreen())),
                  icon: const Icon(Icons.people_alt_outlined),
                  label: Text(t.household.manageProfiles),
                ),
                if (widget.onboarding) ...[
                  const SizedBox(height: 28),
                  Text(t.household.addLater),
                  const SizedBox(height: 16),
                  FilledButton(
                    key: const ValueKey('household-start-watching'),
                    onPressed: _finishing ? null : _finish,
                    child: Text(t.household.startWatching),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
