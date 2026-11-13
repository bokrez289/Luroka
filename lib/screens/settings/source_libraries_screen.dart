import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../i18n/strings.g.dart';
import '../../media/media_library.dart';
import '../../profiles/active_profile_binder.dart';
import '../../profiles/active_profile_provider.dart';
import '../../profiles/profile.dart';
import '../../providers/hidden_libraries_provider.dart';
import '../../providers/multi_server_provider.dart';
import '../../services/storage_service.dart';
import '../../services/profile_appearance_service.dart';
import '../../widgets/focusable_list_tile.dart';
import '../../focus/focusable_button.dart';
import '../../widgets/focused_scroll_scaffold.dart';
import 'add_connection_screen.dart';

/// Profile-owned source access is independent of Home's row presentation.
class SourceLibrariesScreen extends StatefulWidget {
  const SourceLibrariesScreen({
    super.key,
    required this.profileId,
    this.firstRun = false,
    this.preferredServerIds = const {},
  });
  final String profileId;
  final bool firstRun;
  final Set<String> preferredServerIds;

  @override
  State<SourceLibrariesScreen> createState() => _SourceLibrariesScreenState();
}

class _SourceLibrariesScreenState extends State<SourceLibrariesScreen> {
  List<MediaLibrary> _libraries = [];
  Set<String> _selected = {};
  bool _loading = true;
  bool _saving = false;
  String? _error;
  bool _partial = false;
  bool _hasDraft = false;
  bool _addedFromPicker = false;
  late final Set<String> _preferredServerIds = Set.of(widget.preferredServerIds);

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final active = context.read<ActiveProfileProvider>();
      final generation = active.identityMutationGeneration;
      if (widget.firstRun) {
        context.read<ActiveProfileBinder>().start();
        await active.awaitBindingSettle();
      }
      if (!mounted || active.activeId != widget.profileId || active.identityMutationGeneration != generation) return;
      final servers = context.read<MultiServerProvider>();
      final result = await servers.aggregationService.getMediaLibrariesFromAllServers();
      final storage = await StorageService.getInstance();
      if (!mounted || active.activeId != widget.profileId || active.identityMutationGeneration != generation) return;
      final libraries = result.libraries;
      final saved = storage.getSelectedSourceLibraries(profileId: widget.profileId);
      final hidden = storage.getHiddenLibrariesForProfile(widget.profileId);
      setState(() {
        _libraries = libraries;
        if (!_hasDraft) {
          _selected =
              saved ??
              libraries
                  .where((library) => !hidden.contains(library.globalKey))
                  .map((library) => library.globalKey)
                  .toSet();
          _hasDraft = true;
        }
        _partial =
            result.failedServerIds.isNotEmpty ||
            servers.expectedServerIds.any((id) => !result.succeededServerIds.contains(id));
        _loading = false;
      });
      if (widget.firstRun && !_addedFromPicker && !_partial && libraries.length == 1 && saved == null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && ModalRoute.of(context)?.isCurrent == true) _save();
        });
      }
    } catch (_) {
      if (mounted) {
        setState(() {
          _loading = false;
          _error = t.sourceLibraries.loadFailed;
        });
      }
    }
  }

  Future<void> _save() async {
    if (_saving || _selected.isEmpty) return;
    final active = context.read<ActiveProfileProvider>();
    final generation = active.identityMutationGeneration;
    setState(() => _saving = true);
    try {
      final storage = await StorageService.getInstance();
      if (!mounted || active.activeId != widget.profileId || active.identityMutationGeneration != generation) return;
      await storage.saveSelectedSourceLibraries(_selected, profileId: widget.profileId);
      if (!mounted || active.activeId != widget.profileId || active.identityMutationGeneration != generation) return;
      // A formerly hidden library explicitly selected here becomes available.
      final hidden = storage.getHiddenLibrariesForProfile(widget.profileId)..removeAll(_selected);
      await storage.saveHiddenLibrariesForProfile(widget.profileId, hidden);
      if (!mounted || active.activeId != widget.profileId || active.identityMutationGeneration != generation) return;
      await context.read<HiddenLibrariesProvider?>()?.refresh();
      if (widget.firstRun) await ProfileAppearanceService.instance.completeSourceSelection(widget.profileId);
      if (mounted && active.activeId == widget.profileId && active.identityMutationGeneration == generation) {
        Navigator.of(context).pop(true);
      }
    } catch (_) {
      if (mounted) setState(() => _error = t.homeLayout.saveFailed);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  Future<void> _addServer() async {
    if (_loading || _saving) return;
    final active = context.read<ActiveProfileProvider>();
    final Profile? owner = active.active;
    if (owner == null || owner.id != widget.profileId) return;
    final generation = active.identityMutationGeneration;
    final previous = _libraries.map((library) => library.serverId).whereType<String>().toSet();
    final added = await Navigator.of(
      context,
    ).push<bool>(MaterialPageRoute(builder: (_) => AddConnectionScreen(targetProfile: owner)));
    if (!mounted || added != true || active.activeId != owner.id || active.identityMutationGeneration != generation) {
      return;
    }
    _addedFromPicker = true;
    await active.awaitBindingSettle();
    if (!mounted || active.activeId != owner.id || active.identityMutationGeneration != generation) return;
    await _load();
    if (!mounted || active.activeId != owner.id || active.identityMutationGeneration != generation) return;
    setState(
      () => _preferredServerIds.addAll(
        _libraries.map((library) => library.serverId).whereType<String>().toSet().difference(previous),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final groups = <String, List<MediaLibrary>>{};
    final orderedLibraries = [
      ..._libraries.where((library) => _preferredServerIds.contains(library.serverId)),
      ..._libraries.where((library) => !_preferredServerIds.contains(library.serverId)),
    ];
    for (final library in orderedLibraries) {
      (groups[library.serverId ?? ''] ??= []).add(library);
    }
    return FocusedScrollScaffold(
      title: Text(t.sourceLibraries.title),
      bottomBar: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FocusableButton(
                onPressed: _loading || _saving || _selected.isEmpty ? null : _save,
                child: FilledButton.icon(
                  onPressed: _loading || _saving || _selected.isEmpty ? null : _save,
                  icon: const Icon(Icons.check_rounded),
                  label: Text(widget.firstRun ? t.profiles.continueButton : t.common.save),
                ),
              ),
              if (widget.firstRun)
                FocusableButton(
                  autofocus: _libraries.isEmpty,
                  onPressed: _saving ? null : _chooseLater,
                  child: TextButton(
                    key: const ValueKey('source-libraries-later'),
                    onPressed: _saving ? null : _chooseLater,
                    child: Text(t.profileSetupGuide.chooseLater),
                  ),
                ),
            ],
          ),
        ),
      ),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(24),
          sliver: SliverToBoxAdapter(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 900),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(t.sourceLibraries.description, style: Theme.of(context).textTheme.bodyLarge),
                    const SizedBox(height: 8),
                    Text(t.profileSetupGuide.libraryScope, style: Theme.of(context).textTheme.bodySmall),
                    const SizedBox(height: 16),
                    Text(t.connections.addConnectionSubtitleNoProfile, style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: FocusableButton(
                        onPressed: _loading || _saving ? null : _addServer,
                        child: OutlinedButton.icon(
                          key: const ValueKey('source-libraries-add-server'),
                          onPressed: _loading || _saving ? null : _addServer,
                          icon: const Icon(Icons.add_link_rounded),
                          label: Text(t.connections.addConnection),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    if (_loading)
                      const Center(child: CircularProgressIndicator())
                    else ...[
                      if (_partial)
                        Padding(padding: const EdgeInsets.only(bottom: 12), child: Text(t.sourceLibraries.partial)),
                      if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                      if (_libraries.isEmpty && _error == null) Text(t.libraries.noLibrariesFound),
                      if (_libraries.isNotEmpty && _selected.isEmpty)
                        Padding(padding: const EdgeInsets.only(bottom: 12), child: Text(t.sourceLibraries.chooseOne)),
                      for (final entry in groups.entries) ...[
                        Builder(
                          builder: (context) {
                            final selected = entry.value
                                .where((library) => _selected.contains(library.globalKey))
                                .length;
                            return FocusableCheckboxListTile(
                              autofocus: entry.key == groups.keys.first,
                              value: selected == 0
                                  ? false
                                  : selected == entry.value.length
                                  ? true
                                  : null,
                              tristate: true,
                              title: Text(entry.value.first.serverName ?? entry.key),
                              subtitle: _preferredServerIds.contains(entry.key) ? const Text('Newly connected') : null,
                              secondary: const Icon(Icons.dns_rounded),
                              onChanged: _saving
                                  ? null
                                  : (_) => setState(() {
                                      final keys = entry.value.map((library) => library.globalKey);
                                      selected == entry.value.length
                                          ? _selected.removeAll(keys)
                                          : _selected.addAll(keys);
                                    }),
                            );
                          },
                        ),
                        for (final library in entry.value)
                          Padding(
                            padding: const EdgeInsetsDirectional.only(start: 24),
                            child: FocusableCheckboxListTile(
                              value: _selected.contains(library.globalKey),
                              title: Text(library.title),
                              onChanged: _saving
                                  ? null
                                  : (checked) => setState(() {
                                      checked == true
                                          ? _selected.add(library.globalKey)
                                          : _selected.remove(library.globalKey);
                                    }),
                            ),
                          ),
                        const Divider(),
                      ],
                      TextButton.icon(
                        onPressed: _saving ? null : _load,
                        icon: const Icon(Icons.refresh_rounded),
                        label: Text(t.common.refresh),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _chooseLater() async {
    if (_saving || context.read<ActiveProfileProvider>().activeId != widget.profileId) return;
    setState(() => _saving = true);
    try {
      await ProfileAppearanceService.instance.completeSourceSelection(widget.profileId);
      if (mounted && context.read<ActiveProfileProvider>().activeId == widget.profileId) {
        Navigator.of(context).pop(true);
      }
    } catch (_) {
      if (mounted) setState(() => _error = t.homeLayout.saveFailed);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }
}
