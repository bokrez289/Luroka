import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:luroka/widgets/app_icon.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../focus/focus_memory_tracker.dart';
import '../../focus/focusable_text_field.dart';
import '../../focus/input_mode_tracker.dart';
import '../../i18n/strings.g.dart';
import '../main_screen.dart';
import '../../mixins/mounted_set_state_mixin.dart';
import '../../mixins/refreshable.dart';
import '../../providers/account_preferences_controller.dart';
import '../../providers/hidden_libraries_provider.dart';
import '../../providers/download_provider.dart';
import '../../providers/libraries_provider.dart';
import '../../providers/home_layout_provider.dart';
import '../../services/donation_service.dart';
import '../../services/kids_profile_service.dart';
import '../profile/kids_settings_screen.dart';
import '../profile/family_settings_screen.dart';
import '../profile/full_backup_actions.dart';
import '../../services/download_storage_service.dart';
import '../../services/file_picker_service.dart';
import '../../services/saf_storage_service.dart';
import '../../services/settings_export_service.dart';
import '../../providers/theme_provider.dart';
import '../../providers/seerr_account_provider.dart';
import '../../services/account_preferences_accounts.dart';
import '../../services/keyboard_shortcuts_service.dart';
import '../../services/background_work_diagnostics_service.dart';
import '../../services/settings_service.dart' as settings;
import '../../services/settings_mutation_service.dart';
import '../../services/supporter/supporter_mode.dart';
import '../../widgets/background_download_warning_banner.dart';
import '../../utils/dialogs.dart';
import '../../utils/error_dialog.dart';
import '../../utils/platform_detector.dart';
import '../../widgets/desktop_app_bar.dart';
import '../../widgets/dialog_action_button.dart';
import '../../widgets/focusable_list_tile.dart';
import '../../widgets/library_management_sheet.dart';
import '../../widgets/overlay_sheet.dart';
import '../../widgets/setting_tile.dart';
import '../../widgets/settings_builder.dart';
import '../../widgets/settings_section.dart';
import '../../widgets/settings_page.dart';
import '../../widgets/settings_workspace_scope.dart';
import '../../widgets/tv_settings_hub.dart';
import '../../widgets/system_bottom_inset.dart';
import '../../profiles/active_profile_provider.dart';
import '../../profiles/profile.dart';
import '../../watch_together/services/watch_party_relays.dart';
import 'about_screen.dart';
import 'add_connection_screen.dart';
import 'servers_accounts_screen.dart';
import 'account_preferences_screen.dart';
import 'appearance_settings_screen.dart';
import 'general_settings_screen.dart';
import 'keyboard_shortcuts_screen.dart';
import 'logs_screen.dart';
import 'playback_settings_screen.dart';
import 'services_settings_screen.dart';
import 'performance_settings_screen.dart';
import 'home_layout_screen.dart';
import 'settings_utils.dart';
import 'supporter_settings_tile.dart';
import 'tracker_service_info.dart';

class _AdvancedToolsPage extends StatelessWidget {
  const _AdvancedToolsPage({required this.builder});
  final WidgetBuilder builder;
  @override
  Widget build(BuildContext context) =>
      SettingsPage(title: Text(t.tvSettingsV2.advancedTools), children: [builder(context)]);
}

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({
    super.key,
    this.downloadDirectoryWritableChecker,
    this.settingsExporter,
    this.settingsImporter,
    this.backgroundWorkDiagnosticsService,
  });

  @visibleForTesting
  final Future<bool> Function(Directory directory)? downloadDirectoryWritableChecker;

  @visibleForTesting
  final Future<String?> Function()? settingsExporter;

  @visibleForTesting
  final Future<ImportResult?> Function()? settingsImporter;
  @visibleForTesting
  final BackgroundWorkDiagnosticsService? backgroundWorkDiagnosticsService;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> with FocusableTab, MountedSetStateMixin {
  BackgroundWorkDiagnosticsService get _backgroundWorkDiagnostics =>
      widget.backgroundWorkDiagnosticsService ?? BackgroundWorkDiagnosticsService.instance;
  late final FocusMemoryTracker _focusTracker;
  final _tvHubKey = GlobalKey<TvSettingsHubState>();

  // Focus tracking keys
  static const _kDonate = 'donate';
  static const _kSupporter = 'supporter';
  static const _kGeneral = 'general';
  static const _kAppearance = 'appearance';
  static const _kPlayback = 'playback';
  static const _kManageLibraries = 'manage_libraries';
  static const _kServices = 'services';
  static const _kDownloadLocation = 'download_location';
  static const _kDownloadOnWifiOnly = 'download_on_wifi_only';
  static const _kAutoRemoveWatchedDownloads = 'auto_remove_watched_downloads';
  static const _kBackgroundDownloads = 'background_downloads';
  static const _kVideoPlayerControls = 'video_player_controls';
  static const _kVideoPlayerNavigation = 'video_player_navigation';
  static const _kCrashReporting = 'crash_reporting';
  static const _kDebugLogging = 'debug_logging';
  static const _kAutoHidePerformanceOverlay = 'auto_hide_performance_overlay';
  static const _kViewLogs = 'view_logs';
  static const _kClearImageCache = 'clear_image_cache';
  static const _kResetSettings = 'reset_settings';
  static const _kAbout = 'about';
  static const _kWatchTogetherRelay = 'watch_together_relay';
  static const _kExportSettings = 'export_settings';
  static const _kImportSettings = 'import_settings';
  static const _kAccountPreferences = 'account_preferences';
  static const _kServersOverview = 'servers_overview';

  KeyboardShortcutsService? _keyboardService;
  late final bool _keyboardShortcutsSupported = KeyboardShortcutsService.isPlatformSupported();

  @override
  void initState() {
    super.initState();
    _focusTracker = FocusMemoryTracker(debugLabelPrefix: 'settings');
    if (_keyboardShortcutsSupported) {
      KeyboardShortcutsService.getInstance().then((s) {
        setStateIfMounted(() => _keyboardService = s);
      });
    }
  }

  @override
  void dispose() {
    _focusTracker.dispose();
    super.dispose();
  }

  @override
  void focusActiveTabIfReady() {
    if (_tvHubKey.currentState != null) {
      _tvHubKey.currentState!.requestFocus();
      return;
    }
    if (InputModeTracker.isKeyboardMode(context, listen: false)) {
      _focusTracker.restoreFocus(fallbackKey: _topTileKey);
    }
  }

  /// Focus key of the first tile: Supporter in purchasable builds, the
  /// Liberapay link in donation builds (never both), else General.
  static String get _topTileKey => supporterBuildMode == SupporterMode.iap
      ? _kSupporter
      : DonationService.isEnabled
      ? _kDonate
      : _kGeneral;

  void _navigateToSidebar() {
    MainScreenFocusScope.focusSidebarOf(context);
  }

  KeyEventResult _handleKeyEvent(FocusNode _, KeyEvent event) {
    if (event is KeyDownEvent && event.logicalKey == LogicalKeyboardKey.arrowLeft) {
      _navigateToSidebar();
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }

  settings.SettingsService get _settingsService => settings.SettingsService.instance;

  @override
  Widget build(BuildContext context) {
    if (KidsProfileService.instance.isActiveKids) return const KidsSettingsScreen();
    final hasLibraries = context.select<LibrariesProvider, bool>((p) => p.libraries.isNotEmpty);

    if (OverlaySheetController.maybeOf(context) != null) {
      return _buildContent(context, hasLibraries: hasLibraries);
    }

    // Settings is hosted by MainScreen on side-navigation layouts, but it is a
    // separate pushed route on phones. Add a route-local host only for the
    // latter, and build its content from below the host so adaptive sheets do
    // not fall back to modal routes with a competing Android back path.
    return OverlaySheetHost(
      canPop: true,
      child: Builder(builder: (hostContext) => _buildContent(hostContext, hasLibraries: hasLibraries)),
    );
  }

  Widget _buildContent(BuildContext sheetContext, {required bool hasLibraries}) {
    if (PlatformDetector.isTV() || PlatformDetector.isMobile(sheetContext)) {
      return _buildTvHub(sheetContext, hasLibraries: hasLibraries);
    }
    return Scaffold(
      body: Focus(
        onKeyEvent: _handleKeyEvent,
        child: CustomScrollView(
          primary: false,
          slivers: [
            ExcludeFocus(child: CustomAppBar(title: Text(t.settings.title), pinned: true)),
            SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(height: 8),
                SettingsGroup(
                  children: [
                    if (supporterBuildMode == SupporterMode.iap)
                      SupporterSettingsTile(focusNode: _focusTracker.get(_kSupporter))
                    else if (DonationService.isEnabled)
                      _buildDonateTile(),
                    _buildGeneralTile(),
                    _buildFamilyTile(),
                    _buildAppearanceTile(),
                    _buildPlaybackTile(),
                    if (hasLibraries) _buildManageLibrariesTile(sheetContext),
                    _buildServicesTile(),
                  ],
                ),

                _buildConnectionsSection(sheetContext),

                if (!PlatformDetector.isAppleTV()) _buildDownloadsSection(),

                if (_keyboardShortcutsSupported) _buildControlsSection(sheetContext),

                _buildAdvancedSection(),

                // Hidden on Android TV / tvOS (no document picker); desktop in
                // force-TV mode keeps it — FilePickerService works there.
                if (!PlatformDetector.isTV() || PlatformDetector.isDesktopOS()) _buildBackupSection(),

                const SizedBox(height: 24),
                SettingsGroup(
                  children: [
                    SettingNavigationTile(
                      focusNode: _focusTracker.get(_kAbout),
                      icon: Symbols.info_rounded,
                      title: t.settings.about,
                      subtitle: t.settings.aboutDescription,
                      destinationBuilder: (context) => const AboutScreen(),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
              ]),
            ),
            const SliverSystemBottomInset(),
          ],
        ),
      ),
    );
  }

  Widget _buildTvHub(BuildContext context, {required bool hasLibraries}) {
    if (PlatformDetector.isTV() || PlatformDetector.isMobile(context)) {
      return _buildReorganizedTvHub(context, hasLibraries: hasLibraries);
    }
    TvSettingsSearchEntry search(String category, String title, [String? id, String keywords = '']) =>
        TvSettingsSearchEntry(categoryId: category, title: title, settingId: id, keywords: keywords);
    TvSettingsCategory page(
      String id,
      String title,
      IconData icon,
      String? description,
      Widget destination, {
      bool advanced = false,
      bool inline = true,
      bool preview = false,
    }) => TvSettingsCategory(
      id: id,
      title: title,
      icon: icon,
      description: description,
      firstFocus: _focusTracker.get('category_$id'),
      advanced: advanced,
      preview: preview,
      builder: (_) => destination,
      onOpen: inline ? null : () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => destination)),
    );
    return TvSettingsHub(
      key: _tvHubKey,
      onExitLeft: PlatformDetector.isTV() ? _navigateToSidebar : () => Navigator.of(context).maybePop(),
      searchEntries: [
        search('appearance', t.settings.theme),
        search(
          'appearance',
          t.settingsRedesign.showLiveTv,
          settings.SettingsService.showLiveTvTab.key,
          'live television navigation',
        ),
        search(
          'appearance',
          t.downloadsRedesign.shelfSize,
          settings.SettingsService.homeShelfItemCount.key,
          'continue watching recently added 16 32 48',
        ),
        search('appearance', t.tvLayout.screenMargins, settings.SettingsService.tvScreenMargin.key),
        search('appearance', t.settings.hideSpoilers, settings.SettingsService.hideSpoilers.key),
        search('appearance', t.settings.showWatchedIndicators, settings.SettingsService.showWatchedIndicators.key),
        search('appearance', t.settings.libraryAndCards, null, 'posters size density artwork'),
        search('home', t.lurokaWorkspace.rotateSpotlight, settings.SettingsService.homeSpotlightAutoRotate.key),
        search('home', t.lurokaWorkspace.rotationInterval, settings.SettingsService.homeSpotlightInterval.key),
        search('home', t.homeLayout.rows, null, 'reorder hide pinned collections'),
        search('audio', t.settings.subtitleStyling, t.settings.subtitleStyling),
        search('audio', t.settings.audioPassthrough, settings.SettingsService.audioPassthrough.key),
        search('audio', t.settings.audioChannelLimit, settings.SettingsService.audioChannelLimit.key),
        search('audio', t.settings.maxVolume, settings.SettingsService.maxVolume.key),
        search('playback', t.settings.autoPlayNextEpisode, settings.SettingsService.autoPlayNextEpisode.key),
        search('playback', t.settings.playNextCountdown, settings.SettingsService.playNextCountdown.key),
        search('playback', t.settings.skipIntroMode, settings.SettingsService.skipIntroMode.key),
        search('playback', t.settings.skipCreditsMode, settings.SettingsService.skipCreditsMode.key),
        search('playback', t.settings.smallSkipDuration, settings.SettingsService.seekTimeSmall.key),
        search('playback', t.settings.largeSkipDuration, settings.SettingsService.seekTimeLarge.key),
        search('playback', t.settings.rewindOnResume, settings.SettingsService.rewindOnResume.key),
        search('playback', t.settings.rememberTrackSelections, settings.SettingsService.rememberTrackSelections.key),
        search('picture', t.settings.disableDolbyVision, settings.SettingsService.disableDolbyVision.key),
        search('picture', t.settings.matchContentFrameRate, settings.SettingsService.matchContentFrameRate.key),
        search('picture', t.settings.matchContentResolution, settings.SettingsService.matchContentResolution.key),
        search('engine', t.settings.hardwareDecoding, settings.SettingsService.enableHardwareDecoding.key),
        search('engine', t.settings.introPattern, settings.SettingsService.introPattern.key),
        search('engine', t.settings.creditsPattern, settings.SettingsService.creditsPattern.key),
        search('engine', t.externalPlayer.title, t.externalPlayer.title),
        search('engine', t.mpvConfig.title, t.mpvConfig.title, 'custom player configuration'),
        search('connections', t.settings.services, t.settings.services, 'TMDb Cinemeta Seerr discovery'),
        search('general', t.settings.language, null, 'language startup profile selection'),
        search('household', t.family.people, null, 'profiles family people manage'),
        search('household', t.family.addPerson, 'family_add', 'adult child teen create profile'),
        search('household', t.family.switchProfile, 'family_switch', 'profiles switch'),
        search('household', t.family.safety, 'family_safety', 'parental controls kids restrictions age limits'),
        search('household', t.kids.parentPin, 'family_safety', 'parental PIN protection lock'),
        search('household', t.family.activity, 'family_activity', 'screen time statistics viewing history'),
        search('advanced', t.settings.viewLogs, null, 'debug diagnostics logging'),
      ],
      categories: [
        page(
          'playback',
          t.settings.videoPlayback,
          Symbols.play_circle_rounded,
          t.settings.videoPlaybackDescription,
          const PlaybackSettingsScreen(view: PlaybackSettingsView.everyday),
        ),
        page(
          'audio',
          t.lurokaWorkspace.audioSubtitles,
          Symbols.subtitles_rounded,
          t.lurokaWorkspace.audioDescription,
          PlaybackSettingsScreen(
            view: PlaybackSettingsView.audio,
            accountPreferences:
                context.select<AccountPreferencesController, bool>((controller) => controller.accounts.isNotEmpty)
                ? _buildAccountPreferencesTile(context)
                : null,
          ),
        ),
        page(
          'appearance',
          t.settings.appearance,
          Symbols.palette_rounded,
          t.settingsRedesign.appearanceHint,
          AppearanceSettingsScreen(firstFocus: _focusTracker.get('category_appearance')),
          // Live preview pane: the mini-home + theme list on the right.
          preview: true,
        ),
        page(
          'home',
          t.lurokaWorkspace.homeDiscovery,
          Symbols.dashboard_customize_rounded,
          t.homeLayout.description,
          const HomeLayoutScreen(),
        ),
        TvSettingsCategory(
          id: 'connections',
          title: t.lurokaWorkspace.librariesAccounts,
          icon: Symbols.hub_rounded,
          firstFocus: _focusTracker.get('add_connection'),
          builder: (context) => SingleChildScrollView(
            child: Column(
              children: [
                _buildConnectionsSection(context),
                const SizedBox(height: 16),
                SettingsGroup(children: [if (hasLibraries) _buildManageLibrariesTile(context), _buildServicesTile()]),
              ],
            ),
          ),
        ),
        page(
          'general',
          t.settings.general,
          Symbols.settings_rounded,
          t.settings.generalDescription,
          const GeneralSettingsScreen(),
        ),
        TvSettingsCategory(
          id: 'household',
          title: t.family.title,
          icon: Symbols.group_rounded,
          description: t.family.manageHint,
          keywords: 'profiles people children kids family parental controls screen time activity parent PIN',
          firstFocus: _focusTracker.get('family_profiles'),
          builder: (_) => FamilySettingsScreen(firstFocus: _focusTracker.get('family_profiles')),
        ),
        page(
          'performance',
          t.customPerformance.title,
          Symbols.speed_rounded,
          t.customPerformance.details,
          const PerformanceSettingsScreen(),
          advanced: true,
        ),
        if (!PlatformDetector.isAppleTV())
          TvSettingsCategory(
            id: 'downloads',
            title: t.settings.downloads,
            icon: Symbols.download_rounded,
            firstFocus: _focusTracker.get(_kDownloadOnWifiOnly),
            advanced: true,
            builder: (_) => SingleChildScrollView(child: _buildDownloadsSection()),
          ),
        if (_keyboardService != null)
          TvSettingsCategory(
            id: 'controls',
            title: t.settings.controls,
            icon: Symbols.gamepad_rounded,
            firstFocus: _focusTracker.get(_kVideoPlayerControls),
            advanced: true,
            builder: (context) => SingleChildScrollView(child: _buildControlsSection(context)),
          ),
        page(
          'picture',
          t.lurokaWorkspace.pictureSound,
          Symbols.tv_rounded,
          t.lurokaWorkspace.pictureDescription,
          const PlaybackSettingsScreen(view: PlaybackSettingsView.display),
          advanced: true,
        ),
        page(
          'engine',
          t.lurokaPlayer.enginePreferences,
          Symbols.memory_rounded,
          t.lurokaWorkspace.engineDescription,
          const PlaybackSettingsScreen(view: PlaybackSettingsView.engine),
          advanced: true,
        ),
        page(
          'network',
          t.lurokaWorkspace.networkStreaming,
          Symbols.wifi_rounded,
          t.lurokaWorkspace.networkDescription,
          const PlaybackSettingsScreen(view: PlaybackSettingsView.network),
          advanced: true,
        ),
        TvSettingsCategory(
          id: 'advanced',
          title: t.settings.advanced,
          icon: Symbols.build_rounded,
          firstFocus: _focusTracker.get(_kWatchTogetherRelay),
          advanced: true,
          builder: (_) => SingleChildScrollView(
            child: Column(
              children: [_buildAdvancedSection(), if (PlatformDetector.isDesktopOS()) _buildBackupSection()],
            ),
          ),
        ),
        TvSettingsCategory(
          id: 'about',
          title: t.settings.about,
          icon: Symbols.info_rounded,
          firstFocus: _focusTracker.get(_kAbout),
          builder: (_) => const AboutScreen(),
        ),
      ],
    );
  }

  Widget _buildReorganizedTvHub(BuildContext context, {required bool hasLibraries}) {
    TvSettingsCategory page(
      String id,
      String title,
      IconData icon,
      String description,
      WidgetBuilder builder, {
      bool preview = true,
      FocusNode? firstFocus,
    }) => TvSettingsCategory(
      id: id,
      title: title,
      icon: icon,
      description: description,
      builder: builder,
      preview: preview,
      firstFocus: firstFocus ?? _focusTracker.get('tv_$id'),
    );
    TvSettingsSearchEntry search(String category, String title, [String? id, String keywords = '']) =>
        TvSettingsSearchEntry(categoryId: category, title: title, settingId: id, keywords: keywords);
    return TvSettingsHub(
      key: _tvHubKey,
      onExitLeft: PlatformDetector.isTV() ? _navigateToSidebar : () => Navigator.of(context).maybePop(),
      searchEntries: [
        TvSettingsSearchEntry(
          categoryId: 'playback',
          title: t.settings.hardwareDecoding,
          settingId: t.tvSettingsV2.engine,
          advanced: true,
          keywords: 'hardware decoding player engine',
        ),
        TvSettingsSearchEntry(
          categoryId: 'playback',
          title: t.settings.matchContentFrameRate,
          settingId: t.tvSettingsV2.screenDisplay,
          advanced: true,
          keywords: 'frame rate resolution display',
        ),
        TvSettingsSearchEntry(
          categoryId: 'playback',
          title: t.lurokaWorkspace.networkStreaming,
          settingId: t.tvSettingsV2.network,
          advanced: true,
          keywords: 'quality network streaming',
        ),
        TvSettingsSearchEntry(
          categoryId: 'appearance',
          title: t.tvSettingsV2.performance,
          settingId: t.tvSettingsV2.performance,
          advanced: true,
          keywords: 'performance fire stick',
        ),
        TvSettingsSearchEntry(
          categoryId: 'about',
          title: t.settings.viewLogs,
          settingId: t.tvSettingsV2.advancedTools,
          advanced: true,
          keywords: 'logs diagnostics backup',
        ),
        search('appearance', t.settings.theme, t.settings.theme, 'theme colors'),
        search('appearance', t.tvLayout.screenMargins, settings.SettingsService.tvScreenMargin.key),
        search('library', t.tvSettingsV2.posterSize, settings.SettingsService.libraryDensity.key, 'density size'),
        search('library', t.settings.gridSpacing, settings.SettingsService.gridSpacing.key),
        search('library', t.settings.hideSpoilers, settings.SettingsService.hideSpoilers.key),
        search('library', t.settings.showWatchedIndicators, settings.SettingsService.showWatchedIndicators.key),
        search(
          'home',
          t.settingsRedesign.showLiveTv,
          settings.SettingsService.showLiveTvTab.key,
          'live television navigation',
        ),
        search(
          'home',
          t.downloadsRedesign.shelfSize,
          settings.SettingsService.homeShelfItemCount.key,
          'continue watching recently added',
        ),
        search('home', t.homeLayout.title, null, 'reorder hide source libraries'),
        search('playback', t.settings.autoPlayNextEpisode, settings.SettingsService.autoPlayNextEpisode.key),
        search('playback', t.settings.skipIntroMode, settings.SettingsService.skipIntroMode.key),
        search('playback', t.settings.skipCreditsMode, settings.SettingsService.skipCreditsMode.key),
        search('audio', t.settings.subtitleStyling, t.settings.subtitleStyling, 'captions font size color'),
        search('audio', t.accountPreferences.sectionTitle, null, 'audio subtitle language'),
        search('household', t.family.people, null, 'profiles kids family'),
        search('connections', t.serversAccounts.title, null, 'servers accounts services'),
        search('downloads', t.settings.downloadOnWifiOnly, settings.SettingsService.downloadOnWifiOnly.key),
        search('general', t.settings.language, null, 'language region'),
      ],
      categories: [
        page(
          'appearance',
          t.settings.appearance,
          Symbols.palette_rounded,
          t.settingsRedesign.appearanceHint,
          (context) => AppearanceSettingsScreen(
            section: AppearanceSettingsSection.appearance,
            extraChildren: [
              if (SettingsWorkspaceScope.maybeOf(context)?.advanced == true)
                SettingsGroup(
                  children: [
                    SettingNavigationTile(
                      icon: Symbols.speed_rounded,
                      title: t.tvSettingsV2.performance,
                      subtitle: t.customPerformance.details,
                      destinationBuilder: (_) => const PerformanceSettingsScreen(),
                    ),
                  ],
                ),
            ],
          ),
        ),
        page(
          'home',
          t.tvSettingsV2.homeNavigation,
          Symbols.home_rounded,
          t.tvSettingsV2.homeHint,
          (context) => AppearanceSettingsScreen(
            section: AppearanceSettingsSection.home,
            extraChildren: [
              if (context.watch<HomeLayoutProvider?>()?.profileId != null)
                SettingsGroup(
                  children: [
                    SettingNavigationTile(
                      icon: Symbols.dashboard_customize_rounded,
                      title: t.homeLayout.title,
                      subtitle: t.homeLayout.description,
                      destinationBuilder: (_) => const HomeLayoutScreen(includeSpotlight: false),
                    ),
                  ],
                ),
            ],
          ),
        ),
        page(
          'library',
          t.tvSettingsV2.libraryCards,
          Symbols.grid_view_rounded,
          t.tvSettingsV2.libraryHint,
          (_) => const AppearanceSettingsScreen(section: AppearanceSettingsSection.library),
        ),
        page(
          'playback',
          t.tvSettingsV2.playback,
          Symbols.play_circle_rounded,
          t.settings.videoPlaybackDescription,
          (_) => const PlaybackSettingsScreen(view: PlaybackSettingsView.everyday),
        ),
        page(
          'audio',
          t.lurokaWorkspace.audioSubtitles,
          Symbols.subtitles_rounded,
          t.lurokaWorkspace.audioDescription,
          (context) => PlaybackSettingsScreen(
            view: PlaybackSettingsView.audio,
            accountPreferences: context.select<AccountPreferencesController, bool>((c) => c.accounts.isNotEmpty)
                ? _buildAccountPreferencesTile(context)
                : null,
          ),
        ),
        page(
          'connections',
          t.tvSettingsV2.accountsLibraries,
          Symbols.hub_rounded,
          t.serversAccounts.subtitle,
          (context) => SingleChildScrollView(
            child: Column(
              children: [
                _buildConnectionsSection(context),
                const SizedBox(height: 16),
                SettingsGroup(children: [if (hasLibraries) _buildManageLibrariesTile(context), _buildServicesTile()]),
              ],
            ),
          ),
          preview: false,
          firstFocus: _focusTracker.get('add_connection'),
        ),
        page(
          'household',
          t.tvSettingsV2.profilesFamily,
          Symbols.group_rounded,
          t.family.manageHint,
          (_) => FamilySettingsScreen(firstFocus: _focusTracker.get('family_profiles')),
          preview: false,
          firstFocus: _focusTracker.get('family_profiles'),
        ),
        if (!PlatformDetector.isAppleTV())
          page(
            'downloads',
            t.settings.downloads,
            Symbols.download_rounded,
            t.settings.downloads,
            (_) => SingleChildScrollView(child: _buildDownloadsSection()),
            preview: false,
            firstFocus: _focusTracker.get(_kDownloadOnWifiOnly),
          ),
        page(
          'general',
          t.settings.general,
          Symbols.settings_rounded,
          t.settings.generalDescription,
          (_) => const GeneralSettingsScreen(),
          preview: false,
        ),
        page(
          'about',
          t.tvSettingsV2.aboutSupport,
          Symbols.info_rounded,
          t.settings.aboutDescription,
          (context) => AboutScreen(
            firstFocus: _focusTracker.get(_kAbout),
            extraChildren: [
              if (SettingsWorkspaceScope.maybeOf(context)?.advanced == true)
                SettingNavigationTile(
                  icon: Symbols.build_rounded,
                  title: t.tvSettingsV2.advancedTools,
                  subtitle: t.tvSettingsV2.advancedToolsHint,
                  destinationBuilder: (_) => _AdvancedToolsPage(
                    builder: (context) => Column(
                      children: [
                        _buildAdvancedSection(),
                        if (PlatformDetector.isDesktopOS()) _buildBackupSection(),
                        if (_keyboardService != null) _buildControlsSection(context),
                      ],
                    ),
                  ),
                ),
            ],
          ),
          preview: false,
        ),
      ],
    );
  }

  Widget _buildGeneralTile() {
    return SettingNavigationTile(
      focusNode: _focusTracker.get(_kGeneral),
      icon: Symbols.settings_rounded,
      title: t.settings.general,
      subtitle: t.settings.generalDescription,
      destinationBuilder: (context) => const GeneralSettingsScreen(),
    );
  }

  Widget _buildDonateTile() {
    return SettingNavigationTile(
      focusNode: _focusTracker.get(_kDonate),
      icon: Symbols.favorite_rounded,
      title: t.settings.supportDeveloper,
      subtitle: t.settings.supportDeveloperDescription,
      trailingIcon: Symbols.open_in_new_rounded,
      onTap: () async {
        final url = Uri.parse(DonationService.donationUrl);
        if (await canLaunchUrl(url)) {
          await launchUrl(url, mode: LaunchMode.externalApplication);
        }
      },
    );
  }

  Widget _buildAppearanceTile() {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) => SettingValueBuilder<int>(
        pref: settings.SettingsService.libraryDensity,
        builder: (context, libraryDensity, _) {
          final summary = '${themeModeLabel(themeProvider.themeMode)} · ${t.settings.libraryDensity} $libraryDensity';
          return SettingNavigationTile(
            focusNode: _focusTracker.get(_kAppearance),
            icon: Symbols.palette_rounded,
            title: t.settings.appearance,
            subtitle: summary,
            destinationBuilder: (context) => const AppearanceSettingsScreen(),
          );
        },
      ),
    );
  }

  Widget _buildPlaybackTile() {
    return SettingNavigationTile(
      focusNode: _focusTracker.get(_kPlayback),
      icon: Symbols.play_circle_rounded,
      title: t.settings.videoPlayback,
      subtitle: t.settings.videoPlaybackDescription,
      destinationBuilder: (context) => const PlaybackSettingsScreen(),
    );
  }

  Widget _buildFamilyTile() => Consumer<ActiveProfileProvider?>(
    builder: (context, active, _) => ListenableBuilder(
      listenable: KidsProfileService.instance,
      builder: (context, _) => SettingNavigationTile(
        icon: Symbols.group_rounded,
        title: t.family.title,
        subtitle: familyPeopleSummary(active),
        destinationBuilder: (_) => const FamilySettingsScreen(),
      ),
    ),
  );

  Widget _buildManageLibrariesTile(BuildContext context) {
    return SettingNavigationTile(
      focusNode: _focusTracker.get(_kManageLibraries),
      icon: Symbols.video_library_rounded,
      title: t.libraries.manageLibraries,
      subtitle: t.settings.manageLibrariesDescription,
      onTap: () => showLibraryManagementSheet(context),
    );
  }

  Widget _buildServicesTile() {
    // The tracker account providers are watched through [TrackerServiceInfo].
    return Consumer<SeerrAccountProvider>(
      builder: (context, seerr, _) {
        final connectedNames = <String>[
          for (final info in TrackerServiceInfo.all)
            if (info.isConnected(context)) info.displayName,
          if (seerr.isConnected) t.services.names.seerr,
        ];
        final subtitle = connectedNames.isEmpty ? t.settings.servicesDescription : connectedNames.join(' · ');
        return SettingNavigationTile(
          focusNode: _focusTracker.get(_kServices),
          icon: Symbols.sync_rounded,
          title: t.settings.services,
          subtitle: subtitle,
          destinationBuilder: (_) => const ServicesSettingsScreen(),
        );
      },
    );
  }

  Widget _buildConnectionsSection(BuildContext context) {
    final active = context.select<ActiveProfileProvider, Profile?>((p) => p.active);
    final subtitle = active == null
        ? t.connections.addConnectionSubtitleNoProfile
        : t.connections.addConnectionSubtitleScoped(displayName: active.displayName);

    return SettingsGroup(
      title: t.connections.sectionTitle,
      children: [
        // The live overview: per-server sign-in status and per-profile usage.
        SettingNavigationTile(
          focusNode: _focusTracker.get(_kServersOverview),
          icon: Symbols.dns_rounded,
          title: t.serversAccounts.title,
          subtitle: t.serversAccounts.subtitle,
          destinationBuilder: (_) => const ServersAccountsScreen(),
        ),
        // Connections are managed per-profile (via the Profiles section
        // and each profile's detail screen). The shortcut here just opens
        // the picker scoped to the active profile so users can add a Plex
        // account, Jellyfin server, or borrow from another profile.
        SettingNavigationTile(
          focusNode: _focusTracker.get('add_connection'),
          icon: Symbols.add_link_rounded,
          title: t.connections.addConnection,
          subtitle: subtitle,
          onTap: () {
            final active = context.read<ActiveProfileProvider>().active;
            Navigator.push(context, MaterialPageRoute(builder: (_) => AddConnectionScreen(targetProfile: active)));
          },
        ),
        if (context.select<AccountPreferencesController, bool>((c) => c.accounts.isNotEmpty))
          _buildAccountPreferencesTile(context),
      ],
    );
  }

  /// Server-stored preferences for the accounts the active profile signed in
  /// with. Hidden when no account is reachable — an empty picker is noise.
  Widget _buildAccountPreferencesTile(BuildContext context) {
    final accounts = context.select<AccountPreferencesController, List<AccountPreferenceAccount>>((c) => c.accounts);
    final subtitle = accounts.length == 1
        ? t.accountPreferences.hubSubtitleSingle(account: accounts.single.target.label)
        : t.accountPreferences.hubSubtitleMultiple(count: accounts.length);
    return SettingNavigationTile(
      focusNode: _focusTracker.get(_kAccountPreferences),
      icon: Symbols.manage_accounts_rounded,
      title: t.accountPreferences.sectionTitle,
      subtitle: subtitle,
      destinationBuilder: (context) =>
          AccountPreferencesScreen(targets: [for (final account in accounts) account.target]),
    );
  }

  Widget _buildDownloadsSection() {
    final storageService = DownloadStorageService.instance;
    final isCustom = storageService.isUsingCustomPath();

    return SettingsGroup(
      title: t.settings.downloads,
      children: [
        if (!Platform.isIOS)
          FutureBuilder<String>(
            future: storageService.getCurrentDownloadPathDisplay(),
            builder: (context, snapshot) {
              final currentPath = snapshot.data ?? '...';
              return FocusableListTile(
                focusNode: _focusTracker.get(_kDownloadLocation),
                leading: const AppIcon(Symbols.folder_rounded, fill: 1),
                title: Text(isCustom ? t.settings.downloadLocationCustom : t.settings.downloadLocationDefault),
                subtitle: Text(currentPath, maxLines: 2, overflow: .ellipsis),
                trailing: const AppIcon(Symbols.chevron_right_rounded, fill: 1),
                onTap: () => _showDownloadLocationDialog(),
              );
            },
          ),
        SettingSwitchTile(
          focusNode: _focusTracker.get(_kDownloadOnWifiOnly),
          pref: settings.SettingsService.downloadOnWifiOnly,
          icon: Symbols.wifi_rounded,
          title: t.settings.downloadOnWifiOnly,
          subtitle: t.settings.downloadOnWifiOnlyDescription,
        ),
        SettingSwitchTile(
          focusNode: _focusTracker.get(_kAutoRemoveWatchedDownloads),
          pref: settings.SettingsService.autoRemoveWatchedDownloads,
          icon: Symbols.delete_sweep_rounded,
          title: t.settings.autoRemoveWatchedDownloads,
          subtitle: t.settings.autoRemoveWatchedDownloadsDescription,
        ),
        if (_backgroundWorkDiagnostics.isSupported) _buildBackgroundDownloadsTile(),
        // TODO: "Remove orphaned downloads" toggle goes here, next to
        // autoRemoveWatchedDownloads.
      ],
    );
  }

  /// Standing answer to "why do my downloads stop when I leave the app" — also
  /// what support can ask a user to read out without needing a log upload.
  Widget _buildBackgroundDownloadsTile() {
    final diagnostics = _backgroundWorkDiagnostics;
    return ListenableBuilder(
      listenable: diagnostics,
      builder: (context, _) {
        final status = diagnostics.status;
        final scheme = Theme.of(context).colorScheme;
        final (icon, color, summary) = switch (status) {
          _ when !status.probed => (Symbols.help_rounded, null, t.downloads.backgroundWarning.statusUnknown),
          _ when status.isBlocked => (
            Symbols.battery_alert_rounded,
            scheme.error,
            t.downloads.backgroundWarning.statusBlocked,
          ),
          _ when !status.isHealthy => (
            Symbols.info_rounded,
            scheme.tertiary,
            t.downloads.backgroundWarning.statusDegraded,
          ),
          _ => (Symbols.check_circle_rounded, null, t.downloads.backgroundWarning.statusOk),
        };
        return FocusableListTile(
          focusNode: _focusTracker.get(_kBackgroundDownloads),
          leading: AppIcon(icon, fill: 1, color: color),
          title: Text(t.downloads.backgroundWarning.statusTile),
          subtitle: Text(summary),
          trailing: const AppIcon(Symbols.chevron_right_rounded, fill: 1),
          onTap: () async {
            await diagnostics.refresh();
            if (!context.mounted) return;
            if (diagnostics.status.isHealthy) {
              return;
            }
            await showBackgroundDownloadWarningDialog(context, service: diagnostics);
          },
        );
      },
    );
  }

  /// Input devices: keyboard shortcuts on platforms with a physical keyboard,
  /// and the companion-remote host on surfaces that can be controlled from a
  /// phone. Either half may be absent; the caller skips the section when both
  /// are.
  Widget _buildControlsSection(BuildContext context) {
    final children = <Widget>[
      if (_keyboardService != null) ...[
        SettingNavigationTile(
          focusNode: _focusTracker.get(_kVideoPlayerControls),
          icon: Symbols.keyboard_rounded,
          title: t.settings.videoPlayerControls,
          subtitle: t.settings.keyboardShortcutsDescription,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => KeyboardShortcutsScreen(keyboardService: _keyboardService!)),
            );
          },
        ),
        SettingSwitchTile(
          focusNode: _focusTracker.get(_kVideoPlayerNavigation),
          pref: settings.SettingsService.videoPlayerNavigationEnabled,
          icon: Symbols.gamepad_rounded,
          title: t.settings.videoPlayerNavigation,
          subtitle: t.settings.videoPlayerNavigationDescription,
        ),
      ],
    ];
    // Keyboard platforms render nothing until the shortcuts service loads; an
    // empty SettingsGroup would paint a bare section title.
    if (children.isEmpty) return const SizedBox.shrink();
    return SettingsGroup(title: t.settings.controls, children: children);
  }

  Widget _buildAdvancedSection() {
    return SettingsGroup(
      title: t.settings.advanced,
      children: [
        SettingNavigationTile(
          focusNode: _focusTracker.get(_kWatchTogetherRelay),
          icon: Symbols.dns_rounded,
          title: t.settings.watchTogetherRelay,
          subtitle: t.settings.watchTogetherRelayDescription,
          onTap: () => _showRelayUrlDialog(),
        ),
        SettingSwitchTile(
          focusNode: _focusTracker.get(_kCrashReporting),
          pref: settings.SettingsService.crashReporting,
          icon: Symbols.monitoring_rounded,
          title: t.settings.crashReporting,
          subtitle: t.settings.crashReportingDescription,
        ),
        SettingSwitchTile(
          focusNode: _focusTracker.get(_kDebugLogging),
          pref: settings.SettingsService.enableDebugLogging,
          icon: Symbols.bug_report_rounded,
          title: t.settings.debugLogging,
          subtitle: t.settings.debugLoggingDescription,
        ),
        SettingSwitchTile(
          focusNode: _focusTracker.get(_kAutoHidePerformanceOverlay),
          pref: settings.SettingsService.autoHidePerformanceOverlay,
          icon: Symbols.speed_rounded,
          title: t.settings.autoHidePerformanceOverlay,
          subtitle: t.settings.autoHidePerformanceOverlayDescription,
        ),
        SettingNavigationTile(
          focusNode: _focusTracker.get(_kViewLogs),
          icon: Symbols.article_rounded,
          title: t.settings.viewLogs,
          subtitle: t.settings.viewLogsDescription,
          destinationBuilder: (context) => const LogsScreen(),
        ),
        SettingNavigationTile(
          focusNode: _focusTracker.get(_kClearImageCache),
          icon: Symbols.cleaning_services_rounded,
          title: t.settings.clearImageCache,
          subtitle: t.settings.clearImageCacheDescription,
          onTap: () => _showClearImageCacheDialog(),
        ),
        SettingNavigationTile(
          focusNode: _focusTracker.get(_kResetSettings),
          icon: Symbols.restore_rounded,
          title: t.settings.resetSettings,
          subtitle: t.settings.resetSettingsDescription,
          onTap: () => _showResetSettingsDialog(),
        ),
        if (kDebugMode)
          SettingNavigationTile(
            icon: Symbols.error_rounded,
            title: 'Test Sentry',
            subtitle: 'Send a test error',
            onTap: () {
              throw Exception("Example exception");
            },
          ),
        if (kDebugMode)
          SettingNavigationTile(
            icon: Symbols.timer_rounded,
            title: 'Test ANR',
            subtitle: 'Block the main thread for 10 seconds',
            onTap: () {
              // The 10-second main-thread block itself is the test signal.
              final end = DateTime.now().add(const Duration(seconds: 10));
              while (DateTime.now().isBefore(end)) {}
            },
          ),
      ],
    );
  }

  Widget _buildBackupSection() {
    return SettingsGroup(
      title: t.settings.backup,
      children: [
        SettingNavigationTile(
          icon: Symbols.lock_rounded,
          title: 'Back up profiles and accounts',
          subtitle: 'Save an encrypted backup including server logins and local history',
          onTap: () => unawaited(exportFullBackup(context)),
        ),
        SettingNavigationTile(
          focusNode: _focusTracker.get(_kExportSettings),
          icon: Symbols.upload_rounded,
          title: t.settings.exportSettings,
          subtitle: t.settings.exportSettingsDescription,
          onTap: _handleExportSettings,
        ),
        SettingNavigationTile(
          focusNode: _focusTracker.get(_kImportSettings),
          icon: Symbols.download_rounded,
          title: t.settings.importSettings,
          subtitle: t.settings.importSettingsDescription,
          onTap: _showImportSettingsDialog,
        ),
        // TODO: Cloud settings sync/backup goes here once a
        // sync backend exists (iCloud on Apple platforms, or the relay).
      ],
    );
  }

  Future<void> _showDownloadLocationDialog() async {
    final storageService = DownloadStorageService.instance;
    final isCustom = storageService.isUsingCustomPath();

    await showScopedDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(t.settings.downloads),
        content: Column(
          mainAxisSize: .min,
          crossAxisAlignment: .start,
          children: [
            Text(t.settings.downloadLocationDescription),
            const SizedBox(height: 16),
            FutureBuilder<String>(
              future: storageService.getCurrentDownloadPathDisplay(),
              builder: (context, snapshot) {
                return Text(
                  t.settings.currentPath(path: snapshot.data ?? '...'),
                  style: Theme.of(context).textTheme.bodySmall,
                );
              },
            ),
          ],
        ),
        actions: [
          if (isCustom)
            DialogActionButton(
              onPressed: () async {
                // Run the async work first, then pop — popping first leaves
                // setState inside _resetDownloadLocation racing against the
                // already-dismissed dialog (and any re-opened instance).
                await _resetDownloadLocation();
                if (dialogContext.mounted) Navigator.pop(dialogContext);
              },
              label: t.settings.resetToDefault,
            ),
          DialogActionButton(onPressed: () => Navigator.pop(dialogContext), label: t.common.cancel),
          DialogActionButton(
            onPressed: () async {
              final changed = await _selectDownloadLocation();
              if (changed && dialogContext.mounted) Navigator.pop(dialogContext);
            },
            label: t.settings.selectFolder,
            isPrimary: true,
          ),
        ],
      ),
    );
  }

  Future<bool> _selectDownloadLocation() async {
    final changed = await guardSettingsOperation<bool, DownloadStorageException>(
      context,
      operation: 'Download directory selection',
      body: () async {
        String? selectedPath;
        String pathType = 'file';

        if (Platform.isAndroid) {
          final safStorage = SafStorageService.instance;
          if (!safStorage.supportsDirectoryPicker) {
            showErrorDialog(context, t.settings.downloadLocationPickerUnavailable);
            return false;
          }
          selectedPath = await safStorage.pickDirectory();
          if (!mounted) return false;
          if (selectedPath != null) pathType = 'saf';
        } else {
          selectedPath = await FilePickerService.instance.getDirectoryPath(dialogTitle: t.settings.selectFolder);
          if (!mounted) return false;
        }
        if (selectedPath == null) return false;

        final writableChecker = widget.downloadDirectoryWritableChecker;
        if (pathType == 'file' && writableChecker != null) {
          final isWritable = await writableChecker(Directory(selectedPath));
          if (!mounted) return false;
          if (!isWritable) {
            showErrorDialog(context, t.settings.downloadLocationInvalid);
            return false;
          }
        }

        await context.read<DownloadProvider>().setDownloadLocation(path: selectedPath, pathType: pathType);
        if (!mounted) return false;

        // ignore: no-empty-block - setState triggers rebuild to reflect new download path
        setState(() {});
        return true;
      },
    );
    return changed ?? false;
  }

  Future<void> _resetDownloadLocation() async {
    await context.read<DownloadProvider>().resetDownloadLocation();

    if (mounted) {
      // ignore: no-empty-block - setState triggers rebuild to reflect reset path
      setState(() {});
    }
  }

  Future<void> _showRelayUrlDialog() async {
    await showScopedDialog<void>(
      context: context,
      builder: (_) => _RelayUrlDialog(settingsService: _settingsService),
    );
  }

  Future<void> _showClearImageCacheDialog() async {
    final confirmed = await showConfirmDialog(
      context,
      title: t.settings.clearImageCache,
      message: t.settings.clearImageCacheDescription,
      confirmText: t.common.clear,
    );
    if (!confirmed) return;
    await _settingsService.clearImageCache();
  }

  Future<void> _showResetSettingsDialog() async {
    final confirmed = await showConfirmDialog(
      context,
      title: t.settings.resetSettings,
      message: t.settings.resetSettingsDescription,
      confirmText: t.common.reset,
      isDestructive: true,
    );
    if (!mounted || !confirmed) return;
    final previousRootConfiguration = SettingsMutationService.captureRootConfiguration();
    await context.read<DownloadProvider>().resetDownloadLocation();
    await _settingsService.resetAllSettings();
    if (!mounted) return;
    final failures = await const SettingsMutationService().applyStoredEffects(
      context,
      previousRootConfiguration: previousRootConfiguration,
    );
    if (!mounted) return;
    // Every pref is reset either way; only some runtime effect declined, so the
    // reset itself is not a failure — name what did not take.
    if (failures.isEmpty) {
    } else {
      showErrorDialog(context, failures.first.display);
    }
  }

  Future<void> _handleExportSettings() async {
    await guardSettingsOperation<void, SettingsExportException>(
      context,
      operation: 'Settings export',
      body: () async {
        final path = await (widget.settingsExporter ?? SettingsExportService.exportToFile)();
        if (!mounted || path == null) return;
      },
    );
  }

  Future<void> _showImportSettingsDialog() async {
    final confirmed = await showConfirmDialog(
      context,
      title: t.settings.importSettings,
      message: t.settings.importSettingsConfirm,
      confirmText: t.settings.importSettings,
    );
    if (!mounted || !confirmed) return;
    await _handleImportSettings();
  }

  Future<void> _handleImportSettings() async {
    await guardSettingsOperation<void, SettingsExportException>(
      context,
      operation: 'Settings import',
      body: () async {
        // The two typed import failures carry their own message, so they are
        // handled here instead of falling through to the generic guard.
        try {
          final previousRootConfiguration = SettingsMutationService.captureRootConfiguration();
          final result = await (widget.settingsImporter ?? SettingsExportService.importFromFile)();
          if (!mounted) return;
          if (result == null) return; // user cancelled file picker

          final hiddenLibrariesProvider = context.read<HiddenLibrariesProvider>();
          final librariesProvider = context.read<LibrariesProvider>();

          // Import wrote directly to SharedPreferences, bypassing `write`. Push
          // fresh values into active listenables before providers re-read settings.
          _settingsService.refreshListenables();
          await hiddenLibrariesProvider.refresh();
          unawaited(librariesProvider.refresh());
          if (!mounted) return;
          final failures = await const SettingsMutationService().applyStoredEffects(
            context,
            previousRootConfiguration: previousRootConfiguration,
          );

          if (!mounted) return;
          if (failures.isEmpty) {
          } else {
            showErrorDialog(context, failures.first.display);
          }
        } on NoUserSignedInException {
          if (mounted) showErrorDialog(context, t.settings.importSettingsNoUser);
        } on InvalidExportFileException {
          if (mounted) showErrorDialog(context, t.settings.importSettingsInvalidFile);
        }
      },
    );
  }
}

class _RelayUrlDialog extends StatefulWidget {
  final settings.SettingsService settingsService;

  const _RelayUrlDialog({required this.settingsService});

  @override
  State<_RelayUrlDialog> createState() => _RelayUrlDialogState();
}

class _RelayUrlDialogState extends State<_RelayUrlDialog> {
  late final TextEditingController _controller;
  final _saveFocusNode = FocusNode(debugLabel: 'WatchTogetherRelaySave');
  bool _relayUrlInvalid = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: widget.settingsService.read(settings.SettingsService.watchPartyRelayUrl) ?? '',
    );
  }

  @override
  void dispose() {
    _saveFocusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  Future<void> _reset() async {
    _controller.clear();
    await widget.settingsService.write(settings.SettingsService.watchPartyRelayUrl, null);
    if (mounted) Navigator.pop(context);
  }

  Future<void> _save() async {
    final value = _controller.text;
    if (value.trim().isEmpty) {
      await widget.settingsService.write(settings.SettingsService.watchPartyRelayUrl, null);
      if (mounted) Navigator.pop(context);
      return;
    }

    final base = canonicalRelayBaseUrl(value);
    if (base == null) {
      setState(() => _relayUrlInvalid = true);
      return;
    }
    await widget.settingsService.write(settings.SettingsService.watchPartyRelayUrl, base);
    if (mounted) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(t.settings.watchTogetherRelay),
      content: FocusableTextField(
        controller: _controller,
        decoration: InputDecoration(
          labelText: t.common.url,
          hintText: t.settings.watchTogetherRelayHint,
          errorText: _relayUrlInvalid ? t.settings.watchTogetherRelayInvalid : null,
        ),
        autofocus: true,
        textInputAction: TextInputAction.done,
        onChanged: (_) {
          if (_relayUrlInvalid) {
            setState(() => _relayUrlInvalid = false);
          }
        },
        onEditingComplete: () => _saveFocusNode.requestFocus(),
        onNavigateDown: _saveFocusNode.requestFocus,
      ),
      actions: [
        DialogActionButton(onPressed: _reset, label: t.settings.resetToDefault),
        DialogActionButton(onPressed: () => Navigator.pop(context), label: t.common.cancel),
        DialogActionButton(focusNode: _saveFocusNode, onPressed: _save, label: t.common.save),
      ],
    );
  }
}
