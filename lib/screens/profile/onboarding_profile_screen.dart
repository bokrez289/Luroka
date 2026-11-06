import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../../connection/connection_registry.dart';
import '../../focus/focusable_button.dart';
import '../../focus/key_event_utils.dart';
import '../../i18n/strings.g.dart';
import '../../navigation/profile_session_screen.dart';
import '../../profiles/active_profile_binder.dart';
import '../../profiles/active_profile_provider.dart';
import '../../profiles/profile.dart';
import '../../profiles/profile_avatar.dart';
import '../../profiles/profile_connection.dart';
import '../../profiles/profile_connection_registry.dart';
import '../../profiles/profile_registry.dart';
import '../../services/profile_appearance_service.dart';
import '../../services/app_exit_service.dart';
import '../../utils/error_dialog.dart';
import '../../widgets/onboarding_scaffold.dart';
import '../../widgets/profile_avatar_artwork.dart';
import '../settings/add_connection_screen.dart';
import '../settings/source_libraries_screen.dart';
import '../settings/connection_persistence.dart';
import 'add_local_profile_screen.dart';
import 'parent_access.dart';
import 'profile_name_field.dart';

/// Service authentication has already succeeded. Keep the local identity step
/// explicit, then let the user expand their household or start watching.
class OnboardingProfileScreen extends StatefulWidget {
  const OnboardingProfileScreen({super.key, this.initialPromptHandled = false});
  final bool initialPromptHandled;

  @override
  State<OnboardingProfileScreen> createState() => _OnboardingProfileScreenState();
}

class _OnboardingProfileScreenState extends State<OnboardingProfileScreen> {
  final _name = TextEditingController();
  final _nameFocus = FocusNode(debugLabel: 'Onboarding:Name');
  final _continueFocus = FocusNode(debugLabel: 'Onboarding:Continue');
  final _startFocus = FocusNode(debugLabel: 'Onboarding:Start');
  ProfileAvatarPreset _preset = ProfileAvatarPreset.portraitSunrise;
  bool _ready = false;
  bool _busy = false;
  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_initialized) return;
    final profile = context.read<ActiveProfileProvider>().active;
    if (profile == null) return;
    _initialized = true;
    _name.text = profile.displayName;
    _preset = ProfileAppearanceService.instance.presetFor(profile.id) ?? _preset;
  }

  @override
  void dispose() {
    _name.dispose();
    _nameFocus.dispose();
    _continueFocus.dispose();
    _startFocus.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_busy || _name.text.trim().isEmpty) return;
    final active = context.read<ActiveProfileProvider>();
    final source = active.active;
    if (source == null) return;
    setState(() => _busy = true);
    try {
      final profiles = context.read<ProfileRegistry>();
      Profile profile;
      if (source.isLocal) {
        profile = source.copyWith(displayName: _name.text.trim());
        await profiles.rename(profile.id, profile.displayName);
        // Reload the already-unlocked identity rather than activating it again
        // (which would require repeating its local or parent PIN).
        await active.reloadFromStorage();
      } else {
        // Fallback for accounts whose authenticated UUID was unavailable: the
        // existing Plex picker has already checked this Home user's PIN. Copy
        // only that selected identity, never infer an owner from ordering.
        final links = context.read<ProfileConnectionRegistry>();
        final parentId = source.parentConnectionId;
        if (parentId == null) throw StateError('Missing Plex account');
        final connection = await context.read<ConnectionRegistry>().get(parentId);
        final parentLink = await links.get(source.id, parentId);
        if (connection == null || (source.plexProtected && parentLink?.hasToken != true)) {
          throw StateError('Plex Home identity is not authenticated');
        }
        profile = Profile.local(
          id: 'local-${const Uuid().v4()}',
          displayName: _name.text.trim(),
          avatarThumbUrl: source.avatarThumbUrl,
          createdAt: DateTime.now(),
        );
        if (!mounted) return;
        await persistAndBindConnection(
          context: context,
          connection: connection,
          firstRunProfile: profile,
          bindToProfile: ProfileConnection(
            profileId: profile.id,
            connectionId: parentId,
            userIdentifier: source.plexHomeUserUuid!,
            userToken: parentLink?.userToken,
            tokenAcquiredAt: parentLink?.tokenAcquiredAt,
          ),
        );
      }
      await ProfileAppearanceService.instance.choosePreset(profile.id, _preset);
      if (!mounted) return;
      FocusScope.of(context).unfocus();
      setState(() => _ready = true);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _startFocus.requestFocus();
      });
    } catch (_) {
      if (mounted) await showErrorDialog(context, t.household.saveFailed);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _add({required bool service}) async {
    if (_busy || !await ensureParentAccess(context) || !mounted) return;
    final profile = context.read<ActiveProfileProvider>().active;
    if (profile == null) return;
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => service ? AddConnectionScreen(targetProfile: profile) : const AddLocalProfileScreen(),
      ),
    );
    if (mounted) setState(() {});
  }

  Future<void> _finish() async {
    if (_busy) return;
    final active = context.read<ActiveProfileProvider>();
    final profile = active.active;
    if (profile == null) return;
    setState(() => _busy = true);
    try {
      final links = await context.read<ProfileConnectionRegistry>().listForProfile(profile.id);
      if (links.isEmpty) {
        if (mounted) await showErrorDialog(context, t.household.connectionRequired);
        return;
      }
      if (!mounted) return;
      final sourcesChosen = await Navigator.of(
        context,
      ).push<bool>(MaterialPageRoute(builder: (_) => SourceLibrariesScreen(profileId: profile.id, firstRun: true)));
      if (!mounted || sourcesChosen != true) return;
      await ProfileAppearanceService.instance.markIntegrationsPending(profile.id);
      await ProfileAppearanceService.instance.completeSetup();
      if (!mounted) return;
      context.read<ActiveProfileBinder>().start();
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) =>
              ProfileSessionScreen(initialPromptHandled: widget.initialPromptHandled, initialIntegrationsPrompt: true),
        ),
      );
    } catch (_) {
      if (mounted) await showErrorDialog(context, t.household.saveFailed);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  void _edit() {
    if (_busy) return;
    setState(() => _ready = false);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _nameFocus.requestFocus();
    });
  }

  void _back() {
    if (_busy) return;
    if (_ready) {
      _edit();
    } else {
      AppExitService.requestExit();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final profile = context.watch<ActiveProfileProvider>().active;
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        // Back from the optional step edits the profile; it must never silently
        // mark setup complete or enter an unconfigured session.
        if (!didPop) _back();
      },
      child: Focus(
        canRequestFocus: false,
        onKeyEvent: (_, event) => handleBackKeyAction(event, _back),
        child: OnboardingScaffold(
          title: _ready ? t.onboarding.readyTitle : t.onboarding.profileTitle,
          description: _ready ? t.onboarding.readyHint : t.onboarding.profileHint,
          step: _ready ? t.onboarding.readyStep : t.onboarding.profileStep,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _ready
                ? [
                    if (profile != null)
                      Row(
                        children: [
                          ProfileAvatar(profile: profile, size: 64),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(profile.displayName, style: theme.textTheme.titleLarge),
                                const SizedBox(height: 4),
                                Text(
                                  t.onboarding.connected,
                                  style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.check_circle_outline_rounded, color: theme.colorScheme.primary),
                        ],
                      ),
                    const SizedBox(height: 28),
                    _action(t.onboarding.addService, Icons.add_link_rounded, () => _add(service: true)),
                    const SizedBox(height: 12),
                    _action(t.household.addProfile, Icons.person_add_alt_1_rounded, () => _add(service: false)),
                    const SizedBox(height: 12),
                    _action(t.onboarding.editProfile, Icons.edit_outlined, _edit),
                    const SizedBox(height: 28),
                    FocusableButton(
                      focusNode: _startFocus,
                      onPressed: _busy ? null : _finish,
                      child: FilledButton.icon(
                        key: const ValueKey('onboarding-start-watching'),
                        onPressed: _busy ? null : _finish,
                        icon: const Icon(Icons.play_arrow_rounded),
                        label: Text(t.household.startWatching),
                      ),
                    ),
                  ]
                : [
                    Center(child: ProfileAvatarArtwork(preset: _preset, size: 80)),
                    const SizedBox(height: 24),
                    Text(t.profiles.profileNameLabel, style: theme.textTheme.labelLarge),
                    const SizedBox(height: 8),
                    ProfileNameField(
                      controller: _name,
                      focusNode: _nameFocus,
                      hintText: t.profiles.profileNameHint,
                      onChanged: () => setState(() {}),
                    ),
                    const SizedBox(height: 24),
                    Text(t.household.avatarGallery, style: theme.textTheme.labelLarge),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      alignment: WrapAlignment.center,
                      children: [
                        for (final preset in profileAvatarGallery)
                          Semantics(
                            selected: _preset == preset,
                            label: profilePresetLabel(preset),
                            child: FocusableButton(
                              autofocus: preset == _preset,
                              borderRadius: 16,
                              onPressed: _busy ? null : () => setState(() => _preset = preset),
                              child: OutlinedButton(
                                key: ValueKey('onboarding-avatar-${preset.name}'),
                                onPressed: _busy ? null : () => setState(() => _preset = preset),
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.all(5),
                                  minimumSize: const Size(58, 58),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                  side: BorderSide(
                                    color: _preset == preset ? theme.colorScheme.primary : Colors.transparent,
                                    width: 2,
                                  ),
                                ),
                                child: ProfileAvatarArtwork(preset: preset, size: 44),
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    FocusableButton(
                      focusNode: _continueFocus,
                      onPressed: _busy || _name.text.trim().isEmpty || profile == null ? null : _save,
                      child: FilledButton(
                        key: const ValueKey('onboarding-profile-continue'),
                        onPressed: _busy || _name.text.trim().isEmpty || profile == null ? null : _save,
                        child: Text(t.profiles.continueButton),
                      ),
                    ),
                  ],
          ),
        ),
      ),
    );
  }

  Widget _action(String label, IconData icon, VoidCallback onPressed) => FocusableButton(
    onPressed: _busy ? null : onPressed,
    child: OutlinedButton.icon(onPressed: _busy ? null : onPressed, icon: Icon(icon), label: Text(label)),
  );
}
