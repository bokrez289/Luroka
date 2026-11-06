import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../../i18n/strings.g.dart';
import '../../profiles/active_profile_provider.dart';
import '../../profiles/profile.dart';
import '../../profiles/profile_connection_registry.dart';
import '../../profiles/profile_registry.dart';
import '../../services/kids_profile_service.dart';
import '../../providers/libraries_provider.dart';
import '../../providers/multi_server_provider.dart';
import '../../media/media_library.dart';
import '../../media/media_kind.dart';
import '../../utils/app_logger.dart';
import '../../utils/error_dialog.dart';
import '../../widgets/focused_scroll_scaffold.dart';
import 'kids_settings_screen.dart';
import 'parent_access.dart';
import 'pin_entry_dialog.dart';
import 'profile_name_field.dart';
import '../../models/kids_avatar.dart';
import '../../widgets/kids/kids_avatar_chooser.dart';
import '../../models/kids_profile_backup.dart';
import 'kids_profile_backup_actions.dart';
import 'profile_teardown.dart';
import '../settings/add_connection_screen.dart';

/// Creates a local child identity using copies of the active adult's bindings.
/// No server user is created and no credential needs to be entered again.
class KidsProfileScreen extends StatefulWidget {
  const KidsProfileScreen({super.key, this.profile, this.backup}) : assert(profile == null || backup == null);
  final Profile? profile;
  final KidsProfileBackup? backup;

  @override
  State<KidsProfileScreen> createState() => _KidsProfileScreenState();
}

class _KidsProfileScreenState extends State<KidsProfileScreen> {
  final _name = TextEditingController();
  final _nameFocus = FocusNode(debugLabel: 'KidsProfile:Name');
  final _ageFocus = FocusNode(debugLabel: 'KidsProfile:Age');
  final _service = KidsProfileService.instance;
  int _age = 7;
  bool _theme = true;
  KidsAvatarKind _avatar = KidsAvatarKind.explorer;
  bool _saving = false;
  bool _chooseDifferentConnection = false;
  bool _allLibraries = true;
  Set<String> _libraries = {};
  bool _animationOnly = false;
  bool _allowUnrated = false;
  int? _dailyWatchMinutes;
  int? _bedtimeStart;
  int? _bedtimeEnd;
  List<MediaLibrary> _loadedLibraries = [];
  bool _loadingLibraries = false;

  @override
  void initState() {
    super.initState();
    final profile = widget.profile;
    if (profile != null) {
      _name.text = profile.displayName;
      _age = _service.ageFor(profile.id);
      _theme = _service.themeFor(profile.id);
      _avatar = _service.avatarFor(profile.id);
      final libraries = _service.librariesFor(profile.id);
      _allLibraries = libraries == null;
      _libraries = libraries ?? {};
      _animationOnly = _service.animationOnlyFor(profile.id);
      _allowUnrated = _service.allowUnratedFor(profile.id);
      _dailyWatchMinutes = _service.dailyWatchMinutesFor(profile.id);
      _bedtimeStart = _service.bedtimeStartFor(profile.id);
      _bedtimeEnd = _service.bedtimeEndFor(profile.id);
    }
    final backup = widget.backup;
    if (backup != null) {
      _name.text = backup.name;
      _age = backup.maxAge;
      _theme = backup.theme;
      _avatar = backup.avatar;
      _allLibraries = backup.libraries == null;
      _libraries = {...?backup.libraries};
      _animationOnly = backup.animationOnly;
      _allowUnrated = backup.allowUnrated;
      _dailyWatchMinutes = backup.dailyWatchMinutes;
      _bedtimeStart = backup.bedtimeStart;
      _bedtimeEnd = backup.bedtimeEnd;
    }
    _loadLibraries();
  }

  Future<void> _loadLibraries() async {
    final servers = context.read<MultiServerProvider?>();
    if (servers == null || _service.isActiveKids) return;
    _loadingLibraries = true;
    try {
      final result = await servers.aggregationService.getMediaLibrariesFromAllServers();
      if (mounted) setState(() => _loadedLibraries = result.libraries);
    } catch (error, stack) {
      appLogger.w('Could not load library choices for kids profile', error: error, stackTrace: stack);
    } finally {
      if (mounted) setState(() => _loadingLibraries = false);
    }
  }

  @override
  void dispose() {
    _name.dispose();
    _nameFocus.dispose();
    _ageFocus.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_saving || _name.text.trim().isEmpty || _service.isActiveKids) return;
    final name = _name.text.trim();
    final active = context.read<ActiveProfileProvider>();
    final parent = active.active;
    if (parent == null) return;
    final registry = context.read<ProfileRegistry>();
    final bindings = context.read<ProfileConnectionRegistry>();
    setState(() => _saving = true);
    String? newId;
    try {
      if (_service.hasParentPin) {
        if (!await ensureParentAccess(context)) return;
      } else {
        final pin = await captureAndConfirmPin(
          context,
          setLabel: t.kids.setParentPin,
          confirmLabel: t.family.confirmParentPin,
          onMismatch: (ctx) => showErrorDialog(ctx, t.profiles.pinsDontMatch),
        );
        if (pin == null) return;
        await _service.setParentPin(pin);
      }
      if (!mounted || active.activeId != parent.id || _service.isActiveKids) return;
      final existing = widget.profile;
      if (existing != null) {
        await _service.setChild(
          existing.id,
          parentId: _service.parentFor(existing.id) ?? parent.id,
          maxAge: _age,
          theme: _theme,
          avatar: _avatar,
          restrictLibraries: !_allLibraries,
          allowedLibraries: _allLibraries ? null : _libraries,
          animationOnly: _animationOnly,
          allowUnrated: _allowUnrated,
          updateTimeLimits: true,
          dailyWatchMinutes: _dailyWatchMinutes,
          bedtimeStart: _bedtimeStart,
          bedtimeEnd: _bedtimeEnd,
        );
        await registry.rename(existing.id, name);
      } else {
        final connections = await bindings.listForProfile(parent.id);
        if (!mounted || active.activeId != parent.id || _service.isActiveKids) return;
        // Active Plex Home principals also have a token-bearing parent row,
        // written by the binder. Never fall back to a different Plex user.
        if (connections.isEmpty && !_chooseDifferentConnection) {
          if (mounted) await showErrorDialog(context, t.kids.noConnections);
          return;
        }
        final id = 'local-${const Uuid().v4()}';
        newId = id;
        await _service.setChild(
          id,
          parentId: parent.id,
          maxAge: _age,
          theme: _theme,
          avatar: _avatar,
          restrictLibraries: !_allLibraries,
          allowedLibraries: _allLibraries ? null : _libraries,
          animationOnly: _animationOnly,
          allowUnrated: _allowUnrated,
          updateTimeLimits: true,
          dailyWatchMinutes: _dailyWatchMinutes,
          bedtimeStart: _bedtimeStart,
          bedtimeEnd: _bedtimeEnd,
        );
        final child = Profile.local(
          id: id,
          displayName: name,
          createdAt: DateTime.now(),
          sortOrder: DateTime.now().millisecondsSinceEpoch,
        );
        await registry.upsert(child);
        if (_chooseDifferentConnection) {
          if (!mounted || active.activeId != parent.id || _service.isActiveKids) {
            throw StateError('Profile changed while creating a child');
          }
          final added = await Navigator.of(
            context,
          ).push<bool>(MaterialPageRoute(builder: (_) => AddConnectionScreen(targetProfile: child)));
          if (added != true ||
              !mounted ||
              active.activeId != parent.id ||
              _service.isActiveKids ||
              (await bindings.listForProfile(id)).isEmpty) {
            for (final connection in await bindings.listForProfile(id)) {
              await bindings.remove(id, connection.connectionId);
            }
            await registry.remove(id);
            await _service.removeProfile(id);
            newId = null;
            return;
          }
        } else {
          for (final connection in connections) {
            await bindings.upsert(connection.copyWith(profileId: id, lastUsedAt: null));
          }
        }
        if (widget.backup case final backup?) await _service.restoreViewingExclusions(id, backup.viewingExclusions);
        if (!_service.hasHideKidsPreference(parent.id)) await _service.setHideKids(parent.id, true);
      }
      if (!mounted) return;
      Navigator.of(context).pop(true);
    } catch (error, stack) {
      appLogger.e('Could not save kids profile', error: error, stackTrace: stack);
      if (newId != null) {
        for (final connection in await bindings.listForProfile(newId)) {
          await bindings.remove(newId, connection.connectionId);
        }
        await registry.remove(newId);
        await _service.removeProfile(newId);
      }
      if (mounted) await showErrorDialog(context, t.kids.saveFailed);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  Future<void> _backupProfile() async {
    final profile = widget.profile;
    if (_saving || profile == null || _service.isActiveKids) return;
    setState(() => _saving = true);
    try {
      await backUpKidsProfile(context, profile);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  Future<void> _deleteProfile() async {
    final profile = widget.profile;
    if (_saving || profile == null || _service.isActiveKids || !_service.isKids(profile.id)) return;
    final owner = _service.activeId;
    setState(() => _saving = true);
    try {
      if (!await ensureParentAccess(context) || !mounted || _service.activeId != owner || _service.isActiveKids) return;
      final deleted = await confirmAndDeleteProfile(
        context,
        profile: profile,
        title: t.kids.deleteProfile,
        message: t.kids.deleteExplain(name: profile.displayName),
        confirmText: t.common.delete,
        isActionCurrent: () => _service.activeId == owner && !_service.isActiveKids,
      );
      if (!mounted || !deleted) return;
      Navigator.of(context).pop(true);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_service.isActiveKids) return const KidsSettingsScreen();
    final libraryProvider = context.watch<LibrariesProvider?>();
    final available = {
      ...{for (final library in _loadedLibraries) library.globalKey: library},
      ...{for (final library in libraryProvider?.libraries ?? <MediaLibrary>[]) library.globalKey: library},
    };
    final libraries = available.values
        .where((library) => library.kind == MediaKind.movie || library.kind == MediaKind.show)
        .toList();
    return FocusedScrollScaffold(
      title: Text(
        widget.backup != null
            ? t.kids.restoreProfile
            : widget.profile == null
            ? t.kids.addProfile
            : t.family.editRestrictions,
      ),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(24),
          sliver: SliverList.list(
            children: [
              if (widget.backup != null) ...[Text(t.kids.restoreReview), const SizedBox(height: 24)],
              Text(t.kids.name, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              ProfileNameField(
                controller: _name,
                focusNode: _nameFocus,
                hintText: t.kids.name,
                onChanged: () => setState(() {}),
              ),
              const SizedBox(height: 24),
              if (widget.profile == null) ...[
                SwitchListTile(
                  key: const ValueKey('kids-choose-different-connection'),
                  title: Text(t.profileStartup.chooseKidsConnection),
                  subtitle: Text(t.profileStartup.chooseKidsConnectionHint),
                  value: _chooseDifferentConnection,
                  onChanged: _saving
                      ? null
                      : (value) => setState(() {
                          _chooseDifferentConnection = value;
                          _allLibraries = true;
                          _libraries.clear();
                        }),
                ),
                const SizedBox(height: 24),
              ],
              if (widget.profile != null) ...[
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    OutlinedButton.icon(
                      key: const ValueKey('kids-backup-profile'),
                      onPressed: _saving ? null : _backupProfile,
                      icon: const Icon(Icons.download_rounded),
                      label: Text(t.kids.backupProfile),
                    ),
                    TextButton.icon(
                      key: const ValueKey('kids-delete-profile'),
                      onPressed: _saving ? null : _deleteProfile,
                      style: TextButton.styleFrom(foregroundColor: Theme.of(context).colorScheme.error),
                      icon: const Icon(Icons.delete_outline_rounded),
                      label: Text(t.kids.deleteProfile),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
              ],
              Text(t.kids.avatar, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 12),
              KidsAvatarChooser(
                value: _avatar,
                older: _age >= 12,
                onChanged: _saving ? null : (value) => setState(() => _avatar = value),
              ),
              const SizedBox(height: 24),
              Text(t.kids.ageGroup, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              DropdownButtonFormField<int>(
                isExpanded: true,
                focusNode: _ageFocus,
                initialValue: _age,
                items: [
                  DropdownMenuItem(value: 0, child: Text(t.kids.allAges)),
                  DropdownMenuItem(value: 7, child: Text(t.kids.age7)),
                  DropdownMenuItem(value: 12, child: Text(t.kids.age12)),
                  DropdownMenuItem(value: 16, child: Text(t.kids.age16)),
                ],
                onChanged: _saving ? null : (value) => setState(() => _age = value ?? 7),
              ),
              const SizedBox(height: 12),
              Text(t.kids.ratingExplain),
              const SizedBox(height: 16),
              SwitchListTile(
                key: const ValueKey('kids-allow-unrated'),
                title: Text(t.kids.allowUnrated),
                subtitle: Text(t.kids.unratedExplain),
                value: _allowUnrated,
                onChanged: _saving ? null : (value) => setState(() => _allowUnrated = value),
              ),
              SwitchListTile(
                key: const ValueKey('kids-animation-only'),
                title: Text(t.kids.animationOnly),
                subtitle: Text(t.kids.animationExplain),
                value: _animationOnly,
                onChanged: _saving ? null : (value) => setState(() => _animationOnly = value),
              ),
              const SizedBox(height: 24),
              Text(t.kids.timeLimits, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              Text(t.kids.dailyWatchLimitHint),
              const SizedBox(height: 20),
              DropdownButtonFormField<int>(
                key: const ValueKey('kids-daily-watch-limit'),
                decoration: InputDecoration(labelText: t.kids.dailyWatchLimit),
                initialValue: _dailyWatchMinutes ?? 0,
                items: [
                  DropdownMenuItem(value: 0, child: Text(t.kids.noTimeLimit)),
                  for (var minutes = 30; minutes <= 720; minutes += 30)
                    DropdownMenuItem(
                      value: minutes,
                      child: Text(t.kids.minutesLimit(minutes: minutes)),
                    ),
                  if (_dailyWatchMinutes != null && (_dailyWatchMinutes! > 720 || _dailyWatchMinutes! % 30 != 0))
                    DropdownMenuItem(
                      value: _dailyWatchMinutes,
                      child: Text(t.kids.minutesLimit(minutes: _dailyWatchMinutes!)),
                    ),
                ],
                onChanged: _saving ? null : (value) => setState(() => _dailyWatchMinutes = value == 0 ? null : value),
              ),
              const SizedBox(height: 12),
              SwitchListTile(
                key: const ValueKey('kids-bedtime-enabled'),
                title: Text(t.kids.bedtime),
                subtitle: Text(t.kids.bedtimeHint),
                value: _bedtimeStart != null,
                onChanged: _saving
                    ? null
                    : (enabled) => setState(() {
                        _bedtimeStart = enabled ? 20 * 60 : null;
                        _bedtimeEnd = enabled ? 7 * 60 : null;
                      }),
              ),
              if (_bedtimeStart != null) ...[
                const SizedBox(height: 16),
                _bedtimePicker(t.kids.bedtimeStart, _bedtimeStart!, (value) => _bedtimeStart = value),
                const SizedBox(height: 20),
                _bedtimePicker(t.kids.bedtimeEnd, _bedtimeEnd!, (value) => _bedtimeEnd = value),
              ],
              const SizedBox(height: 24),
              Text(t.kids.allowedLibraries, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              Text(t.kids.librariesExplain),
              if (!_chooseDifferentConnection)
                SwitchListTile(
                  key: const ValueKey('kids-all-libraries'),
                  title: Text(t.kids.allLibraries),
                  value: _allLibraries,
                  onChanged: _saving ? null : (value) => setState(() => _allLibraries = value),
                ),
              if (!_allLibraries) ...[
                if (_loadingLibraries) const LinearProgressIndicator(),
                if (libraries.isEmpty) Text(t.kids.librariesUnavailable),
                for (final library in libraries)
                  CheckboxListTile(
                    key: ValueKey('kids-library-${library.globalKey}'),
                    title: Text(library.title),
                    subtitle: library.serverName == null ? null : Text(library.serverName!),
                    value: _libraries.contains(library.globalKey),
                    onChanged: _saving
                        ? null
                        : (value) => setState(() {
                            if (value == true) {
                              _libraries.add(library.globalKey);
                            } else {
                              _libraries.remove(library.globalKey);
                            }
                          }),
                  ),
                for (final key in _libraries.difference(libraries.map((library) => library.globalKey).toSet()))
                  CheckboxListTile(
                    title: Text(t.kids.unavailableLibrary),
                    subtitle: Text(key),
                    value: true,
                    onChanged: _saving ? null : (_) => setState(() => _libraries.remove(key)),
                  ),
                if (_libraries.isEmpty) Text(t.kids.noLibrariesSelected),
              ],
              const SizedBox(height: 16),
              SwitchListTile(
                title: Text(t.kids.theme),
                subtitle: Text(t.kids.themeExplain),
                value: _theme,
                onChanged: _saving ? null : (value) => setState(() => _theme = value),
              ),
              const SizedBox(height: 16),
              Text(_chooseDifferentConnection ? t.profileStartup.chooseKidsConnectionHint : t.kids.sharedLogin),
              const SizedBox(height: 24),
              Text(t.kids.pinExplain),
              const SizedBox(height: 24),
              FilledButton(onPressed: _saving || _name.text.trim().isEmpty ? null : _save, child: Text(t.common.save)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _bedtimePicker(String label, int selected, ValueChanged<int> update) => DropdownButtonFormField<int>(
    key: ValueKey(label == t.kids.bedtimeStart ? 'kids-bedtime-start' : 'kids-bedtime-end'),
    decoration: InputDecoration(labelText: label),
    initialValue: selected,
    items: [
      for (var minute = 0; minute < 1440; minute += 30)
        DropdownMenuItem(
          value: minute,
          child: Text(TimeOfDay(hour: minute ~/ 60, minute: minute % 60).format(context)),
        ),
      if (selected % 30 != 0)
        DropdownMenuItem(
          value: selected,
          child: Text(TimeOfDay(hour: selected ~/ 60, minute: selected % 60).format(context)),
        ),
    ],
    onChanged: _saving
        ? null
        : (value) {
            if (value == null) return;
            setState(() {
              update(value);
              if (_bedtimeStart == _bedtimeEnd) {
                if (label == t.kids.bedtimeStart) {
                  _bedtimeEnd = (value + 30) % 1440;
                } else {
                  _bedtimeStart = (value + 1410) % 1440;
                }
              }
            });
          },
  );
}
