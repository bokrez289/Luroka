import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../i18n/strings.g.dart';
import '../profiles/active_profile_provider.dart';
import '../profiles/profile.dart';
import '../profiles/profile_avatar.dart';
import 'app_icon.dart';
import 'app_menu.dart';

/// Shared ordering and presentation for the Home and TV-dock profile menus.
List<AppMenuEntry<String>> buildProfileMenuEntries({
  required ActiveProfileProvider provider,
  required bool isKids,
  required bool showDownloads,
  required bool showWatchTogether,
  required bool showCustomizeHome,
  bool showLiveTv = false,
  bool showHomeOptions = false,
  bool showDirectProfiles = false,
}) {
  final active = provider.active;
  final switchable = showDirectProfiles ? provider.pickerProfiles.where((p) => p.id != active?.id) : <Profile>[];
  return [
    if (active != null)
      AppMenuHeader<String>(
        estimatedHeight: 76,
        child: _ProfileMenuIdentity(profile: active, avatarUrl: provider.avatarUrlFor(active.id)),
      ),
    AppMenuHeader<String>(label: t.profiles.sectionTitle),
    AppMenuItem<String>(value: 'switch_profile', icon: Symbols.account_circle_rounded, label: t.family.switchProfile),
    for (final profile in switchable)
      AppMenuItem<String>(
        value: 'profile:${profile.id}',
        leading: ProfileAvatar(profile: profile, size: 24, avatarUrl: provider.avatarUrlFor(profile.id)),
        label: profile.displayName,
        trailing: profile.isPinProtected ? const AppIcon(Symbols.lock_rounded, fill: 1, size: 14) : null,
      ),
    if (!isKids)
      AppMenuItem<String>(value: 'manage_profiles', icon: Symbols.group_rounded, label: t.profiles.manageProfiles),
    if (!isKids && active != null)
      AppMenuItem<String>(value: 'activity', icon: Symbols.insights_rounded, label: t.family.activity),
    AppMenuHeader<String>(label: t.profiles.quickAccess),
    AppMenuItem<String>(value: 'settings', icon: Symbols.settings_rounded, label: t.common.settings),
    if (!isKids && showCustomizeHome)
      AppMenuItem<String>(
        value: 'customize_home',
        icon: Symbols.dashboard_customize_rounded,
        label: t.homeLayout.title,
      ),
    if (!isKids && showHomeOptions)
      AppMenuItem<String>(value: 'home_options', icon: Symbols.tune_rounded, label: t.lurokaWorkspace.homeOptions),
    if (!isKids && active != null)
      AppMenuItem<String>(value: 'sources', icon: Symbols.video_library_rounded, label: t.sourceLibraries.title),
    if (!isKids && showDownloads)
      AppMenuItem<String>(value: 'downloads', icon: Symbols.download_rounded, label: t.navigation.downloads),
    if (!isKids && showLiveTv)
      AppMenuItem<String>(value: 'live_tv', icon: Symbols.live_tv_rounded, label: t.navigation.liveTv),
    if (!isKids && showWatchTogether)
      AppMenuItem<String>(value: 'together', icon: Symbols.group_rounded, label: t.watchTogether.title),
    if (!isKids) ...[
      const AppMenuDivider<String>(),
      AppMenuItem<String>(
        value: 'logout',
        icon: Symbols.logout_rounded,
        label: t.profiles.signOutDevice,
        destructive: true,
      ),
    ],
  ];
}

class _ProfileMenuIdentity extends StatelessWidget {
  const _ProfileMenuIdentity({required this.profile, this.avatarUrl});

  final Profile profile;
  final String? avatarUrl;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Semantics(
      key: const ValueKey('profile-menu-identity'),
      label: '${profile.displayName}, ${t.profiles.active}',
      excludeSemantics: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            ProfileAvatar(profile: profile, size: 46, avatarUrl: avatarUrl),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    profile.displayName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium,
                  ),
                  Text(
                    t.profiles.active,
                    style: theme.textTheme.labelMedium?.copyWith(color: theme.colorScheme.primary),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
