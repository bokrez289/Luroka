import 'package:flutter/material.dart';
import 'package:luroka/widgets/app_icon.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../i18n/strings.g.dart';
import '../utils/platform_detector.dart';
import '../services/kids_profile_service.dart';

/// Navigation tab identifiers
enum NavigationTabId {
  discover,
  favorites,
  libraries,
  liveTv,
  explore,
  search,
  downloads,
  settings,
  kidsMovies,
  kidsShows,
}

/// Represents a navigation tab with its configuration
class NavigationTab {
  final NavigationTabId id;
  final bool onlineOnly;
  final IconData icon;
  final String Function() getLabel;

  const NavigationTab({required this.id, required this.onlineOnly, required this.icon, required this.getLabel});

  /// A bottom-bar destination whose label is pinned to one line.
  ///
  /// [NavigationDestination] paints a bare [Text] that fills the destination's
  /// share of the bar with no horizontal padding, so a long localized label or
  /// an enlarged system font wraps and the wrapped destination's icon rides up
  /// out of line with its siblings. The clamp has to sit here,
  /// on the destination: [NavigationBar]'s own [Material] reinstalls the
  /// ambient text style, so a [DefaultTextStyle] wrapped around the whole bar
  /// never reaches the labels. [NavigationLabelScale] shrinks the text so the
  /// full word usually still fits before this ellipsis applies.
  Widget toDestination() {
    return DefaultTextStyle.merge(
      maxLines: 1,
      softWrap: false,
      overflow: TextOverflow.ellipsis,
      child: NavigationDestination(
        icon: AppIcon(icon, fill: 1),
        selectedIcon: AppIcon(icon, fill: 1),
        label: getLabel(),
      ),
    );
  }

  /// Get tabs filtered by offline mode and feature availability
  static List<NavigationTab> getVisibleTabs({
    required bool isOffline,
    bool hasLiveTv = false,
    bool hasExplore = false,
    bool hasFavorites = false,
  }) {
    if (KidsProfileService.instance.isActiveKids) {
      return kidsNavigationTabs
          .where(
            (tab) =>
                (!isOffline || !tab.onlineOnly) &&
                (tab.id != NavigationTabId.downloads || !PlatformDetector.isAppleTV()) &&
                (isOffline || tab.id != NavigationTabId.downloads),
          )
          .toList();
    }
    return allNavigationTabs.where((tab) {
      if (KidsProfileService.instance.isActiveKids &&
          (tab.id == NavigationTabId.liveTv || tab.id == NavigationTabId.explore)) {
        return false;
      }
      if (isOffline && tab.onlineOnly) return false;
      if (tab.id == NavigationTabId.liveTv && !hasLiveTv) return false;
      if (tab.id == NavigationTabId.explore && !hasExplore) return false;
      if (tab.id == NavigationTabId.favorites && !hasFavorites) return false;
      if (tab.id == NavigationTabId.downloads && PlatformDetector.isAppleTV()) return false;
      return true;
    }).toList();
  }

  /// Resolve which tab the app should open to on launch.
  ///
  /// Offline mode prefers Downloads when available. Online, honours the user's
  /// [preferredStartup] section when it is currently visible, otherwise falls
  /// back to the first visible tab (Home).
  static NavigationTabId resolveDefaultTab({
    required bool isOffline,
    required bool hasLiveTv,
    bool hasExplore = false,
    bool hasFavorites = false,
    required NavigationTabId? preferredStartup,
  }) {
    final tabs = getVisibleTabs(
      isOffline: isOffline,
      hasLiveTv: hasLiveTv,
      hasExplore: hasExplore,
      hasFavorites: hasFavorites,
    );
    if (isOffline && tabs.any((t) => t.id == NavigationTabId.downloads)) {
      return NavigationTabId.downloads;
    }
    if (KidsProfileService.instance.isActiveKids) return tabs.first.id;
    if (preferredStartup != null && tabs.any((t) => t.id == preferredStartup)) {
      return preferredStartup;
    }
    return tabs.first.id;
  }
}

// Label getters (must be top-level for const constructor)
String _getHomeLabel() => t.common.home;
String _getFavoritesLabel() => t.libraries.filterCategories.favorites;
String _getExploreLabel() => t.lurokaDiscovery.title;
String _getLibrariesLabel() => t.navigation.libraries;
String _getLiveTvLabel() => t.navigation.liveTv;
String _getSearchLabel() => t.common.search;
String _getDownloadsLabel() => t.navigation.downloads;
String _getSettingsLabel() => t.common.settings;
String _getKidsMoviesLabel() => t.kids.movies;
String _getKidsShowsLabel() => t.kids.shows;
String _getKidsProfilesLabel() => t.kids.profiles;

const kidsNavigationTabs = [
  NavigationTab(id: NavigationTabId.discover, onlineOnly: true, icon: Symbols.home_rounded, getLabel: _getHomeLabel),
  NavigationTab(
    id: NavigationTabId.kidsMovies,
    onlineOnly: true,
    icon: Symbols.movie_rounded,
    getLabel: _getKidsMoviesLabel,
  ),
  NavigationTab(
    id: NavigationTabId.kidsShows,
    onlineOnly: true,
    icon: Symbols.tv_rounded,
    getLabel: _getKidsShowsLabel,
  ),
  NavigationTab(id: NavigationTabId.search, onlineOnly: true, icon: Symbols.search_rounded, getLabel: _getSearchLabel),
  NavigationTab(
    id: NavigationTabId.downloads,
    onlineOnly: false,
    icon: Symbols.download_rounded,
    getLabel: _getDownloadsLabel,
  ),
  NavigationTab(
    id: NavigationTabId.settings,
    onlineOnly: false,
    icon: Symbols.account_circle_rounded,
    getLabel: _getKidsProfilesLabel,
  ),
];

/// All navigation tabs in display order
const allNavigationTabs = [
  NavigationTab(id: NavigationTabId.discover, onlineOnly: true, icon: Symbols.home_rounded, getLabel: _getHomeLabel),
  NavigationTab(
    id: NavigationTabId.favorites,
    onlineOnly: true,
    icon: Symbols.favorite_rounded,
    getLabel: _getFavoritesLabel,
  ),
  NavigationTab(
    id: NavigationTabId.libraries,
    onlineOnly: true,
    icon: Symbols.video_library_rounded,
    getLabel: _getLibrariesLabel,
  ),
  NavigationTab(id: NavigationTabId.liveTv, onlineOnly: true, icon: Symbols.live_tv_rounded, getLabel: _getLiveTvLabel),
  NavigationTab(
    id: NavigationTabId.explore,
    onlineOnly: true,
    icon: Symbols.explore_rounded,
    getLabel: _getExploreLabel,
  ),
  NavigationTab(id: NavigationTabId.search, onlineOnly: true, icon: Symbols.search_rounded, getLabel: _getSearchLabel),
  NavigationTab(
    id: NavigationTabId.downloads,
    onlineOnly: false,
    icon: Symbols.download_rounded,
    getLabel: _getDownloadsLabel,
  ),
  NavigationTab(
    id: NavigationTabId.settings,
    onlineOnly: false,
    icon: Symbols.settings_rounded,
    getLabel: _getSettingsLabel,
  ),
];
