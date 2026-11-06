import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../focus/focusable_button.dart';
import '../focus/dpad_navigator.dart';
import '../focus/key_event_utils.dart';
import '../i18n/strings.g.dart';
import '../media/ids.dart';
import '../media/media_item_types.dart';
import '../providers/discover_provider.dart';
import '../services/settings_service.dart' hide ThemeMode;
import '../utils/provider_extensions.dart';
import '../utils/platform_detector.dart';
import 'optimized_media_image.dart';
import 'settings_builder.dart';
import 'settings_workspace_scope.dart';
import 'settings_surface.dart';

class AppearanceWorkspace extends StatefulWidget {
  const AppearanceWorkspace({super.key, required this.groups, this.firstFocus});
  final List<Widget> groups;
  final FocusNode? firstFocus;
  @override
  State<AppearanceWorkspace> createState() => AppearanceWorkspaceState();
}

class AppearanceWorkspaceState extends State<AppearanceWorkspace> {
  int _selected = 0;
  late final _tabs = List.generate(
    4,
    (i) => i == 0 && widget.firstFocus != null ? widget.firstFocus! : FocusNode(debugLabel: 'AppearanceTab:$i'),
  );
  final _scopes = List.generate(4, (i) => FocusScopeNode(debugLabel: 'AppearancePanel:$i'));
  bool revealSetting(String? id) {
    final library = [
      SettingsService.posterDetails.key,
      SettingsService.viewMode.key,
      SettingsService.libraryDensity.key,
      SettingsService.gridSpacing.key,
      SettingsService.episodePosterMode.key,
      SettingsService.showEpisodeNumberOnCards.key,
      SettingsService.showSeasonPostersOnTabs.key,
      SettingsService.hideSpoilers.key,
      SettingsService.showWatchedIndicators.key,
      SettingsService.tvFullCardLayout.key,
      SettingsService.tvCornerSpotlightBackdrop.key,
      SettingsService.focusGlow.key,
    ];
    final home = [
      SettingsService.homeShelfItemCount.key,
      SettingsService.showHeroSection.key,
      SettingsService.homeHeroSize.key,
      SettingsService.continueWatchingAction.key,
      SettingsService.episodeAction.key,
      SettingsService.useGlobalHubs.key,
      SettingsService.showServerNameOnHubs.key,
    ];
    final navigation = [
      SettingsService.showLiveTvTab.key,
      SettingsService.liveTvDefaultFavorites.key,
      SettingsService.showExploreTab.key,
      SettingsService.alwaysKeepSidebarOpen.key,
      SettingsService.groupLibrariesByServer.key,
      SettingsService.showNavBarLabels.key,
      SettingsService.showUnwatchedCount.key,
    ];
    final next = library.contains(id)
        ? 1
        : home.contains(id)
        ? 2
        : navigation.contains(id)
        ? 3
        : 0;
    if (next == _selected) return false;
    setState(() => _selected = next);
    return true;
  }

  @override
  void dispose() {
    for (final n in [..._tabs.where((n) => n != widget.firstFocus), ..._scopes]) {
      n.dispose();
    }
    super.dispose();
  }

  void _enter() {
    final previous = _scopes[_selected].focusedChild;
    if (previous != null && previous.canRequestFocus && previous is! FocusScopeNode) {
      previous.requestFocus();
      return;
    }
    final nodes = _scopes[_selected].traversalDescendants.where(
      (n) => n is! FocusScopeNode && n.canRequestFocus && !n.skipTraversal,
    );
    if (nodes.isNotEmpty) nodes.first.requestFocus();
  }

  bool focusTabsFromContent() {
    if (!_scopes[_selected].hasFocus) return false;
    _tabs[_selected].requestFocus();
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final labels = [
      t.settingsRedesign.themeEffects,
      t.settingsRedesign.libraryLayout,
      t.settings.homeScreen,
      t.settings.navigation,
    ];
    const icons = [Icons.palette_outlined, Icons.grid_view_rounded, Icons.home_outlined, Icons.navigation_outlined];
    final colors = Theme.of(context).colorScheme;
    final tv = PlatformDetector.isTV();
    final compactTv = tv && MediaQuery.sizeOf(context).width < 1200;
    final content = SettingsSurface(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, compactTv ? 10 : 16),
            child: LayoutBuilder(
              builder: (context, bounds) => Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (var i = 0; i < 4; i++)
                    SizedBox(
                      width:
                          (bounds.maxWidth - (tv || bounds.maxWidth >= 680 ? 24 : 8)) /
                          (tv || bounds.maxWidth >= 680 ? 4 : 2),
                      child: FocusableButton(
                        focusNode: _tabs[i],
                        onNavigateLeft: i > 0 ? _tabs[i - 1].requestFocus : null,
                        onNavigateRight: i < 3 ? _tabs[i + 1].requestFocus : null,
                        borderRadius: 12,
                        onNavigateDown: _enter,
                        onPressed: () => setState(() => _selected = i),
                        child: TextButton.icon(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: compactTv ? 6 : 8, vertical: compactTv ? 10 : 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(
                                color: i == _selected
                                    ? colors.primary.withValues(alpha: .6)
                                    : colors.outlineVariant.withValues(alpha: .3),
                              ),
                            ),
                            backgroundColor: i == _selected ? colors.primaryContainer : colors.surfaceContainerLow,
                            foregroundColor: i == _selected ? colors.onPrimaryContainer : colors.onSurfaceVariant,
                          ),
                          onPressed: () => setState(() => _selected = i),
                          icon: Icon(icons[i], size: compactTv ? 16 : 20),
                          label: Text(
                            labels[i],
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: compactTv ? 12 : 13),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Expanded(
            child: IndexedStack(
              index: _selected,
              children: [
                for (var i = 0; i < 4; i++)
                  ExcludeFocus(
                    excluding: i != _selected,
                    child: FocusScope(
                      node: _scopes[i],
                      child: LayoutBuilder(
                        builder: (context, bounds) {
                          final form = SingleChildScrollView(
                            key: PageStorageKey('appearance-$i'),
                            padding: const EdgeInsets.only(bottom: 24),
                            child: Column(
                              children: [widget.groups[i], if (i == 3 && widget.groups.length > 4) widget.groups[4]],
                            ),
                          );
                          if (i != 1) return form;
                          if (bounds.maxWidth >= 800 || (tv && bounds.maxWidth >= 580)) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(flex: 51, child: form),
                                Expanded(flex: 49, child: SingleChildScrollView(child: const LibrarySettingsPreview())),
                              ],
                            );
                          }
                          return SingleChildScrollView(
                            key: const PageStorageKey('appearance-library-narrow'),
                            child: Column(
                              children: [const LibrarySettingsPreview(), widget.groups[1], const SizedBox(height: 24)],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
    final navigable = Focus(
      canRequestFocus: false,
      onKeyEvent: (_, event) {
        if (event.logicalKey.isBackKey && _scopes[_selected].hasFocus) {
          return handleBackKeyAction(event, _tabs[_selected].requestFocus);
        }
        return KeyEventResult.ignored;
      },
      child: content,
    );
    if (SettingsWorkspaceScope.maybeOf(context) != null) return navigable;
    return Scaffold(
      appBar: AppBar(title: Text(t.settings.appearance)),
      body: SafeArea(top: false, child: navigable),
    );
  }
}

/// Bounded preview sourced exclusively from the current profile's already
/// loaded Home snapshot. No library requests and no invented progress/badges.
class LibrarySettingsPreview extends StatelessWidget {
  const LibrarySettingsPreview({super.key, this.embedded = false, this.rows = 2, this.forceGrid = false});
  final bool embedded;
  final int rows;
  final bool forceGrid;
  @override
  Widget build(BuildContext context) {
    final discover = context.watch<DiscoverProvider?>();
    final seen = <String>{};
    final items = [
      ...?discover?.onDeck,
      ...?discover?.hubs.expand((h) => h.items),
    ].where((item) => !item.isEpisode && seen.add(item.globalKey)).take(12).toList();
    return ExcludeFocus(
      child: IgnorePointer(
        child: SettingsBuilder(
          prefs: const [
            SettingsService.libraryDensity,
            SettingsService.gridSpacing,
            SettingsService.showWatchedIndicators,
            SettingsService.posterDetails,
            SettingsService.viewMode,
          ],
          builder: (context) {
            final settings = SettingsService.instance;
            final listView = !forceGrid && settings.read(SettingsService.viewMode) == ViewMode.list;
            final density = settings.read(SettingsService.libraryDensity);
            final columns = density <= 2
                ? 5
                : density >= 4
                ? 3
                : 4;
            final gap = switch (settings.read(SettingsService.gridSpacing)) {
              GridSpacing.tight => 4.0,
              GridSpacing.normal => 8.0,
              GridSpacing.spacious => 12.0,
            };
            final colors = Theme.of(context).colorScheme;
            return Container(
              key: const ValueKey('library-settings-preview'),
              margin: embedded ? EdgeInsets.zero : const EdgeInsets.fromLTRB(12, 0, 16, 16),
              padding: EdgeInsets.all(embedded ? 8 : 16),
              decoration: BoxDecoration(
                color: colors.surfaceContainerLow,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: colors.outlineVariant.withValues(alpha: .5)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!embedded)
                    Row(
                      children: [
                        const Icon(Icons.visibility_outlined, size: 22),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(t.settingsRedesign.livePreview, style: Theme.of(context).textTheme.titleLarge),
                        ),
                      ],
                    ),
                  if (!embedded) const SizedBox(height: 8),
                  if (!embedded)
                    Text(
                      t.settingsRedesign.previewHint,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: colors.onSurfaceVariant),
                    ),
                  if (!embedded) const SizedBox(height: 18),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: listView ? 3 : columns * rows,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: listView ? 1 : columns,
                      crossAxisSpacing: gap,
                      mainAxisSpacing: gap,
                      childAspectRatio: listView
                          ? 4.8
                          : settings.read(SettingsService.posterDetails)
                          ? .58
                          : 2 / 3,
                    ),
                    itemBuilder: (context, index) {
                      final item = index < items.length ? items[index] : null;
                      if (listView) {
                        return DecoratedBox(
                          decoration: BoxDecoration(
                            color: colors.surfaceContainerHigh,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              AspectRatio(
                                aspectRatio: 2 / 3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: item == null
                                      ? const SizedBox.shrink()
                                      : OptimizedMediaImage(
                                          client: item.serverId == null
                                              ? null
                                              : context.tryGetMediaClientForServer(ServerId(item.serverId!)),
                                          imagePath: item.thumbPath,
                                          width: 80,
                                          height: 120,
                                        ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  item?.displayTitle ?? t.tvSettingsV2.previewPlaceholder,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                              ),
                              if (item?.isWatched == true && settings.read(SettingsService.showWatchedIndicators))
                                const Icon(Icons.check_circle, size: 16),
                            ],
                          ),
                        );
                      }
                      final artwork = ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            ColoredBox(
                              color: colors.surfaceContainerHighest,
                              child: item == null
                                  ? Icon(Icons.local_movies_outlined, color: colors.onSurfaceVariant)
                                  : OptimizedMediaImage(
                                      client: item.serverId == null
                                          ? null
                                          : context.tryGetMediaClientForServer(ServerId(item.serverId!)),
                                      imagePath: item.thumbPath,
                                      width: 160,
                                      height: 240,
                                    ),
                            ),
                            if (item != null && item.hasActiveProgress)
                              Positioned(
                                left: 4,
                                right: 4,
                                bottom: 5,
                                child: LinearProgressIndicator(
                                  value: (item.viewOffsetMs! / item.durationMs!).clamp(0, 1),
                                  minHeight: 3,
                                ),
                              ),
                            if (item != null &&
                                settings.read(SettingsService.showWatchedIndicators) &&
                                item.isWatched &&
                                !item.hasActiveProgress)
                              const Positioned(
                                top: 4,
                                right: 4,
                                child: Icon(Icons.check_circle, color: Colors.white, size: 16),
                              ),
                          ],
                        ),
                      );
                      if (!settings.read(SettingsService.posterDetails)) return artwork;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: artwork),
                          const SizedBox(height: 3),
                          Text(
                            item?.displayTitle ?? '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 10, color: colors.onSurface),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
