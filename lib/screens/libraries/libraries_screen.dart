import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../navigation/main_screen_scope.dart' show MobileScrollToTop;
import 'mobile_library_picker.dart';
import 'package:luroka/widgets/app_icon.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';
import '../../focus/focusable_action_bar.dart';
import '../../focus/focusable_wrapper.dart';
import '../../focus/dpad_navigator.dart';
import '../../focus/input_mode_tracker.dart';
import '../../mixins/tab_navigation_mixin.dart';
import '../../mixins/tab_visibility_aware.dart';
import '../../media/ids.dart';
import '../../media/media_library.dart';
import '../../media/media_kind.dart';
import '../../services/kids_profile_service.dart';
import '../../providers/hidden_libraries_provider.dart';
import '../../providers/libraries_provider.dart';
import '../../providers/multi_server_provider.dart';
import '../../services/settings_service.dart';
import '../../widgets/settings_builder.dart';
import '../../utils/app_logger.dart';
import '../../utils/platform_detector.dart';
import '../../utils/content_utils.dart';
import '../../widgets/app_menu.dart';
import '../../widgets/desktop_app_bar.dart';
import '../../widgets/focusable_tab_chip.dart';
import '../../widgets/library_management_sheet.dart';
import '../../services/storage_service.dart';
import '../../mixins/refreshable.dart';
import '../../i18n/strings.g.dart';
import 'library_server_label.dart';
import 'compact_library_menu.dart';
import 'state_messages.dart';
import 'tabs/library_browse_tab.dart';
import 'tabs/library_recommended_tab.dart';
import 'tabs/library_collections_tab.dart';
import 'tabs/library_playlists_tab.dart';
import 'tabs/base_library_tab.dart';
import '../../utils/server_label_policy.dart';

enum LibraryTabType { recommended, browse, collections, playlists }

List<LibraryTabType> visibleLibraryTabs(MediaLibrary library) {
  if (KidsProfileService.instance.isActiveKids) return [LibraryTabType.browse];
  if (library.isShared) return [LibraryTabType.browse, LibraryTabType.playlists];
  return LibraryTabType.values;
}

class LibrariesScreen extends StatefulWidget {
  final VoidCallback? onLibraryOrderChanged;
  final ValueChanged<String>? onLibrarySelected;
  final MediaKind? kindFilter;

  const LibrariesScreen({super.key, this.onLibraryOrderChanged, this.onLibrarySelected, this.kindFilter});

  @override
  State<LibrariesScreen> createState() => _LibrariesScreenState();
}

class _LibrariesScreenState extends State<LibrariesScreen>
    with
        Refreshable,
        ManualRefreshable,
        FullRefreshable,
        FocusableTab,
        LibraryLoadable,
        TickerProviderStateMixin,
        TabNavigationMixin,
        TabVisibilityAware
    implements MobileScrollToTop {
  final _recommendedTabKey = GlobalKey();
  final _browseTabKey = GlobalKey();
  final _collectionsTabKey = GlobalKey();
  final _playlistsTabKey = GlobalKey();

  String? _selectedLibraryGlobalKey;
  List<MediaLibrary> _librariesFor(List<MediaLibrary> libraries) =>
      widget.kindFilter == null ? libraries : libraries.where((library) => library.kind == widget.kindFilter).toList();

  /// Flag to prevent onTabChanged from focusing when we're programmatically changing tabs
  bool _isRestoringTab = false;

  /// Whether a post-frame [_initializeWithLibraries] is already queued.
  bool _initializeScheduled = false;

  /// Track which tabs have loaded data (used to trigger focus after tab restore)
  final Set<int> _loadedTabs = {};

  /// Whether the browse tab has active filters (badges the Library options icon)
  bool _browseFiltersActive = false;

  final _libraryDropdownKey = GlobalKey<AppMenuButtonState<String>>();

  List<LibraryTabType> _visibleTabs = LibraryTabType.values;
  List<FocusNode> _tabFocusNodes = List.generate(
    LibraryTabType.values.length,
    (i) => FocusNode(debugLabel: 'tab_chip_${LibraryTabType.values[i].name}'),
  );

  @override
  List<FocusNode> get tabChipFocusNodes => _tabFocusNodes;

  final _actionBarKey = GlobalKey<FocusableActionBarState>();
  final _compactHeaderFocus = FocusNode(debugLabel: 'compact_library_header');
  bool _compactMenuOpen = false;

  bool get _compactTvNavigation =>
      PlatformDetector.isTV() && SettingsService.instance.read(SettingsService.compactTvLibraryNavigation);

  final ScrollController _outerScrollController = ScrollController();
  final _nestedScrollKey = GlobalKey<NestedScrollViewState>();

  @override
  void scrollToTop() {
    final inner = _nestedScrollKey.currentState?.innerController;
    if (inner != null) {
      for (final position in inner.positions.toList()) {
        position.jumpTo(position.minScrollExtent);
      }
    }
    _resetOuterScroll();
  }

  /// Reveal the floating header by jumping the outer NestedScrollView back
  /// to offset 0. The outer position is preserved across content changes
  /// (library switch, library reload, filter/sort change), so any time the
  /// inner is reset to the top we must explicitly resync the outer — the
  /// natural delta-surrender coordination only fires on user scroll gestures.
  ///
  /// Iterates `positions` rather than reading `offset` because the controller
  /// is shared between the simple CustomScrollView (loading/empty/error) and
  /// the NestedScrollView (selected library), and during the transition both
  /// can briefly be attached — `offset` would throw on `_positions.single`.
  void _resetOuterScroll() {
    if (!_outerScrollController.hasClients) return;
    for (final position in _outerScrollController.positions) {
      if (position.pixels > 0) {
        position.jumpTo(0);
      }
    }
  }

  /// Override the mixin's [focusTabBar] so we reveal the floating header
  /// (which contains the tab chips) before requesting focus. Programmatic
  /// requestFocus alone does not snap a floating SliverAppBar back into view.
  @override
  void focusTabBar() {
    if (_compactTvNavigation) {
      _compactHeaderFocus.requestFocus();
      return;
    }
    _resetOuterScroll();
    super.focusTabBar();
  }

  @override
  void initState() {
    super.initState();
    initTabNavigation();

    _scheduleInitializeWithLibraries();
  }

  /// Run [_initializeWithLibraries] after the current frame, at most once per
  /// frame. Besides the mount, the build schedules it whenever libraries are
  /// on hand but none is selected: a first load that found none returns early,
  /// and nothing else selects one when they arrive later — on phones the
  /// library dropdown only renders once a library is selected, so the body
  /// would stay blank.
  void _scheduleInitializeWithLibraries() {
    if (_initializeScheduled) return;
    _initializeScheduled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeScheduled = false;
      if (!mounted) return;
      _initializeWithLibraries();
    });
  }

  /// Initialize the screen with libraries from the provider.
  /// This handles initial library selection and content loading.
  ///
  /// An existing selection is authoritative. A sidebar library selection that
  /// mounts this screen (`MainScreen._selectLibrary`) applies its target from a
  /// post-frame callback registered *before* the one in [initState], so this
  /// runs second and must not replace the requested library — which may be
  /// hidden, and so is never the saved or topmost-visible default — with a
  /// default. The re-checks cover the reverse interleaving, where a selection
  /// lands while this is suspended on an await ([refresh]'s stale-resume
  /// entry point).
  Future<void> _initializeWithLibraries() async {
    if (_selectedLibraryGlobalKey != null) return;

    final librariesProvider = context.read<LibrariesProvider>();
    final hiddenLibrariesProvider = context.read<HiddenLibrariesProvider>();
    await hiddenLibrariesProvider.ensureInitialized();
    if (!mounted || _selectedLibraryGlobalKey != null) return;
    final allLibraries = _librariesFor(librariesProvider.libraries);

    if (allLibraries.isEmpty) {
      // No libraries available yet
      return;
    }

    final hiddenKeys = hiddenLibrariesProvider.hiddenLibraryKeys;
    final visibleLibraries = allLibraries.where((lib) => !hiddenKeys.contains(lib.globalKey)).toList();

    final storage = await StorageService.getInstance();
    if (!mounted || _selectedLibraryGlobalKey != null) return;
    final savedLibraryKey = storage.getSelectedLibraryKey();

    String? libraryGlobalKeyToLoad;
    if (savedLibraryKey != null) {
      final libraryExists = visibleLibraries.any((lib) => lib.globalKey == savedLibraryKey);
      if (libraryExists) {
        libraryGlobalKeyToLoad = savedLibraryKey;
      }
    }

    if (libraryGlobalKeyToLoad == null && visibleLibraries.isNotEmpty) {
      libraryGlobalKeyToLoad = visibleLibraries.first.globalKey;
    }

    if (libraryGlobalKeyToLoad != null) {
      unawaited(_loadLibraryContent(libraryGlobalKeyToLoad));
    }
  }

  @override
  void onTabChanged() {
    if (_selectedLibraryGlobalKey != null && !tabController.indexIsChanging) {
      if (!_isRestoringTab) {
        // Resolve both now: by the time storage resolves, a library switch may
        // have replaced the selection.
        final libraryGlobalKey = _selectedLibraryGlobalKey!;
        final tabName = _visibleTabs[tabController.index].name;
        StorageService.getInstance().then((storage) {
          storage.saveLibraryTab(libraryGlobalKey, tabName);
        });

        if (!suppressAutoFocus) {
          _focusCurrentTab();
        }
      }
    }
    // Rebuild to update chip selection state
    super.onTabChanged();
  }

  /// Focus the first item in the currently active tab.
  /// Used for initial load and tab switching - focuses the grid content directly.
  ///
  /// With [awaitLoad], a tab that is still loading only parks focus on its tab
  /// chip (see [_focusTabContent]) so its load completion focuses the content.
  void _focusCurrentTab({bool awaitLoad = false}) {
    // Don't focus during tab animations - wait for animation to complete
    // This prevents race conditions during focus restoration
    if (tabController.indexIsChanging) {
      return;
    }
    // On mobile (touch mode), skip auto-focus to prevent ensureVisible()
    // from interfering with TabBarView page animations
    if (!InputModeTracker.isKeyboardMode(context)) return;

    // Re-enable auto-focus since user is navigating into tab content
    // Only call setState if the value actually changes to avoid unnecessary rebuilds
    if (suppressAutoFocus) {
      setState(() {
        suppressAutoFocus = false;
      });
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      final tabState = _getTabState(tabController.index);
      if (tabState != null) {
        _focusTabContent(tabState, awaitLoad: awaitLoad);
      } else {
        // State not available yet, retry after another frame
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted) return;
          _focusCurrentTabImmediate(awaitLoad: awaitLoad);
        });
      }
    });
  }

  /// Focus without additional frame delay (used for retry)
  void _focusCurrentTabImmediate({bool awaitLoad = false}) {
    final tabState = _getTabState(tabController.index);
    if (tabState != null) {
      _focusTabContent(tabState, awaitLoad: awaitLoad);
    }
  }

  void _focusTabContent(State tabState, {required bool awaitLoad}) {
    // A loading tab has no content yet, so focusContentOrChrome would fall
    // back to focusTabBar, which sets suppressAutoFocus — and the load's
    // onDataLoaded then leaves focus stranded on the tab bar. Hold focus on
    // the tab chip without suppressing, so that completion moves it on.
    if (awaitLoad && tabState is BaseLibraryTabState && tabState.isLoading) {
      _resetOuterScroll();
      if (_compactTvNavigation) {
        _compactHeaderFocus.requestFocus();
      } else {
        getTabChipFocusNode(tabController.index).requestFocus();
      }
      return;
    }
    (tabState as dynamic).focusContentOrChrome();
  }

  /// Focus tab content when navigating DOWN from the tab bar.
  /// For browse tab, this focuses the chips bar first so DOWN navigates to grid.
  /// For other tabs, focuses the first item directly.
  void _focusCurrentTabFromTabBar() {
    if (tabController.indexIsChanging) {
      return;
    }

    if (suppressAutoFocus) {
      setState(() {
        suppressAutoFocus = false;
      });
    }

    // Scroll outer view to top to ensure tab content (including chips bar) is visible
    _resetOuterScroll();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      final tabState = _getTabState(tabController.index);
      if (tabState != null) {
        // Browse tab has a chips bar - focus that first so DOWN navigates to grid
        if (_visibleTabs[tabController.index] == LibraryTabType.browse) {
          (tabState as dynamic).focusChipsBar();
        } else {
          (tabState as dynamic).focusContentOrChrome();
        }
      }
    });
  }

  State? _getTabState(int index) {
    if (index < 0 || index >= _visibleTabs.length) return null;
    return switch (_visibleTabs[index]) {
      LibraryTabType.recommended => _recommendedTabKey.currentState,
      LibraryTabType.browse => _browseTabKey.currentState,
      LibraryTabType.collections => _collectionsTabKey.currentState,
      LibraryTabType.playlists => _playlistsTabKey.currentState,
    };
  }

  void _showBrowseOptionsForCurrentTab() {
    if (_visibleTabs.isEmpty) return;
    final index = tabController.index.clamp(0, _visibleTabs.length - 1).toInt();
    if (_visibleTabs[index] != LibraryTabType.browse) return;
    final tabState = _browseTabKey.currentState;
    if (tabState == null) return;
    (tabState as dynamic).showBrowseOptionsSheet();
  }

  /// Handle when the browse tab's active-filter state changes
  void _handleBrowseFiltersActiveChanged(bool active) {
    if (_browseFiltersActive == active) return;
    setState(() => _browseFiltersActive = active);
  }

  /// Handle when a tab's data has finished loading
  void _handleTabDataLoaded(int tabIndex) {
    _loadedTabs.add(tabIndex);

    if (suppressAutoFocus || _compactMenuOpen) return;

    if (tabController.index == tabIndex && mounted) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && tabController.index == tabIndex && !suppressAutoFocus) {
          _focusCurrentTab();
        }
      });
    }
  }

  /// Called by parent when the Libraries screen becomes visible.
  /// If the active tab has already loaded data (often the case after preloading
  /// while on another main tab), re-request focus so the first item is focused
  /// once the screen is actually shown. A tab still loading gets its content
  /// focused when the load lands instead.
  @override
  void focusActiveTabIfReady() {
    if (_selectedLibraryGlobalKey == null) return;
    _focusCurrentTab(awaitLoad: true);
  }

  @override
  void dispose() {
    _compactHeaderFocus.dispose();
    _outerScrollController.dispose();
    for (final node in _tabFocusNodes) {
      node.dispose();
    }
    disposeTabNavigation();
    super.dispose();
  }

  void _updateState(VoidCallback fn) {
    if (!mounted) return;
    setState(fn);
  }

  /// Rebuild tab infrastructure when the visible tab set changes.
  void _updateVisibleTabs(List<LibraryTabType> newTabs) {
    if (listEquals(_visibleTabs, newTabs)) return;

    final currentTabType = _visibleTabs.length > tabController.index ? _visibleTabs[tabController.index] : null;

    for (final node in _tabFocusNodes) {
      node.dispose();
    }
    disposeTabNavigation();

    _visibleTabs = newTabs;
    _tabFocusNodes = List.generate(newTabs.length, (i) => FocusNode(debugLabel: 'tab_chip_${newTabs[i].name}'));
    initTabNavigation();

    final newIndex = currentTabType != null ? newTabs.indexOf(currentTabType) : -1;
    if (newIndex > 0) {
      // Carrying the tab type over is not a user pick: it must neither focus
      // nor save — the save would overwrite the destination library's saved
      // tab before [_loadLibraryContent] restores it.
      _isRestoringTab = true;
      tabController.index = newIndex;
      _isRestoringTab = false;
    }
  }

  String _getTabLabel(LibraryTabType type) => switch (type) {
    LibraryTabType.recommended => PlatformDetector.isTV() ? t.libraryPolish.overview : t.libraries.tabs.recommended,
    LibraryTabType.browse => PlatformDetector.isTV() ? t.lurokaCatalog.browse : t.libraries.tabs.browse,
    LibraryTabType.collections => t.libraries.tabs.collections,
    LibraryTabType.playlists => t.libraries.tabs.playlists,
  };

  @override
  void goToPreviousTab() {
    if (!_compactTvNavigation) return super.goToPreviousTab();
    if (tabController.index > 0) tabController.index--;
  }

  @override
  void goToNextTab() {
    if (!_compactTvNavigation) return super.goToNextTab();
    if (tabController.index < tabController.length - 1) tabController.index++;
  }

  Future<void> _openCompactLibraryMenu() async {
    if (!mounted || _compactMenuOpen || _selectedLibraryGlobalKey == null) return;
    final libraries = _librariesFor(context.read<LibrariesProvider>().libraries);
    final library = libraries.where((item) => item.globalKey == _selectedLibraryGlobalKey).firstOrNull;
    if (library == null) return;
    final browse = _visibleTabs[tabController.index] == LibraryTabType.browse ? _browseTabKey.currentState : null;
    final returnFocus = FocusManager.instance.primaryFocus;
    _compactMenuOpen = true;
    final choice = await showCompactLibraryMenu(
      context,
      title: library.title,
      entries: [
        for (final type in _visibleTabs)
          CompactLibraryMenuEntry(
            id: 'tab:${type.name}',
            label: _getTabLabel(type),
            icon: switch (type) {
              LibraryTabType.recommended => Symbols.dashboard_rounded,
              LibraryTabType.browse => Symbols.grid_view_rounded,
              LibraryTabType.collections => Symbols.collections_rounded,
              LibraryTabType.playlists => Symbols.playlist_play_rounded,
            },
            selected: _visibleTabs[tabController.index] == type,
          ),
        CompactLibraryMenuEntry(id: 'library', label: t.libraries.selectLibrary, icon: Symbols.folder_open_rounded),
        if (browse != null) ...[
          CompactLibraryMenuEntry(id: 'group', label: t.libraries.groupings.title, icon: Symbols.category_rounded),
          if ((browse as dynamic).hasCompactFilters == true)
            CompactLibraryMenuEntry(id: 'filters', label: t.libraries.filters, icon: Symbols.filter_alt_rounded),
          if ((browse as dynamic).hasCompactSort == true)
            CompactLibraryMenuEntry(id: 'sort', label: t.libraries.sort, icon: Symbols.sort_rounded),
          if ((browse as dynamic).hasCompactAlphabet == true)
            const CompactLibraryMenuEntry(id: 'alphabet', label: 'A–Z', icon: Symbols.sort_by_alpha_rounded),
          if ((browse as dynamic).hasCompactAlphabetFilter == true)
            CompactLibraryMenuEntry(
              id: 'clearAlphabet',
              label: t.libraryPolish.clearFilters,
              icon: Symbols.filter_alt_off_rounded,
            ),
          if (!library.kind.isMusic)
            CompactLibraryMenuEntry(
              id: 'captions',
              label: SettingsService.instance.read(SettingsService.libraryPosterCaptions)
                  ? t.libraryPolish.hidePosterDetails
                  : t.libraryPolish.showPosterDetails,
              icon: Symbols.subtitles_rounded,
            ),
        ],
        CompactLibraryMenuEntry(id: 'refresh', label: t.common.refresh, icon: Symbols.refresh_rounded),
        if (!KidsProfileService.instance.isActiveKids)
          CompactLibraryMenuEntry(id: 'manage', label: t.libraries.manageLibraries, icon: Symbols.edit_rounded),
      ],
    );
    _compactMenuOpen = false;
    if (!mounted) return;
    if (choice == null) {
      if (returnFocus?.context?.mounted == true) returnFocus!.requestFocus();
      return;
    }
    if (choice.startsWith('tab:')) {
      final index = _visibleTabs.indexWhere((type) => type.name == choice.substring(4));
      if (index >= 0 && index != tabController.index) {
        suppressAutoFocus = false;
        tabController.index = index;
      } else if (returnFocus?.context?.mounted == true) {
        returnFocus!.requestFocus();
      }
      return;
    }
    if (returnFocus?.context?.mounted == true) returnFocus!.requestFocus();
    switch (choice) {
      case 'library':
        final hidden = context.read<HiddenLibrariesProvider>().hiddenLibraryKeys;
        final visible = libraries.where((item) => !hidden.contains(item.globalKey)).toList();
        final selected = await showAdaptiveAppMenu<String>(
          context,
          title: t.libraries.selectLibrary,
          focusFirstItem: true,
          entries: _buildGroupedLibraryMenuItems(
            visible,
            groupByServer: SettingsService.instance.read(SettingsService.groupLibrariesByServer),
          ),
        );
        if (mounted && selected != null && visible.any((item) => item.globalKey == selected)) {
          await _loadLibraryContent(selected);
        }
      case 'group':
        (browse as dynamic).showCompactGrouping();
      case 'filters':
        (browse as dynamic).showCompactFilters();
      case 'sort':
        (browse as dynamic).showCompactSort();
      case 'alphabet':
        (browse as dynamic).showCompactAlphabet();
      case 'clearAlphabet':
        (browse as dynamic).clearCompactAlphabet();
      case 'captions':
        await SettingsService.instance.write(
          SettingsService.libraryPosterCaptions,
          !SettingsService.instance.read(SettingsService.libraryPosterCaptions),
        );
      case 'refresh':
        manualRefresh();
      case 'manage':
        _showLibraryManagementSheet();
    }
  }

  Widget _buildTabContent(
    LibraryTabType type, {
    required MediaLibrary library,
    required bool canGroupByFolders,
    required bool isActive,
    required int tabIndex,
  }) {
    return switch (type) {
      LibraryTabType.recommended => LibraryRecommendedTab(
        key: _recommendedTabKey,
        library: library,
        isActive: isActive,
        suppressAutoFocus: suppressAutoFocus,
        onDataLoaded: () => _handleTabDataLoaded(tabIndex),
        onBack: focusTabBar,
        onNavigateLibraryMenu: _compactTvNavigation ? _openCompactLibraryMenu : null,
        onNavigateToChrome: focusTabBar,
      ),
      LibraryTabType.browse => LibraryBrowseTab(
        key: _browseTabKey,
        library: library,
        canGroupByFolders: canGroupByFolders,
        isActive: isActive,
        suppressAutoFocus: suppressAutoFocus,
        onDataLoaded: () => _handleTabDataLoaded(tabIndex),
        onBack: focusTabBar,
        onNavigateLibraryMenu: _compactTvNavigation ? _openCompactLibraryMenu : null,
        compactTvNavigation: _compactTvNavigation,
        onResetScroll: _resetOuterScroll,
        onFiltersActiveChanged: _handleBrowseFiltersActiveChanged,
      ),
      LibraryTabType.collections => LibraryCollectionsTab(
        key: _collectionsTabKey,
        library: library,
        isActive: isActive,
        suppressAutoFocus: suppressAutoFocus,
        onDataLoaded: () => _handleTabDataLoaded(tabIndex),
        onBack: focusTabBar,
        onNavigateLibraryMenu: _compactTvNavigation ? _openCompactLibraryMenu : null,
      ),
      LibraryTabType.playlists => LibraryPlaylistsTab(
        key: _playlistsTabKey,
        library: library,
        isActive: isActive,
        suppressAutoFocus: suppressAutoFocus,
        onDataLoaded: () => _handleTabDataLoaded(tabIndex),
        onBack: focusTabBar,
        onNavigateLibraryMenu: _compactTvNavigation ? _openCompactLibraryMenu : null,
      ),
    };
  }

  /// Notify parent that library order changed
  void _notifyLibraryOrderChanged() {
    widget.onLibraryOrderChanged?.call();
  }

  /// Public method to load a library by key (called from MainScreen side nav)
  @override
  void loadLibraryByKey(String libraryGlobalKey) {
    _loadLibraryContent(libraryGlobalKey);
  }

  Future<void> _loadLibraryContent(String libraryGlobalKey) async {
    final librariesProvider = context.read<LibrariesProvider>();
    final allLibraries = _librariesFor(librariesProvider.libraries);

    // Resolve from allLibraries — hidden libraries are still navigable from the
    // sidebar's "Hidden libraries" section.
    final selectedLibrary = allLibraries.where((lib) => lib.globalKey == libraryGlobalKey).firstOrNull;
    if (selectedLibrary == null) return;

    final isLibraryChange = _selectedLibraryGlobalKey != libraryGlobalKey;

    // Update visible tabs and state in the same synchronous block so no
    // intermediate rebuild can see a mismatched controller/key pair.
    _updateVisibleTabs(visibleLibraryTabs(selectedLibrary));

    _updateState(() {
      _selectedLibraryGlobalKey = libraryGlobalKey;
      _loadedTabs.clear();
    });
    widget.onLibrarySelected?.call(libraryGlobalKey);

    // The new TabBarView mounts with fresh inner positions at offset 0;
    // bring the floating header back too. Also covers the case where the
    // newly-active tab is not browse (which would otherwise have no inner
    // jumpTo to catch via the browse-tab callback).
    if (isLibraryChange) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        _resetOuterScroll();
      });
    }

    // Save selected library key and restore saved tab (async — safe after state is consistent)
    final storage = await StorageService.getInstance();
    if (!mounted || _selectedLibraryGlobalKey != libraryGlobalKey) return;
    await storage.saveSelectedLibraryKey(libraryGlobalKey);
    if (!mounted || _selectedLibraryGlobalKey != libraryGlobalKey) return;

    // Restore saved tab by name
    final savedTabName = storage.getLibraryTab(libraryGlobalKey);
    final savedType = LibraryTabType.values.where((t) => t.name == savedTabName).firstOrNull;
    final savedTabIndex = savedType == null ? -1 : _visibleTabs.indexOf(savedType);
    // A library without a saved preference starts on Overview (or the first
    // tab it supports). Never carry the previous library's tab into it: tab
    // state belongs to the library, not to the Libraries screen instance.
    final overviewIndex = _visibleTabs.indexOf(LibraryTabType.recommended);
    final targetTabIndex = savedTabIndex >= 0
        ? savedTabIndex
        : overviewIndex >= 0
        ? overviewIndex
        : 0;
    if (targetTabIndex >= 0 && targetTabIndex != tabController.index) {
      // Set flag to prevent _onTabChanged from triggering focus
      _isRestoringTab = true;
      // Use animateTo with zero duration for instant switch without animation race conditions
      tabController.animateTo(targetTabIndex, duration: Duration.zero);
      // Clear flag synchronously - animateTo with zero duration completes immediately
      _isRestoringTab = false;
    }

    // Focus is handled by onDataLoaded callbacks from each tab.
    // However, on first load the tab might finish loading before the tab index
    // is restored. Check if the current tab has already loaded and focus if so.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && _selectedLibraryGlobalKey == libraryGlobalKey && _loadedTabs.contains(tabController.index)) {
        _focusCurrentTab();
      }
    });
  }

  /// Refetch content in place (stale-resume sweep from MainScreen,).
  ///
  /// With a library on screen this refetches its instantiated tabs — the same
  /// action as the toolbar refresh button. Selecting the saved library again
  /// would not: the tab widgets are keyed on stable GlobalKeys and only reload
  /// when the library's globalKey changes. Without a selection yet (provider
  /// was empty at startup) it re-runs initialization instead.
  @override
  void refresh() {
    if (_selectedLibraryGlobalKey == null) {
      _initializeWithLibraries();
      return;
    }
    _refreshSelectedLibraryTabs();
  }

  /// Returning to the Libraries tab consumes push-marked staleness
  /// for the visible library tab only; hidden tabs consume on their own
  /// activation, and a library switch reloads unconditionally anyway.
  @override
  void onTabShown() {
    if (_selectedLibraryGlobalKey == null) return;
    final Object? tabState = _getTabState(tabController.index);
    if (tabState is BaseLibraryTabState) tabState.refreshIfLibraryContentStale();
  }

  @override
  // ignore: no-empty-block - visibility mixin contract; nothing to pause.
  void onTabHidden() {}

  /// The toolbar refresh. Without a selected library the screen is showing the
  /// provider's empty or error state, and there are no tabs to refetch: reload
  /// the library list itself (the build selects one once they arrive).
  @override
  void manualRefresh() {
    if (_selectedLibraryGlobalKey == null) {
      unawaited(context.read<LibrariesProvider>().refresh());
      return;
    }
    _refreshSelectedLibraryTabs();
  }

  void _refreshSelectedLibraryTabs() {
    for (var i = 0; i < _visibleTabs.length; i++) {
      final Object? tabState = _getTabState(i);
      if (tabState is Refreshable) {
        tabState.refresh();
      }
    }
  }

  // Public method to fully reload all content (for profile switches)
  @override
  void fullRefresh() {
    appLogger.d('LibrariesScreen.fullRefresh() called - reloading all content');
    setState(() {
      _selectedLibraryGlobalKey = null;
    });

    // Reinitialize with current libraries from provider
    _initializeWithLibraries();
  }

  Future<void> _toggleLibraryVisibility(MediaLibrary library) async {
    if (!mounted) return;
    final librariesProvider = context.read<LibrariesProvider>();
    final hiddenLibrariesProvider = Provider.of<HiddenLibrariesProvider>(context, listen: false);
    final isHidden = hiddenLibrariesProvider.hiddenLibraryKeys.contains(library.globalKey);

    if (isHidden) {
      await hiddenLibrariesProvider.unhideLibrary(library.globalKey);
    } else {
      final isCurrentlySelected = _selectedLibraryGlobalKey == library.globalKey;

      await hiddenLibrariesProvider.hideLibrary(library.globalKey);

      // If we just hid the selected library, select the first visible one
      if (isCurrentlySelected) {
        // Compute visible libraries after hiding
        final allLibraries = _librariesFor(librariesProvider.libraries);
        final visibleLibraries = allLibraries
            .where((lib) => !hiddenLibrariesProvider.hiddenLibraryKeys.contains(lib.globalKey))
            .toList();

        if (visibleLibraries.isNotEmpty) {
          unawaited(_loadLibraryContent(visibleLibraries.first.globalKey));
        }
      }
    }
  }

  void _showLibraryManagementSheet() {
    showLibraryManagementSheet(
      context,
      onOrderChanged: _notifyLibraryOrderChanged,
      onToggleVisibility: _toggleLibraryVisibility,
    );
  }

  AppMenuHeader<String> _buildLibraryServerHeaderMenuItem(MediaLibrary library, String serverKey) {
    return AppMenuHeader<String>(
      child: LibraryServerLabel(
        library: library,
        fallbackServerName: serverKey,
        badgeSize: 12,
        style: libraryServerHeaderStyle(context),
        constrainText: true,
      ),
    );
  }

  AppMenuItem<String> _buildLibraryMenuItem(MediaLibrary library, {required bool showServerName}) {
    final isSelected = library.globalKey == _selectedLibraryGlobalKey;
    return AppMenuItem<String>(
      value: library.globalKey,
      icon: ContentTypeHelper.getLibraryIcon(library.kind.id),
      label: library.title,
      selected: isSelected,
      subtitleWidget: showServerName
          ? LibraryServerLabel(
              library: library,
              badgeSize: 10,
              style: TextStyle(
                fontSize: 11,
                color: Theme.of(context).textTheme.bodySmall?.color?.withValues(alpha: 0.6),
              ),
              constrainText: true,
            )
          : null,
    );
  }

  /// Build dropdown menu entries via the shared server-label policy.
  List<AppMenuEntry<String>> _buildGroupedLibraryMenuItems(
    List<MediaLibrary> visibleLibraries, {
    required bool groupByServer,
  }) {
    return buildLibraryServerEntries<AppMenuEntry<String>>(
      visibleLibraries,
      groupByServer: groupByServer,
      buildHeader: _buildLibraryServerHeaderMenuItem,
      buildItem: (library, {required bool showServerName}) =>
          _buildLibraryMenuItem(library, showServerName: showServerName),
    );
  }

  /// Build the app bar title - either dropdown on mobile or simple title on desktop
  Widget _buildAppBarTitle(
    List<MediaLibrary> visibleLibraries,
    MediaLibrary? selectedLibrary, {
    required bool groupByServer,
  }) {
    // No selection at all, or visible list is empty AND we're not browsing a hidden library
    if (_selectedLibraryGlobalKey == null || (visibleLibraries.isEmpty && selectedLibrary == null)) {
      return Text(t.libraries.title);
    }

    // On desktop/TV with side nav, show tabs in app bar (library name is in side nav)
    if (PlatformDetector.shouldUseSideNavigation(context)) {
      final tabs = TabChipStrip(
        children: [
          for (int i = 0; i < _visibleTabs.length; i++) ...[
            if (i > 0) const SizedBox(width: 8),
            buildTabChip(
              _getTabLabel(_visibleTabs[i]),
              i,
              editorial: PlatformDetector.isTV(),
              onSelectWhenActive: _focusCurrentTab,
              onNavigateDown: _focusCurrentTabFromTabBar,
              onNavigateUp: PlatformDetector.isTV() ? onTabBarBack : null,
              onNavigateToActions: () => _actionBarKey.currentState?.requestFocusOnFirst(),
            ),
          ],
        ],
      );
      if (!PlatformDetector.isTV()) return tabs;
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 190),
            child: Text(
              selectedLibrary?.title ?? t.libraries.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(width: 18),
          Flexible(child: tabs),
        ],
      );
    }

    // On mobile, show the dropdown
    return _buildLibraryDropdownTitle(visibleLibraries, groupByServer: groupByServer);
  }

  Widget _buildLibraryDropdownTitle(List<MediaLibrary> visibleLibraries, {required bool groupByServer}) {
    final selectedLibrary =
        visibleLibraries.where((lib) => lib.globalKey == _selectedLibraryGlobalKey).firstOrNull ??
        visibleLibraries.firstOrNull;
    if (selectedLibrary == null) return Text(t.libraries.title);

    if (PlatformDetector.isMobile(context)) {
      return Semantics(
        button: true,
        label: t.libraries.selectLibrary,
        value: selectedLibrary.title,
        child: InkWell(
          key: const ValueKey('mobile_library_picker_trigger'),
          borderRadius: BorderRadius.circular(14),
          onTap: () async {
            final selected = await showModalBottomSheet<String>(
              context: context,
              isScrollControlled: true,
              useSafeArea: true,
              backgroundColor: Theme.of(context).colorScheme.surface,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(26))),
              builder: (_) => MobileLibraryPicker(libraries: visibleLibraries, selectedKey: _selectedLibraryGlobalKey),
            );
            if (mounted && selected != null && visibleLibraries.any((library) => library.globalKey == selected)) {
              await _loadLibraryContent(selected);
            }
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                ContentTypeHelper.getLibraryIcon(selectedLibrary.kind.id),
                size: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  selectedLibrary.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800, letterSpacing: -0.5),
                ),
              ),
              const SizedBox(width: 4),
              const Icon(Icons.keyboard_arrow_down_rounded, size: 21),
            ],
          ),
        ),
      );
    }

    return AppMenuButton<String>(
      key: _libraryDropdownKey,
      tooltip: t.libraries.selectLibrary,
      adaptiveSheet: true,
      onSelected: (libraryGlobalKey) {
        _loadLibraryContent(libraryGlobalKey);
      },
      entriesBuilder: (context) => _buildGroupedLibraryMenuItems(visibleLibraries, groupByServer: groupByServer),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisSize: .min,
          children: [
            AppIcon(ContentTypeHelper.getLibraryIcon(selectedLibrary.kind.id), fill: 1, size: 20),
            const SizedBox(width: 8),
            if (librariesSpanMultipleServers(visibleLibraries) && selectedLibrary.serverName != null)
              Column(
                crossAxisAlignment: .start,
                mainAxisSize: .min,
                children: [
                  Text(selectedLibrary.title, style: Theme.of(context).textTheme.titleMedium),
                  LibraryServerLabel(
                    library: selectedLibrary,
                    badgeSize: 10,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).textTheme.bodySmall?.color?.withValues(alpha: 0.6),
                    ),
                  ),
                ],
              )
            else
              Text(selectedLibrary.title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(width: 4),
            const AppIcon(Symbols.arrow_drop_down_rounded, fill: 1, size: 24),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SettingsBuilder(
      prefs: const [SettingsService.groupLibrariesByServer, SettingsService.compactTvLibraryNavigation],
      builder: (context) =>
          _buildContent(context, SettingsService.instance.read(SettingsService.groupLibrariesByServer)),
    );
  }

  Widget _buildContent(BuildContext context, bool groupByServerSetting) {
    final librariesProvider = context.watch<LibrariesProvider>();
    final allLibraries = _librariesFor(librariesProvider.libraries);
    final isLoadingLibraries = librariesProvider.isLoading;
    final librariesErrorMessage = librariesProvider.errorMessage;

    // Watch for hidden libraries changes to trigger rebuild
    final hiddenLibrariesProvider = context.watch<HiddenLibrariesProvider>();
    final hiddenKeys = hiddenLibrariesProvider.hiddenLibraryKeys;
    final sources = hiddenLibrariesProvider.selectedSourceLibraries;
    if (_selectedLibraryGlobalKey != null && sources != null && !sources.contains(_selectedLibraryGlobalKey)) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        setState(() => _selectedLibraryGlobalKey = null);
        _scheduleInitializeWithLibraries();
      });
    }

    // Compute visible libraries (filtered from all libraries)
    final visibleLibraries = allLibraries.where((lib) => !hiddenKeys.contains(lib.globalKey)).toList();

    // Resolve selected library defensively — may be null if server temporarily dropped during refresh
    final selectedLibrary = _selectedLibraryGlobalKey != null
        ? allLibraries.where((lib) => lib.globalKey == _selectedLibraryGlobalKey).firstOrNull
        : null;

    final useSideNavigation = PlatformDetector.shouldUseSideNavigation(context);
    final showMobileTabsRow = selectedLibrary != null && !useSideNavigation;
    final currentTabIndex = _visibleTabs.isEmpty ? 0 : tabController.index.clamp(0, _visibleTabs.length - 1).toInt();
    final currentTabType = _visibleTabs.isEmpty ? null : _visibleTabs[currentTabIndex];
    final useTvRecommendedBackdrop = PlatformDetector.isTV() && currentTabType == LibraryTabType.recommended;
    final showBrowseOptionsAction =
        selectedLibrary != null && PlatformDetector.isMobile(context) && currentTabType == LibraryTabType.browse;
    final canSelectedLibraryGroupByFolders = context.select<MultiServerProvider, bool>((provider) {
      if (selectedLibrary == null || selectedLibrary.isShared) return false;
      final serverId = serverIdOrNull(selectedLibrary.serverId);
      if (serverId == null) return false;
      return provider.getClientForServer(serverId)?.capabilities.folderGrouping ?? false;
    });

    Future<void> selectKidsLibrary() async {
      final selected = await showAdaptiveAppMenu<String>(
        context,
        title: t.libraries.selectLibrary,
        focusFirstItem: true,
        entries: _buildGroupedLibraryMenuItems(visibleLibraries, groupByServer: groupByServerSetting),
      );
      if (mounted && selected != null && visibleLibraries.any((library) => library.globalKey == selected)) {
        await _loadLibraryContent(selected);
      }
    }

    List<FocusableAction> appBarActions() => [
      if (PlatformDetector.isTV() && widget.kindFilter != null && visibleLibraries.length > 1)
        FocusableAction(
          icon: Symbols.folder_open_rounded,
          tooltip: t.libraries.selectLibrary,
          onPressed: selectKidsLibrary,
          child: Tooltip(
            message: t.libraries.selectLibrary,
            child: TextButton.icon(
              onPressed: selectKidsLibrary,
              icon: const Icon(Symbols.folder_open_rounded),
              label: Text(t.libraries.selectLibrary),
            ),
          ),
        ),
      if (PlatformDetector.isMobile(context) && !KidsProfileService.instance.isActiveKids)
        FocusableAction(
          icon: Symbols.more_horiz_rounded,
          tooltip: t.libraries.libraryOptions,
          onPressed: () async {
            final choice = await showAdaptiveAppMenu<String>(
              context,
              title: t.libraries.libraryOptions,
              entries: [
                AppMenuItem(value: 'manage', icon: Symbols.edit_rounded, label: t.libraries.manageLibraries),
                AppMenuItem(value: 'refresh', icon: Symbols.refresh_rounded, label: t.common.refresh),
                if (showBrowseOptionsAction)
                  AppMenuItem(value: 'options', icon: Symbols.tune_rounded, label: t.libraries.libraryOptions),
              ],
            );
            if (!mounted) return;
            if (choice == 'manage') _showLibraryManagementSheet();
            if (choice == 'refresh') manualRefresh();
            if (choice == 'options') _showBrowseOptionsForCurrentTab();
          },
        ),
      if (PlatformDetector.isTV())
        FocusableAction(
          icon: Symbols.more_horiz_rounded,
          tooltip: t.libraries.libraryOptions,
          onPressed: () async {
            final choice = await showAdaptiveAppMenu<String>(
              context,
              title: t.libraries.libraryOptions,
              focusFirstItem: true,
              entries: [
                AppMenuItem(value: 'refresh', icon: Symbols.refresh_rounded, label: t.common.refresh),
                AppMenuItem(
                  value: 'captions',
                  icon: Symbols.subtitles_rounded,
                  label: SettingsService.instance.read(SettingsService.libraryPosterCaptions)
                      ? t.libraryPolish.hidePosterDetails
                      : t.libraryPolish.showPosterDetails,
                ),
                if (!KidsProfileService.instance.isActiveKids)
                  AppMenuItem(value: 'manage', icon: Symbols.edit_rounded, label: t.libraries.manageLibraries),
              ],
            );
            if (!mounted || !context.mounted) return;
            if (choice == 'manage') _showLibraryManagementSheet();
            if (choice == 'captions') {
              await SettingsService.instance.write(
                SettingsService.libraryPosterCaptions,
                !SettingsService.instance.read(SettingsService.libraryPosterCaptions),
              );
            }
            if (choice == 'refresh') {
              if (!mounted || !context.mounted) return;
              manualRefresh();
            }
          },
        ),
      if (!PlatformDetector.isTV() &&
          !PlatformDetector.isMobile(context) &&
          allLibraries.isNotEmpty &&
          !KidsProfileService.instance.isActiveKids)
        FocusableAction(
          icon: Symbols.edit_rounded,
          tooltip: t.libraries.manageLibraries,
          onPressed: _showLibraryManagementSheet,
        ),
      if (showBrowseOptionsAction && !PlatformDetector.isMobile(context))
        FocusableAction(
          icon: Symbols.tune_rounded,
          tooltip: t.libraries.libraryOptions,
          onPressed: _showBrowseOptionsForCurrentTab,
          // Badge the icon with a dot while the browse tab has active filters
          // (issue). A null child keeps the default rendering.
          child: _browseFiltersActive
              ? IconButton(
                  tooltip: t.libraries.libraryOptions,
                  onPressed: _showBrowseOptionsForCurrentTab,
                  icon: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const AppIcon(Symbols.tune_rounded, fill: 1),
                      Positioned(
                        top: -2,
                        right: -2,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : null,
        ),
      if (!PlatformDetector.isTV() && !PlatformDetector.isMobile(context))
        FocusableAction(icon: Symbols.refresh_rounded, tooltip: t.common.refresh, onPressed: manualRefresh),
    ];

    Widget appBar({required bool floating}) => DesktopSliverAppBar(
      toolbarHeight: PlatformDetector.isTV() ? (showServerLabels(context) ? 104 : 86) : null,
      title: _buildAppBarTitle(visibleLibraries, selectedLibrary, groupByServer: groupByServerSetting),
      // When showing the tab content, let the app bar float away with the
      // content. Otherwise (loading / empty / error states) keep it pinned so
      // it stays visible over the centered state widget.
      pinned: !floating,
      floating: floating,
      snap: floating,
      backgroundColor: useTvRecommendedBackdrop ? Colors.transparent : Theme.of(context).scaffoldBackgroundColor,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      scrolledUnderElevation: 0,
      actions: [
        FocusableActionBar(
          key: _actionBarKey,
          onNavigateLeft: () => getTabChipFocusNode(_visibleTabs.length - 1).requestFocus(),
          onNavigateDown: _focusCurrentTab,
          actions: appBarActions(),
        ),
      ],
    );

    Widget buildSimpleScroll({required Widget body}) {
      return CustomScrollView(
        controller: _outerScrollController,
        slivers: [
          appBar(floating: false),
          SliverFillRemaining(child: body),
        ],
      );
    }

    Widget buildTransparentTvTopBar() {
      return SafeArea(
        bottom: false,
        child: AppBar(
          toolbarHeight: showServerLabels(context) ? 104 : 86,
          primary: false,
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
          title: _buildAppBarTitle(visibleLibraries, selectedLibrary, groupByServer: groupByServerSetting),
          actions: [
            FocusableActionBar(
              key: _actionBarKey,
              onNavigateLeft: () => getTabChipFocusNode(_visibleTabs.length - 1).requestFocus(),
              onNavigateDown: _focusCurrentTab,
              actions: appBarActions(),
            ),
          ],
        ),
      );
    }

    Widget body;
    if (isLoadingLibraries) {
      body = buildSimpleScroll(body: const Center(child: CircularProgressIndicator()));
    } else if (librariesErrorMessage != null && visibleLibraries.isEmpty && selectedLibrary == null) {
      body = buildSimpleScroll(
        body: ErrorStateWidget(
          message: librariesErrorMessage,
          icon: Symbols.error_outline_rounded,
          onRetry: manualRefresh,
        ),
      );
    } else if (visibleLibraries.isEmpty && selectedLibrary == null) {
      body = buildSimpleScroll(
        body: allLibraries.isEmpty
            ? EmptyStateWidget(message: t.libraries.noLibrariesFound, icon: Symbols.video_library_rounded)
            : EmptyStateWidget(
                message: t.libraries.allLibrariesHidden,
                icon: Symbols.visibility_off_rounded,
                onAction: _showLibraryManagementSheet,
                actionLabel: t.libraries.manageLibraries,
                actionIcon: Symbols.edit_rounded,
              ),
      );
    } else if (selectedLibrary != null) {
      Widget buildTab(int index) {
        final tabContent = _buildTabContent(
          _visibleTabs[index],
          library: selectedLibrary,
          canGroupByFolders: canSelectedLibraryGroupByFolders,
          isActive: tabController.index == index,
          tabIndex: index,
        );
        // Clip each tab so horizontal overflow (e.g. hub rows with Clip.none)
        // doesn't bleed into adjacent tabs during swipe transitions — except
        // the TV Recommended backdrop, which draws full-bleed. Toggling the
        // clip rather than the wrapper keeps the page's widget type stable.
        return ClipRect(clipBehavior: Clip.hardEdge, child: tabContent);
      }

      final tabs = TabBarView(
        key: ValueKey(_selectedLibraryGlobalKey),
        controller: tabController,
        // Disable swipe on desktop/TV - trackpad and d-pad scroll actions can trigger accidental tab switches.
        // See: https://github.com/flutter/flutter/issues/11132
        physics: useSideNavigation ? const NeverScrollableScrollPhysics() : null,
        children: [for (int i = 0; i < _visibleTabs.length; i++) buildTab(i)],
      );

      // One tree shape for both layouts: the TV Recommended backdrop only
      // drops the header slivers and overlays a transparent top bar. Swapping
      // in a different body there unmounted the TabBarView and with it every
      // kept-alive sibling tab, so each switch in or out of Recommended
      // reloaded them from scratch and lost their scroll and filter state.
      body = Focus(
        canRequestFocus: false,
        skipTraversal: true,
        onKeyEvent: useTvRecommendedBackdrop
            ? (_, event) => event.logicalKey.isDpadDirection ? KeyEventResult.handled : KeyEventResult.ignored
            : null,
        child: Column(
          children: [
            if (PlatformDetector.isTV())
              _compactTvNavigation
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(20, 4, 20, 4),
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: FocusableWrapper(
                          key: const ValueKey('compact-library-header'),
                          focusNode: _compactHeaderFocus,
                          onSelect: _openCompactLibraryMenu,
                          onNavigateLeft: _openCompactLibraryMenu,
                          onNavigateUp: onTabBarBack,
                          onNavigateDown: _focusCurrentTab,
                          onBack: onTabBarBack,
                          useBackgroundFocus: true,
                          disableScale: true,
                          semanticLabel: t.libraryPolish.openLibraryMenu,
                          descendantsAreFocusable: false,
                          child: InkWell(
                            onTap: _openCompactLibraryMenu,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Symbols.menu_rounded, size: 22),
                                  const SizedBox(width: 10),
                                  Flexible(
                                    child: Text(
                                      '${selectedLibrary.title} · ${_getTabLabel(_visibleTabs[currentTabIndex])}',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.titleMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : ColoredBox(color: Theme.of(context).scaffoldBackgroundColor, child: buildTransparentTvTopBar()),
            Expanded(
              child: NestedScrollView(
                key: _nestedScrollKey,
                controller: _outerScrollController,
                floatHeaderSlivers: true,
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  if (PlatformDetector.isTV())
                    SliverOverlapAbsorber(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                      sliver: const SliverToBoxAdapter(child: SizedBox.shrink()),
                    ),
                  if (!PlatformDetector.isTV())
                    SliverOverlapAbsorber(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                      sliver: appBar(floating: true),
                    ),
                  if (showMobileTabsRow && !useTvRecommendedBackdrop)
                    SliverToBoxAdapter(
                      child: Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (int i = 0; i < _visibleTabs.length; i++) ...[
                                if (i > 0) const SizedBox(width: 8),
                                buildTabChip(
                                  _getTabLabel(_visibleTabs[i]),
                                  i,
                                  editorial: PlatformDetector.isMobile(context),
                                  onSelectWhenActive: _focusCurrentTab,
                                  onNavigateDown: _focusCurrentTabFromTabBar,
                                  onNavigateToActions: () => _actionBarKey.currentState?.requestFocusOnFirst(),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
                body: tabs,
              ),
            ),
          ],
        ),
      );
    } else {
      if (_selectedLibraryGlobalKey == null) _scheduleInitializeWithLibraries();
      body = buildSimpleScroll(body: const SizedBox.shrink());
    }

    // Behavior scrollbars would bind the NestedScrollView's shared inner
    // controller, which holds one position per kept-alive tab, and break once
    // a second tab is built. Each tab draws its own NestedTabScrollbar instead.
    final scrollBody = ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: body,
    );

    return Scaffold(body: scrollBody);
  }
}
