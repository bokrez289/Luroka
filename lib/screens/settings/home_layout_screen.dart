import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../i18n/strings.g.dart';
import '../../media/home_layout.dart';
import '../../media/media_hub.dart';
import '../../providers/discover_provider.dart';
import '../../providers/home_layout_provider.dart';
import '../../providers/studios_provider.dart';
import '../../utils/dialogs.dart';
import '../../utils/error_dialog.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/app_menu.dart';
import '../../widgets/focusable_list_tile.dart';
import '../../widgets/settings_page.dart';
import '../../widgets/settings_section.dart';
import '../../widgets/setting_tile.dart';
import '../../services/settings_service.dart';
import 'settings_utils.dart';
import 'source_libraries_screen.dart';
import '../../profiles/active_profile_provider.dart';

/// Row actions use the same focusable menu on touch and D-pad. Reordering
/// doesn't rely on dragging, which is unavailable on a Fire Stick remote.
class HomeLayoutScreen extends StatefulWidget {
  const HomeLayoutScreen({super.key, this.includeSpotlight = true});
  final bool includeSpotlight;

  @override
  State<HomeLayoutScreen> createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen> {
  bool _saving = false;

  Future<void> _save(Future<void> Function() operation) async {
    if (_saving) return;
    setState(() => _saving = true);
    try {
      await operation();
    } catch (_) {
      if (mounted) await showErrorDialog(context, t.homeLayout.saveFailed);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  Future<void> _editRow(MediaHub hub, List<MediaHub> rows) async {
    final provider = context.read<HomeLayoutProvider>();
    final key = homeRowKey(hub);
    final index = rows.indexOf(hub);
    final hidden = provider.layout.isHidden(hub);
    final action = await showAdaptiveAppMenu<String>(
      context,
      title: hub.title,
      position: Offset(MediaQuery.sizeOf(context).width / 2, MediaQuery.sizeOf(context).height / 3),
      focusFirstItem: true,
      entries: [
        AppMenuItem(
          value: 'visibility',
          icon: hidden ? Symbols.visibility_rounded : Symbols.visibility_off_rounded,
          label: hidden ? t.homeLayout.showRow : t.homeLayout.hideRow,
        ),
        if (index > 0) AppMenuItem(value: 'up', icon: Symbols.arrow_upward_rounded, label: t.homeLayout.moveUp),
        if (index < rows.length - 1)
          AppMenuItem(value: 'down', icon: Symbols.arrow_downward_rounded, label: t.homeLayout.moveDown),
      ],
    );
    if (!mounted || action == null) return;
    await _save(
      () => switch (action) {
        'visibility' => provider.setHidden(key, !hidden),
        'up' => provider.moveRow(rows, key, -1),
        'down' => provider.moveRow(rows, key, 1),
        _ => Future.value(),
      },
    );
  }

  Future<void> _reset() async {
    final provider = context.read<HomeLayoutProvider>();
    if (await showConfirmDialog(
          context,
          title: t.homeLayout.reset,
          message: t.homeLayout.resetDescription,
          confirmText: t.homeLayout.reset,
        ) &&
        mounted) {
      await _save(provider.resetRows);
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeLayoutProvider>();
    final discover = context.watch<DiscoverProvider>();
    final available = buildHomeRows(
      hubs: discover.hubs,
      onDeck: discover.onDeck,
      pins: provider.layout.pins,
      continueWatchingTitle: t.discover.continueWatching,
      pinnedTitle: t.homeLayout.pinnedCollections,
      studios: context.watch<StudiosProvider?>()?.groups.map((group) => group.homeItem).toList() ?? const [],
      studiosTitle: t.studios.title,
      includeEmpty: true,
    );
    final rows = provider.layout.arrange(available, includeHidden: true);
    // Duplicate server rows share presentation preferences; edit each identity once.
    final seen = <String>{};
    final uniqueRows = rows.where((row) => seen.add(homeRowKey(row))).toList();
    return SettingsPage(
      title: Text(t.homeLayout.title),
      children: [
        SettingNavigationTile(
          icon: Symbols.video_library_rounded,
          title: t.sourceLibraries.title,
          subtitle: t.sourceLibraries.description,
          onTap: () {
            final id = context.read<ActiveProfileProvider>().activeId;
            if (id != null) {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => SourceLibrariesScreen(profileId: id)));
            }
          },
        ),
        if (widget.includeSpotlight)
          SettingsGroup(
            title: t.lurokaWorkspace.spotlight,
            children: [
              SettingSwitchTile(
                pref: SettingsService.showHeroSection,
                icon: Symbols.view_carousel_rounded,
                title: t.dashboard.showFeatured,
                subtitle: t.dashboard.showFeaturedDescription,
              ),
              SettingSwitchTile(
                pref: SettingsService.homeSpotlightAutoRotate,
                icon: Symbols.autorenew_rounded,
                title: t.lurokaWorkspace.rotateSpotlight,
                subtitle: t.lurokaWorkspace.rotateDescription,
              ),
              SettingSelectionTile<int>(
                pref: SettingsService.homeSpotlightInterval,
                icon: Symbols.timer_rounded,
                title: t.lurokaWorkspace.rotationInterval,
                subtitleBuilder: (value) => t.settings.secondsUnit(seconds: '$value'),
                options: [
                  for (final seconds in [12, 15, 20, 30])
                    DialogOption(
                      value: seconds,
                      title: t.settings.secondsUnit(seconds: '$seconds'),
                    ),
                ],
              ),
            ],
          ),
        Padding(padding: const EdgeInsets.all(16), child: Text(t.homeLayout.description)),
        SettingsGroup(
          title: t.homeLayout.rows,
          children: [
            for (final (index, hub) in uniqueRows.indexed)
              FocusableListTile(
                key: ValueKey(homeRowKey(hub)),
                enabled: !_saving,
                leading: AppIcon(
                  provider.layout.isHidden(hub) ? Symbols.visibility_off_rounded : Symbols.view_agenda_rounded,
                ),
                title: Text(hub.title),
                subtitle: Text(
                  [
                    if (hub.serverName?.isNotEmpty == true) hub.serverName!,
                    provider.layout.isHidden(hub) ? t.homeLayout.hidden : t.homeLayout.visible,
                  ].join(' • '),
                ),
                trailing: Text('${index + 1}'),
                onTap: () => _editRow(hub, uniqueRows),
              ),
          ],
        ),
        SettingsGroup(
          title: t.homeLayout.pinnedCollections,
          children: [
            if (provider.layout.pins.isEmpty)
              Padding(padding: const EdgeInsets.all(16), child: Text(t.homeLayout.pinInstructions)),
            for (final pin in provider.layout.pins)
              FocusableListTile(
                key: ValueKey('pin:${pin.globalKey}'),
                enabled: !_saving,
                leading: const AppIcon(Symbols.push_pin_rounded),
                title: Text(pin.title ?? pin.id),
                subtitle: Text(pin.serverName ?? pin.serverId!),
                trailing: const AppIcon(Symbols.close_rounded),
                onTap: () => _save(() => provider.setPinned(pin, false)),
              ),
          ],
        ),
        FocusableListTile(
          enabled: !_saving,
          leading: const AppIcon(Symbols.restart_alt_rounded),
          title: Text(t.homeLayout.reset),
          onTap: _reset,
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
