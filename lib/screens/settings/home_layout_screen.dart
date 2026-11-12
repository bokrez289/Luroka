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
import '../../widgets/mobile_settings_preview.dart';
import '../../widgets/tv_settings_preview.dart';
import '../../widgets/expanded_settings_preview.dart';
import '../../widgets/live_home_preview.dart';
import '../../utils/platform_detector.dart';
import '../../widgets/settings_workspace_scope.dart';
import '../../services/settings_service.dart';
import '../../services/kids_profile_service.dart';
import 'settings_utils.dart';
import 'source_libraries_screen.dart';
import 'studio_preferences_screen.dart';
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

  Future<void> _editProgressLayout() async {
    final provider = context.read<HomeLayoutProvider>();
    final current = provider.layout.splitContinueWatching;
    final selected = await showAdaptiveAppMenu<bool>(
      context,
      title: t.homeLayout.progressLayout,
      position: Offset(MediaQuery.sizeOf(context).width / 2, MediaQuery.sizeOf(context).height / 3),
      focusFirstItem: true,
      entries: [
        AppMenuItem(value: false, label: t.homeLayout.progressCombined, selected: !current),
        AppMenuItem(value: true, label: t.homeLayout.progressSeparate, selected: current),
      ],
    );
    if (mounted && selected != null && selected != current) {
      await _save(() => provider.setSplitContinueWatching(selected));
    }
  }

  String _spotlightSourceLabel(HomeSpotlightSource source) => switch (source) {
    HomeSpotlightSource.forYou => t.homeLayout.spotlightForYou,
    HomeSpotlightSource.trending => t.homeLayout.spotlightTrending,
    HomeSpotlightSource.continueWatching => t.homeLayout.spotlightContinue,
  };

  String _spotlightSourceDescription(HomeSpotlightSource source) => switch (source) {
    HomeSpotlightSource.forYou => t.homeLayout.spotlightForYouDescription,
    HomeSpotlightSource.trending => t.homeLayout.spotlightTrendingDescription,
    HomeSpotlightSource.continueWatching => t.homeLayout.spotlightContinueDescription,
  };

  Future<void> _editSpotlightSource() async {
    final provider = context.read<HomeLayoutProvider>();
    final current = provider.layout.spotlightSource;
    final selected = await showAdaptiveAppMenu<HomeSpotlightSource>(
      context,
      title: t.homeLayout.spotlightSource,
      position: Offset(MediaQuery.sizeOf(context).width / 2, MediaQuery.sizeOf(context).height / 3),
      focusFirstItem: true,
      entries: [
        for (final source in HomeSpotlightSource.values)
          AppMenuItem(
            value: source,
            label: _spotlightSourceLabel(source),
            subtitle: _spotlightSourceDescription(source),
            selected: source == current,
          ),
      ],
    );
    if (mounted && selected != null && selected != current) {
      await _save(() => provider.setSpotlightSource(selected));
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
      splitContinueWatching: provider.layout.splitContinueWatching,
      nextUpTitle: t.discover.nextUp,
      includeEmpty: true,
    );
    final rows = provider.layout.arrange(available, includeHidden: true);
    // Duplicate server rows share presentation preferences; edit each identity once.
    final seen = <String>{};
    final uniqueRows = rows.where((row) => seen.add(homeRowKey(row))).toList();
    return SettingsPage(
      title: Text(t.homeLayout.title),
      previewHeader: SettingsWorkspaceScope.maybeOf(context) == null
          ? PlatformDetector.isTV()
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          tooltip: t.common.fullscreen,
                          icon: const Icon(Icons.open_in_full_rounded),
                          onPressed: () => showExpandedSettingsPreview(context, const LiveHomePreview()),
                        ),
                      ),
                      const MiniHomePreview(),
                    ],
                  )
                : const MobileSettingsPreviewFrame(categoryId: 'home')
          : null,
      children: [
        SettingNavigationTile(
          icon: Symbols.movie_rounded,
          title: t.homeLayout.manageStudios,
          subtitle: t.homeLayout.manageStudiosDescription,
          destinationBuilder: (_) => const StudioPreferencesScreen(),
        ),
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
        SettingNavigationTile(
          key: const ValueKey('home-progress-layout'),
          icon: Symbols.view_agenda_rounded,
          title: t.homeLayout.progressLayout,
          subtitle: provider.layout.splitContinueWatching
              ? t.homeLayout.progressSeparate
              : t.homeLayout.progressCombined,
          onTap: _saving ? () {} : _editProgressLayout,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
          child: Text(t.homeLayout.progressDescription, style: Theme.of(context).textTheme.bodySmall),
        ),
        if (!KidsProfileService.instance.isActiveKids)
          SettingNavigationTile(
            key: const ValueKey('home-spotlight-source'),
            icon: Symbols.view_carousel_rounded,
            title: t.homeLayout.spotlightSource,
            subtitle: _spotlightSourceLabel(provider.layout.spotlightSource),
            onTap: _saving ? () {} : _editSpotlightSource,
          ),
        if (!KidsProfileService.instance.isActiveKids)
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
            child: Text(t.homeLayout.spotlightSourceDescription, style: Theme.of(context).textTheme.bodySmall),
          ),
        SettingStepperTile<int>(
          pref: SettingsService.homePosterSize,
          icon: Symbols.view_carousel_rounded,
          title: 'Home poster size',
          values: const [1, 2, 3, 4, 5],
          label: (value) => switch (value) {
            1 => 'Small',
            2 => 'Medium',
            3 => 'Comfortable (default)',
            4 => 'Large',
            _ => 'Extra large',
          },
        ),
        if (widget.includeSpotlight)
          SettingsGroup(
            title: t.lurokaWorkspace.spotlight,
            children: [
              if (PlatformDetector.isTV())
                SettingSelectionTile<HomeHeroSize>(
                  pref: SettingsService.homeHeroSize,
                  icon: Symbols.aspect_ratio_rounded,
                  title: t.settings.homeHeroSize,
                  subtitleBuilder: (value) => switch (value) {
                    HomeHeroSize.compact => 'Compact',
                    HomeHeroSize.small => t.settings.homeHeroSizeSmall,
                    HomeHeroSize.medium => t.settings.homeHeroSizeMedium,
                    HomeHeroSize.large => t.settings.homeHeroSizeLarge,
                  },
                  options: [
                    const DialogOption(value: HomeHeroSize.compact, title: 'Compact'),
                    DialogOption(value: HomeHeroSize.small, title: t.settings.homeHeroSizeSmall),
                    DialogOption(value: HomeHeroSize.medium, title: t.settings.homeHeroSizeMedium),
                    DialogOption(value: HomeHeroSize.large, title: t.settings.homeHeroSizeLarge),
                  ],
                ),
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
