import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../i18n/strings.g.dart';
import '../../profiles/active_profile_provider.dart';
import '../../services/kids_profile_service.dart';
import '../../services/settings_service.dart';
import '../../widgets/settings_page.dart';
import '../../widgets/settings_section.dart';
import '../../widgets/focusable_list_tile.dart';
import '../../focus/focusable_button.dart';
import '../../utils/dialogs.dart';
import '../../utils/error_dialog.dart';
import 'kids_profile_screen.dart';
import 'kids_settings_screen.dart';
import 'parent_access.dart';
import 'kids_profile_backup_actions.dart';

class ParentalControlsScreen extends StatefulWidget {
  const ParentalControlsScreen({super.key});

  @override
  State<ParentalControlsScreen> createState() => _ParentalControlsScreenState();
}

class _ParentalControlsScreenState extends State<ParentalControlsScreen> {
  bool _restoring = false;
  Future<void> _restore() async {
    if (_restoring) return;
    setState(() => _restoring = true);
    try {
      final backup = await chooseKidsProfileBackup(context);
      if (!mounted || backup == null) return;
      await Navigator.of(context).push(MaterialPageRoute(builder: (_) => KidsProfileScreen(backup: backup)));
    } finally {
      if (mounted) setState(() => _restoring = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final active = context.watch<ActiveProfileProvider>();
    final service = KidsProfileService.instance;
    return ListenableBuilder(
      listenable: service,
      builder: (context, _) {
        if (service.isActiveKids) return const KidsSettingsScreen();
        final profile = active.active;
        final children = active.profiles.where((p) => service.isKids(p.id)).toList();
        return SettingsPage(
          title: Text(t.family.safety),
          children: [
            const SizedBox(height: 16),
            if (service.hasKids && !service.hasParentPin)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.shield_outlined, color: Colors.amber),
                    const SizedBox(height: 8),
                    Text(t.family.missingPin),
                    const SizedBox(height: 12),
                    FocusableButton(
                      onPressed: () => setUpParentPin(context),
                      child: FilledButton(onPressed: () => setUpParentPin(context), child: Text(t.kids.setParentPin)),
                    ),
                  ],
                ),
              ),
            SettingsGroup(
              title: t.family.protection,
              children: [
                FocusableListTile(
                  leading: const Icon(Icons.lock_outline_rounded),
                  title: Text(t.kids.parentPin),
                  subtitle: Text(service.hasParentPin ? t.family.parentPinOn : t.family.parentPinOff),
                  trailing: const Icon(Icons.chevron_right_rounded),
                  onTap: () => setUpParentPin(context),
                ),
                FocusableListTile(
                  key: const ValueKey('kids-allow-profile-exit'),
                  leading: const Icon(Icons.swap_horiz_rounded),
                  title: Text(t.profileStartup.allowKidsExit),
                  subtitle: Text(t.profileStartup.allowKidsExitHint),
                  trailing: ExcludeFocus(
                    child: Switch(
                      value:
                          SettingsService.instanceOrNull?.read(SettingsService.kidsAllowExitWithoutParentPin) ?? false,
                      onChanged: (_) => _toggleKidsExit(),
                    ),
                  ),
                  onTap: _toggleKidsExit,
                ),
                if (profile != null)
                  FocusableListTile(
                    leading: const Icon(Icons.visibility_off_outlined),
                    title: Text(t.kids.hideWatched),
                    subtitle: Text(t.family.hideScope),
                    trailing: ExcludeFocus(
                      child: Switch(value: service.hideKidsFor(profile.id), onChanged: (_) => _hideKids(profile.id)),
                    ),
                    onTap: () => _hideKids(profile.id),
                  ),
              ],
            ),
            const SizedBox(height: 20),
            SettingsGroup(
              title: t.family.kidsProfiles,
              children: [
                if (children.isEmpty) Padding(padding: const EdgeInsets.all(16), child: Text(t.family.emptyKids)),
                for (final child in children)
                  FocusableListTile(
                    leading: const Icon(Icons.child_care_rounded),
                    title: Text(child.displayName),
                    subtitle: Text(
                      service.ageFor(child.id) == 0
                          ? t.family.allAges
                          : t.family.upToAge(age: service.ageFor(child.id)),
                    ),
                    trailing: const Icon(Icons.chevron_right_rounded),
                    onTap: () async {
                      if (!await ensureParentAccess(context) || !context.mounted || service.isActiveKids) return;
                      await Navigator.of(
                        context,
                      ).push(MaterialPageRoute(builder: (_) => KidsProfileScreen(profile: child)));
                    },
                  ),
                FocusableListTile(
                  leading: const Icon(Icons.person_add_alt_1_rounded),
                  title: Text(t.family.addChild),
                  subtitle: Text(t.family.childHint),
                  onTap: () async {
                    if (!await ensureParentAccess(context) || !context.mounted || service.isActiveKids) return;
                    await Navigator.of(context).push(MaterialPageRoute(builder: (_) => const KidsProfileScreen()));
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            SettingsGroup(
              title: t.family.backupHistory,
              children: [
                FocusableListTile(
                  key: const ValueKey('kids-restore-profile'),
                  leading: const Icon(Icons.restore_rounded),
                  title: Text(t.kids.restoreProfile),
                  enabled: !_restoring,
                  onTap: _restoring ? null : _restore,
                ),
                FocusableListTile(
                  leading: const Icon(Icons.history_rounded),
                  title: Text(t.kids.clearHistory),
                  onTap: _clearHistory,
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.all(16), child: Text(t.family.localScope)),
          ],
        );
      },
    );
  }

  Future<void> _toggleKidsExit() async {
    final service = KidsProfileService.instance;
    final owner = service.activeId;
    if (!await ensureParentAccess(context) || !mounted || service.isActiveKids || service.activeId != owner) return;
    final settings = await SettingsService.getInstance();
    if (!mounted || service.isActiveKids || service.activeId != owner) return;
    await settings.write(
      SettingsService.kidsAllowExitWithoutParentPin,
      !settings.read(SettingsService.kidsAllowExitWithoutParentPin),
    );
    if (mounted) setState(() {});
  }

  Future<void> _hideKids(String id) async {
    final service = KidsProfileService.instance;
    final owner = service.activeId;
    if (!await ensureParentAccess(context) || !mounted || service.isActiveKids || service.activeId != owner) return;
    try {
      await service.setHideKids(id, !service.hideKidsFor(id));
    } catch (_) {
      if (mounted) await showErrorDialog(context, t.kids.saveFailed);
    }
  }

  Future<void> _clearHistory() async {
    final service = KidsProfileService.instance;
    final owner = service.activeId;
    if (!await showConfirmDialog(
          context,
          title: t.kids.clearHistory,
          message: t.family.clearHistoryConfirm,
          confirmText: t.kids.clearHistory,
        ) ||
        !mounted) {
      return;
    }
    if (!await ensureParentAccess(context) || !mounted || service.activeId != owner || service.isActiveKids) return;
    try {
      await service.clearWatched();
    } catch (_) {
      if (mounted) await showErrorDialog(context, t.kids.saveFailed);
    }
  }
}
