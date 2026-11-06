import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../i18n/strings.g.dart';
import '../../providers/catalog_sources_provider.dart';
import '../../providers/theme_provider.dart';
import '../../providers/home_layout_provider.dart';
import '../../services/settings_service.dart' hide ThemeMode;
import '../../focus/focusable_slider.dart';
import '../../services/device_performance.dart';
import '../../utils/platform_detector.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/overlay_sheet.dart';
import '../../widgets/setting_tile.dart';
import '../../widgets/appearance_workspace.dart';
import '../../widgets/settings_builder.dart';
import '../../widgets/settings_section.dart';
import '../../widgets/settings_page.dart';
import '../../widgets/settings_workspace_scope.dart';
import 'app_icon_setting.dart';
import 'settings_utils.dart';
import 'theme_settings_screen.dart';
import 'home_layout_screen.dart';
import 'performance_settings_screen.dart';

enum AppearanceSettingsSection { all, appearance, library, home }

class AppearanceSettingsScreen extends StatelessWidget {
  const AppearanceSettingsScreen({
    super.key,
    this.firstFocus,
    this.section = AppearanceSettingsSection.all,
    this.extraChildren = const [],
  });
  final FocusNode? firstFocus;
  final AppearanceSettingsSection section;
  final List<Widget> extraChildren;

  @override
  Widget build(BuildContext context) {
    // Hosts the App icon picker and the Supporter sheet it opens. Content
    // builds below the host so they find it instead of falling back to a
    // modal route, which keeps its drag handle and gives no D-pad focus on TV.
    return OverlaySheetHost(canPop: true, child: Builder(builder: _buildContent));
  }

  Widget _buildContent(BuildContext context) {
    // Nullable watch: hosts without the profile session scope (tests) simply
    // never show the Explore toggle, mirroring the tab's own visibility.
    final hasExplore = context.watch<CatalogSourcesProvider?>()?.hasAnySource ?? false;
    final tvWorkspace = PlatformDetector.isTV() && section != AppearanceSettingsSection.all;
    final workspace = SettingsWorkspaceScope.maybeOf(context);
    final categoryWorkspace = workspace != null && section != AppearanceSettingsSection.all;
    final advanced = !categoryWorkspace || workspace.advanced;
    final groups = <Widget>[
      SettingsGroup(
        title: t.settings.display,
        children: [
          _themeSelector(),
          if (PlatformDetector.isTV())
            SettingSegmentedTile<int>(
              pref: SettingsService.tvScreenMargin,
              icon: Symbols.fit_screen_rounded,
              title: t.tvLayout.screenMargins,
              subtitle: t.tvLayout.screenMarginsDescription,
              segments: [
                for (final value in [0, 2, 3, 5, 8])
                  ButtonSegment(value: value, label: Text(value == 0 ? t.tvLayout.screenMarginsDefault : '$value%')),
              ],
            ),
          if (AppIconSetting.isShown(context)) const AppIconSetting(),
          if (PlatformDetector.isAutomotive()) _displayScaleSelector(),
          if (PlatformDetector.isMobile(context) || PlatformDetector.isTV()) _visualEffectsSelector(context),
          if (advanced && (PlatformDetector.isMobile(context) || PlatformDetector.isTV()))
            SettingSwitchTile(
              pref: SettingsService.fireStickMode,
              icon: Symbols.speed_rounded,
              title: t.customPerformance.fireStickMode,
              subtitle: t.customPerformance.description,
            ),
          if (!PlatformDetector.isTV() && PlatformDetector.isMobile(context))
            SettingNavigationTile(
              icon: Symbols.monitor_heart_rounded,
              title: t.customPerformance.detailsTitle,
              subtitle: t.customPerformance.details,
              destinationBuilder: (_) => const PerformanceSettingsScreen(),
            ),
        ],
      ),

      SettingsGroup(
        title: t.settings.libraryAndCards,
        children: [
          _densitySelector(),
          _gridSpacingSelector(),
          if (advanced) _episodePosterModeSelector(),
          if (advanced) _viewModeSelector(),
          SettingSwitchTile(
            pref: SettingsService.posterDetails,
            icon: Symbols.info_rounded,
            title: t.posterDetails.title,
            subtitle: t.posterDetails.description,
          ),
          if (advanced)
            SettingSwitchTile(
              pref: SettingsService.showEpisodeNumberOnCards,
              icon: Symbols.tag_rounded,
              title: t.settings.showEpisodeNumberOnCards,
              subtitle: t.settings.showEpisodeNumberOnCardsDescription,
            ),
          if (!PlatformDetector.isTV())
            SettingSwitchTile(
              pref: SettingsService.showSeasonPostersOnTabs,
              icon: Symbols.image_rounded,
              title: t.settings.showSeasonPostersOnTabs,
              subtitle: t.settings.showSeasonPostersOnTabsDescription,
            ),
          SettingSwitchTile(
            pref: SettingsService.hideSpoilers,
            icon: Symbols.visibility_off_rounded,
            title: t.settings.hideSpoilers,
            subtitle: t.settings.hideSpoilersDescription,
          ),
          SettingSwitchTile(
            pref: SettingsService.showWatchedIndicators,
            icon: Symbols.check_circle_rounded,
            title: t.settings.showWatchedIndicators,
            subtitle: t.settings.showWatchedIndicatorsDescription,
          ),
          if (advanced && PlatformDetector.isTV())
            SettingSwitchTile(
              pref: SettingsService.tvFullCardLayout,
              icon: Symbols.image_rounded,
              title: t.settings.tvFullCardLayout,
              subtitle: t.settings.tvFullCardLayoutDescription,
            ),
          if (advanced && PlatformDetector.isTV())
            SettingSwitchTile(
              pref: SettingsService.tvCornerSpotlightBackdrop,
              icon: Symbols.picture_in_picture_alt_rounded,
              title: t.settings.tvCornerSpotlightBackdrop,
              subtitle: t.settings.tvCornerSpotlightBackdropDescription,
            ),
          if (advanced && PlatformDetector.isTV())
            SettingSwitchTile(
              pref: SettingsService.focusGlow,
              icon: Symbols.lightbulb_rounded,
              title: t.settings.focusGlow,
              subtitle: t.settings.focusGlowDescription,
            ),
        ],
      ),

      SettingsGroup(
        title: t.settings.homeScreen,
        children: [
          if (!categoryWorkspace)
            SettingSwitchTile(
              pref: SettingsService.showThemeMusic,
              icon: Symbols.music_note_rounded,
              title: t.posterDetails.showThemeMusic,
              subtitle: t.posterDetails.showThemeMusicDescription,
            ),
          if (!categoryWorkspace)
            SettingSwitchTile(
              pref: SettingsService.catalogEpisodeInfo,
              icon: Symbols.movie_info_rounded,
              title: t.posterDetails.catalogEpisodeInfo,
              subtitle: t.posterDetails.catalogEpisodeInfoDescription,
            ),
          SettingSegmentedTile<int>(
            pref: SettingsService.homeShelfItemCount,
            icon: Symbols.view_carousel_rounded,
            title: t.downloadsRedesign.shelfSize,
            subtitle: t.downloadsRedesign.shelfSizeHint,
            segments: const [
              ButtonSegment(value: 16, label: Text('16')),
              ButtonSegment(value: 32, label: Text('32')),
              ButtonSegment(value: 48, label: Text('48')),
            ],
          ),
          SettingSwitchTile(
            pref: SettingsService.showHeroSection,
            icon: Symbols.featured_play_list_rounded,
            title: t.dashboard.showFeatured,
            subtitle: t.dashboard.showFeaturedDescription,
          ),
          if (!categoryWorkspace && context.watch<HomeLayoutProvider?>()?.profileId != null)
            SettingNavigationTile(
              icon: Symbols.dashboard_customize_rounded,
              title: t.homeLayout.title,
              subtitle: t.homeLayout.description,
              destinationBuilder: (_) => const HomeLayoutScreen(),
            ),
          if (!categoryWorkspace || !PlatformDetector.isMobile(context)) _homeHeroSizeSelector(),
          if (tvWorkspace && advanced)
            SettingSwitchTile(
              pref: SettingsService.homeSpotlightAutoRotate,
              icon: Symbols.autorenew_rounded,
              title: t.lurokaWorkspace.rotateSpotlight,
              subtitle: t.lurokaWorkspace.rotateDescription,
            ),
          if (tvWorkspace && advanced)
            SettingSegmentedTile<int>(
              pref: SettingsService.homeSpotlightInterval,
              icon: Symbols.timer_rounded,
              title: t.lurokaWorkspace.rotationInterval,
              segments: [
                for (final seconds in [12, 15, 20, 30])
                  ButtonSegment(
                    value: seconds,
                    label: Text(t.settings.secondsUnit(seconds: '$seconds')),
                  ),
              ],
            ),
          _continueWatchingActionSelector(),
          _episodeActionSelector(),
          if (advanced)
            SettingSwitchTile(
              pref: SettingsService.useGlobalHubs,
              icon: Symbols.home_rounded,
              title: tvWorkspace ? t.tvSettingsV2.serverRecommendations : t.settings.useGlobalHubs,
              subtitle: t.settings.useGlobalHubsDescription,
            ),
          SettingSwitchTile(
            pref: SettingsService.showServerNameOnHubs,
            icon: Symbols.dns_rounded,
            title: tvWorkspace ? t.tvSettingsV2.serverNames : t.settings.showServerNameOnHubs,
            subtitle: t.settings.showServerNameOnHubsDescription,
          ),
        ],
      ),

      SettingsGroup(
        title: t.settings.navigation,
        children: [
          if (hasExplore)
            SettingSwitchTile(
              pref: SettingsService.showExploreTab,
              icon: Symbols.explore_rounded,
              title: t.settings.showExploreTab,
              subtitle: t.settings.showExploreTabDescription,
            ),
          if (PlatformDetector.shouldUseSideNavigation(context) && !PlatformDetector.isTV())
            SettingSwitchTile(
              pref: SettingsService.alwaysKeepSidebarOpen,
              icon: Symbols.dock_to_left_rounded,
              title: t.settings.alwaysKeepSidebarOpen,
              subtitle: t.settings.alwaysKeepSidebarOpenDescription,
            ),
          if (advanced && PlatformDetector.shouldUseSideNavigation(context))
            SettingSwitchTile(
              pref: SettingsService.groupLibrariesByServer,
              icon: Symbols.dns_rounded,
              title: t.settings.groupLibrariesByServer,
              subtitle: t.settings.groupLibrariesByServerDescription,
            ),
          if (!PlatformDetector.shouldUseSideNavigation(context))
            SettingSwitchTile(
              pref: SettingsService.showNavBarLabels,
              icon: Symbols.label_rounded,
              title: t.settings.showNavBarLabels,
              subtitle: t.settings.showNavBarLabelsDescription,
            ),
          SettingSwitchTile(
            pref: SettingsService.showUnwatchedCount,
            icon: Symbols.counter_1_rounded,
            title: t.settings.showUnwatchedCount,
            subtitle: t.settings.showUnwatchedCountDescription,
          ),
        ],
      ),

      SettingsGroup(
        title: t.settings.liveTv,
        children: [
          SettingSwitchTile(
            pref: SettingsService.showLiveTvTab,
            icon: Symbols.live_tv_rounded,
            title: t.settingsRedesign.showLiveTv,
            subtitle: t.settingsRedesign.showLiveTvHint,
          ),
          SettingSwitchTile(
            pref: SettingsService.liveTvDefaultFavorites,
            icon: Symbols.star_rounded,
            title: t.settings.liveTvDefaultFavorites,
            subtitle: t.settings.liveTvDefaultFavoritesDescription,
          ),
        ],
      ),
    ];
    if (section == AppearanceSettingsSection.all) return AppearanceWorkspace(firstFocus: firstFocus, groups: groups);
    final selected = switch (section) {
      AppearanceSettingsSection.appearance => [groups[0]],
      AppearanceSettingsSection.library => [
        groups[1],
        SettingsGroup(
          title: t.settings.behavior,
          children: [
            SettingSwitchTile(
              pref: SettingsService.showThemeMusic,
              icon: Symbols.music_note_rounded,
              title: t.posterDetails.showThemeMusic,
              subtitle: t.posterDetails.showThemeMusicDescription,
            ),
            SettingSwitchTile(
              pref: SettingsService.catalogEpisodeInfo,
              icon: Symbols.movie_info_rounded,
              title: t.posterDetails.catalogEpisodeInfo,
              subtitle: t.posterDetails.catalogEpisodeInfoDescription,
            ),
          ],
        ),
      ],
      AppearanceSettingsSection.home => [groups[2], groups[3], groups[4]],
      AppearanceSettingsSection.all => groups,
    };
    return SettingsPage(title: Text(t.settings.appearance), children: [...selected, ...extraChildren]);
  }

  // Opens the theme picker; the subtitle and icon follow the theme on screen,
  // which is the device's default theme while a stored Supporter theme is
  // locked.
  Widget _themeSelector() {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return SettingNavigationTile(
          icon: themeProvider.themeModeIcon,
          title: t.settings.theme,
          settingId: SettingsService.themeMode.key,
          subtitle: themeModeLabel(themeProvider.themeMode),
          destinationBuilder: (_) => const ThemeSettingsScreen(),
        );
      },
    );
  }

  // Same label-row-plus-control layout as SegmentedSetting so slider and
  // button-group tiles read as one family inside a SettingsGroup.
  Widget _densitySelector() {
    if (PlatformDetector.isTV()) {
      return SettingStepperTile<int>(
        pref: SettingsService.libraryDensity,
        icon: Symbols.grid_view_rounded,
        title: section == AppearanceSettingsSection.library ? t.tvSettingsV2.posterSize : t.settings.libraryDensity,
        values: const [1, 2, 3, 4, 5],
        label: (value) => '$value / 5',
      );
    }
    return SettingValueBuilder<int>(
      pref: SettingsService.libraryDensity,
      builder: (context, density, _) {
        final theme = Theme.of(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Row(
                children: [
                  const AppIcon(Symbols.grid_view_rounded, fill: 1),
                  const SizedBox(width: 16),
                  Expanded(child: Text(t.settings.libraryDensity, style: settingsOptionTitleStyle(context))),
                ],
              ),
              const SizedBox(height: 12),
              FocusableSlider(
                value: density.toDouble(),
                min: 1,
                max: 5,
                divisions: 4,
                onChanged: (v) => SettingsService.instance.write(SettingsService.libraryDensity, v.round()),
              ),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(t.settings.compact, style: theme.textTheme.bodySmall),
                  Text(t.settings.comfortable, style: theme.textTheme.bodySmall),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _displayScaleSelector() {
    return SettingValueBuilder<double>(
      pref: SettingsService.automotiveUiScale,
      builder: (context, scale, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Row(
                children: [
                  const AppIcon(Symbols.format_size_rounded, fill: 1),
                  const SizedBox(width: 16),
                  Text(t.settings.displayScale, style: settingsOptionTitleStyle(context)),
                  const Spacer(),
                  Text('${scale.toStringAsFixed(2)}×', style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              const SizedBox(height: 12),
              FocusableSlider(
                value: scale,
                min: AutomotiveUiScale.min,
                max: AutomotiveUiScale.max,
                divisions: 20,
                onChanged: (value) => SettingsService.instance.write(SettingsService.automotiveUiScale, value),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _viewModeSelector() => SettingSegmentedTile<ViewMode>(
    pref: SettingsService.viewMode,
    icon: Symbols.view_list_rounded,
    title: t.settings.viewMode,
    segments: [
      ButtonSegment(value: ViewMode.grid, label: Text(t.settings.gridView)),
      ButtonSegment(value: ViewMode.list, label: Text(t.settings.listView)),
    ],
  );

  Widget _gridSpacingSelector() => SettingSegmentedTile<GridSpacing>(
    pref: SettingsService.gridSpacing,
    icon: Symbols.padding_rounded,
    title: t.settings.gridSpacing,
    segments: [
      ButtonSegment(value: GridSpacing.tight, label: Text(t.settings.gridSpacingTight)),
      ButtonSegment(value: GridSpacing.normal, label: Text(t.settings.gridSpacingNormal)),
      ButtonSegment(value: GridSpacing.spacious, label: Text(t.settings.gridSpacingSpacious)),
    ],
  );

  Widget _homeHeroSizeSelector() => SettingSegmentedTile<HomeHeroSize>(
    pref: SettingsService.homeHeroSize,
    icon: Symbols.aspect_ratio_rounded,
    title: t.settings.homeHeroSize,
    segments: [
      ButtonSegment(value: HomeHeroSize.small, label: Text(t.settings.homeHeroSizeSmall)),
      ButtonSegment(value: HomeHeroSize.medium, label: Text(t.settings.homeHeroSizeMedium)),
      ButtonSegment(value: HomeHeroSize.large, label: Text(t.settings.homeHeroSizeLarge)),
    ],
  );

  Widget _episodePosterModeSelector() => SettingSegmentedTile<EpisodePosterMode>(
    pref: SettingsService.episodePosterMode,
    icon: Symbols.image_rounded,
    title: t.settings.episodePosterMode,
    segments: [
      ButtonSegment(value: EpisodePosterMode.seriesPoster, label: Text(t.settings.seriesPoster)),
      ButtonSegment(value: EpisodePosterMode.seasonPoster, label: Text(t.settings.seasonPoster)),
      ButtonSegment(value: EpisodePosterMode.episodeThumbnail, label: Text(t.settings.episodeThumbnail)),
    ],
  );

  Widget _continueWatchingActionSelector() => SettingSegmentedTile<ContinueWatchingAction>(
    pref: SettingsService.continueWatchingAction,
    icon: Symbols.play_circle_rounded,
    title: t.settings.continueWatchingAction,
    segments: [
      ButtonSegment(value: ContinueWatchingAction.play, label: Text(t.settings.continueWatchingPlay)),
      ButtonSegment(value: ContinueWatchingAction.details, label: Text(t.settings.continueWatchingDetails)),
    ],
  );

  Widget _episodeActionSelector() => SettingSegmentedTile<EpisodeAction>(
    pref: SettingsService.episodeAction,
    icon: Symbols.tv_rounded,
    title: t.settings.episodeAction,
    segments: [
      ButtonSegment(value: EpisodeAction.play, label: Text(t.settings.episodePlay)),
      ButtonSegment(value: EpisodeAction.details, label: Text(t.settings.episodeDetails)),
    ],
  );

  String _visualEffectsLabel(VisualEffectsSetting value) => switch (value) {
    VisualEffectsSetting.auto => t.settings.visualEffectsAuto,
    VisualEffectsSetting.full => t.settings.visualEffectsFull,
    VisualEffectsSetting.reduced => t.settings.visualEffectsReduced,
  };

  Widget _visualEffectsSelector(BuildContext context) => SettingSelectionTile<VisualEffectsSetting>(
    pref: SettingsService.visualEffects,
    icon: Symbols.animation_rounded,
    title: t.settings.visualEffects,
    subtitleBuilder: _visualEffectsLabel,
    options: [
      DialogOption(
        value: VisualEffectsSetting.auto,
        title: t.settings.visualEffectsAuto,
        subtitle: t.settings.visualEffectsAutoDescription,
      ),
      DialogOption(value: VisualEffectsSetting.full, title: t.settings.visualEffectsFull),
      DialogOption(
        value: VisualEffectsSetting.reduced,
        title: t.settings.visualEffectsReduced,
        subtitle: t.settings.visualEffectsReducedDescription,
      ),
    ],
  );
}
