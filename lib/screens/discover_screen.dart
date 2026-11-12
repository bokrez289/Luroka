import 'dart:async';
import '../services/kids_profile_service.dart';
import '../theme/kids_style.dart';
import '../media/ids.dart';
import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:luroka/widgets/app_icon.dart';
import '../widgets/server_activities_button.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';
import '../focus/focusable_action_bar.dart';
import '../focus/locked_hub_controller.dart';

import '../media/media_item.dart';
import '../media/catalog_item_ref.dart';
import '../media/media_server_client.dart';
import '../media/media_hub.dart';
import '../media/media_kind.dart';
import '../media/media_backend.dart';
import '../media/home_layout.dart';
import '../media/home_progress.dart';
import '../models/catalog/catalog_item.dart' show CatalogSourceId;
import '../utils/media_image_helper.dart';
import '../widgets/system_clock.dart';
import '../providers/discover_provider.dart';
import '../providers/trending_spotlight_provider.dart';
import '../providers/home_layout_provider.dart';
import '../providers/home_favorites_snapshot.dart';
import '../providers/home_taste_provider.dart';
import '../providers/catalog_sources_provider.dart';
import '../providers/libraries_provider.dart';
import '../providers/watch_state_store.dart';
import '../providers/studios_provider.dart';
import '../providers/hidden_libraries_provider.dart';
import '../providers/multi_server_provider.dart';
import '../widgets/home_dashboard.dart';
import '../widgets/app_menu.dart';
import '../widgets/profile_menu.dart';
import '../widgets/profile_switching_overlay.dart';
import 'profile/profile_switch_screen.dart';
import 'downloads/downloads_screen.dart';
import 'livetv/live_tv_screen.dart';
import 'settings/screen_time_screen.dart';
import 'settings/source_libraries_screen.dart';
import 'profile/profile_teardown.dart';
import '../profiles/active_profile_provider.dart';
import '../profiles/profile.dart';
import '../profiles/profile_activation.dart';
import '../profiles/profile_avatar.dart';
import '../services/settings_service.dart';
import '../widgets/settings_builder.dart';
import '../mixins/refreshable.dart';
import '../mixins/tab_visibility_aware.dart';
import '../i18n/strings.g.dart';
import '../utils/app_logger.dart';
import '../utils/media_navigation_helper.dart';
import '../utils/provider_extensions.dart';
import '../utils/error_dialog.dart';
import '../utils/video_player_navigation.dart';
import '../utils/platform_detector.dart';
import 'main_screen.dart';
import '../navigation/settings_shortcut.dart';
import '../navigation/main_screen_scope.dart' show HomeScrollToTop;
import '../watch_together/watch_together.dart';
import 'settings/home_layout_screen.dart';
import 'profile/family_settings_screen.dart';
import 'studio_browser_screen.dart';
import 'studios_screen.dart';
import 'video_player_screen.dart' show VideoPlayerScreenState;

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen>
    with Refreshable, ManualRefreshable, FullRefreshable, TabVisibilityAware, FocusableTab, WidgetsBindingObserver
    implements HomeOptionsTab, HomeScrollToTop {
  /// Data + refresh policy live in [DiscoverProvider]; this state keeps only
  /// UI concerns (focus, spotlight hand-off). The proxy getters keep
  /// the build code reading naturally.
  late final DiscoverProvider _discover;
  TrendingSpotlightProvider? _trending;
  HomeFavoritesSnapshot? _favoriteSnapshot;
  HomeTasteProvider? _homeTaste;
  CatalogSourcesProvider? _catalogSources;
  WatchStateStore? _watchState;
  int? _lastTasteWatchRevision;
  Timer? _personalSpotlightTimer;
  Future<void>? _waitingForHomeBeforePersonalSpotlight;
  bool _appForeground = true;
  Object? _filteredFavoritesKey;
  List<MediaItem> _filteredFavorites = const [];
  late final HomeLayoutProvider? _homeLayout;
  late final StudiosProvider? _studios;
  late final HiddenLibrariesProvider? _hiddenLibraries;
  late final MultiServerProvider _multiServer;
  final HomeLayout _defaultHomeLayout = HomeLayout();
  int _seenLoadGeneration = 0;

  List<MediaItem> get _onDeck {
    final layout = _homeLayout?.layout ?? _defaultHomeLayout;
    final items = _discover.onDeck;
    final hideContinue = layout.hidden.contains(homeContinueWatchingKey);
    if (!layout.splitContinueWatching) return hideContinue ? const [] : items;
    final hideNext = layout.hidden.contains(homeNextUpKey);
    if (!hideContinue && !hideNext) return items;
    return items.where((item) => isHomeNextUp(item) ? !hideNext : !hideContinue).toList();
  }

  List<MediaHub> get _hubs => _discover.hubs;
  bool get _hasMoreContinueWatching => _discover.hasMoreContinueWatching;
  bool get _isLoading => _discover.isLoading;
  bool get _areHubsLoading => _discover.areHubsLoading;
  String? get _errorMessage => _discover.errorMessage == null ? null : t.errors.unableToLoad(context: t.discover.title);

  bool _switchingProfile = false;
  bool _isTabVisible = true;

  bool _initialLoadComplete = false;
  bool _pendingDashboardContentFocus = false;

  /// Primary focus when the content claim was armed; see [_railClaimAbandoned].
  FocusNode? _railClaimFocusOrigin;

  final _dashboardKey = GlobalKey<HomeDashboardState>();
  final _hubFocusMemory = HubFocusMemory();

  final _actionBarKey = GlobalKey<FocusableActionBarState>();
  final _serverActivitiesButtonKey = GlobalKey<ServerActivitiesButtonState>();
  final _userMenuKey = GlobalKey<AppMenuButtonState<String>>();
  final _mobileHomeMenuKey = GlobalKey<AppMenuButtonState<String>>();

  /// Backend-neutral hero client lookup. Returns the actual
  /// [MediaServerClient] for the item's server (Plex or Jellyfin) so
  /// [MediaImageHelper] uses the right transcoder for sized URLs.
  MediaServerClient? _getMediaClientForItem(MediaItem? item) {
    final serverId = item?.serverId;
    if (serverId == null) {
      return context.tryGetMediaClientForServer(null);
    }
    return context.tryGetMediaClientForServer(ServerId(serverId));
  }

  // Preserve list identity on unrelated rebuilds so the Fire Stick's rail can
  // retain its fast path and focus memory after presentation edits.
  List<MediaHub>? _rowsCache;
  Object? _rowsCacheKey;

  List<MediaHub> get _rows {
    final layout = _homeLayout?.layout ?? _defaultHomeLayout;
    final online = _multiServer.onlineServerIds;
    final hidden = _hiddenLibraries?.hiddenLibraryKeys ?? const <String>{};
    final binding = context.read<ActiveProfileProvider?>()?.isBinding ?? false;
    final key = (
      _discover.onDeck,
      _hubs,
      _hasMoreContinueWatching,
      _discover.hasMoreNextUp,
      layout,
      Object.hashAllUnordered(online),
      Object.hashAllUnordered(hidden),
      binding,
      t.discover.continueWatching,
      t.discover.nextUp,
      t.homeLayout.pinnedCollections,
      _studios?.groups,
      _studios?.hasMore,
      _studios?.failed,
      t.studios.title,
    );
    if (_rowsCache != null && key == _rowsCacheKey) return _rowsCache!;
    _rowsCacheKey = key;
    final pins = binding
        ? <MediaItem>[]
        : layout.pins
              .where((pin) => online.contains(pin.serverId) && !hidden.contains('${pin.serverId}:${pin.libraryId}'))
              .toList();
    final arranged = layout.arrange(
      buildHomeRows(
        hubs: _hubs,
        onDeck: _discover.onDeck,
        pins: pins,
        continueWatchingTitle: t.discover.continueWatching,
        pinnedTitle: t.homeLayout.pinnedCollections,
        hasMoreContinueWatching: _hasMoreContinueWatching,
        splitContinueWatching: layout.splitContinueWatching,
        hasMoreNextUp: _discover.hasMoreNextUp,
        nextUpTitle: t.discover.nextUp,
        studios: [
          ...layout.arrangeStudios(_studios?.groups ?? const [], (group) => group.key).map((group) => group.homeItem),
          if (_studios?.hasMore == true || _studios?.failed == true)
            MediaItem(
              id: 'studio-directory',
              backend: MediaBackend.plex,
              kind: MediaKind.collection,
              title: t.activityStats.showMore,
              raw: const {'customStudio': 'studio-directory'},
            ),
        ],
        studiosTitle: t.studios.title,
      ),
    );
    if (KidsProfileService.instance.isActiveKids) {
      // Kids Home needs media rows only. Studio facets otherwise spend server
      // time at startup and cannot appear in the children's shelves.
      return _rowsCache = KidsProfileService.instance.filterHubs(arranged.where((row) => row.id != homeStudiosId));
    }
    return _rowsCache = arranged;
  }

  void _focusTopActions() {
    if (PlatformDetector.isTV()) {
      _navigateToSidebar();
      return;
    }
    if (!(ModalRoute.of(context)?.isCurrent ?? false)) return;
    final actionBar = _actionBarKey.currentState;
    if (actionBar != null) {
      actionBar.requestFocusOnFirst();
      return;
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !(ModalRoute.of(context)?.isCurrent ?? false)) return;
      _actionBarKey.currentState?.requestFocusOnFirst();
    });
  }

  void _focusContentFromAppBar() {
    _dashboardKey.currentState?.requestContentFocus();
  }

  // TV only: the dashboard hosts its own content focus. A focus request stays
  // armed while the dashboard has no hubs to focus (empty first load), so rows
  // landing later still receive it. It must not outlive the user's own
  // navigation: hubs arriving minutes later would yank the remote off a
  // sidebar item the user has since moved to.
  //
  // Where focus *sits* cannot tell those apart — MainScreen hands a tab over
  // while focus is still on the sidebar item that selected it, and that
  // request is as live as one made from a bare scope. What distinguishes a
  // stale claim is that focus *moved* after the request was armed and now
  // rests on a control off this screen. A bare scope — MainScreen's content
  // scope before any child has focus — is "nowhere yet", not a destination.
  bool get _railClaimAbandoned {
    final node = FocusManager.instance.primaryFocus;
    if (identical(node, _railClaimFocusOrigin)) return false;
    final focusContext = node?.context;
    if (node == null || node is FocusScopeNode || focusContext == null) return false;
    return !identical(focusContext.findAncestorStateOfType<_DiscoverScreenState>(), this);
  }

  void _applyPendingTvBrowseRailFocus() {
    if (!_pendingDashboardContentFocus) return;
    if (_railClaimAbandoned) {
      _pendingDashboardContentFocus = false;
      return;
    }
    _focusDashboardContentWhenReady();
  }

  void _focusDashboardContentWhenReady({bool immediate = false}) {
    if (!PlatformDetector.isTV()) return;
    if (!_isTabVisible || !(ModalRoute.of(context)?.isCurrent ?? false)) {
      _pendingDashboardContentFocus = false;
      return;
    }

    _pendingDashboardContentFocus = true;
    _railClaimFocusOrigin = FocusManager.instance.primaryFocus;
    void claimDashboard() {
      if (!mounted ||
          !_pendingDashboardContentFocus ||
          _railClaimAbandoned ||
          !_isTabVisible ||
          !(ModalRoute.of(context)?.isCurrent ?? false)) {
        return;
      }
      if (_dashboardKey.currentState?.requestContentFocus() == true) _pendingDashboardContentFocus = false;
    }

    if (immediate) claimDashboard();
    WidgetsBinding.instance.addPostFrameCallback((_) => claimDashboard());
  }

  void _navigateToSidebar() {
    MainScreenFocusScope.focusSidebarOf(context);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _homeLayout = context.read<HomeLayoutProvider?>();
    _studios = context.read<StudiosProvider?>();
    _studios?.addListener(_onHomeLayoutChanged);
    _hiddenLibraries = context.read<HiddenLibrariesProvider?>();
    _multiServer = context.read<MultiServerProvider>();
    _homeLayout?.addListener(_onHomeLayoutChanged);
    _hiddenLibraries?.addListener(_onHomeLayoutChanged);
    _multiServer.addOnlineServersListener(_onHomeServersChanged);
    _discover = context.read<DiscoverProvider>();
    _discover.setSplitHomeProgress(_homeLayout?.layout.splitContinueWatching ?? false);
    _seenLoadGeneration = _discover.loadGeneration;
    _discover.addListener(_onDiscoverChanged);
    _favoriteSnapshot = context.read<HomeFavoritesSnapshot?>();
    _homeTaste = context.read<HomeTasteProvider?>();
    _catalogSources = context.read<CatalogSourcesProvider?>();
    _catalogSources?.addListener(_schedulePersonalSpotlight);
    _watchState = context.read<WatchStateStore?>();
    _lastTasteWatchRevision = _watchState?.observationWatermark;
    _watchState?.addListener(_onFavoriteWatchStateChanged);
    _trending = context.read<TrendingSpotlightProvider?>();
    _trending?.addListener(_onHomeLayoutChanged);
    _trending?.updateLibraryItems(_hubs.expand((hub) => hub.items));
    _trending?.ensureFresh();
    unawaited(_discover.load());
  }

  Future<void>? _waitingForHomeBeforeStudios;

  bool _canLoadPersonalSpotlight() {
    if (!mounted ||
        !_isTabVisible ||
        !_appForeground ||
        _isLoading ||
        _areHubsLoading ||
        KidsProfileService.instance.isActiveKids ||
        _homeLayout?.profileId == null ||
        _homeLayout?.layout.spotlightSource != HomeSpotlightSource.forYou ||
        !SettingsService.instance.read(SettingsService.showHeroSection) ||
        VideoPlayerScreenState.activeGlobalKey != null ||
        !(ModalRoute.of(context)?.isCurrent ?? true)) {
      return false;
    }
    final active = context.read<ActiveProfileProvider>();
    return !active.isBinding && active.activeId == _homeLayout!.profileId;
  }

  void _onFavoriteWatchStateChanged() {
    if (!mounted || _homeLayout?.layout.spotlightSource != HomeSpotlightSource.forYou) return;
    final revision = _watchState?.observationWatermark;
    if (revision != _lastTasteWatchRevision) {
      _lastTasteWatchRevision = revision;
      _homeTaste?.invalidate();
      _schedulePersonalSpotlight();
    }
    if (_favoriteSnapshot?.items.isEmpty ?? true) return;
    _filteredFavoritesKey = null;
    setState(() {});
  }

  void _schedulePersonalSpotlight() {
    if (!_canLoadPersonalSpotlight()) {
      _personalSpotlightTimer?.cancel();
      _personalSpotlightTimer = null;
      _favoriteSnapshot?.cancelBackground();
      _homeTaste?.cancelPending();
      return;
    }
    final homeLoad = _discover.activeLoad;
    if (homeLoad != null) {
      if (!identical(_waitingForHomeBeforePersonalSpotlight, homeLoad)) {
        _waitingForHomeBeforePersonalSpotlight = homeLoad;
        void resume() {
          if (identical(_waitingForHomeBeforePersonalSpotlight, homeLoad)) {
            _waitingForHomeBeforePersonalSpotlight = null;
          }
          if (mounted) _schedulePersonalSpotlight();
        }

        unawaited(homeLoad.then((_) => resume(), onError: (Object error, StackTrace stack) => resume()));
      }
      return;
    }
    if (_personalSpotlightTimer != null) return;
    _personalSpotlightTimer = Timer(const Duration(seconds: 2), () {
      _personalSpotlightTimer = null;
      if (!_canLoadPersonalSpotlight() || _discover.activeLoad != null) return;
      final hasGenres =
          _onDeck.any((item) => item.genres?.isNotEmpty == true) ||
          _rows.any((row) => row.items.any((item) => item.genres?.isNotEmpty == true));
      if (hasGenres) {
        unawaited(_homeTaste?.ensureFresh(canRun: () => _canLoadPersonalSpotlight() && _discover.activeLoad == null));
      }
      final snapshot = _favoriteSnapshot;
      if (snapshot == null) return;
      final hidden = _hiddenLibraries;
      final online = _multiServer.onlineServerIds.toSet();
      final libraries = context.read<LibrariesProvider>().libraries;
      final targets = <HomeFavoriteLibrary>[
        for (final library in libraries)
          if (library.serverId != null &&
              online.contains(library.serverId) &&
              !(hidden?.hiddenLibraryKeys.contains(library.globalKey) ?? false))
            if (_multiServer.getClientForServer(ServerId(library.serverId!)) case final client?)
              (library: library, client: client),
      ];
      final plex = _catalogSources?.connectedSources.where((source) => source.id == CatalogSourceId.plex).firstOrNull;
      final libraryKeys = {for (final target in targets) target.library.globalKey};
      final clientScopes = {for (final target in targets) target.library.globalKey: target.client.cacheServerId};
      bool current() {
        if (!_canLoadPersonalSpotlight() || _discover.activeLoad != null) return false;
        final nowOnline = _multiServer.onlineServerIds.toSet();
        final nowHidden = _hiddenLibraries?.hiddenLibraryKeys ?? const <String>{};
        final currentKeys = {
          for (final library in context.read<LibrariesProvider>().libraries)
            if (library.serverId != null &&
                nowOnline.contains(library.serverId) &&
                !nowHidden.contains(library.globalKey))
              if (_multiServer.getClientForServer(ServerId(library.serverId!)) != null) library.globalKey,
        };
        if (libraryKeys.length != currentKeys.length || !libraryKeys.containsAll(currentKeys)) return false;
        for (final target in targets) {
          if (!identical(_multiServer.getClientForServer(ServerId(target.library.serverId!)), target.client)) {
            return false;
          }
          if (target.client.cacheServerId != clientScopes[target.library.globalKey]) return false;
        }
        return identical(
          plex,
          _catalogSources?.connectedSources.where((source) => source.id == CatalogSourceId.plex).firstOrNull,
        );
      }

      unawaited(snapshot.ensureBackground(libraries: targets, plexWatchlist: plex, canRun: current));
    });
  }

  List<MediaItem> _spotlightFavorites(BuildContext context) {
    if (_homeLayout?.layout.spotlightSource != HomeSpotlightSource.forYou) return const [];
    final snapshot = context.watch<HomeFavoritesSnapshot?>()?.items ?? const <MediaItem>[];
    final hidden = _hiddenLibraries;
    final online = _multiServer.onlineServerIds.toSet();
    final key = (
      snapshot,
      _watchState?.observationWatermark,
      hidden?.isInitialized,
      Object.hashAllUnordered(hidden?.hiddenLibraryKeys ?? const <String>{}),
      Object.hashAllUnordered(hidden?.selectedSourceLibraries ?? const <String>{}),
      hidden?.hasSourceSelection,
      Object.hashAllUnordered(online),
    );
    if (_filteredFavoritesKey == key) return _filteredFavorites;
    _filteredFavoritesKey = key;
    return _filteredFavorites = [
      for (final item in snapshot)
        if (item.isCatalogItem ||
            (hidden?.isInitialized != false &&
                online.contains(item.serverId) &&
                (hidden?.allowsItem(item) ?? true) &&
                KidsProfileService.instance.allows(item)))
          item.isCatalogItem ? item : (_watchState?.apply(item) ?? item),
    ];
  }

  void _startStudiosWhenHomeReady() {
    if (!mounted || !_isTabVisible || _isLoading || _areHubsLoading || KidsProfileService.instance.isActiveKids) return;
    final studioRow = MediaHub(id: homeStudiosId, title: t.studios.title, type: 'studio', items: const []);
    if ((_homeLayout?.layout ?? _defaultHomeLayout).isHidden(studioRow)) {
      _studios?.stopDiscovery();
      return;
    }
    if (!(ModalRoute.of(context)?.isCurrent ?? true)) return;
    final homeLoad = _discover.activeLoad;
    if (homeLoad != null) {
      if (!identical(_waitingForHomeBeforeStudios, homeLoad)) {
        _waitingForHomeBeforeStudios = homeLoad;
        void resumeStudios() {
          if (identical(_waitingForHomeBeforeStudios, homeLoad)) _waitingForHomeBeforeStudios = null;
          if (mounted) _startStudiosWhenHomeReady();
        }

        unawaited(homeLoad.then((_) => resumeStudios(), onError: (Object error, StackTrace stack) => resumeStudios()));
      }
      return;
    }
    _studios?.ensureLoaded();
  }

  void _onHomeServersChanged(Set<String> _) {
    _onHomeLayoutChanged();
  }

  void _onHomeLayoutChanged() {
    if (!mounted) return;
    _discover.setSplitHomeProgress(_homeLayout?.layout.splitContinueWatching ?? false);
    if (_homeLayout?.layout.spotlightSource == HomeSpotlightSource.forYou &&
        _lastTasteWatchRevision != _watchState?.observationWatermark) {
      _lastTasteWatchRevision = _watchState?.observationWatermark;
      _homeTaste?.invalidate();
    }
    setState(() {});
    _startStudiosWhenHomeReady();
    _schedulePersonalSpotlight();
    _applyPendingTvBrowseRailFocus();
  }

  void _openHomeLayout() => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const HomeLayoutScreen()));

  @override
  void openHomeOptions() => unawaited(() async {
    final choice = await showAdaptiveAppMenu<String>(
      context,
      title: t.lurokaWorkspace.homeOptions,
      position: Offset(MediaQuery.sizeOf(context).width - 80, 56),
      focusFirstItem: true,
      entries: [
        AppMenuItem(value: 'refresh', icon: Symbols.refresh_rounded, label: t.lurokaWorkspace.refreshHome),
        if (_homeLayout?.profileId != null)
          AppMenuItem(
            value: 'customize',
            icon: Symbols.dashboard_customize_rounded,
            label: t.lurokaWorkspace.customizeHome,
          ),
      ],
    );
    if (!mounted || choice == null) return;
    switch (choice) {
      case 'refresh':
        await _refreshFromToolbar();
      case 'customize':
        _openHomeLayout();
    }
  }());

  /// Mirror provider changes into this state's UI concerns: rebuild and apply
  /// pending content focus.
  /// Everything the build reads from the provider (list identities — the
  /// provider replaces lists on change — plus the scalar flags). Notifies
  /// that leave this unchanged (e.g. a watch-state-driven Continue Watching
  /// refresh that found nothing new) skip the setState so the whole screen —
  /// dashboard included — is not rebuilt for nothing.
  (List<MediaItem>, List<MediaHub>, bool, bool, bool, String?) get _renderSignature =>
      (_onDeck, _hubs, _hasMoreContinueWatching, _isLoading, _areHubsLoading, _discover.errorMessage);

  (List<MediaItem>, List<MediaHub>, bool, bool, bool, String?)? _seenRenderSignature;

  void _onDiscoverChanged() {
    if (!mounted) return;
    _trending?.updateLibraryItems(_hubs.expand((hub) => hub.items));
    final generation = _discover.loadGeneration;
    final isNewLoad = generation != _seenLoadGeneration;
    _seenLoadGeneration = generation;
    final signature = _renderSignature;
    final renderChanged = isNewLoad || signature != _seenRenderSignature;
    _seenRenderSignature = signature;

    if (renderChanged) {
      setState(() {});
    }
    _startStudiosWhenHomeReady();
    _schedulePersonalSpotlight();
    _applyPendingTvBrowseRailFocus();

    // On initial load, focus content so the user doesn't start on the toolbar
    if (!_initialLoadComplete) {
      if (PlatformDetector.isTV() && (_onDeck.isNotEmpty || _hubs.isNotEmpty)) {
        _initialLoadComplete = true;
        // A late first playable row must not re-arm an already abandoned
        // content claim after the user has moved to another destination.
        if (_railClaimAbandoned) return;
        _focusDashboardContentWhenReady();
      }
    }
  }

  @override
  void dispose() {
    _personalSpotlightTimer?.cancel();
    _favoriteSnapshot?.cancelBackground();
    _homeTaste?.cancelPending();
    _catalogSources?.removeListener(_schedulePersonalSpotlight);
    _watchState?.removeListener(_onFavoriteWatchStateChanged);
    _studios?.removeListener(_onHomeLayoutChanged);
    _homeLayout?.removeListener(_onHomeLayoutChanged);
    _hiddenLibraries?.removeListener(_onHomeLayoutChanged);
    _multiServer.removeOnlineServersListener(_onHomeServersChanged);
    _discover.removeListener(_onDiscoverChanged);
    _trending?.removeListener(_onHomeLayoutChanged);
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _appForeground = state == AppLifecycleState.resumed;
    if (!_appForeground) {
      _personalSpotlightTimer?.cancel();
      _personalSpotlightTimer = null;
      _favoriteSnapshot?.cancelBackground();
      _homeTaste?.cancelPending();
    }
    if (state == AppLifecycleState.resumed) {
      // Stale hubs refetch on every resume — cheap timestamp check, and a
      // desktop window-focus gain after hours away should refresh too.
      final startedFullPass = _discover.refreshIfStale();
      // Refresh continue watching on mobile only
      // (on desktop, "resumed" fires on every window focus gain)
      if (!startedFullPass && (Platform.isIOS || Platform.isAndroid)) {
        unawaited(_discover.refreshContinueWatching(coalesce: true));
      }
      _schedulePersonalSpotlight();
    }
  }

  @override
  void onTabHidden() {
    _isTabVisible = false;
    _personalSpotlightTimer?.cancel();
    _personalSpotlightTimer = null;
    _favoriteSnapshot?.cancelBackground();
    _homeTaste?.cancelPending();
    _dashboardKey.currentState?.setPreviewActive(false);
    _pendingDashboardContentFocus = false;
  }

  @override
  void onTabShown() {
    _isTabVisible = true;
    _dashboardKey.currentState?.setPreviewActive(true);
    if (PlatformDetector.isMobile(context)) _dashboardKey.currentState?.resetMobileShelves();
    if (PlatformDetector.isTV()) _dashboardKey.currentState?.resetTvShelves();
    _discover.refreshIfStale();
    _trending?.ensureFresh();
    _startStudiosWhenHomeReady();
    _schedulePersonalSpotlight();
  }

  @override
  void scrollHomeToTop() => _dashboardKey.currentState?.scrollToTop();

  @override
  void focusActiveTabIfReady() {
    if (!PlatformDetector.isTV()) {
      _dashboardKey.currentState?.requestContentFocus();
      return;
    }
    _focusDashboardContentWhenReady();
  }

  @override
  void manualRefresh() => unawaited(_refreshFromToolbar());

  Future<void> _refreshFromToolbar() async {
    _studios?.refresh();
    _homeTaste?.invalidate();
    final homeRefresh = _discover.refreshNow();
    await _trending?.refresh(force: true);
    final outcome = await homeRefresh;
    if (!mounted) return;
    switch (outcome) {
      case DiscoverRefreshOutcome.failed:
        await showErrorDialog(context, t.errors.unableToLoad(context: t.discover.title));
      case DiscoverRefreshOutcome.degraded:
        appLogger.w('Discover refresh completed with partial server failures');
      case DiscoverRefreshOutcome.cancelled:
      case DiscoverRefreshOutcome.refreshed:
        break;
    }
  }

  // Public method to refresh content (for normal navigation)
  @override
  void refresh() {
    _trending?.ensureFresh();
    // A stale-resume refresh must also refetch the home hubs; otherwise new
    // server-side media never appears until a restart. When fresh,
    // only Continue Watching refetches — one on-deck call, zero hub calls.
    if (_discover.refreshIfStale()) return;
    unawaited(_discover.refreshContinueWatching(coalesce: true));
  }

  // Public method to fully reload all content (for profile switches)
  @override
  void fullRefresh() {
    unawaited(_discover.load());
  }

  @override
  void primeRefresh() {
    // `initState` already fired `load()`. On cold start that pass is still
    // running when the online-entry hook primes the tab, and asking again only
    // queues an identical trailing pass — the whole home fan-out twice.
    // When nothing is in flight (reconnect-from-offline, a first pass that
    // gave up because no server was online yet, or one skipped because the
    // profile was still binding) a real refresh is still owed.
    if (_discover.isLoadInFlight) return;
    fullRefresh();
  }

  /// Whether the loaded hubs span more than one connected server.
  bool _hubsSpanMultipleServers() {
    final serverIds = _hubs.where((hub) => hub.serverId != null).map((hub) => hub.serverId).toSet();
    return serverIds.length > 1;
  }

  Future<void> _handleLogout() async {
    await confirmAndLogoutAllProfiles(context);
  }

  void _handleSwitchProfile(BuildContext context) {
    Navigator.of(
      context,
      rootNavigator: true,
    ).push(MaterialPageRoute(builder: (context) => const ProfileSwitchScreen()));
  }

  void _handleOpenSettings(BuildContext context) {
    final mainScope = MainScreenFocusScope.of(context, listen: false);
    if (mainScope != null) {
      mainScope.openSettings?.call();
      return;
    }

    Navigator.push(context, buildSettingsRoute());
  }

  /// Build the [FocusableAction] wrapping the user menu.
  /// Pulls live state from [ActiveProfileProvider]; d-pad and tap paths share
  /// the same menu entries.
  FocusableAction _buildUserMenuAction(BuildContext context) {
    final activeProvider = context.watch<ActiveProfileProvider>();
    final active = activeProvider.active;

    return FocusableAction(
      debugLabel: 'HomeProfile',
      onPressed: _switchingProfile ? null : () => _userMenuKey.currentState?.showButtonMenu(focusFirstItem: true),
      child: AppMenuButton<String>(
        key: _userMenuKey,
        enabled: !_switchingProfile,
        icon: active != null
            ? ProfileAvatar(profile: active, size: 32, avatarUrl: activeProvider.avatarUrlFor(active.id))
            : AppIcon(
                Symbols.account_circle_rounded,
                fill: 1,
                size: 32,
                color: Theme.of(context).colorScheme.onSurface,
              ),
        tooltip: t.profiles.sectionTitle,
        adaptiveSheet: true,
        anchorAlignment: AppMenuAnchorAlignment.end,
        onSelected: (value) => unawaited(_handleUserMenuAction(context, value)),
        entriesBuilder: (context) => buildProfileMenuEntries(
          provider: activeProvider,
          isKids: KidsProfileService.instance.isActiveKids,
          showDownloads: PlatformDetector.isMobile(context),
          showLiveTv:
              PlatformDetector.isMobile(context) &&
              _multiServer.hasLiveTv &&
              SettingsService.instance.read(SettingsService.showLiveTvTab),
          showWatchTogether: true,
          showCustomizeHome: _homeLayout?.profileId != null,
          showDirectProfiles: !PlatformDetector.isMobile(context),
        ),
      ),
    );
  }

  Future<void> _handleUserMenuAction(BuildContext context, String value) async {
    if (_switchingProfile) return;
    if (value == 'together') {
      await Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const WatchTogetherScreen()));
      return;
    }
    if (value == 'activity') {
      await Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const ScreenTimeScreen()));
      return;
    }
    if (value == 'sources') {
      final id = context.read<ActiveProfileProvider>().activeId;
      if (id != null) {
        await Navigator.of(context).push(MaterialPageRoute(builder: (_) => SourceLibrariesScreen(profileId: id)));
      }
      return;
    }
    if (value == 'downloads') {
      await Navigator.of(context).push(DownloadsScreen.route());
      return;
    }
    if (value == 'live_tv') {
      await Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const LiveTvScreen()));
      return;
    }
    if (value == 'logout') {
      unawaited(_handleLogout());
      return;
    }
    if (value == 'switch_profile') {
      _handleSwitchProfile(context);
      return;
    }
    if (value == 'manage_profiles') {
      await Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const FamilySettingsScreen()));
      return;
    }
    if (value == 'customize_home') {
      _openHomeLayout();
      return;
    }
    if (value == 'settings') {
      _handleOpenSettings(context);
      return;
    }
    if (value.startsWith('profile:')) {
      final id = value.substring('profile:'.length);
      final active = context.read<ActiveProfileProvider>();
      final target = active.profiles.where((p) => p.id == id).firstOrNull;
      if (target == null) return;
      await _switchProfileFromMenu(target);
    }
  }

  Future<void> _switchProfileFromMenu(Profile profile) async {
    if (_switchingProfile) return;
    setState(() => _switchingProfile = true);
    try {
      await switchProfileFromUi(context, profile);
    } finally {
      if (mounted) {
        setState(() => _switchingProfile = false);
      }
    }
  }

  Widget _buildOverlaidAppBar() {
    if (PlatformDetector.isTV()) return const SizedBox.shrink();
    if (KidsProfileService.instance.isActiveKids) {
      return FocusableActionBar(
        key: _actionBarKey,
        onNavigateDown: _focusContentFromAppBar,
        actions: [_buildUserMenuAction(context)],
      );
    }
    if (PlatformDetector.isMobile(context)) {
      return Row(
        children: [
          Expanded(child: Text(t.common.home, style: Theme.of(context).textTheme.titleLarge)),
          Consumer<WatchTogetherProvider>(
            builder: (context, watchTogether, _) => FocusableActionBar(
              key: _actionBarKey,
              onNavigateDown: _focusContentFromAppBar,
              actions: [
                FocusableAction(
                  debugLabel: 'MobileHomeMore',
                  onPressed: () => _mobileHomeMenuKey.currentState?.showButtonMenu(focusFirstItem: true),
                  child: AppMenuButton<String>(
                    key: _mobileHomeMenuKey,
                    icon: const AppIcon(Symbols.more_horiz_rounded),
                    tooltip: t.titlePage.more,
                    adaptiveSheet: true,
                    onSelected: (value) => unawaited(_handleMobileHomeAction(value)),
                    entriesBuilder: (_) => [
                      if (_homeLayout?.profileId != null)
                        AppMenuItem(
                          value: 'layout',
                          icon: Symbols.dashboard_customize_rounded,
                          label: t.homeLayout.title,
                        ),
                      const AppMenuDivider(),
                      AppMenuItem(value: 'refresh', icon: Symbols.refresh_rounded, label: t.common.refresh),
                    ],
                  ),
                ),
                if (watchTogether.isInSession)
                  FocusableAction(
                    debugLabel: 'MobileHomeWatchTogether',
                    onPressed: () => unawaited(_handleUserMenuAction(context, 'together')),
                    child: IconButton(
                      key: const ValueKey('mobile_home_watch_together'),
                      tooltip: t.watchTogether.title,
                      onPressed: () => unawaited(_handleUserMenuAction(context, 'together')),
                      icon: AppIcon(
                        watchTogether.isReconnecting ? Symbols.sync_rounded : Symbols.group_rounded,
                        fill: 1,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                _buildUserMenuAction(context),
              ],
            ),
          ),
        ],
      );
    }
    final colorScheme = Theme.of(context).colorScheme;
    final foregroundColor = colorScheme.onSurface;
    final bar = Row(
      children: [
        const Spacer(),
        // TV only: a fullscreen leanback app hides the system clock, while a
        // phone status bar and a desktop menu bar already show one.
        if (PlatformDetector.isTV()) ...[
          SystemClock(
            style: Theme.of(context).textTheme.titleMedium?.copyWith(color: foregroundColor, fontWeight: .w500),
          ),
          const SizedBox(width: 12),
        ],
        Consumer<WatchTogetherProvider>(
          builder: (context, watchTogether, _) {
            void openWatchTogether() =>
                Navigator.push(context, MaterialPageRoute(builder: (_) => const WatchTogetherScreen()));
            return FocusableActionBar(
              key: _actionBarKey,
              onNavigateLeft: _navigateToSidebar,
              onNavigateDown: _focusContentFromAppBar,
              onNavigateUp: _navigateToSidebar,
              actions: [
                FocusableAction(icon: Symbols.refresh_rounded, iconColor: foregroundColor, onPressed: manualRefresh),
                if (_homeLayout?.profileId != null)
                  FocusableAction(
                    onPressed: _openHomeLayout,
                    child: IconButton(
                      icon: AppIcon(Symbols.dashboard_customize_rounded, color: foregroundColor),
                      tooltip: t.homeLayout.title,
                      onPressed: _openHomeLayout,
                    ),
                  ),
                // Watch Together
                FocusableAction(
                  onPressed: openWatchTogether,
                  child: Stack(
                    children: [
                      IconButton(
                        icon: AppIcon(
                          Symbols.group_rounded,
                          fill: watchTogether.isInSession ? 1 : 0,
                          color: watchTogether.isInSession ? colorScheme.primary : foregroundColor,
                        ),
                        onPressed: openWatchTogether,
                        tooltip: t.watchTogether.title,
                      ),
                      if (watchTogether.isInSession && watchTogether.participantCount > 1)
                        Positioned(
                          top: 6,
                          right: 6,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                            decoration: BoxDecoration(
                              color: colorScheme.primary,
                              borderRadius: const BorderRadius.all(Radius.circular(8)),
                            ),
                            child: Text(
                              '${watchTogether.participantCount}',
                              style: TextStyle(color: colorScheme.onPrimary, fontSize: 10, fontWeight: .bold),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                // Server Tasks — Plex-only (`/activities` API has no
                // Jellyfin equivalent), hide the button entirely on
                // Jellyfin-only profiles so the chrome doesn't show
                // a permanently empty popover.
                if (PlatformDetector.isDesktop(context) &&
                    context.select<MultiServerProvider, bool>((p) => p.hasOnlinePlexServers))
                  FocusableAction(
                    onPressed: () => _serverActivitiesButtonKey.currentState?.togglePanel(),
                    child: ServerActivitiesButton(key: _serverActivitiesButtonKey),
                  ),
                // User menu — profiles + sign out
                _buildUserMenuAction(context),
              ],
            );
          },
        ),
      ],
    );
    return bar;
  }

  @override
  Widget build(BuildContext context) {
    return SettingsBuilder(
      prefs: const [
        SettingsService.showServerNameOnHubs,
        SettingsService.showHeroSection,
        SettingsService.homeHeroSize,
        SettingsService.homePosterSize,
        SettingsService.fireStickMode,
        SettingsService.visualEffects,
        SettingsService.hideSpoilers,
        SettingsService.libraryDensity,
        SettingsService.episodePosterMode,
        SettingsService.homeEpisodeThumbnails,
      ],
      builder: (context) => _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    final content = _buildHomeContent(context);
    return PlatformDetector.isMobile(context)
        ? RefreshIndicator(onRefresh: _refreshFromToolbar, child: content)
        : content;
  }

  Future<void> _handleMobileHomeAction(String value) async {
    switch (value) {
      case 'studios':
        await Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const StudiosScreen()));
      case 'refresh':
        await _refreshFromToolbar();
      case 'layout':
        _openHomeLayout();
    }
  }

  Widget _buildHomeContent(BuildContext context) => _buildDashboard(context);

  Widget _buildDashboard(BuildContext context) => Stack(
    children: [
      Positioned.fill(
        child: HomeDashboard(
          key: _dashboardKey,
          kidsStyle: KidsProfileService.instance.useKidsTheme
              ? KidsStyle(maxAge: KidsProfileService.instance.ageFor(KidsProfileService.instance.activeId!))
              : null,
          kidsName: context.read<ActiveProfileProvider>().active?.displayName,
          active: _isTabVisible,
          rows: _rows,
          onStudioTap: _openStudio,
          onStudioFocus: (item) {
            final key = item.raw?['customStudio'];
            if (key is String) _studios?.warmStudio(key);
          },
          onDeck: _onDeck,
          onlineServerIds: _multiServer.onlineServerIds.toSet(),
          favoriteSnapshot: _spotlightFavorites(context),
          viewingSignals:
              (_homeLayout?.layout.spotlightSource == HomeSpotlightSource.forYou &&
                  !KidsProfileService.instance.isActiveKids)
              ? context.watch<HomeTasteProvider?>()?.signals ?? const []
              : const [],
          spotlightSource: _homeLayout?.layout.spotlightSource ?? HomeSpotlightSource.trending,
          trendingItems: _trending?.items ?? const [],
          featureLoading:
              (_homeLayout?.layout.spotlightSource ?? HomeSpotlightSource.trending) == HomeSpotlightSource.trending &&
              (_trending?.loading ?? false),
          weeklyTrends: _trending?.usesWeeklyTrends ?? false,
          toolbar: _buildOverlaidAppBar(),
          showToolbar: !PlatformDetector.isTV(),
          focusMemory: _hubFocusMemory,
          resolveClient: _getMediaClientForItem,
          onPlay: (item) async {
            if (item.kind == MediaKind.show) {
              await _playFeaturedShow(item);
              if (mounted) {
                _homeTaste?.invalidate();
                _schedulePersonalSpotlight();
              }
              return;
            }
            final refresh = await navigateToVideoPlayer(context, metadata: item);
            if (mounted && refresh == true) await _discover.updateItem(item);
            if (mounted) {
              _homeTaste?.invalidate();
              _schedulePersonalSpotlight();
            }
          },
          onDetails: (item) => item.kind == MediaKind.collection || item.kind.isMusic
              ? navigateToMediaItem(context, item, onRefresh: _discover.updateItem)
              : navigateToMediaItemDetails(context, item, onRefresh: _discover.updateItem),
          onResume: (item) async {
            await navigateToMediaItem(context, item, playDirectly: true, onRefresh: _discover.updateItem);
            if (mounted) {
              _homeTaste?.invalidate();
              _schedulePersonalSpotlight();
            }
          },
          onSidebar: _navigateToSidebar,
          onToolbar: _focusTopActions,
          onRefresh: _discover.updateItem,
          onRemoveFromContinueWatching: _discover.refreshContinueWatching,
          loadMoreItems: (hub) => hub.id == homeContinueWatchingId
              ? () async {
                  final items = await _discover.loadAllContinueWatching();
                  return (_homeLayout?.layout.splitContinueWatching ?? false)
                      ? items.where((item) => !isHomeNextUp(item)).toList()
                      : items;
                }
              : hub.id == homeNextUpId
              ? () async => (await _discover.loadAllContinueWatching()).where(isHomeNextUp).toList()
              : hub.id == homePinnedCollectionsId
              ? () async => hub.items
              : null,
          loading: _isLoading || _areHubsLoading,
          errorMessage: _errorMessage,
          onRetry: () => unawaited(_discover.load()),
          onPersonalize: _homeLayout?.profileId == null ? null : _openHomeLayout,
          showFeature: SettingsService.instance.read(SettingsService.showHeroSection),
          showServerName:
              SettingsService.instance.read(SettingsService.showServerNameOnHubs) || _hubsSpanMultipleServers(),
        ),
      ),
      if (_switchingProfile) const ProfileSwitchingOverlay(),
    ],
  );

  void _openStudio(MediaItem item) {
    final key = item.raw?['customStudio'];
    if (key == 'studio-directory') {
      Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const StudiosScreen()));
      return;
    }
    if (key is! String || _studios?.group(key) == null) return;
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => StudioBrowserScreen(studioKey: key)));
  }

  bool _startingKidsShow = false;
  Future<void> _playFeaturedShow(MediaItem show) async {
    if (_startingKidsShow) return;
    _startingKidsShow = true;
    final owner = KidsProfileService.instance.activeId;
    try {
      final client = _getMediaClientForItem(show);
      if (client == null) return;
      final details = await client.fetchItemWithOnDeck(show.id, isShow: true);
      MediaItem? target = details.onDeckEpisode;
      if (target == null) {
        final page = await client.fetchPlayableDescendantsPage(show.id, start: 0, size: 50);
        final episodes = page.items
            .where((item) => item.kind == MediaKind.episode && KidsProfileService.instance.allows(item))
            .toList();
        target =
            episodes.where((item) => (item.parentIndex ?? 0) > 0 && (item.viewCount ?? 0) == 0).firstOrNull ??
            episodes.where((item) => (item.parentIndex ?? 0) > 0).firstOrNull ??
            episodes.firstOrNull;
      }
      if (!mounted || owner != KidsProfileService.instance.activeId) return;
      if (target == null) {
        await showErrorDialog(
          context,
          KidsProfileService.instance.isActiveKids ? t.kids.blocked : t.messages.noEpisodesFoundGeneral,
        );
        return;
      }
      await navigateToVideoPlayer(
        context,
        metadata: target.copyWith(
          serverId: target.serverId ?? show.serverId,
          serverName: target.serverName ?? show.serverName,
        ),
      );
    } catch (error, stack) {
      appLogger.w('Could not start featured show', error: error, stackTrace: stack);
      if (mounted && owner == KidsProfileService.instance.activeId) {
        await showErrorDialog(
          context,
          KidsProfileService.instance.isActiveKids ? t.kids.blocked : t.messages.noEpisodesFoundGeneral,
        );
      }
    } finally {
      _startingKidsShow = false;
    }
  }
}
