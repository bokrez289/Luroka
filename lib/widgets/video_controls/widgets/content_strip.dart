import 'dart:async' show Stream, unawaited;
import '../../../media/ids.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../../focus/dpad_navigator.dart';
import '../../../focus/focusable_wrapper.dart';
import '../../../i18n/strings.g.dart';
import '../../../media/media_item.dart';
import '../../../media/media_item_labels.dart';
import '../../../media/media_item_types.dart';
import '../../../media/media_server_client.dart';
import '../../../mpv/mpv.dart';
import '../../../media/media_source_info.dart';
import '../../../providers/playback_state_provider.dart';
import '../../../services/settings_service.dart';
import '../../../services/download_storage_service.dart';
import '../../../utils/formatters.dart';
import '../../../utils/player_utils.dart';
import '../../../utils/provider_extensions.dart';
import '../../../utils/scroll_utils.dart';
import '../../app_icon.dart';
import '../../clickable_cursor.dart';
import '../../optimized_media_image.dart';
import '../../settings_builder.dart';
import 'media_selector_thumbnail.dart';

/// Horizontal scrollable strip of chapter/queue items shown on swipe-up.
class ContentStrip extends StatefulWidget {
  final Player player;
  final List<MediaChapter> chapters;
  final bool canControl;
  final String? serverId;
  final bool showQueueTab;
  final Function(MediaItem)? onQueueItemSelected;
  final Future<void> Function(Duration position)? onSeekRequested;
  final Function(Duration position)? onSeekCompleted;

  /// Whether to use dpad/focus-based navigation (TV mode).
  /// When true, tabs and preview cards participate in explicit remote navigation.
  final bool useFocusNavigation;

  /// Called when navigating UP from the top-most strip page (back to buttons).
  final VoidCallback? onNavigateUp;

  /// Called on any focus activity (to reset auto-hide timer).
  final VoidCallback? onFocusActivity;

  const ContentStrip({
    super.key,
    required this.player,
    required this.chapters,
    required this.canControl,
    this.serverId,
    this.showQueueTab = false,
    this.onQueueItemSelected,
    this.onSeekRequested,
    this.onSeekCompleted,
    this.useFocusNavigation = false,
    this.onNavigateUp,
    this.onFocusActivity,
  });

  @override
  State<ContentStrip> createState() => ContentStripState();
}

enum _StripTab { chapters, queue }

class ContentStripState extends State<ContentStrip> {
  late _StripTab _activeTab;
  final ScrollController _chapterScrollController = ScrollController();
  final ScrollController _queueScrollController = ScrollController();
  final Map<_StripTab, Object?> _lastAutoScrolled = {};
  final Map<int, GlobalKey> _chapterItemKeys = {};
  final Map<int, GlobalKey> _queueItemKeys = {};
  late Stream<int?> _chapterIndexStream;

  // Focus nodes for focus navigation mode
  final List<FocusNode> _chapterFocusNodes = [];
  final List<FocusNode> _queueFocusNodes = [];
  final _chapterTabFocus = FocusNode(debugLabel: 'ChaptersTab');
  final _queueTabFocus = FocusNode(debugLabel: 'QueueTab');

  bool get _hasChapters => widget.chapters.isNotEmpty;
  bool get _hasQueue => widget.showQueueTab && widget.onQueueItemSelected != null;
  bool get _hasBothTabs => _hasChapters && _hasQueue;

  @override
  void initState() {
    super.initState();
    _activeTab = _hasChapters ? _StripTab.chapters : _StripTab.queue;
    _bindChapterIndexStream();
  }

  @override
  void didUpdateWidget(ContentStrip oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.player, widget.player) || !identical(oldWidget.chapters, widget.chapters)) {
      _bindChapterIndexStream();
    }
    _normalizeActiveTab();
  }

  void _normalizeActiveTab() {
    if (_activeTab == _StripTab.chapters && !_hasChapters && _hasQueue) {
      _activeTab = _StripTab.queue;
      _lastAutoScrolled.remove(_StripTab.queue);
    } else if (_activeTab == _StripTab.queue && !_hasQueue && _hasChapters) {
      _activeTab = _StripTab.chapters;
      _lastAutoScrolled.remove(_StripTab.chapters);
    }
  }

  void _bindChapterIndexStream() {
    if (!_hasChapters) {
      _chapterIndexStream = const Stream<int?>.empty();
      return;
    }

    _chapterIndexStream = widget.player.streams.position
        .map((position) => MediaChapter.indexAtPosition(position, widget.chapters))
        .distinct();
  }

  @override
  void dispose() {
    _chapterTabFocus.dispose();
    _queueTabFocus.dispose();
    _chapterScrollController.dispose();
    _queueScrollController.dispose();
    for (final node in _chapterFocusNodes) {
      node.dispose();
    }
    for (final node in _queueFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  /// Request focus on the current chapter or queue item (called by parent when strip appears).
  void requestInitialFocus() {
    if (_activeTab == _StripTab.chapters && _chapterFocusNodes.isNotEmpty) {
      final currentIndex = MediaChapter.indexAtPosition(widget.player.state.position, widget.chapters);
      final idx = (currentIndex ?? 0).clamp(0, _chapterFocusNodes.length - 1);
      _chapterFocusNodes[idx].requestFocus();
      _scrollToFocusedNode(_chapterFocusNodes[idx]);
    } else if (_activeTab == _StripTab.queue && _queueFocusNodes.isNotEmpty) {
      final currentIndex = _getCurrentQueueIndex();
      final idx = (currentIndex ?? 0).clamp(0, _queueFocusNodes.length - 1);
      _queueFocusNodes[idx].requestFocus();
      _scrollToFocusedNode(_queueFocusNodes[idx]);
    }
  }

  Future<void> _handleChapterTap(Duration position) async {
    if (!widget.canControl) return;
    final clamped = clampSeekPosition(widget.player, position);
    await (widget.onSeekRequested ?? widget.player.seek)(clamped);
    if (mounted) {
      widget.onSeekCompleted?.call(clamped);
    }
  }

  int? _getCurrentQueueIndex() {
    try {
      final playbackState = context.read<PlaybackStateProvider>();
      final items = playbackState.loadedItems;
      final currentItemID = playbackState.currentPlayQueueItemID;
      final idx = items.indexWhere((item) => playbackState.playQueueItemIdFor(item) == currentItemID);
      return idx >= 0 ? idx : null;
    } catch (_) {
      return null;
    }
  }

  void _ensureFocusNodes(List<FocusNode> nodes, int count, String prefix) {
    while (nodes.length < count) {
      nodes.add(FocusNode(debugLabel: '$prefix${nodes.length}'));
    }
    while (nodes.length > count) {
      nodes.removeLast().dispose();
    }
  }

  void _scrollToFocusedNode(FocusNode node) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final context = node.context;
      if (context == null) return;
      Scrollable.ensureVisible(
        context,
        alignment: 0.5,
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeOut,
      );
    });
  }

  void _selectTab(_StripTab tab) {
    setState(() {
      _activeTab = tab;
      _lastAutoScrolled.remove(tab);
    });
  }

  KeyEventResult _handleFocusItemKeyEvent(KeyEvent event, int index, int totalItems, _StripTab page) {
    if (!event.isActionable) return KeyEventResult.ignored;

    final key = event.logicalKey;

    if (key == LogicalKeyboardKey.arrowLeft || key == LogicalKeyboardKey.arrowRight) {
      final nodes = page == _StripTab.chapters ? _chapterFocusNodes : _queueFocusNodes;
      final target = index + (key == LogicalKeyboardKey.arrowLeft ? -1 : 1);
      if (target >= 0 && target < totalItems) {
        nodes[target].requestFocus();
        _scrollToFocusedNode(nodes[target]);
        widget.onFocusActivity?.call();
      }
      return KeyEventResult.handled;
    }

    if (key == LogicalKeyboardKey.arrowUp) {
      (page == _StripTab.chapters ? _chapterTabFocus : _queueTabFocus).requestFocus();
      widget.onFocusActivity?.call();
      return KeyEventResult.handled;
    }

    if (key == LogicalKeyboardKey.arrowDown) {
      if (page == _StripTab.chapters && _hasQueue) {
        // Switch to queue page and focus current queue item
        setState(() {
          _activeTab = _StripTab.queue;
          _lastAutoScrolled.remove(_StripTab.queue);
        });
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && _queueFocusNodes.isNotEmpty) {
            final idx = (_getCurrentQueueIndex() ?? 0).clamp(0, _queueFocusNodes.length - 1);
            _queueFocusNodes[idx].requestFocus();
            _scrollToFocusedNode(_queueFocusNodes[idx]);
          }
        });
        widget.onFocusActivity?.call();
      }
      // On queue page or chapters-only, consume to prevent bubbling
      return KeyEventResult.handled;
    }

    return KeyEventResult.ignored;
  }

  MediaServerClient? _tryGetClient(BuildContext context, ServerId? serverId) {
    return context.tryGetMediaClientForServer(serverId);
  }

  double _itemWidth(bool isTablet) => isTablet ? 228.0 : 156.0;

  GlobalKey _itemKeyFor(Map<int, GlobalKey> keys, int index) {
    return keys.putIfAbsent(index, GlobalKey.new);
  }

  void _trimItemKeys(Map<int, GlobalKey> keys, int count) {
    keys.removeWhere((index, _) => index >= count);
  }

  void _autoScrollTo(
    ScrollController controller,
    Map<int, GlobalKey> keys,
    int index, {
    required bool isTablet,
    required bool Function() isCurrent,
    int attempt = 0,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !isCurrent()) return;

      if (controller.positions.length != 1 || !controller.position.hasContentDimensions) {
        if (attempt < 3) {
          _autoScrollTo(controller, keys, index, isTablet: isTablet, isCurrent: isCurrent, attempt: attempt + 1);
        }
        return;
      }

      scrollListToIndex(
        controller,
        index,
        itemExtent: _itemWidth(isTablet),
        leadingPadding: widget.useFocusNavigation ? 12 : 4,
        animate: false,
      );
      scrollKeyedChildToHorizontalCenter(
        controller,
        _itemKeyFor(keys, index),
        animate: false,
        maxAttempts: 4,
        isCurrent: isCurrent,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_hasChapters && !_hasQueue) return const SizedBox.shrink();

    final isTablet = widget.useFocusNavigation || MediaQuery.sizeOf(context).shortestSide >= 600;
    final stripHeight = isTablet ? 190.0 : 138.0;
    // Add extra height for focus decoration when in focus navigation mode
    final effectiveStripHeight = widget.useFocusNavigation ? stripHeight + 16.0 : stripHeight;

    return SafeArea(
      top: false,
      child: Padding(
        padding: .symmetric(horizontal: widget.useFocusNavigation ? 0 : 16),
        child: Column(
          mainAxisSize: .min,
          children: [
            _buildTabBar(),
            const SizedBox(height: 12),
            SizedBox(
              height: effectiveStripHeight,
              child: _activeTab == _StripTab.chapters ? _buildChapterStrip(isTablet) : _buildQueueStrip(isTablet),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    final bar = Row(
      mainAxisAlignment: .start,
      children: [
        if (_hasChapters) _buildTabLabel(t.videoControls.chapters, _StripTab.chapters),
        if (_hasBothTabs) const SizedBox(width: 8),
        if (_hasQueue) _buildTabLabel(t.videoControls.queue, _StripTab.queue),
        if (widget.useFocusNavigation) ...[
          const Spacer(),
          const AppIcon(Symbols.keyboard_arrow_up_rounded, size: 18, color: Colors.white54),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              t.playerChrome.backToPlayback,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white54, fontSize: 11),
            ),
          ),
        ],
      ],
    );
    return widget.useFocusNavigation ? bar : SingleChildScrollView(scrollDirection: Axis.horizontal, child: bar);
  }

  Widget _buildTabLabel(String label, _StripTab tab) {
    final isActive = _activeTab == tab;
    void activate() {
      _selectTab(tab);
      if (widget.useFocusNavigation) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) requestInitialFocus();
        });
      }
    }

    final button = ClickableCursor(
      child: GestureDetector(
        onTap: activate,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          decoration: BoxDecoration(
            color: isActive ? Colors.white : Colors.white.withValues(alpha: 0.06),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            mainAxisSize: .min,
            children: [
              AppIcon(
                tab == _StripTab.chapters ? Symbols.bookmarks_rounded : Symbols.queue_rounded,
                size: 18,
                color: isActive ? const Color(0xff19150f) : Colors.white60,
              ),
              const SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(
                  color: isActive ? const Color(0xff19150f) : Colors.white70,
                  fontSize: widget.useFocusNavigation ? 13 : 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    if (!widget.useFocusNavigation) return button;
    return FocusableWrapper(
      focusNode: tab == _StripTab.chapters ? _chapterTabFocus : _queueTabFocus,
      borderRadius: 14,
      autoScroll: false,
      semanticLabel: label,
      onSelect: activate,
      onFocusChange: (focused) {
        if (focused) widget.onFocusActivity?.call();
      },
      onKeyEvent: (_, event) {
        if (!event.isActionable) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
          activate();
        } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
          widget.onNavigateUp?.call();
        } else if (event.logicalKey == LogicalKeyboardKey.arrowLeft ||
            event.logicalKey == LogicalKeyboardKey.arrowRight) {
          final next = event.logicalKey == LogicalKeyboardKey.arrowLeft ? _StripTab.chapters : _StripTab.queue;
          if (_hasBothTabs) {
            _selectTab(next);
            (next == _StripTab.chapters ? _chapterTabFocus : _queueTabFocus).requestFocus();
          }
        } else {
          return KeyEventResult.ignored;
        }
        return KeyEventResult.handled;
      },
      child: button,
    );
  }

  /// Horizontal list of strip items: auto-scrolls to [autoScrollIndex] whenever
  /// [autoScrollToken] changes, and wraps items for focus navigation.
  Widget _buildStrip({
    required _StripTab tab,
    required ScrollController controller,
    required Map<int, GlobalKey> keys,
    required List<FocusNode> nodes,
    required String focusPrefix,
    required int itemCount,
    required bool isTablet,
    required int? autoScrollIndex,
    required Object? autoScrollToken,
    required (Widget, VoidCallback?) Function(BuildContext context, int index, Key key) itemBuilder,
  }) {
    _trimItemKeys(keys, itemCount);

    if (autoScrollIndex != null && _lastAutoScrolled[tab] != autoScrollToken) {
      _lastAutoScrolled[tab] = autoScrollToken;
      _autoScrollTo(
        controller,
        keys,
        autoScrollIndex,
        isTablet: isTablet,
        isCurrent: () => _lastAutoScrolled[tab] == autoScrollToken,
      );
    }

    if (widget.useFocusNavigation) {
      _ensureFocusNodes(nodes, itemCount, focusPrefix);
    }

    return ListView.builder(
      controller: controller,
      scrollDirection: Axis.horizontal,
      clipBehavior: widget.useFocusNavigation ? Clip.none : Clip.hardEdge,
      itemCount: itemCount,
      padding: .symmetric(horizontal: widget.useFocusNavigation ? 12 : 4),
      itemBuilder: (context, index) {
        final (item, onTap) = itemBuilder(context, index, _itemKeyFor(keys, index));

        if (!widget.useFocusNavigation) return item;

        return Align(
          alignment: .topCenter,
          child: FocusableWrapper(
            focusNode: nodes[index],
            onSelect: onTap,
            onKeyEvent: (_, event) => _handleFocusItemKeyEvent(event, index, itemCount, tab),
            onFocusChange: (hasFocus) {
              if (hasFocus) widget.onFocusActivity?.call();
            },
            borderRadius: 16,
            autoScroll: false,
            useBackgroundFocus: true,
            child: item,
          ),
        );
      },
    );
  }

  Widget _buildChapterStrip(bool isTablet) {
    return StreamBuilder<int?>(
      stream: _chapterIndexStream,
      initialData: MediaChapter.indexAtPosition(widget.player.state.position, widget.chapters),
      builder: (context, chapterSnapshot) {
        final currentChapterIndex = chapterSnapshot.data;

        return _buildStrip(
          tab: _StripTab.chapters,
          controller: _chapterScrollController,
          keys: _chapterItemKeys,
          nodes: _chapterFocusNodes,
          focusPrefix: 'ChapterFocus',
          itemCount: widget.chapters.length,
          isTablet: isTablet,
          autoScrollIndex: currentChapterIndex,
          autoScrollToken: currentChapterIndex,
          itemBuilder: (context, index, itemKey) {
            final chapter = widget.chapters[index];

            final localThumbPath = widget.serverId != null && chapter.thumb != null
                ? DownloadStorageService.instance.getArtworkPathSync(ServerId(widget.serverId!), chapter.thumb!)
                : null;

            final VoidCallback? onTap = widget.canControl
                ? () => unawaited(_handleChapterTap(chapter.startTime))
                : null;

            return (
              _buildStripItem(
                key: itemKey,
                isCurrent: currentChapterIndex == index,
                isTablet: isTablet,
                thumbnail: chapter.thumb != null
                    ? _buildStripThumbnail(
                        client: _tryGetClient(context, serverIdOrNull(widget.serverId)),
                        imagePath: chapter.thumb,
                        localFilePath: localThumbPath,
                        isTablet: isTablet,
                      )
                    : null,
                title: chapter.label,
                subtitle: formatDurationTimestamp(chapter.startTime),
                onTap: onTap,
              ),
              onTap,
            );
          },
        );
      },
    );
  }

  Widget _buildQueueStrip(bool isTablet) {
    return SettingValueBuilder<bool>(
      pref: SettingsService.hideSpoilers,
      builder: (context, hideSpoilers, _) => Consumer<PlaybackStateProvider>(
        builder: (context, playbackState, _) {
          final items = playbackState.loadedItems;
          if (items.isEmpty) {
            return Center(
              child: Text(t.videoControls.noQueueItems, style: const TextStyle(color: Colors.white60)),
            );
          }
          final currentItemID = playbackState.currentPlayQueueItemID;
          final currentIndex = currentItemID == null
              ? -1
              : items.indexWhere((item) => playbackState.playQueueItemIdFor(item) == currentItemID);

          return _buildStrip(
            tab: _StripTab.queue,
            controller: _queueScrollController,
            keys: _queueItemKeys,
            nodes: _queueFocusNodes,
            focusPrefix: 'QueueFocus',
            itemCount: items.length,
            isTablet: isTablet,
            autoScrollIndex: currentIndex >= 0 ? currentIndex : null,
            autoScrollToken: (currentItemID, currentIndex),
            itemBuilder: (context, index, itemKey) {
              final item = items[index];

              final client = item.serverId != null
                  ? context.tryGetMediaClientForServer(serverIdOrNull(item.serverId))
                  : null;

              void onTap() => widget.onQueueItemSelected?.call(item);

              return (
                _buildStripItem(
                  key: itemKey,
                  isCurrent: playbackState.playQueueItemIdFor(item) == currentItemID,
                  isTablet: isTablet,
                  thumbnail: item.thumbPath != null
                      ? _buildStripThumbnail(client: client, imagePath: item.thumbPath, isTablet: isTablet)
                      : null,
                  blurThumbnail: hideSpoilers && item.shouldHideSpoiler,
                  title: item.title ?? '',
                  subtitle: formatQueueItemSubtitle(item),
                  onTap: onTap,
                ),
                onTap,
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildStripThumbnail({
    required MediaServerClient? client,
    required String? imagePath,
    required bool isTablet,
    String? localFilePath,
  }) {
    return OptimizedMediaImage.thumb(
      client: client,
      imagePath: imagePath,
      localFilePath: localFilePath,
      width: isTablet ? 200.0 : 128.0,
      height: isTablet ? 112.0 : 72.0,
      fit: BoxFit.cover,
      errorWidget: (_, _, _) => const AppIcon(Symbols.image_rounded, fill: 1, color: Colors.white54, size: 34),
    );
  }

  Widget _buildStripItem({
    Key? key,
    required bool isCurrent,
    required Widget? thumbnail,
    required String title,
    required String subtitle,
    required VoidCallback? onTap,
    bool blurThumbnail = false,
    bool isTablet = false,
  }) {
    final itemWidth = isTablet ? 200.0 : 128.0;
    final thumbHeight = isTablet ? 112.0 : 72.0;
    const titleFontSize = 14.0;
    const subtitleFontSize = 12.0;

    final verticalMargin = widget.useFocusNavigation ? 4.0 : 0.0;
    return ClickableCursor(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          key: key,
          width: itemWidth + 16,
          margin: .symmetric(horizontal: 6, vertical: verticalMargin),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isCurrent ? const Color(0x2491baff) : const Color(0x0cffffff),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: isCurrent ? Colors.white : Colors.transparent),
          ),
          child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .start,
            children: [
              MediaSelectorThumbnail(
                width: itemWidth,
                height: thumbHeight,
                thumbnail: thumbnail,
                isCurrent: isCurrent,
                borderColor: Colors.white,
                radius: 10,
                blurThumbnail: blurThumbnail,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: titleFontSize,
                  fontWeight: isCurrent ? FontWeight.w600 : FontWeight.normal,
                ),
                maxLines: 1,
                overflow: .ellipsis,
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: isCurrent ? Colors.white70 : Colors.white60,
                  fontSize: subtitleFontSize,
                  fontWeight: isCurrent ? FontWeight.w500 : FontWeight.normal,
                ),
                maxLines: 1,
                overflow: .ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
