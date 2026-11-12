import 'dart:math' as math;
import 'dart:async';

import 'package:flutter/foundation.dart' show setEquals;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show ScrollCacheExtent;
import 'package:material_symbols_icons/symbols.dart';

import '../focus/focusable_button.dart';
import '../focus/locked_hub_controller.dart';
import '../i18n/strings.g.dart';
import '../media/home_layout.dart';
import '../media/home_spotlight.dart';
import '../media/home_taste.dart';
import '../media/media_hub.dart';
import '../media/movie_copy_groups.dart';
import 'movie_copy_picker.dart';
import '../media/media_item.dart';
import '../media/media_item_types.dart';
import '../media/media_kind.dart';
import '../media/media_server_client.dart';
import '../screens/libraries/state_messages.dart';
import '../services/device_performance.dart';
import '../services/home_preview_controller.dart';
import '../services/settings_service.dart';
import '../services/kids_profile_service.dart';
import '../utils/content_utils.dart';
import '../utils/formatters.dart';
import '../utils/hub_icons.dart';
import '../utils/media_quality_labels.dart';
import '../utils/media_image_helper.dart';
import '../utils/platform_detector.dart';
import 'app_icon.dart';
import 'cycling_media_backdrop.dart';
import 'hub_section.dart';
import 'optimized_media_image.dart';
import 'rasterized_gradient.dart';
import 'studio_card.dart';
import 'mobile_studios_shelf.dart';
import 'media_rating_badge.dart';
import 'poster_loading_placeholder.dart';
import 'mobile_home_carousel.dart';
import '../theme/kids_style.dart';
import 'kids/kids_movie_shelf.dart';
import 'kids/kids_sky.dart';
import 'kids/kids_feature.dart';

/// Artwork-led Home. On TV the billboard scrolls away to give lazy shelves
/// the full viewport; handheld layouts retain their compact preview.
class HomeDashboard extends StatefulWidget {
  const HomeDashboard({
    super.key,
    required this.rows,
    required this.onDeck,
    required this.toolbar,
    required this.focusMemory,
    required this.resolveClient,
    required this.onPlay,
    required this.onDetails,
    required this.onResume,
    required this.onSidebar,
    required this.onToolbar,
    required this.onRefresh,
    required this.onRemoveFromContinueWatching,
    required this.loadMoreItems,
    this.loading = false,
    this.errorMessage,
    this.onRetry,
    this.onPersonalize,
    this.showFeature = true,
    this.showServerName = false,
    this.active = true,
    this.onStudioTap,
    this.onStudioFocus,
    this.onFocusedItem,
    this.emptySubtitle,
    this.showToolbar = true,
    this.trendingItems = const [],
    this.favoriteSnapshot = const [],
    this.viewingSignals = const [],
    this.onlineServerIds,
    this.weeklyTrends = true,
    this.featureLoading = false,
    this.spotlightSource = HomeSpotlightSource.trending,
    this.kidsStyle,
    this.kidsName,
    this.previewScrollController,
    this.previewEpisodeThumbnails,
    this.previewPosterDetails,
  });

  final List<MediaHub> rows;
  final List<MediaItem> onDeck;
  final Widget toolbar;
  final HubFocusMemory focusMemory;
  final MediaServerClient? Function(MediaItem item) resolveClient;
  final ValueChanged<MediaItem> onPlay;
  final ValueChanged<MediaItem> onDetails;
  final ValueChanged<MediaItem> onResume;
  final VoidCallback onSidebar;
  final VoidCallback onToolbar;
  final void Function(MediaItem item) onRefresh;
  final VoidCallback onRemoveFromContinueWatching;
  final Future<List<MediaItem>> Function()? Function(MediaHub hub) loadMoreItems;
  final bool loading;
  final String? errorMessage;
  final VoidCallback? onRetry;
  final VoidCallback? onPersonalize;
  final bool showFeature;
  final bool showServerName;
  final bool active;
  final ValueChanged<MediaItem>? onStudioTap;
  final ValueChanged<MediaItem>? onStudioFocus;
  final ValueChanged<MediaItem>? onFocusedItem;
  final String? emptySubtitle;
  final bool showToolbar;
  final List<MediaItem> trendingItems;
  final List<MediaItem> favoriteSnapshot;
  final List<HomeViewingSignal> viewingSignals;
  final Set<String>? onlineServerIds;
  final bool weeklyTrends;
  final bool featureLoading;
  final HomeSpotlightSource spotlightSource;
  final KidsStyle? kidsStyle;
  final String? kidsName;

  /// Read-only settings previews can drive scrolling from the remote overlay.
  final ScrollController? previewScrollController;
  final bool? previewEpisodeThumbnails;
  final bool? previewPosterDetails;

  @override
  State<HomeDashboard> createState() => HomeDashboardState();
}

class HomeDashboardState extends State<HomeDashboard> with WidgetsBindingObserver {
  final _kidsShelfKey = GlobalKey<KidsMovieShelfState>();
  final _mobileStudiosKey = GlobalKey<MobileStudiosShelfState>();
  late final _scroll = widget.previewScrollController ?? ScrollController();
  final _play = FocusNode(debugLabel: 'dashboard_play');
  final _details = FocusNode(debugLabel: 'dashboard_details');
  final _previousFeature = FocusNode(debugLabel: 'home_previous_feature');
  final _nextFeature = FocusNode(debugLabel: 'home_next_feature');
  // Kids home filter chips (in-progress): 0.3, one focus node per chip.
  // TEMP declarations so the tree compiles — the feature's own wiring is
  // being written separately.
  int _kidsFilter = 0;
  final List<FocusNode> _kidsChoices = List.generate(4, (i) => FocusNode(debugLabel: 'kids_filter_$i'));
  int _featureIndex = 0;
  final Map<String, GlobalKey<HubSectionState>> _hubKeys = {};
  late final HomePreviewController _preview;
  late final HomePreviewController _browsePreview;
  bool _browsing = false;
  List<String> _rowIds = [];
  List<MediaHub> _rows = [];
  final Map<String, List<MediaItem>> _continueCopies = {};
  bool _choosingCopy = false;
  Timer? _rotationTimer;
  bool _appActive = true;
  bool _routeCurrent = true;
  bool _mobileHeroVisible = true;
  double _mobileHeroExtent = 400;

  void _mobileScrollChanged() {
    if (PlatformDetector.isTV()) return;
    final visible = !_scroll.hasClients || _scroll.offset < _mobileHeroExtent - 80;
    if (visible != _mobileHeroVisible && mounted) setState(() => _mobileHeroVisible = visible);
  }

  late final Listenable _rotationPreferences;

  void _scheduleRotation({bool afterInteraction = false}) {
    _rotationTimer?.cancel();
    if (!mounted ||
        !PlatformDetector.isTV() ||
        widget.kidsStyle != null ||
        !_previewActive ||
        !_appActive ||
        !_routeCurrent ||
        _browsing ||
        !widget.showFeature ||
        !SettingsService.instance.read(SettingsService.homeSpotlightAutoRotate) ||
        _features.length < 2) {
      return;
    }
    final interval = SettingsService.instance.read(SettingsService.homeSpotlightInterval).clamp(10, 60);
    _rotationTimer = Timer(Duration(seconds: afterInteraction ? math.max(25, interval) : interval), () {
      if (!mounted ||
          !_previewActive ||
          !_appActive ||
          _browsing ||
          _choosingCopy ||
          !(ModalRoute.of(context)?.isCurrent ?? true)) {
        return;
      }
      _changeFeature(1, automatic: true);
    });
  }

  void _rotationPreferenceChanged() => _scheduleRotation();
  void _noteInteraction() => _scheduleRotation(afterInteraction: true);

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _appActive = state == AppLifecycleState.resumed;
    _scheduleRotation(afterInteraction: true);
  }

  List<MediaItem> _groupContinueItems(List<MediaItem> items) {
    final grouped = MovieCopyGroups(items);
    for (final item in grouped.items) {
      _continueCopies[item.globalKey] = grouped.copiesFor(item);
    }
    return grouped.items;
  }

  Future<void> _resumeCopy(MediaItem item) async {
    if (_choosingCopy) return;
    _choosingCopy = true;
    try {
      final selected = await chooseMovieCopy(context, _continueCopies[item.globalKey] ?? [item]);
      if (!mounted || !_previewActive || selected == null || !(ModalRoute.of(context)?.isCurrent ?? false)) return;
      if (!(_continueCopies[item.globalKey] ?? [item]).any((copy) => copy.globalKey == selected.globalKey)) return;
      widget.onResume(selected);
    } finally {
      _choosingCopy = false;
    }
  }

  Future<List<MediaItem>> Function()? _loadMore(MediaHub row) {
    // The destination owns its grouping, so all real copies must reach it.
    return widget.loadMoreItems(row);
  }

  String? _lastRow;
  int _focusGeneration = 0;
  bool _previewActive = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _scroll.addListener(_mobileScrollChanged);
    _rotationPreferences = Listenable.merge([
      SettingsService.instance.listenable(SettingsService.homeSpotlightAutoRotate),
      SettingsService.instance.listenable(SettingsService.homeSpotlightInterval),
    ])..addListener(_rotationPreferenceChanged);
    _preview = HomePreviewController(
      resolveClient: (item) => widget.resolveClient(item),
      canFetch: () => mounted && _previewActive && (ModalRoute.of(context)?.isCurrent ?? false),
    );
    _browsePreview = HomePreviewController(
      resolveClient: (item) => widget.resolveClient(item),
      canFetch: () => mounted && _previewActive && _browsing && (ModalRoute.of(context)?.isCurrent ?? false),
    );
    _browsing = PlatformDetector.isTV() && !widget.showFeature;
    setPreviewActive(widget.active);
    _syncRows();
    _syncPreview();
    if (_browsing) _selectFirstBrowseItem();
    _scheduleRotation();
  }

  @override
  void didUpdateWidget(covariant HomeDashboard oldWidget) {
    super.didUpdateWidget(oldWidget);
    final previousKey = _preview.value?.item.globalKey;
    if (oldWidget.active != widget.active) setPreviewActive(widget.active);
    if (!identical(oldWidget.rows, widget.rows)) _syncRows();
    if (PlatformDetector.isTV() && !widget.showFeature && (oldWidget.showFeature || _browsePreview.value == null)) {
      _browsing = true;
      _browsePreview.setActive(_previewActive);
      _selectFirstBrowseItem();
    }
    if (!identical(oldWidget.rows, widget.rows) ||
        !identical(oldWidget.onDeck, widget.onDeck) ||
        !identical(oldWidget.trendingItems, widget.trendingItems) ||
        !identical(oldWidget.favoriteSnapshot, widget.favoriteSnapshot) ||
        !identical(oldWidget.viewingSignals, widget.viewingSignals) ||
        !setEquals(oldWidget.onlineServerIds, widget.onlineServerIds) ||
        oldWidget.spotlightSource != widget.spotlightSource ||
        oldWidget.showFeature != widget.showFeature ||
        oldWidget.featureLoading != widget.featureLoading) {
      if (oldWidget.spotlightSource != widget.spotlightSource) {
        _featureIndex = 0;
      } else if (previousKey != null) {
        final index = _features.indexWhere((feature) => feature.$1.globalKey == previousKey);
        if (index >= 0) _featureIndex = index;
      }
      _syncPreview();
      _scheduleRotation();
    }
  }

  /// Hidden tabs keep their current picture but perform no preview work.
  void setPreviewActive(bool active) {
    _previewActive = active;
    _preview.setActive(active);
    _browsePreview.setActive(active && _browsing);
    _scheduleRotation(afterInteraction: true);
  }

  void resetMobileShelves() {
    if (PlatformDetector.isTV()) return;
    _mobileStudiosKey.currentState?.resetHorizontalScroll();
    for (final key in _hubKeys.values) {
      key.currentState?.resetHorizontalScroll();
    }
  }

  void resetTvShelves() {
    if (!PlatformDetector.isTV()) return;
    widget.focusMemory.clear();
    for (final key in _hubKeys.values) {
      key.currentState?.resetHorizontalScroll();
    }
    _lastRow = null;
    if (!widget.showFeature) _selectFirstBrowseItem();
  }

  void _selectFirstBrowseItem() {
    for (final row in _rows) {
      if (row.items.isEmpty) continue;
      final item = row.items.first;
      _browsePreview.select(
        row.id == homeStudiosId ? item.copyWith(summary: t.studios.description) : item,
        rowTitle: row.title,
        usesContinueWatchingAction: row.usesContinueWatchingAction,
      );
      break;
    }
  }

  void scrollToTop() {
    if (!_scroll.hasClients) return;
    unawaited(_scroll.animateTo(0, duration: const Duration(milliseconds: 280), curve: Curves.easeOutCubic));
  }

  void _syncRows() {
    _continueCopies.clear();
    final kids = KidsProfileService.instance;
    final safeRows = kids.isActiveKids ? kids.filterHubs(widget.rows) : widget.rows;
    _rows = [
      for (final row in safeRows)
        if (row.isContinueWatchingHub || row.id == homeContinueWatchingId)
          row.copyWith(items: _groupContinueItems(row.items))
        else
          row,
    ];
    final occurrences = <String, int>{};
    _rowIds = [];
    for (final row in _rows) {
      final base = homeRowKey(row);
      final occurrence = occurrences.update(base, (n) => n + 1, ifAbsent: () => 0);
      _rowIds.add('$base#$occurrence');
    }
    _hubKeys.removeWhere((key, _) => !_rowIds.contains(key));
    for (final key in _rowIds) {
      _hubKeys.putIfAbsent(key, GlobalKey<HubSectionState>.new);
    }
    if (_lastRow != null && !_rowIds.contains(_lastRow)) {
      _lastRow = null;
      _browsing = PlatformDetector.isTV() && !widget.showFeature;
      _browsePreview.clear();
      _browsePreview.setActive(_previewActive && _browsing);
    }
  }

  void _syncPreview() {
    if (!widget.showFeature) {
      _preview.clear();
      return;
    }
    final billboard = _curatedBillboard();
    if (billboard == null) {
      _preview.clear();
      return;
    }
    _select(billboard.$1, billboard.$2);
  }

  /// Pick one stable, curated title for the billboard instead of mirroring
  /// shelf focus. Continue Watching is skipped so the hero never repeats the
  /// first row, and Studios are skipped because their tiles open browsers
  /// rather than playable media. If only those rows exist, fall back to the
  /// first row with content.
  (MediaItem, MediaHub)? _curatedBillboard() {
    if (widget.spotlightSource == HomeSpotlightSource.trending &&
        widget.featureLoading &&
        widget.trendingItems.isEmpty) {
      return null;
    }
    final features = _features;
    if (features.isNotEmpty) {
      _featureIndex = _featureIndex.clamp(0, features.length - 1);
      return features[_featureIndex];
    }
    MediaHub? fallback;
    for (final row in _rows) {
      if (row.items.isEmpty) continue;
      final eligible = widget.spotlightSource == HomeSpotlightSource.trending || widget.onlineServerIds == null
          ? row.items
          : row.items.where((item) => widget.onlineServerIds!.contains(item.serverId)).toList();
      if (eligible.isEmpty) continue;
      fallback ??= row;
      if (row.isContinueWatchingHub || row.id == homeContinueWatchingId || row.id == homeStudiosId) {
        continue;
      }
      return (eligible.first, row);
    }
    if (fallback == null) return null;
    final item = widget.spotlightSource == HomeSpotlightSource.trending || widget.onlineServerIds == null
        ? fallback.items.first
        : fallback.items.firstWhere((item) => widget.onlineServerIds!.contains(item.serverId));
    return (item, fallback);
  }

  void _select(MediaItem item, MediaHub row) {
    if (row.id == homeStudiosId && widget.active) widget.onStudioFocus?.call(item);
    if (!widget.showFeature) return;
    _preview.select(
      row.id == homeStudiosId ? item.copyWith(summary: t.studios.description) : item,
      rowTitle: row.title,
      usesContinueWatchingAction: row.usesContinueWatchingAction,
    );
  }

  Object? _featuresCacheKey;
  List<(MediaItem, MediaHub)>? _featuresCache;
  HomeSpotlightSource? _featuresCacheSource;
  int? _featuresCacheDay;

  List<(MediaItem, MediaHub)> get _features {
    final today = DateTime.now();
    final day = today.year * 10000 + today.month * 100 + today.day;
    final key = (
      _rows,
      widget.onDeck,
      widget.trendingItems,
      widget.spotlightSource,
      widget.weeklyTrends,
      widget.featureLoading,
      widget.favoriteSnapshot,
      widget.viewingSignals,
      widget.onlineServerIds == null ? null : Object.hashAllUnordered(widget.onlineServerIds!),
      KidsProfileService.instance.isActiveKids,
      day,
    );
    if (key == _featuresCacheKey && _featuresCache != null) return _featuresCache!;
    _featuresCacheKey = key;
    final fresh = _buildFeatures();
    final previous = _featuresCache;
    if (widget.spotlightSource != HomeSpotlightSource.trending &&
        _featuresCacheSource == widget.spotlightSource &&
        _featuresCacheDay == day &&
        previous != null) {
      final remaining = {for (final entry in fresh) entry.$1.globalKey: entry};
      _featuresCache = [
        for (final old in previous)
          if (remaining.containsKey(old.$1.globalKey)) remaining.remove(old.$1.globalKey)!,
        ...remaining.values,
      ];
    } else {
      _featuresCache = fresh;
    }
    _featuresCacheSource = widget.spotlightSource;
    _featuresCacheDay = day;
    return _featuresCache!;
  }

  List<(MediaItem, MediaHub)> _buildFeatures() {
    if (widget.spotlightSource != HomeSpotlightSource.trending && !KidsProfileService.instance.isActiveKids) {
      final visibleKeys = {
        for (final row in _rows)
          for (final item in row.items) item.globalKey,
      };
      final selected = selectPersonalSpotlight(
        source: widget.spotlightSource,
        visibleRows: _rows,
        onDeck: widget.onDeck,
        trending: widget.trendingItems.where((item) => visibleKeys.contains(item.globalKey)).toList(),
        favoritesSnapshot: widget.favoriteSnapshot,
        viewingSignals: widget.viewingSignals,
        onlineServerIds: widget.onlineServerIds,
        continueTitle: t.discover.continueWatching,
        nextTitle: t.homeLayout.spotlightNextUp,
        favoritesTitle: t.homeLayout.spotlightFavorites,
        recentTitle: t.discover.recentlyAdded,
        trendingTitle: widget.weeklyTrends ? t.lurokaDiscovery.weeklyLibrary : t.lurokaDiscovery.popularLibrary,
        inspiredTitle: t.homeLayout.spotlightInspired,
      );
      if (selected.isNotEmpty) return selected;
    }
    if (widget.spotlightSource == HomeSpotlightSource.trending &&
        widget.featureLoading &&
        widget.trendingItems.isEmpty) {
      return const [];
    }
    if (widget.spotlightSource == HomeSpotlightSource.trending &&
        widget.trendingItems.isNotEmpty &&
        !KidsProfileService.instance.isActiveKids) {
      final row = MediaHub(
        id: 'luroka:weekly',
        title: !PlatformDetector.isTV()
            ? (widget.weeklyTrends ? t.mobileUi.weeklyLibrary : t.mobileUi.popularLibrary)
            : widget.weeklyTrends
            ? t.lurokaDiscovery.weeklyLibrary
            : t.lurokaDiscovery.popularLibrary,
        type: 'mixed',
        items: widget.trendingItems,
        size: widget.trendingItems.length,
        more: false,
      );
      return [for (final item in widget.trendingItems) (item, row)];
    }
    final seen = <String>{};
    final result = <(MediaItem, MediaHub)>[];
    for (final row in _rows) {
      if (row.isContinueWatchingHub || row.id == homeContinueWatchingId || row.id == homeStudiosId) continue;
      for (final item in row.items.take(3)) {
        if (item.kind != MediaKind.movie && item.kind != MediaKind.show) continue;
        if (!KidsProfileService.instance.allows(item)) continue;
        if (widget.spotlightSource != HomeSpotlightSource.trending &&
            widget.onlineServerIds != null &&
            !widget.onlineServerIds!.contains(item.serverId)) {
          continue;
        }
        if (seen.add(item.globalKey)) result.add((item, row));
        if (result.length == 8) return result;
      }
    }
    return result;
  }

  void _changeFeature(int delta, {bool automatic = false}) {
    final features = _features;
    if (features.length < 2) return;
    setState(() => _featureIndex = (_featureIndex + delta) % features.length);
    _syncPreview();
    _scheduleRotation(afterInteraction: !automatic);
  }

  /// First TV entry opens the feature; subsequent entries restore shelf memory.
  bool requestContentFocus() {
    if (_kidsShelfKey.currentState != null) {
      _kidsShelfKey.currentState!.requestContentFocus();
      return true;
    }
    if (PlatformDetector.isTV() &&
        widget.showFeature &&
        widget.featureLoading &&
        _preview.value == null &&
        !_browsing) {
      _top();
      return true;
    }
    if (_lastRow case final key? when _hubKeys[key]?.currentState != null) {
      _focusRow(_rowIds.indexOf(key));
      return true;
    }
    if (_rowIds.isEmpty) return false;
    if ((PlatformDetector.isTV() || widget.kidsStyle != null) && widget.showFeature && _preview.value != null) {
      _top();
      return true;
    }
    _focusRow(0);
    return true;
  }

  void _sidebar() {
    _focusGeneration++;
    widget.onSidebar();
  }

  void _focusRow(int index) {
    _rotationTimer?.cancel();
    if (index < 0 || index >= _rowIds.length) return;
    if (PlatformDetector.isTV() && !_browsing) {
      final generation = ++_focusGeneration;
      final origin = FocusManager.instance.primaryFocus;
      setState(() => _browsing = true);
      _browsePreview.setActive(_previewActive);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final focus = FocusManager.instance.primaryFocus;
        if (mounted &&
            _browsing &&
            generation == _focusGeneration &&
            (focus == null || focus == origin || focus is FocusScopeNode)) {
          _focusRow(index);
        }
      });
      return;
    }
    final key = _rowIds[index];
    final direction = _lastRow == null || index >= _rowIds.indexOf(_lastRow!) ? 1 : -1;
    final generation = ++_focusGeneration;
    final origin = FocusManager.instance.primaryFocus;
    void request(int attempt) {
      if (!mounted || generation != _focusGeneration || !(ModalRoute.of(context)?.isCurrent ?? false)) return;
      if (attempt > 0 && FocusManager.instance.primaryFocus != origin) return;
      final state = _hubKeys[key]?.currentState;
      if (state != null) {
        _lastRow = key;
        if (PlatformDetector.isTV()) {
          state.requestFocusAt(0);
        } else {
          state.requestFocusFromMemory();
        }
        return;
      }
      if (attempt >= 3 || !_scroll.hasClients) return;
      final position = _scroll.position;
      final offset = index == 0 ? 0.0 : position.pixels + direction * position.viewportDimension * 0.7;
      _scroll.jumpTo(offset.clamp(0.0, position.maxScrollExtent));
      WidgetsBinding.instance.addPostFrameCallback((_) => request(attempt + 1));
    }

    request(0);
  }

  void _returnToShelf() => _focusRow(math.max(0, _rowIds.indexOf(_lastRow ?? '')));

  void _top() {
    _focusGeneration++;
    if (!widget.showFeature) {
      widget.onToolbar();
      return;
    }
    if (_browsing) {
      setState(() => _browsing = false);
      _scheduleRotation(afterInteraction: true);
      _browsePreview.setActive(false);
    }
    if (widget.showFeature && (_preview.value != null || widget.featureLoading)) {
      if ((PlatformDetector.isTV() || PlatformDetector.isMobile(context) || widget.kidsStyle != null) &&
          _scroll.hasClients) {
        final duration = widget.kidsStyle == null
            ? DevicePerformance.reducedDuration(const Duration(milliseconds: 240))
            : KidsStyle.motion(context, 240);
        if (duration == Duration.zero) {
          _scroll.jumpTo(0);
        } else {
          _scroll.animateTo(0, duration: duration, curve: Curves.easeOutCubic);
        }
      }
      if (_play.context != null) {
        _play.requestFocus();
      } else {
        final generation = _focusGeneration;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && !_browsing && generation == _focusGeneration) _play.requestFocus();
        });
      }
    } else {
      widget.onToolbar();
    }
  }

  @override
  void dispose() {
    _focusGeneration++;
    _rotationTimer?.cancel();
    _rotationPreferences.removeListener(_rotationPreferenceChanged);
    WidgetsBinding.instance.removeObserver(this);
    _preview.dispose();
    _browsePreview.dispose();
    _scroll.removeListener(_mobileScrollChanged);
    if (widget.previewScrollController == null) _scroll.dispose();
    _play.dispose();
    _details.dispose();
    _previousFeature.dispose();
    _nextFeature.dispose();
    for (final node in _kidsChoices) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.kidsStyle != null) {
      return KidsMovieShelf(
        key: _kidsShelfKey,
        rows: widget.rows,
        onDeck: widget.onDeck,
        name: widget.kidsName ?? '',
        toolbar: widget.toolbar,
        showToolbar: widget.showToolbar,
        resolveClient: widget.resolveClient,
        onPlay: widget.onPlay,
        onDetails: widget.onDetails,
        onResume: widget.onResume,
        onSidebar: widget.onSidebar,
        onToolbar: widget.onToolbar,
        loading: widget.loading,
        error: widget.errorMessage,
        onRetry: widget.onRetry,
      );
    }
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final tv = PlatformDetector.isTV();
    final base = theme.scaffoldBackgroundColor;
    final hideSpoilers = SettingsService.instance.read(SettingsService.hideSpoilers);
    final current = ModalRoute.isCurrentOf(context) ?? true;
    if (_routeCurrent != current) {
      _routeCurrent = current;
      if (tv) {
        _scheduleRotation(afterInteraction: true);
      } else if (current && PlatformDetector.isMobile(context)) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && (ModalRoute.isCurrentOf(context) ?? true)) resetMobileShelves();
        });
      }
    }
    if (tv) {
      return Listener(
        onPointerDown: (_) => _noteInteraction(),
        child: Focus(
          canRequestFocus: false,
          onKeyEvent: (_, event) {
            _noteInteraction();
            return KeyEventResult.ignored;
          },
          child: _buildTvHome(context, base, hideSpoilers),
        ),
      );
    }
    if (PlatformDetector.isMobile(context)) return _buildMobileHome(context, base, hideSpoilers);
    return Material(
      color: base,
      child: LayoutBuilder(
        builder: (context, viewport) => Stack(
          key: const ValueKey('custom_home_dashboard'),
          fit: StackFit.expand,
          children: [
            ExcludeSemantics(
              child: IgnorePointer(
                child: ValueListenableBuilder<HomePreview?>(
                  valueListenable: _preview,
                  builder: (context, preview, _) => _CinematicBackdrop(
                    item: preview?.artwork,
                    client: preview == null ? null : widget.resolveClient(preview.artwork),
                    size: viewport.biggest,
                    base: base,
                    hideSpoilers: hideSpoilers,
                  ),
                ),
              ),
            ),
            SafeArea(
              bottom: false,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final inset = tv
                      ? 42.0
                      : constraints.maxWidth >= 700
                      ? 28.0
                      : 16.0;
                  final toolbarHeight = widget.showToolbar ? (tv ? 44.0 : 56.0) : 0.0;
                  final textScale = MediaQuery.textScalerOf(context).scale(16) / 16;
                  final hasPreview = widget.showFeature && _rows.any((row) => row.items.isNotEmpty);
                  final previewHeight = math.min(
                    (constraints.maxHeight * (tv ? 0.33 : 0.40)).clamp(140.0, tv ? 360.0 : 400.0) +
                        math.max(0, textScale - 1) * 100,
                    math.max(100.0, constraints.maxHeight - toolbarHeight - 170),
                  );
                  final shelfViewport = constraints.maxHeight - toolbarHeight - (hasPreview ? previewHeight : 0);
                  final maxPosterHeight = tv
                      ? math.max(60.0, (shelfViewport - (MediaQuery.textScalerOf(context).scale(26) * 1.3 + 70)) * 0.82)
                      : null;
                  return Column(
                    children: [
                      if (widget.showToolbar)
                        SizedBox(
                          height: toolbarHeight,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: inset),
                            child: Row(
                              children: [
                                if (!tv && constraints.maxWidth >= 600) ...[
                                  Text(
                                    t.dashboard.cinemaHome,
                                    style: theme.textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Container(
                                    width: 6,
                                    height: 6,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.brightness == Brightness.dark
                                          ? Theme.of(context).colorScheme.primary
                                          : const Color(0xff256657),
                                    ),
                                  ),
                                ],
                                Expanded(child: ExcludeFocusTraversal(child: widget.toolbar)),
                              ],
                            ),
                          ),
                        ),
                      if (hasPreview)
                        SizedBox(
                          height: previewHeight,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(inset, 4, inset, 18),
                            child: ValueListenableBuilder<HomePreview?>(
                              valueListenable: _preview,
                              builder: (context, preview, _) => preview == null
                                  ? const SizedBox.shrink()
                                  : _previewDetails(
                                      context,
                                      preview,
                                      previewHeight - 22,
                                      constraints.maxWidth - inset * 2,
                                      hideSpoilers,
                                    ),
                            ),
                          ),
                        ),
                      Expanded(
                        child: CustomScrollView(
                          controller: _scroll,
                          scrollCacheExtent: ScrollCacheExtent.pixels(tv ? 700 : 400),
                          slivers: [
                            if (widget.loading)
                              SliverToBoxAdapter(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: inset),
                                  child: const LinearProgressIndicator(minHeight: 2),
                                ),
                              ),
                            if (widget.errorMessage != null)
                              SliverToBoxAdapter(
                                child: ConstrainedBox(
                                  constraints: const BoxConstraints(minHeight: 180),
                                  child: ErrorStateWidget(message: widget.errorMessage!, onRetry: widget.onRetry),
                                ),
                              ),
                            if (!widget.loading && _rows.isEmpty && widget.errorMessage == null)
                              SliverToBoxAdapter(
                                child: ConstrainedBox(
                                  constraints: const BoxConstraints(minHeight: 260),
                                  child: StateMessageWidget(
                                    message: t.discover.noContentAvailable,
                                    subtitle: widget.emptySubtitle ?? t.homeLayout.emptyHint,
                                    icon: Symbols.video_library_rounded,
                                    actionLabel: widget.onPersonalize == null ? null : t.homeLayout.title,
                                    onAction: widget.onPersonalize,
                                  ),
                                ),
                              ),
                            SliverPadding(
                              padding: EdgeInsets.symmetric(horizontal: inset),
                              sliver: SliverList.builder(
                                itemCount: _rows.length,
                                findChildIndexCallback: (key) {
                                  if (key is! ValueKey<String>) return null;
                                  final index = _rowIds.indexOf(key.value);
                                  return index < 0 ? null : index;
                                },
                                itemBuilder: (context, index) {
                                  final row = _rows[index];
                                  return Padding(
                                    key: ValueKey(_rowIds[index]),
                                    padding: const EdgeInsets.only(top: 2, bottom: 12),
                                    child: HubSection(
                                      key: _hubKeys[_rowIds[index]],
                                      hub: row,
                                      focusMemory: widget.focusMemory,
                                      icon: hubIconFor(row),
                                      showHeaderIcon: false,
                                      inset: true,
                                      cardSizing: tv ? HubCardSizing.shelf : HubCardSizing.grid,
                                      cinemaArtwork: tv && row.id != homeStudiosId,
                                      maxPosterHeight: maxPosterHeight,
                                      focusScrollAlignment: 0.03,
                                      episodePosterModeOverride:
                                          (row.usesContinueWatchingAction ||
                                              row.id == homeContinueWatchingId ||
                                              row.id == homeNextUpId)
                                          ? (SettingsService.instance.read(SettingsService.homeEpisodeThumbnails)
                                                ? EpisodePosterMode.episodeThumbnail
                                                : EpisodePosterMode.seriesPoster)
                                          : EpisodePosterMode.seriesPoster,
                                      forceWideCards: row.id == homeStudiosId,
                                      cardBuilder: row.id != homeStudiosId
                                          ? null
                                          : (item, width, height) => StudioCard(
                                              item: item,
                                              width: width,
                                              height: height,
                                              client: widget.resolveClient(item),
                                              imagePath: item.thumbPath,
                                              onTap: () => widget.onStudioTap?.call(item),
                                            ),
                                      onItemTap: row.id == homeStudiosId
                                          ? widget.onStudioTap
                                          : row.isContinueWatchingHub || row.id == homeContinueWatchingId
                                          ? _resumeCopy
                                          : null,
                                      onItemLongPress: row.id == homeStudiosId ? (_) {} : null,
                                      showServerName: widget.showServerName,
                                      onRefresh: widget.onRefresh,
                                      isInContinueWatching: row.isContinueWatchingHub,
                                      usesContinueWatchingAction: row.usesContinueWatchingAction,
                                      onRemoveFromContinueWatching: widget.onRemoveFromContinueWatching,
                                      loadMoreItems: _loadMore(row),
                                      previewOnHover: true,
                                      onFocusedItemChanged: (item) {
                                        _lastRow = _rowIds[index];
                                        if (row.id == homeStudiosId) widget.onStudioFocus?.call(item);
                                        widget.onFocusedItem?.call(item);
                                      },
                                      onVerticalNavigation: (up) {
                                        if (up && index == 0) {
                                          _top();
                                        } else {
                                          _focusRow(index + (up ? -1 : 1));
                                        }
                                        return true;
                                      },
                                      onNavigateUp: index == 0 ? _top : null,
                                      onNavigateToSidebar: _sidebar,
                                      onBack: _sidebar,
                                    ),
                                  );
                                },
                              ),
                            ),
                            SliverToBoxAdapter(child: SizedBox(height: 24 + MediaQuery.paddingOf(context).bottom)),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileHome(BuildContext context, Color base, bool hideSpoilers) => Material(
    color: base,
    child: SafeArea(
      bottom: false,
      child: LayoutBuilder(
        builder: (context, bounds) {
          const inset = 16.0;
          final features = _features;
          final hasPreview = widget.showFeature && features.isNotEmpty;
          final toolbarHeight = widget.showToolbar ? 56.0 : 0.0;
          final previewHeight = hasPreview
              ? MobileHomeCarousel.heightFor(
                  context,
                  bounds.maxWidth,
                  availableHeight: bounds.maxHeight - toolbarHeight,
                )
              : 0.0;
          final headerHeight = toolbarHeight + previewHeight;
          _mobileHeroExtent = headerHeight;
          return CustomScrollView(
            key: const PageStorageKey('mobile_home_scroll'),
            controller: _scroll,
            physics: const AlwaysScrollableScrollPhysics(),
            scrollCacheExtent: const ScrollCacheExtent.pixels(400),
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  key: const ValueKey('mobile_home_header'),
                  height: headerHeight,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Column(
                        children: [
                          if (widget.showToolbar)
                            SizedBox(
                              height: toolbarHeight,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: inset),
                                child: widget.toolbar,
                              ),
                            ),
                          if (hasPreview)
                            SizedBox(
                              height: previewHeight,
                              child: MobileHomeCarousel(
                                items: [for (final feature in features) feature.$1],
                                label: features.first.$2.title,
                                labelFor: (item) =>
                                    features
                                        .where((feature) => feature.$1.globalKey == item.globalKey)
                                        .firstOrNull
                                        ?.$2
                                        .title ??
                                    features.first.$2.title,
                                resolveClient: widget.resolveClient,
                                onPlay: (item) {
                                  final feature = features
                                      .where((entry) => entry.$1.globalKey == item.globalKey)
                                      .firstOrNull;
                                  if (feature?.$2.usesContinueWatchingAction == true) {
                                    _resumeCopy(item);
                                  } else {
                                    widget.onPlay(item);
                                  }
                                },
                                onDetails: widget.onDetails,
                                active: _previewActive && _mobileHeroVisible,
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              if (widget.loading && _rows.isNotEmpty)
                const SliverToBoxAdapter(child: LinearProgressIndicator(minHeight: 2)),
              if (widget.loading && _rows.isEmpty)
                const PosterLoadingSliver()
              else if (widget.errorMessage != null && _rows.isEmpty)
                SliverFillRemaining(
                  child: ErrorStateWidget(message: widget.errorMessage!, onRetry: widget.onRetry),
                )
              else if (_rows.isEmpty)
                SliverFillRemaining(
                  child: StateMessageWidget(
                    message: t.discover.noContentAvailable,
                    subtitle: widget.emptySubtitle ?? t.homeLayout.emptyHint,
                    icon: Symbols.video_library_rounded,
                    actionLabel: widget.onPersonalize == null ? null : t.homeLayout.title,
                    onAction: widget.onPersonalize,
                  ),
                ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: inset),
                sliver: SliverList.builder(
                  itemCount: _rows.length,
                  findChildIndexCallback: (key) {
                    if (key is! ValueKey<String>) return null;
                    final index = _rowIds.indexOf(key.value);
                    return index < 0 ? null : index;
                  },
                  itemBuilder: (context, index) {
                    final row = _rows[index];
                    if (row.id == homeStudiosId) {
                      return Padding(
                        key: ValueKey(_rowIds[index]),
                        padding: const EdgeInsets.only(bottom: 14),
                        child: MobileStudiosShelf(
                          key: _mobileStudiosKey,
                          items: row.items,
                          onTap: (item) => widget.onStudioTap?.call(item),
                          resolveClient: widget.resolveClient,
                        ),
                      );
                    }
                    return Padding(
                      key: ValueKey(_rowIds[index]),
                      padding: const EdgeInsets.only(top: 4, bottom: 14),
                      child: HubSection(
                        key: _hubKeys[_rowIds[index]],
                        hub: row,
                        focusMemory: widget.focusMemory,
                        icon: hubIconFor(row),
                        showHeaderIcon: false,
                        inset: true,
                        streamingHome: true,
                        episodePosterModeOverride:
                            (row.usesContinueWatchingAction ||
                                row.id == homeContinueWatchingId ||
                                row.id == homeNextUpId)
                            ? (SettingsService.instance.read(SettingsService.homeEpisodeThumbnails)
                                  ? EpisodePosterMode.episodeThumbnail
                                  : EpisodePosterMode.seriesPoster)
                            : EpisodePosterMode.seriesPoster,
                        forceWideCards: row.id == homeStudiosId,
                        cardBuilder: row.id != homeStudiosId
                            ? null
                            : (item, width, height) => StudioCard(
                                item: item,
                                width: width,
                                height: height,
                                client: widget.resolveClient(item),
                                imagePath: item.thumbPath,
                                onTap: () => widget.onStudioTap?.call(item),
                              ),
                        onItemTap: row.id == homeStudiosId
                            ? widget.onStudioTap
                            : row.isContinueWatchingHub || row.id == homeContinueWatchingId
                            ? _resumeCopy
                            : null,
                        onItemLongPress: row.id == homeStudiosId ? (_) {} : null,
                        showServerName: widget.showServerName,
                        onRefresh: widget.onRefresh,
                        isInContinueWatching: row.isContinueWatchingHub,
                        usesContinueWatchingAction: row.usesContinueWatchingAction,
                        onRemoveFromContinueWatching: widget.onRemoveFromContinueWatching,
                        loadMoreItems: _loadMore(row),
                        onFocusedItemChanged: (item) {
                          _lastRow = _rowIds[index];
                          if (row.id == homeStudiosId) widget.onStudioFocus?.call(item);
                          widget.onFocusedItem?.call(item);
                        },
                        onVerticalNavigation: (up) {
                          if (up && index == 0) {
                            _top();
                          } else {
                            _focusRow(index + (up ? -1 : 1));
                          }
                          return true;
                        },
                        onNavigateUp: index == 0 ? _top : null,
                        onNavigateToSidebar: _sidebar,
                        onBack: _sidebar,
                      ),
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 24 + MediaQuery.paddingOf(context).bottom)),
            ],
          );
        },
      ),
    ),
  );

  Widget _buildKidsChoices(BuildContext context, KidsStyle style) {
    final labels = [t.kidsHome.everything, t.kids.movies, t.kids.shows, t.kidsHome.keepWatching];
    const icons = [Icons.auto_awesome_rounded, Icons.movie_rounded, Icons.tv_rounded, Icons.play_circle_rounded];
    return LayoutBuilder(
      builder: (context, bounds) => Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [
          for (var i = 0; i < 4; i++)
            SizedBox(
              width: ((bounds.maxWidth - 30) / 4).clamp(60, 190),
              child: Semantics(
                selected: _kidsFilter == i,
                child: FocusableButton(
                  focusNode: _kidsChoices[i],
                  borderRadius: 18,
                  focusColor: Colors.white,
                  onNavigateLeft: i == 0 ? _sidebar : _kidsChoices[i - 1].requestFocus,
                  onNavigateRight: i < 3 ? _kidsChoices[i + 1].requestFocus : null,
                  onNavigateDown: () {
                    if (_preview.value != null) {
                      _top();
                    } else if (_rows.isNotEmpty) {
                      _focusRow(0);
                    }
                  },
                  onNavigateUp: widget.onToolbar,
                  onPressed: () => _chooseKidsFilter(i),
                  child: FilledButton(
                    key: ValueKey('kids-home-filter-$i'),
                    style: FilledButton.styleFrom(
                      backgroundColor: _kidsFilter == i ? style.accent : style.surface,
                      foregroundColor: _kidsFilter == i ? style.background : Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                    ),
                    onPressed: () => _chooseKidsFilter(i),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(icons[i], size: 28),
                        const SizedBox(height: 6),
                        Text(
                          labels[i],
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _chooseKidsFilter(int value) {
    if (_kidsFilter == value) return;
    setState(() {
      _kidsFilter = value;
      _featureIndex = 0;
      _syncRows();
      _syncPreview();
    });
  }

  // Retained temporarily for comparison with the previous kids composition.
  // ignore: unused_element
  Widget _buildKidsHome(BuildContext context, KidsStyle style, {required double availableHeight}) {
    final tv = PlatformDetector.isTV();
    final mobile = PlatformDetector.isMobile(context);
    final features = _features;
    final textScale = MediaQuery.textScalerOf(context).scale(16) / 16;
    final carouselHeight = MobileHomeCarousel.heightFor(
      context,
      MediaQuery.sizeOf(context).width,
      availableHeight: availableHeight - MediaQuery.paddingOf(context).top - 212 * textScale,
    );
    if (mobile) _mobileHeroExtent = carouselHeight + 250 + math.max(0, textScale - 1) * 80;
    final inset = tv ? 36.0 : 20.0;
    return Material(
      color: style.background,
      child: KidsSky(
        style: style,
        child: SafeArea(
          bottom: false,
          child: CustomScrollView(
            key: const ValueKey('kids-cinema-home'),
            controller: _scroll,
            physics: const AlwaysScrollableScrollPhysics(),
            scrollCacheExtent: ScrollCacheExtent.pixels(tv ? 600 : 240),
            slivers: [
              SliverPadding(
                padding: EdgeInsets.fromLTRB(inset, mobile ? 8 : 20, inset, mobile ? 12 : 20),
                sliver: SliverToBoxAdapter(
                  child: KidsEntrance(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                                decoration: BoxDecoration(
                                  color: style.violet.withValues(alpha: 0.16),
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: style.violet.withValues(alpha: 0.28)),
                                ),
                                child: Text(
                                  t.kids.title,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: style.teal, fontWeight: FontWeight.w800, letterSpacing: 1.1),
                                ),
                              ),
                            ),
                            const Spacer(),
                            if (widget.showToolbar)
                              SizedBox(width: 60, height: 48, child: ExcludeFocusTraversal(child: widget.toolbar)),
                          ],
                        ),
                        if (!mobile) const SizedBox(height: 8),
                        if (!mobile)
                          Text(
                            style.isOlder ? t.kids.homeSubtitleOlder : t.kids.homeSubtitle,
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: const Color(0xffc3cde8)),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.fromLTRB(inset, 0, inset, 20),
                sliver: SliverToBoxAdapter(child: _buildKidsChoices(context, style)),
              ),
              if (mobile && widget.showFeature && features.isNotEmpty)
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: carouselHeight,
                    child: MobileHomeCarousel(
                      key: const ValueKey('kids_mobile_carousel'),
                      items: [for (final feature in features) feature.$1],
                      label: style.isOlder ? t.kids.featuredOlder : t.kids.featured,
                      kidsStyle: style,
                      active: _previewActive && _mobileHeroVisible,
                      resolveClient: widget.resolveClient,
                      onPlay: widget.onPlay,
                      onDetails: widget.onDetails,
                    ),
                  ),
                )
              else if (!mobile && widget.showFeature)
                SliverPadding(
                  padding: EdgeInsets.fromLTRB(inset, 0, inset, 28),
                  sliver: SliverToBoxAdapter(
                    child: ValueListenableBuilder<HomePreview?>(
                      valueListenable: _preview,
                      builder: (context, preview, _) => preview == null
                          ? const SizedBox.shrink()
                          : KidsFeature(
                              item: preview.item,
                              style: style,
                              client: widget.resolveClient(preview.artwork),
                              playFocus: _play,
                              detailsFocus: _details,
                              onDown: () => _focusRow(0),
                              onUp: _kidsChoices[_kidsFilter].requestFocus,
                              onSidebar: _sidebar,
                              onPlay: () => preview.usesContinueWatchingAction
                                  ? _resumeCopy(preview.item)
                                  : widget.onPlay(preview.item),
                              onDetails: () => widget.onDetails(preview.item),
                            ),
                    ),
                  ),
                ),
              if (mobile && widget.loading && _rows.isEmpty)
                const PosterLoadingSliver()
              else if (widget.loading)
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: inset),
                  sliver: const SliverToBoxAdapter(child: LinearProgressIndicator(minHeight: 3)),
                ),
              if (widget.errorMessage != null)
                SliverToBoxAdapter(
                  child: ErrorStateWidget(message: widget.errorMessage!, onRetry: widget.onRetry),
                ),
              if (!widget.loading && _rows.isEmpty && widget.errorMessage == null)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: StateMessageWidget(
                    message: t.discover.noContentAvailable,
                    subtitle: _kidsFilter == 0 ? t.kids.emptyHint : t.kidsHome.emptyFilter,
                    icon: Symbols.auto_awesome_rounded,
                  ),
                ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: inset),
                sliver: SliverList.builder(
                  itemCount: _rows.length,
                  findChildIndexCallback: (key) {
                    if (key is! ValueKey<String>) return null;
                    final index = _rowIds.indexOf(key.value);
                    return index < 0 ? null : index;
                  },
                  itemBuilder: (context, index) {
                    final row = _rows[index];
                    final continuing = row.isContinueWatchingHub || row.id == homeContinueWatchingId;
                    final title = !style.isOlder && continuing ? t.kids.continueAdventure : row.title;
                    final display = MediaHub(
                      id: row.id,
                      identifier: row.identifier,
                      title: title,
                      type: row.type,
                      items: row.items,
                      more: row.more,
                      size: row.size,
                      libraryId: row.libraryId,
                      serverId: row.serverId,
                      serverName: row.serverName,
                    );
                    return Padding(
                      key: ValueKey(_rowIds[index]),
                      padding: const EdgeInsets.only(bottom: 24),
                      child: HubSection(
                        key: _hubKeys[_rowIds[index]],
                        hub: display,
                        focusMemory: widget.focusMemory,
                        icon: continuing ? Symbols.play_circle_rounded : Symbols.auto_awesome_rounded,
                        showHeaderIcon: !style.isOlder,
                        inset: true,
                        streamingHome: mobile,
                        isInContinueWatching: continuing,
                        usesContinueWatchingAction: row.usesContinueWatchingAction,
                        onItemTap: row.id == homeNextUpId
                            ? null
                            : continuing
                            ? _resumeCopy
                            : widget.onDetails,
                        onRefresh: widget.onRefresh,
                        onRemoveFromContinueWatching: widget.onRemoveFromContinueWatching,
                        loadMoreItems: _loadMore(row),
                        episodePosterModeOverride: EpisodePosterMode.episodeThumbnail,
                        onFocusedItemChanged: (_) => _lastRow = _rowIds[index],
                        onVerticalNavigation: (up) {
                          if (up && index == 0) {
                            _top();
                          } else {
                            _focusRow(index + (up ? -1 : 1));
                          }
                          return true;
                        },
                        onNavigateUp: index == 0 ? _top : null,
                        onNavigateToSidebar: _sidebar,
                        onBack: _sidebar,
                      ),
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 32 + MediaQuery.paddingOf(context).bottom)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTvHome(BuildContext context, Color base, bool hideSpoilers) {
    return Material(
      color: base,
      child: LayoutBuilder(
        builder: (context, viewport) {
          final scale = (viewport.maxWidth / 1280).clamp(0.75, 2.0);
          final inset = 48.0 * scale;
          final hasPreview = widget.showFeature && !_browsing && (_preview.value != null || widget.featureLoading);
          final heroFraction = switch (SettingsService.instance.read(SettingsService.homeHeroSize)) {
            HomeHeroSize.compact => 0.44,
            HomeHeroSize.small => 0.60,
            HomeHeroSize.medium => 0.70,
            HomeHeroSize.large => 0.84,
          };
          final heroHeight = math.max(280.0, viewport.maxHeight * heroFraction);
          final descriptionHeight = math.min(280 * scale, viewport.maxHeight * 0.34);
          final shelfHeight = viewport.maxHeight - (_browsing ? descriptionHeight : 0);
          return Column(
            children: [
              if (_browsing)
                SizedBox(
                  key: const ValueKey('home_browse_description'),
                  height: descriptionHeight,
                  child: _browseDescription(context, viewport.maxWidth, descriptionHeight, inset, hideSpoilers),
                ),
              Expanded(
                child: CustomScrollView(
                  key: const ValueKey('custom_home_dashboard'),
                  controller: _scroll,
                  scrollCacheExtent: ScrollCacheExtent.pixels(viewport.maxHeight),
                  slivers: [
                    if (hasPreview)
                      SliverToBoxAdapter(
                        child: SizedBox(
                          key: const ValueKey('home_feature_billboard'),
                          height: heroHeight,
                          child: ValueListenableBuilder<HomePreview?>(
                            valueListenable: _preview,
                            builder: (context, preview, _) => Stack(
                              fit: StackFit.expand,
                              children: [
                                if (preview == null && widget.featureLoading)
                                  Center(
                                    child: FocusableButton(
                                      key: const ValueKey('home_feature_loading'),
                                      focusNode: _play,
                                      onPressed: () {},
                                      onNavigateUp: widget.onToolbar,
                                      onNavigateDown: _rowIds.isEmpty ? null : () => _focusRow(0),
                                      onNavigateLeft: _sidebar,
                                      onBack: _sidebar,
                                      child: const SizedBox(
                                        width: 28,
                                        height: 28,
                                        child: Icon(Symbols.auto_awesome_rounded),
                                      ),
                                    ),
                                  ),
                                ExcludeSemantics(
                                  child: IgnorePointer(
                                    child: _CinematicBackdrop(
                                      item: preview?.artwork,
                                      client: preview == null ? null : widget.resolveClient(preview.artwork),
                                      size: Size(viewport.maxWidth, heroHeight),
                                      base: base,
                                      hideSpoilers: hideSpoilers,
                                      billboard: true,
                                    ),
                                  ),
                                ),
                                if (preview != null)
                                  Positioned(
                                    left: inset,
                                    right: inset,
                                    top: 64 * scale,
                                    bottom: 48 * scale,
                                    child: _previewDetails(
                                      context,
                                      preview,
                                      heroHeight - 112 * scale,
                                      viewport.maxWidth - inset * 2,
                                      hideSpoilers,
                                    ),
                                  ),
                                if (widget.showToolbar)
                                  Positioned(
                                    top: 0,
                                    left: inset,
                                    right: inset,
                                    height: 48 * scale,
                                    child: ExcludeFocusTraversal(child: widget.toolbar),
                                  ),
                                if (_features.length > 1)
                                  Positioned(right: inset, bottom: 42 * scale, child: _featureControls(context, scale)),
                              ],
                            ),
                          ),
                        ),
                      )
                    else if (widget.showToolbar)
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: 52 * scale,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: inset),
                            child: ExcludeFocusTraversal(child: widget.toolbar),
                          ),
                        ),
                      ),
                    if (widget.loading) const SliverToBoxAdapter(child: LinearProgressIndicator(minHeight: 2)),
                    if (widget.errorMessage != null)
                      SliverToBoxAdapter(
                        child: ErrorStateWidget(message: widget.errorMessage!, onRetry: widget.onRetry),
                      ),
                    if (!widget.loading && _rows.isEmpty && widget.errorMessage == null)
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: StateMessageWidget(
                          message: t.discover.noContentAvailable,
                          subtitle: widget.emptySubtitle ?? t.homeLayout.emptyHint,
                          icon: Symbols.video_library_rounded,
                          actionLabel: widget.onPersonalize == null ? null : t.homeLayout.title,
                          onAction: widget.onPersonalize,
                        ),
                      ),
                    SliverPadding(
                      padding: EdgeInsets.symmetric(horizontal: inset),
                      sliver: SliverList.builder(
                        itemCount: _rows.length,
                        findChildIndexCallback: (key) {
                          if (key is! ValueKey<String>) return null;
                          final index = _rowIds.indexOf(key.value);
                          return index < 0 ? null : index;
                        },
                        itemBuilder: (context, index) {
                          final row = _rows[index];
                          final studio = row.id == homeStudiosId;
                          final continuing = row.isContinueWatchingHub || row.id == homeContinueWatchingId;
                          return Padding(
                            key: ValueKey(_rowIds[index]),
                            padding: EdgeInsets.only(top: 8 * scale, bottom: 26 * scale),
                            child: HubSection(
                              key: _hubKeys[_rowIds[index]],
                              hub: row,
                              focusMemory: widget.focusMemory,
                              icon: hubIconFor(row),
                              showHeaderIcon: false,
                              inset: true,
                              cinemaArtwork: !studio,
                              forceWideCards:
                                  studio ||
                                  (continuing &&
                                      (widget.previewEpisodeThumbnails ??
                                          SettingsService.instance.read(SettingsService.homeEpisodeThumbnails))),
                              streamingHome: true,
                              posterDetailsOverride: widget.previewPosterDetails,
                              maxPosterHeight: math.min(
                                340 * scale,
                                math.max(
                                  90,
                                  shelfHeight -
                                      120 * scale -
                                      math.max(0, MediaQuery.textScalerOf(context).scale(26) - 26) * 1.3,
                                ),
                              ),
                              focusScrollAlignment: 0.12,
                              episodePosterModeOverride:
                                  (row.usesContinueWatchingAction ||
                                      row.id == homeContinueWatchingId ||
                                      row.id == homeNextUpId)
                                  ? ((widget.previewEpisodeThumbnails ??
                                            SettingsService.instance.read(SettingsService.homeEpisodeThumbnails))
                                        ? EpisodePosterMode.episodeThumbnail
                                        : EpisodePosterMode.seriesPoster)
                                  : EpisodePosterMode.seriesPoster,
                              cardBuilder: !studio
                                  ? null
                                  : (item, width, height) => StudioCard(
                                      item: item,
                                      width: width,
                                      height: height,
                                      client: widget.resolveClient(item),
                                      imagePath: item.thumbPath,
                                      onTap: () => widget.onStudioTap?.call(item),
                                    ),
                              onItemTap: studio
                                  ? widget.onStudioTap
                                  : continuing
                                  ? _resumeCopy
                                  : null,
                              onItemLongPress: studio ? (_) {} : null,
                              showServerName: widget.showServerName,
                              onRefresh: widget.onRefresh,
                              isInContinueWatching: continuing,
                              usesContinueWatchingAction: row.usesContinueWatchingAction,
                              onRemoveFromContinueWatching: widget.onRemoveFromContinueWatching,
                              loadMoreItems: _loadMore(row),
                              previewOnHover: true,
                              onFocusedItemChanged: (item) {
                                _lastRow = _rowIds[index];
                                _browsePreview.select(
                                  studio ? item.copyWith(summary: t.studios.description) : item,
                                  rowTitle: row.title,
                                  usesContinueWatchingAction: row.usesContinueWatchingAction,
                                );
                                if (studio) widget.onStudioFocus?.call(item);
                                widget.onFocusedItem?.call(item);
                              },
                              onVerticalNavigation: (up) {
                                if (up && index == 0) {
                                  _top();
                                } else {
                                  _focusRow(index + (up ? -1 : 1));
                                }
                                return true;
                              },
                              onNavigateUp: index == 0 ? _top : null,
                              onNavigateToSidebar: _sidebar,
                              onBack: _sidebar,
                            ),
                          );
                        },
                      ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: viewport.maxHeight * 0.35)),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _browseDescription(BuildContext context, double width, double height, double inset, bool hideSpoilers) {
    final theme = Theme.of(context);
    final scale = (width / 1280).clamp(0.75, 2.0);
    return ValueListenableBuilder<HomePreview?>(
      valueListenable: _browsePreview,
      builder: (context, preview, _) {
        if (preview == null) return const SizedBox.expand();
        final item = preview.item;
        final hidden = hideSpoilers && item.shouldHideSpoiler;
        final title = item.isEpisode
            ? item.grandparentTitle ?? (hidden ? t.dashboard.episodeFallback : item.displayTitle)
            : item.displayTitle;
        final metadata = [
          if (item.isEpisode) t.dashboard.episodeLabel(season: item.parentIndex ?? '–', episode: item.index ?? '–'),
          if (item.year != null) '${item.year}',
          if (item.contentRating?.isNotEmpty == true) formatContentRating(item.contentRating!),
          if ((item.durationMs ?? 0) > 0 && item.kind != MediaKind.show) formatDurationTextual(item.durationMs!),
          if (item.genres?.isNotEmpty == true) item.genres!.take(2).join(' / '),
        ].join('  ·  ');
        return Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              width: width * 0.62,
              child: ExcludeSemantics(
                child: IgnorePointer(
                  child: _CinematicBackdrop(
                    item: preview.artwork,
                    client: widget.resolveClient(preview.artwork),
                    size: Size(width * 0.62, height),
                    base: theme.scaffoldBackgroundColor,
                    hideSpoilers: hideSpoilers,
                  ),
                ),
              ),
            ),
            Positioned(
              left: inset,
              top: 12 * scale,
              bottom: 16 * scale,
              width: width * 0.65,
              child: Align(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: width * 0.65,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          preview.rowTitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.labelMedium?.copyWith(
                            fontSize: 11 * scale,
                            letterSpacing: 1.3,
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                        SizedBox(height: 6 * scale),
                        Text(
                          title,
                          key: const ValueKey('home_browse_title'),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.headlineMedium?.copyWith(
                            fontSize: 30 * scale,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.6,
                          ),
                        ),
                        if (metadata.isNotEmpty) ...[
                          SizedBox(height: 6 * scale),
                          Text(
                            metadata,
                            key: const ValueKey('home_browse_metadata'),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontSize: 13 * scale,
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                        if (mediaRatingsFor(item).isNotEmpty) ...[
                          SizedBox(height: 8 * scale),
                          InlineRatingBadges(
                            ratings: mediaRatingsFor(item),
                            textStyle: theme.textTheme.bodyMedium?.copyWith(fontSize: 13 * scale),
                          ),
                        ],
                        SizedBox(height: 10 * scale),
                        Text(
                          hidden
                              ? t.dashboard.spoilerHidden
                              : item.summary?.trim().isNotEmpty == true
                              ? item.summary!
                              : t.dashboard.synopsisUnavailable,
                          key: const ValueKey('home_browse_summary'),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyLarge?.copyWith(fontSize: 16 * scale, height: 1.4),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _featureControls(BuildContext context, double scale) {
    final colors = Theme.of(context).colorScheme;
    final next = _features[(_featureIndex + 1) % _features.length].$1;
    return SizedBox(
      width: 235 * scale,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(7 * scale),
            margin: EdgeInsets.only(bottom: 6 * scale),
            decoration: BoxDecoration(
              color: colors.surface.withValues(alpha: 0.48),
              borderRadius: BorderRadius.circular(12 * scale),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6 * scale),
                  child: OptimizedMediaImage(
                    client: widget.resolveClient(next),
                    imagePath: next.backdropPaths?.firstOrNull ?? next.artPath ?? next.thumbPath,
                    width: 72 * scale,
                    height: 46 * scale,
                    fit: BoxFit.cover,
                    imageType: ImageType.art,
                  ),
                ),
                SizedBox(width: 12 * scale),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        t.dashboard.nextFeature,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: colors.onSurfaceVariant, fontSize: 10 * scale),
                      ),
                      SizedBox(height: 4 * scale),
                      Text(
                        next.displayTitle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: colors.onSurface, fontSize: 14 * scale, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${_featureIndex + 1} / ${_features.length}',
                style: TextStyle(color: colors.onSurfaceVariant, fontSize: 11 * scale),
              ),
              SizedBox(width: 8 * scale),
              FocusableButton(
                focusNode: _previousFeature,
                autoScroll: false,
                onPressed: () => _changeFeature(-1),
                onNavigateLeft: () {
                  if (_details.context != null) {
                    _details.requestFocus();
                  } else {
                    _play.requestFocus();
                  }
                },
                onNavigateRight: _nextFeature.requestFocus,
                onNavigateUp: widget.onToolbar,
                onNavigateDown: _returnToShelf,
                onBack: _sidebar,
                child: IconButton(
                  tooltip: t.dashboard.previousFeature,
                  onPressed: () => _changeFeature(-1),
                  icon: const Icon(Icons.chevron_left_rounded),
                ),
              ),
              const SizedBox(width: 10),
              FocusableButton(
                focusNode: _nextFeature,
                autoScroll: false,
                onPressed: () => _changeFeature(1),
                onNavigateLeft: _previousFeature.requestFocus,
                onNavigateRight: () {},
                onNavigateUp: widget.onToolbar,
                onNavigateDown: _returnToShelf,
                onBack: _sidebar,
                child: IconButton(
                  tooltip: t.dashboard.nextFeature,
                  onPressed: () => _changeFeature(1),
                  icon: const Icon(Icons.chevron_right_rounded),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _previewDetails(BuildContext context, HomePreview preview, double height, double width, bool hideSpoilers) {
    final item = preview.item;
    final colors = Theme.of(context).colorScheme;
    final tv = PlatformDetector.isTV();
    final compact = height < 290;
    final minimal = height < 170;
    final uiScale = tv ? (width / 1184).clamp(0.75, 2.0) : 1.0;
    final infoWidth = tv
        ? width * 0.48
        : width >= 800
        ? math.min(width * 0.62, 760.0)
        : width;
    final hidden = hideSpoilers && item.shouldHideSpoiler;
    final title = item.isEpisode
        ? item.grandparentTitle?.trim().isNotEmpty == true
              ? item.grandparentTitle!
              : hidden
              ? t.dashboard.episodeFallback
              : item.displayTitle
        : item.displayTitle;
    final playable =
        const {MediaKind.movie, MediaKind.episode, MediaKind.clip, MediaKind.show}.contains(item.kind) &&
        (item.kind != MediaKind.show ||
            (item.serverId != null &&
                item.raw?['customStudio'] == null &&
                (_browsing ||
                    widget.spotlightSource == HomeSpotlightSource.trending ||
                    preview.usesContinueWatchingAction)));
    final episode = item.isEpisode
        ? t.dashboard.episodeLabel(season: item.parentIndex ?? '–', episode: item.index ?? '–')
        : null;
    final metadata = [
      if (item.year != null) '${item.year}',
      if (item.contentRating?.isNotEmpty == true) formatContentRating(item.contentRating!),
      if (item.durationMs != null && item.durationMs! > 0 && item.kind != MediaKind.show)
        formatDurationTextual(item.durationMs!),
      if (item.genres?.isNotEmpty == true) item.genres!.take(2).join(' / '),
      ...buildMediaQualityLabels(item),
    ].join('  ·  ');
    final remaining = item.durationMs != null && item.hasActiveProgress
        ? math.max(1, ((item.durationMs! - item.viewOffsetMs! + 59999) ~/ 60000))
        : null;
    void activate() {
      if (item.raw?['customStudio'] != null) {
        widget.onStudioTap?.call(item);
      } else if (!playable) {
        widget.onDetails(item);
      } else if (preview.usesContinueWatchingAction) {
        _resumeCopy(item);
      } else {
        widget.onPlay(item);
      }
    }

    final primaryLabel = !playable
        ? t.mediaMenu.viewDetails
        : (item.hasActiveProgress ||
              (preview.usesContinueWatchingAction && (item.viewOffsetMs ?? 0) > 0 && item.durationMs == null))
        ? t.common.resume
        : t.common.play;
    final smallActions = infoWidth < 420;
    return Align(
      alignment: Alignment.bottomLeft,
      child: SizedBox(
        width: infoWidth,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.bottomLeft,
          child: SizedBox(
            width: infoWidth,
            child: Column(
              key: const ValueKey('home_live_details'),
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (!minimal) ...[
                  Text(
                    tv && widget.spotlightSource == HomeSpotlightSource.trending && widget.trendingItems.isEmpty
                        ? t.dashboard.featured
                        : preview.rowTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: colors.onSurface.withValues(alpha: 0.7),
                      fontSize: tv ? 12 * uiScale : 11,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.6,
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
                ClearLogoImage(
                  client: widget.resolveClient(item),
                  logoPath: item.clearLogoPath,
                  width: math.min(
                    infoWidth,
                    tv
                        ? 440 * uiScale
                        : compact
                        ? 320.0
                        : 410.0,
                  ),
                  fallbackWidth: infoWidth,
                  height: tv
                      ? 110 * uiScale
                      : minimal
                      ? 32
                      : compact
                      ? 52
                      : 76,
                  alignment: Alignment.centerLeft,
                  logoToneTarget: colors.onSurface,
                  fallbackBuilder: (context) => Text(
                    title,
                    key: const ValueKey('home_preview_title'),
                    maxLines: tv
                        ? 2
                        : compact
                        ? 1
                        : 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: colors.onSurface,
                      fontSize: tv
                          ? 48 * uiScale
                          : minimal
                          ? 24
                          : compact
                          ? 32
                          : 42,
                      fontWeight: FontWeight.w800,
                      height: 1.05,
                      letterSpacing: -0.8,
                    ),
                  ),
                ),
                if (episode != null && !minimal) ...[
                  const SizedBox(height: 6),
                  Text(
                    [
                      episode,
                      if (!hidden && item.title?.isNotEmpty == true && item.title != item.grandparentTitle) item.title!,
                    ].join(' — '),
                    key: const ValueKey('home_preview_episode'),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: colors.onSurface,
                      fontSize: tv ? 17 * uiScale : 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
                const SizedBox(height: 8),
                Text(
                  [
                    if (minimal && episode != null) episode,
                    metadata,
                    if (remaining != null)
                      remaining < 60
                          ? t.dashboard.timeLeft(minutes: remaining)
                          : t.dashboard.timeLeftHours(hours: remaining ~/ 60, minutes: remaining % 60),
                  ].where((value) => value.isNotEmpty).join('  ·  '),
                  key: const ValueKey('home_preview_metadata'),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: colors.onSurface.withValues(alpha: 0.78), fontSize: tv ? 14 * uiScale : 12),
                ),
                if (!minimal) ...[
                  const SizedBox(height: 10),
                  if (mediaRatingsFor(item).isNotEmpty) ...[
                    InlineRatingBadges(
                      ratings: mediaRatingsFor(item),
                      textStyle: TextStyle(fontSize: tv ? 14 * uiScale : 12, color: colors.onSurface),
                    ),
                    const SizedBox(height: 10),
                  ],
                  Text(
                    hidden
                        ? t.dashboard.spoilerHidden
                        : item.summary?.trim().isNotEmpty == true
                        ? item.summary!
                        : t.dashboard.synopsisUnavailable,
                    key: const ValueKey('home_preview_summary'),
                    maxLines: tv
                        ? 3
                        : compact
                        ? 3
                        : 5,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: colors.onSurface.withValues(alpha: 0.85),
                      fontSize: tv ? 18 * uiScale : 14,
                      height: 1.35,
                    ),
                  ),
                ],
                const SizedBox(height: 14),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FocusableButton(
                      focusNode: _play,
                      borderRadius: 8,
                      onPressed: activate,
                      autoScroll: false,
                      onNavigateUp: widget.onToolbar,
                      onNavigateDown: _returnToShelf,
                      onNavigateLeft: _sidebar,
                      onNavigateRight: playable
                          ? _details.requestFocus
                          : tv && _features.length > 1
                          ? _previousFeature.requestFocus
                          : _returnToShelf,
                      onBack: _sidebar,
                      child: FilledButton.icon(
                        onPressed: activate,
                        style: FilledButton.styleFrom(
                          backgroundColor: colors.onSurface,
                          foregroundColor: colors.surface,
                          textStyle: TextStyle(
                            fontFamily: Theme.of(context).textTheme.labelLarge?.fontFamily,
                            fontSize: 16 * uiScale,
                            fontWeight: FontWeight.w700,
                          ),
                          padding: EdgeInsets.symmetric(horizontal: smallActions ? 16 : 24, vertical: 12),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        icon: AppIcon(playable ? Symbols.play_arrow_rounded : Symbols.info_rounded, fill: 1, size: 20),
                        label: Text(primaryLabel),
                      ),
                    ),
                    if (playable) ...[
                      const SizedBox(width: 12),
                      FocusableButton(
                        focusNode: _details,
                        borderRadius: 8,
                        onPressed: () => widget.onDetails(item),
                        autoScroll: false,
                        onNavigateUp: widget.onToolbar,
                        onNavigateDown: _returnToShelf,
                        onNavigateLeft: _play.requestFocus,
                        onNavigateRight: tv && _features.length > 1 ? _previousFeature.requestFocus : _returnToShelf,
                        onBack: _sidebar,
                        child: smallActions
                            ? IconButton.filledTonal(
                                onPressed: () => widget.onDetails(item),
                                tooltip: t.mediaMenu.viewDetails,
                                icon: const AppIcon(Symbols.info_rounded),
                              )
                            : OutlinedButton.icon(
                                onPressed: () => widget.onDetails(item),
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: colors.onSurface,
                                  textStyle: TextStyle(
                                    fontFamily: Theme.of(context).textTheme.labelLarge?.fontFamily,
                                    fontSize: 16 * uiScale,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                ),
                                icon: const AppIcon(Symbols.info_rounded, size: 18),
                                label: Text(t.mediaMenu.viewDetails),
                              ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Only settled artwork fades. The shared image-paint crossfade keeps the old
/// picture until the new one decodes; focus controls never transition twice.
class _CinematicBackdrop extends StatelessWidget {
  const _CinematicBackdrop({
    required this.item,
    required this.client,
    required this.size,
    required this.base,
    required this.hideSpoilers,
    this.billboard = false,
  });
  final MediaItem? item;
  final MediaServerClient? client;
  final Size size;
  final Color base;
  final bool hideSpoilers;
  final bool billboard;

  @override
  Widget build(BuildContext context) {
    final media = item;
    final protectedEpisode = media != null && media.isEpisode;
    final paths = media == null
        ? const <String>[]
        : protectedEpisode
        ? <String>[
            ...?media.grandparentBackdropPaths,
            ?media.grandparentArtPath,
            ?media.grandparentThumbPath,
            ?media.parentThumbPath,
          ]
        : <String>[
            ...media.heroArtCandidates(containerAspectRatio: size.width / math.max(1, size.height)),
            ?media.artPath,
            ?media.thumbPath,
          ];
    return Stack(
      fit: StackFit.expand,
      children: [
        ColoredBox(color: base),
        CyclingMediaBackdrop(
          key: ValueKey(hideSpoilers),
          imageType: billboard ? ImageType.featureArt : ImageType.art,
          mediaKey: media?.globalKey,
          imagePaths: paths,
          client: client,
          active: false,
          width: size.width,
          height: size.height,
          alignment: Alignment.topRight,
          fallbackColor: base,
          fadeDuration: hideSpoilers
              ? Duration.zero
              : DevicePerformance.reducedDuration(const Duration(milliseconds: 240)),
        ),
        RasterizedGradient(
          gradient: LinearGradient(
            colors: [
              base,
              base.withValues(alpha: billboard ? 0.90 : 0.97),
              base.withValues(alpha: billboard ? 0.18 : 0.45),
              base.withValues(alpha: 0.05),
            ],
            stops: const [0, 0.25, 0.65, 1],
          ),
        ),
        RasterizedGradient(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              base.withValues(alpha: 0.45),
              base.withValues(alpha: 0.05),
              base.withValues(alpha: billboard ? 0.2 : 0.88),
              base,
            ],
            stops: billboard ? const [0, 0.3, 0.65, 1] : const [0, 0.38, 0.65, 1],
          ),
        ),
      ],
    );
  }
}
