import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../focus/focusable_button.dart';
import '../../i18n/strings.g.dart';
import '../../profiles/active_profile_provider.dart';
import '../../profiles/profile.dart';
import '../../profiles/profile_avatar.dart';
import '../../services/device_performance.dart';
import '../../services/kids_profile_service.dart';
import '../../services/settings_service.dart';
import '../../services/screen_time_service.dart';
import '../../services/viewing_activity_summary.dart';
import '../../theme/mono_tokens.dart';
import '../../utils/platform_detector.dart';
import '../../widgets/focusable_list_tile.dart';
import '../../widgets/settings_page.dart';
import '../../widgets/settings_section.dart';
import '../../widgets/setting_tile.dart';
import '../../widgets/settings_workspace_scope.dart';
import '../settings/screen_time_screen.dart';
import 'add_local_profile_screen.dart';
import 'kids_profile_screen.dart';
import 'kids_settings_screen.dart';
import 'parent_access.dart';
import 'parental_controls_screen.dart';
import 'profile_detail_screen.dart';
import 'profile_management_access.dart';
import 'profile_switch_screen.dart';

String familyPeopleSummary(ActiveProfileProvider? active) {
  if (active == null || (!active.isInitialized && active.profiles.isEmpty)) return t.family.manageHint;
  final profiles = active.pickerProfiles;
  final kids = profiles.where((p) => KidsProfileService.instance.isKids(p.id)).length;
  return [t.family.peopleCount(n: profiles.length), if (kids > 0) t.family.kidsCount(n: kids)].join(' · ');
}

class FamilySummary extends StatelessWidget {
  const FamilySummary({super.key});
  @override
  Widget build(BuildContext context) {
    final active = context.watch<ActiveProfileProvider?>();
    return ListenableBuilder(
      listenable: KidsProfileService.instance,
      builder: (context, _) => Text(familyPeopleSummary(active)),
    );
  }
}

enum _AddPerson { adult, child }

Future<void> showAddFamilyPerson(BuildContext context) async {
  final kids = KidsProfileService.instance;
  if (kids.isActiveKids) return;
  final owner = context.read<ActiveProfileProvider>().activeId;
  Widget choices(BuildContext context) => SafeArea(
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(t.family.addPerson, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            FocusableListTile(
              autofocus: true,
              leading: const Icon(Icons.person_outline_rounded),
              title: Text(t.family.adultTeen),
              subtitle: Text(t.family.adultHint),
              onTap: () => Navigator.pop(context, _AddPerson.adult),
            ),
            const SizedBox(height: 12),
            FocusableListTile(
              leading: const Icon(Icons.child_care_rounded),
              title: Text(t.family.child),
              subtitle: Text(t.family.childHint),
              onTap: () => Navigator.pop(context, _AddPerson.child),
            ),
          ],
        ),
      ),
    ),
  );
  final choice = PlatformDetector.isTV()
      ? await showDialog<_AddPerson>(
          context: context,
          builder: (context) => Dialog(child: SizedBox(width: 540, child: choices(context))),
        )
      : await showModalBottomSheet<_AddPerson>(context: context, isScrollControlled: true, builder: choices);
  if (!context.mounted ||
      choice == null ||
      kids.isActiveKids ||
      context.read<ActiveProfileProvider>().activeId != owner) {
    return;
  }
  if (!await ensureParentAccess(context) ||
      !context.mounted ||
      kids.isActiveKids ||
      context.read<ActiveProfileProvider>().activeId != owner) {
    return;
  }
  await Navigator.of(context).push(
    MaterialPageRoute(
      builder: (_) => choice == _AddPerson.adult
          ? const AddLocalProfileScreen(offerSwitchAfterCreate: true)
          : const KidsProfileScreen(),
    ),
  );
}

class FamilySettingsScreen extends StatefulWidget {
  const FamilySettingsScreen({super.key, this.firstFocus});
  final FocusNode? firstFocus;
  @override
  State<FamilySettingsScreen> createState() => _FamilySettingsScreenState();
}

class _FamilySettingsScreenState extends State<FamilySettingsScreen> {
  String? _activityOwner;
  String? _activityScope;
  Future<ViewingActivitySummary?>? _activity;
  Future<Map<String, int>>? _todayPerProfile;
  bool _managing = false;

  @override
  void initState() {
    super.initState();
    KidsProfileService.instance.addListener(_policyChanged);
  }

  @override
  void dispose() {
    KidsProfileService.instance.removeListener(_policyChanged);
    super.dispose();
  }

  void _policyChanged() {
    if (!mounted) return;
    final scope = (_activityProfiles(context.read<ActiveProfileProvider?>()).toList()..sort()).join('\u0000');
    if (scope == _activityScope) return;
    _activityScope = scope;
    _refreshActivity();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final service = context.watch<ScreenTimeService?>();
    final active = context.watch<ActiveProfileProvider?>();
    final eligible = _activityProfiles(active);
    final scope = (eligible.toList()..sort()).join('\u0000');
    if (_activityOwner != service?.profileId || _activityScope != scope || _activity == null) {
      _activityOwner = service?.profileId;
      _activityScope = scope;
      _activity = service == null || service.profileId != active?.activeId
          ? Future.value() : loadViewingActivitySummary(service);
      _todayPerProfile = _loadTodayPerProfile(service, eligible);
    }
  }

  Set<String> _activityProfiles(ActiveProfileProvider? active) {
    final viewer = active?.activeId;
    return {for (final profile in active?.profiles ?? const <Profile>[])
      if (KidsProfileService.instance.canViewActivity(viewerId: viewer, targetId: profile.id)) profile.id};
  }

  /// Per-person "Today" chips for the family hub; single group-by over the
  /// daily aggregates, after the active profile's pending time is flushed.
  Future<Map<String, int>> _loadTodayPerProfile(ScreenTimeService? service, Set<String> allowed) async {
    if (service == null || !allowed.contains(service.profileId)) return const {};
    await loadViewingActivitySummary(service);
    return service.database.getScreenTimePerProfileForDate(localDate: localDateKey(DateTime.now()), profileIds: allowed);
  }

  void _refreshActivity() {
    final service = context.read<ScreenTimeService?>();
    final active = context.read<ActiveProfileProvider?>();
    setState(() {
      _activity = service == null || service.profileId != active?.activeId
          ? Future.value() : loadViewingActivitySummary(service);
      _todayPerProfile = _loadTodayPerProfile(service, _activityProfiles(active));
    });
  }

  Future<void> _manage(Profile profile) async {
    if (_managing) return;
    final origin = FocusManager.instance.primaryFocus;
    setState(() => _managing = true);
    try {
      if (!await ensureProfileManagementAccess(context, profile) || !mounted) return;
      final active = context.read<ActiveProfileProvider>();
      final current = active.profiles.where((p) => p.id == profile.id).firstOrNull;
      if (current == null || KidsProfileService.instance.isActiveKids) return;
      await Navigator.of(context).push(MaterialPageRoute(builder: (_) => ProfileDetailScreen(profile: current)));
    } finally {
      if (mounted) {
        setState(() => _managing = false);
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && (ModalRoute.of(context)?.isCurrent ?? false) && origin?.context?.mounted == true) {
            origin!.requestFocus();
          }
        });
      }
    }
  }

  Future<void> _switch() async {
    await Navigator.of(
      context,
      rootNavigator: true,
    ).push(MaterialPageRoute(builder: (_) => const ProfileSwitchScreen()));
  }

  Future<void> _toggleKidsExit() async {
    final kids = KidsProfileService.instance;
    final owner = kids.activeId;
    if (!await ensureParentAccess(context) || !mounted || kids.isActiveKids || kids.activeId != owner) return;
    final settings = await SettingsService.getInstance();
    if (!mounted || kids.isActiveKids || kids.activeId != owner) return;
    await settings.write(
      SettingsService.kidsAllowExitWithoutParentPin,
      !settings.read(SettingsService.kidsAllowExitWithoutParentPin),
    );
  }

  Future<void> _openActivity() async {
    await Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ScreenTimeScreen()));
    if (!mounted) return;
    _refreshActivity();
  }

  /// Child statistics are available only to the explicitly linked parent.
  Future<void> _openOtherActivity(Profile profile) async {
    if (_managing) return;
    final active = context.read<ActiveProfileProvider>();
    final owner = active.activeId;
    bool authorized() => active.activeId == owner &&
      KidsProfileService.instance.canViewActivity(viewerId: owner, targetId: profile.id);
    if (!authorized()) return;
    final origin = FocusManager.instance.primaryFocus;
    setState(() => _managing = true);
    try {
      if (!await ensureProfileManagementAccess(context, profile) || !mounted || !authorized()) return;
      await Navigator.of(context).push(MaterialPageRoute(builder: (_) => ScreenTimeScreen(profileId: profile.id)));
      if (!mounted) return;
      _refreshActivity();
    } finally {
      if (mounted) {
        setState(() => _managing = false);
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && (ModalRoute.of(context)?.isCurrent ?? false) && origin?.context?.mounted == true) {
            origin!.requestFocus();
          }
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final active = context.watch<ActiveProfileProvider?>();
    return ListenableBuilder(
      listenable: KidsProfileService.instance,
      builder: (context, _) {
        final kids = KidsProfileService.instance;
        if (kids.isActiveKids) return const KidsSettingsScreen();
        final profiles = active?.pickerProfiles ?? const <Profile>[];
        final ordered = [
          ...profiles.where((p) => p.id == active?.activeId),
          ...profiles.where((p) => p.id != active?.activeId),
        ];
        return SettingsPage(
          title: Text(t.family.title),
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: LayoutBuilder(
                builder: (context, bounds) {
                  final people = FutureBuilder<Map<String, int>>(
                    future: _todayPerProfile,
                    builder: (context, todaySnap) {
                      final todayMap = todaySnap.data ?? const <String, int>{};
                      return SettingsGroup(
                        title: t.family.people,
                        children: [
                          if (active?.isInitialized != true && ordered.isEmpty)
                            const Padding(
                              padding: EdgeInsets.all(24),
                              child: Center(child: CircularProgressIndicator()),
                            )
                          else if (ordered.isEmpty)
                            FocusableListTile(
                              leading: const Icon(Icons.person_add_alt_1_rounded),
                              title: Text(t.family.emptyPeople),
                              subtitle: Text(t.family.addPerson),
                              onTap: () => showAddFamilyPerson(context),
                            )
                          else
                            for (final profile in ordered)
                              FamilyProfileTile(
                                profile: profile,
                                active: profile.id == active?.activeId,
                                avatarUrl: active?.avatarUrlFor(profile.id),
                                todayMs: kids.canViewActivity(viewerId: active?.activeId, targetId: profile.id)
                                    ? todayMap[profile.id] : null,
                                onTap: _managing ? null : () => _manage(profile),
                              ),
                        ],
                      );
                    },
                  );
                  final tools = Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SettingsGroup(
                        title: t.family.safety,
                        children: [
                          SettingSwitchTile(
                            key: const ValueKey('family-auto-login'),
                            pref: SettingsService.autoLoginLastProfile,
                            icon: Icons.login_rounded,
                            title: t.profileStartup.autoLogin,
                            subtitle: t.profileStartup.autoLoginHint,
                          ),
                          ValueListenableBuilder<bool>(
                            valueListenable: SettingsService.instance.listenable(
                              SettingsService.kidsAllowExitWithoutParentPin,
                            ),
                            builder: (context, value, _) => FocusableListTile(
                              key: const ValueKey('family-kids-exit'),
                              leading: const Icon(Icons.swap_horiz_rounded),
                              title: Text(t.profileStartup.allowKidsExit),
                              subtitle: Text(t.profileStartup.allowKidsExitHint),
                              trailing: ExcludeFocus(
                                child: Switch(value: value, onChanged: (_) => _toggleKidsExit()),
                              ),
                              onTap: _toggleKidsExit,
                            ),
                          ),
                          WorkspaceSettingRow(
                            title: t.family.safety,
                            description: t.family.safetyHint,
                            settingId: 'family_safety',
                            child: FocusableListTile(
                              leading: Icon(
                                kids.hasKids && !kids.hasParentPin ? Icons.shield_outlined : Icons.shield_rounded,
                                color: kids.hasKids && !kids.hasParentPin
                                    ? Colors.amber
                                    : Theme.of(context).colorScheme.primary,
                              ),
                              title: Text(t.family.safety),
                              subtitle: Text(
                                kids.hasKids && !kids.hasParentPin
                                    ? t.family.missingPin
                                    : kids.hasParentPin
                                    ? t.family.parentPinOn
                                    : t.family.safetyHint,
                              ),
                              trailing: const Icon(Icons.chevron_right_rounded),
                              onTap: () => Navigator.of(
                                context,
                              ).push(MaterialPageRoute(builder: (_) => const ParentalControlsScreen())),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      SettingsGroup(
                        title: t.family.activity,
                        children: [
                          WorkspaceSettingRow(
                            title: t.family.activity,
                            description: t.family.activityScope,
                            settingId: 'family_activity',
                            child: FutureBuilder<ViewingActivitySummary?>(
                              future: _activity,
                              builder: (context, snapshot) {
                                final summary = snapshot.data;
                                return FocusableListTile(
                                  leading: const Icon(Icons.insights_rounded),
                                  title: Text(
                                    t.family.namedActivity(name: active?.active?.displayName ?? t.family.thisProfile),
                                  ),
                                  subtitle: Text(
                                    summary != null && summary.profileId == active?.activeId
                                        ? '${t.screenTime.today} ${formatViewingDuration(summary.todayMs)} · ${t.screenTime.thisWeek} ${formatViewingDuration(summary.weekMs)}'
                                        : t.family.activityScope,
                                  ),
                                  trailing: const Icon(Icons.chevron_right_rounded),
                                  onTap: _openActivity,
                                );
                              },
                            ),
                          ),
                          // Only children linked to the active parent.
                          for (final profile in ordered)
                            if (profile.id != active?.activeId &&
                                kids.canViewActivity(viewerId: active?.activeId, targetId: profile.id))
                              FutureBuilder<Map<String, int>>(
                                future: _todayPerProfile,
                                builder: (context, todaySnap) => FocusableListTile(
                                  leading: const Icon(Icons.insights_outlined),
                                  title: Text(t.family.namedActivity(name: profile.displayName)),
                                  subtitle: Text(
                                    (todaySnap.data?[profile.id]) != null
                                        ? '${t.screenTime.today} ${formatViewingDuration(todaySnap.data![profile.id]!)}'
                                        : t.family.activityScope,
                                  ),
                                  trailing: const Icon(Icons.chevron_right_rounded),
                                  onTap: _managing ? null : () => _openOtherActivity(profile),
                                ),
                              ),
                        ],
                      ),
                    ],
                  );
                  final twoColumns = bounds.maxWidth >= 1000 && MediaQuery.textScalerOf(context).scale(14) / 14 < 1.5;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      FamilyHero(
                        profiles: ordered,
                        activeId: active?.activeId,
                        summary: familyPeopleSummary(active),
                        avatarUrlFor: active?.avatarUrlFor,
                        firstFocus: widget.firstFocus,
                        onSwitch: _switch,
                        onAdd: () => showAddFamilyPerson(context),
                      ),
                      const SizedBox(height: 24),
                      if (twoColumns)
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(flex: 3, child: people),
                            const SizedBox(width: 24),
                            Expanded(flex: 2, child: tools),
                          ],
                        )
                      else ...[
                        people,
                        const SizedBox(height: 20),
                        tools,
                      ],
                      const SizedBox(height: 20),
                      Text(t.family.localScope, style: Theme.of(context).textTheme.bodySmall),
                    ],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class FamilyHero extends StatelessWidget {
  const FamilyHero({
    super.key,
    required this.profiles,
    required this.activeId,
    required this.summary,
    required this.onSwitch,
    required this.onAdd,
    this.firstFocus,
    this.avatarUrlFor,
  });
  final List<Profile> profiles;
  final String? activeId;
  final String summary;
  final VoidCallback onSwitch, onAdd;
  final FocusNode? firstFocus;
  final String? Function(String)? avatarUrlFor;
  Widget _avatars(ColorScheme colors) => profiles.isEmpty
      ? CircleAvatar(
          radius: 28,
          backgroundColor: colors.primary.withValues(alpha: .12),
          child: Icon(Icons.people_outline_rounded, color: colors.primary),
        )
      : SizedBox(
          height: 56,
          width: 56.0 + (profiles.take(4).length - 1).clamp(0, 3) * 42.0,
          child: Stack(
            children: [
              for (final (index, profile) in profiles.take(4).indexed)
                Positioned(
                  left: index * 42,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: profile.id == activeId ? colors.primary : colors.surface,
                    ),
                    child: ProfileAvatar(
                      profile: profile,
                      size: 50,
                      showLockBadge: false,
                      avatarUrl: avatarUrlFor?.call(profile.id),
                    ),
                  ),
                ),
            ],
          ),
        );
  Widget _heading(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(t.family.yourPeople, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700)),
      const SizedBox(height: 5),
      Text(summary),
    ],
  );
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: MediaQuery.disableAnimationsOf(context)
          ? Duration.zero
          : DevicePerformance.reducedDuration(const Duration(milliseconds: 180)),
      builder: (context, opacity, child) => Opacity(opacity: opacity, child: child),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          gradient: LinearGradient(colors: [colors.primary.withValues(alpha: .15), colors.surfaceContainerLow]),
          border: Border.all(color: colors.primary.withValues(alpha: .2)),
        ),
        child: LayoutBuilder(
          builder: (context, bounds) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (bounds.maxWidth >= 480 && MediaQuery.textScalerOf(context).scale(14) / 14 < 1.5)
                Row(
                  children: [
                    _avatars(colors),
                    const SizedBox(width: 18),
                    Expanded(child: _heading(context)),
                  ],
                )
              else ...[
                _avatars(colors),
                const SizedBox(height: 12),
                _heading(context),
              ],
              const SizedBox(height: 16),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: bounds.maxWidth),
                    child: WorkspaceSettingRow(
                      title: t.family.switchProfile,
                      description: t.family.switchHint,
                      settingId: 'family_switch',
                      child: FocusableButton(
                        focusNode: firstFocus,
                        onPressed: onSwitch,
                        child: FilledButton.icon(
                          onPressed: onSwitch,
                          icon: const Icon(Icons.switch_account_rounded),
                          label: Text(t.family.switchProfile),
                        ),
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: bounds.maxWidth),
                    child: WorkspaceSettingRow(
                      title: t.family.addPerson,
                      description: t.family.addHint,
                      settingId: 'family_add',
                      child: FocusableButton(
                        onPressed: onAdd,
                        child: OutlinedButton.icon(
                          onPressed: onAdd,
                          icon: const Icon(Icons.person_add_alt_1_rounded),
                          label: Text(t.family.addPerson),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FamilyProfileTile extends StatelessWidget {
  const FamilyProfileTile({
    super.key,
    required this.profile,
    required this.active,
    required this.onTap,
    this.avatarUrl,
    this.todayMs,
  });
  final Profile profile;
  final bool active;
  final VoidCallback? onTap;
  final String? avatarUrl;

  /// Watch time recorded today for this person; null (no time yet) hides the
  /// trailing chip.
  final int? todayMs;
  @override
  Widget build(BuildContext context) {
    final service = KidsProfileService.instance;
    final child = service.isKids(profile.id);
    return FocusableListTile(
      key: ValueKey('family_profile_${profile.id}'),
      leading: ProfileAvatar(profile: profile, size: 44, showLockBadge: false, avatarUrl: avatarUrl),
      title: Text(profile.displayName, maxLines: 2, overflow: TextOverflow.ellipsis),
      subtitle: Text(
        [
          if (active) t.family.you,
          child ? t.family.child : t.family.adult,
          if (child)
            service.ageFor(profile.id) == 0 ? t.family.allAges : t.family.upToAge(age: service.ageFor(profile.id)),
          if (profile.isPinProtected) t.family.profilePin,
        ].join(' · '),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (todayMs != null) ...[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(999),
                border: Border.all(color: tokens(context).outline.withValues(alpha: 0.4)),
              ),
              child: Text(
                '${t.screenTime.today} ${formatViewingDuration(todayMs!)}',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(color: tokens(context).textMuted),
              ),
            ),
            const SizedBox(width: 6),
          ],
          if (profile.isPinProtected) ...[const Icon(Icons.lock_outline_rounded, size: 16), const SizedBox(width: 6)],
          const Icon(Icons.chevron_right_rounded),
        ],
      ),
      onTap: onTap,
    );
  }
}
