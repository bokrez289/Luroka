import 'package:flutter/material.dart';
import '../media/ids.dart';
import 'package:luroka/widgets/app_icon.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../focus/focusable_wrapper.dart';
import '../i18n/strings.g.dart';
import '../media/media_item.dart';
import '../media/media_item_types.dart';
import '../media/media_kind.dart';
import '../models/download_models.dart';
import '../utils/dialogs.dart';
import '../utils/global_key_utils.dart';
import '../mixins/unsuppress_focus_mixin.dart';
import 'download_status_icon.dart';
import '../utils/formatters.dart';

class DownloadTreeNode {
  final String key;
  final String title;
  final DownloadNodeType type;
  final double progress; // 0.0-1.0
  final DownloadStatus status;
  final List<DownloadTreeNode> children;
  final MediaItem? metadata;
  final DownloadProgress? downloadProgress;

  const DownloadTreeNode({
    required this.key,
    required this.title,
    required this.type,
    this.progress = 0.0,
    required this.status,
    this.children = const [],
    this.metadata,
    this.downloadProgress,
  });

  /// Check if this node has children
  bool get hasChildren => children.isNotEmpty;

  int get completedChildrenCount {
    return children.where((child) => child.status == DownloadStatus.completed).length;
  }
}

enum DownloadNodeType { show, season, episode, movie, album, track }

/// Hierarchical tree view for downloads
/// Groups TV shows by show -> season -> episode and music by album -> track
/// Movies appear at top level
class DownloadTreeView extends StatefulWidget {
  final Map<String, DownloadProgress> downloads;
  final Map<String, MediaItem> metadata;
  final void Function(String globalKey)? onPause;
  final void Function(String globalKey)? onResume;
  final void Function(String globalKey)? onRetry;

  /// Retries the failed leaves of a container row, in tree order.
  final void Function(List<String> globalKeys)? onRetryAll;
  final void Function(String globalKey)? onCancel;
  final void Function(String globalKey)? onDelete;
  final VoidCallback? onNavigateLeft;
  final VoidCallback? onBack;
  final bool suppressAutoFocus;

  /// A notification target to reveal in the tree, with a serial so tapping
  /// the same notification again also reopens its ancestors.
  final ({String key, int serial})? notificationTarget;

  const DownloadTreeView({
    super.key,
    required this.downloads,
    required this.metadata,
    this.onPause,
    this.onResume,
    this.onRetry,
    this.onRetryAll,
    this.onCancel,
    this.onDelete,
    this.onNavigateLeft,
    this.onBack,
    this.suppressAutoFocus = false,
    this.notificationTarget,
  });

  @override
  State<DownloadTreeView> createState() => _DownloadTreeViewState();
}

class _DownloadTreeViewState extends State<DownloadTreeView> with UnsuppressFocusFirstMixin<DownloadTreeView> {
  final Set<String> _expandedNodes = {};
  final _scroll = ScrollController();
  final _targetRow = GlobalKey();
  String? _priorityKey;
  bool _revealPending = false;

  @override
  void initState() {
    super.initState();
    _setNotificationTarget();
  }

  @override
  void didUpdateWidget(covariant DownloadTreeView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.notificationTarget != widget.notificationTarget) _setNotificationTarget();
  }

  void _setNotificationTarget() {
    _priorityKey = widget.notificationTarget?.key;
    _revealPending = _priorityKey != null;
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  bool _containsTarget(DownloadTreeNode node, String target) =>
      node.key == target || node.children.any((child) => _containsTarget(child, target));

  bool _expandPath(List<DownloadTreeNode> nodes, String target) {
    for (final node in nodes) {
      if (node.key == target) return true;
      if (_expandPath(node.children, target)) {
        _expandedNodes.add(node.key);
        return true;
      }
    }
    return false;
  }

  @override
  String get firstItemFocusDebugLabel => 'DownloadTreeView_firstItem';

  @override
  bool suppressAutoFocusOf(DownloadTreeView widget) => widget.suppressAutoFocus;

  @override
  Widget build(BuildContext context) {
    final tree = _buildTree();
    final target = _priorityKey;
    if (_revealPending && target != null && _expandPath(tree, target)) {
      _revealPending = false;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted || _priorityKey != target) return;
        if (_scroll.hasClients) _scroll.jumpTo(0);
        WidgetsBinding.instance.addPostFrameCallback((_) {
          final targetContext = _targetRow.currentContext;
          if (mounted && _priorityKey == target && targetContext != null) {
            Scrollable.ensureVisible(targetContext, duration: const Duration(milliseconds: 250));
          }
        });
      });
    }
    final flattenedNodes = _flattenTree(tree);

    if (flattenedNodes.isEmpty) {
      return Center(child: Text(t.downloads.noDownloadsTree));
    }

    return ListView.builder(
      controller: _scroll,
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      itemCount: flattenedNodes.length,
      itemBuilder: (context, index) {
        final item = flattenedNodes[index];
        final row = _buildTreeItem(item.node, item.depth, isFirst: index == 0);
        if (item.node.key != _priorityKey) return KeyedSubtree(key: ValueKey(item.node.key), child: row);
        return DecoratedBox(
          key: _targetRow,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(18),
          ),
          child: row,
        );
      },
    );
  }

  List<DownloadTreeNode> _buildTree() {
    final Map<String, List<MapEntry<String, DownloadProgress>>> showGroups = {};
    final Map<String, List<MapEntry<String, DownloadProgress>>> albumGroups = {};
    final List<DownloadTreeNode> movies = [];

    for (final entry in widget.downloads.entries) {
      final globalKey = entry.key;
      final download = entry.value;
      final meta = widget.metadata[globalKey];

      if (meta == null) continue;

      if (meta.isEpisode) {
        final showKey = meta.grandparentId ?? 'unknown';
        showGroups.putIfAbsent(showKey, () => []);
        showGroups[showKey]!.add(entry);
      } else if (meta.kind == MediaKind.track) {
        final albumKey = meta.parentId ?? 'unknown';
        albumGroups.putIfAbsent(albumKey, () => []);
        albumGroups[albumKey]!.add(entry);
      } else if (meta.isMovie) {
        movies.add(
          DownloadTreeNode(
            key: globalKey,
            title: meta.displayTitle,
            type: DownloadNodeType.movie,
            progress: download.progressPercent,
            status: download.status,
            metadata: meta,
            downloadProgress: download,
          ),
        );
      }
    }

    final List<DownloadTreeNode> shows = [];
    for (final showEntry in showGroups.entries) {
      final showKey = showEntry.key;
      final episodes = showEntry.value;

      if (episodes.isEmpty) continue;

      final firstEpisode = widget.metadata[episodes.first.key];
      final showTitle = firstEpisode?.grandparentTitle ?? t.downloads.unknownShow;

      final Map<String, List<MapEntry<String, DownloadProgress>>> seasonGroups = {};
      for (final episode in episodes) {
        final meta = widget.metadata[episode.key];
        if (meta == null) continue;

        final seasonKey = meta.parentId ?? 'unknown';
        seasonGroups.putIfAbsent(seasonKey, () => []);
        seasonGroups[seasonKey]!.add(episode);
      }

      final List<DownloadTreeNode> seasons = [];
      for (final seasonEntry in seasonGroups.entries) {
        final seasonKey = seasonEntry.key;
        final seasonEpisodes = seasonEntry.value;

        if (seasonEpisodes.isEmpty) continue;

        final firstEpisode = widget.metadata[seasonEpisodes.first.key];
        final seasonNumber = firstEpisode?.parentIndex;
        final seasonTitle = firstEpisode?.parentTitle?.isNotEmpty == true
            ? firstEpisode!.parentTitle!
            : seasonNumber != null
            ? t.common.seasonNumber(number: seasonNumber)
            : t.downloads.unknownSeason;

        final List<DownloadTreeNode> episodeNodes = [];
        for (final episodeEntry in seasonEpisodes) {
          final globalKey = episodeEntry.key;
          final download = episodeEntry.value;
          final meta = widget.metadata[globalKey];

          if (meta == null) continue;

          final episodeNumber = meta.index;
          final episodeTitle = episodeNumber != null
              ? t.common.episodeNumberTitle(number: episodeNumber, title: meta.title!)
              : meta.title!;

          episodeNodes.add(
            DownloadTreeNode(
              key: globalKey,
              title: episodeTitle,
              type: DownloadNodeType.episode,
              progress: download.progressPercent,
              status: download.status,
              metadata: meta,
              downloadProgress: download,
            ),
          );
        }

        episodeNodes.sort((a, b) {
          final aIndex = a.metadata?.index ?? 0;
          final bIndex = b.metadata?.index ?? 0;
          return aIndex.compareTo(bIndex);
        });

        final seasonProgress = episodeNodes.isEmpty
            ? 0.0
            : episodeNodes.map((e) => e.progress).reduce((a, b) => a + b) / episodeNodes.length;
        final seasonStatus = determineDownloadAggregateStatus(episodeNodes.map((e) => e.status).toList());

        seasons.add(
          DownloadTreeNode(
            key: '$showKey:$seasonKey',
            title: seasonTitle,
            type: DownloadNodeType.season,
            progress: seasonProgress,
            status: seasonStatus,
            children: episodeNodes,
          ),
        );
      }

      seasons.removeWhere((s) => s.children.isEmpty);

      seasons.sort((a, b) {
        final aSeasonNum = widget.metadata[a.children.first.key]?.parentIndex ?? 0;
        final bSeasonNum = widget.metadata[b.children.first.key]?.parentIndex ?? 0;
        return aSeasonNum.compareTo(bSeasonNum);
      });

      final showProgress = seasons.isEmpty
          ? 0.0
          : seasons.map((s) => s.progress).reduce((a, b) => a + b) / seasons.length;
      final showStatus = determineDownloadAggregateStatus(seasons.map((s) => s.status).toList());

      shows.add(
        DownloadTreeNode(
          key: showKey,
          title: showTitle,
          type: DownloadNodeType.show,
          progress: showProgress,
          status: showStatus,
          children: seasons,
        ),
      );
    }

    final List<DownloadTreeNode> albums = [];
    for (final albumEntry in albumGroups.entries) {
      final albumKey = albumEntry.key;
      final tracks = albumEntry.value;
      if (tracks.isEmpty) continue;

      final firstTrack = widget.metadata[tracks.first.key];
      final albumTitle = firstTrack?.albumTitle ?? t.downloads.unknownAlbum;
      final artistTitle = firstTrack?.albumArtistTitle;
      final albumNodeTitle = artistTitle != null && artistTitle.isNotEmpty ? '$artistTitle - $albumTitle' : albumTitle;

      final List<DownloadTreeNode> trackNodes = [];
      for (final trackEntry in tracks) {
        final globalKey = trackEntry.key;
        final download = trackEntry.value;
        final meta = widget.metadata[globalKey];
        if (meta == null) continue;

        trackNodes.add(
          DownloadTreeNode(
            key: globalKey,
            title: meta.title ?? globalKey,
            type: DownloadNodeType.track,
            progress: download.progressPercent,
            status: download.status,
            metadata: meta,
            downloadProgress: download,
          ),
        );
      }
      if (trackNodes.isEmpty) continue;

      trackNodes.sort((a, b) {
        final byDisc = (a.metadata?.discNumber ?? 1).compareTo(b.metadata?.discNumber ?? 1);
        if (byDisc != 0) return byDisc;
        return (a.metadata?.trackNumber ?? 0).compareTo(b.metadata?.trackNumber ?? 0);
      });

      final albumProgress = trackNodes.map((e) => e.progress).reduce((a, b) => a + b) / trackNodes.length;
      final albumStatus = determineDownloadAggregateStatus(trackNodes.map((e) => e.status).toList());

      albums.add(
        DownloadTreeNode(
          key: albumKey,
          title: albumNodeTitle,
          type: DownloadNodeType.album,
          progress: albumProgress,
          status: albumStatus,
          children: trackNodes,
        ),
      );
    }

    _sortNodesByStatusAndTitle(shows);
    _sortNodesByStatusAndTitle(albums);
    _sortNodesByStatusAndTitle(movies);

    return [...movies, ...shows, ...albums];
  }

  int _compareByStatus(DownloadStatus a, DownloadStatus b) {
    const statusOrder = {
      DownloadStatus.downloading: 0,
      DownloadStatus.queued: 1,
      DownloadStatus.paused: 2,
      DownloadStatus.partial: 3,
      DownloadStatus.completed: 4,
      DownloadStatus.failed: 5,
      DownloadStatus.cancelled: 6,
    };
    return (statusOrder[a] ?? 99).compareTo(statusOrder[b] ?? 99);
  }

  void _sortNodesByStatusAndTitle(List<DownloadTreeNode> nodes) {
    nodes.sort((a, b) {
      final statusCompare = _compareByStatus(a.status, b.status);
      if (statusCompare != 0) return statusCompare;
      return a.title.compareTo(b.title);
    });
  }

  /// Flatten the tree into a list of visible nodes with their depths
  List<_FlatNode> _flattenTree(List<DownloadTreeNode> nodes, [int depth = 0]) {
    final List<_FlatNode> result = [];
    final target = _priorityKey;
    final ordered = target == null
        ? nodes
        : [
            ...nodes.where((node) => _containsTarget(node, target)),
            ...nodes.where((node) => !_containsTarget(node, target)),
          ];
    for (final node in ordered) {
      result.add(_FlatNode(node: node, depth: depth));

      // Add children if node is expanded
      if (_expandedNodes.contains(node.key) && node.hasChildren) {
        result.addAll(_flattenTree(node.children, depth + 1));
      }
    }

    return result;
  }

  void _toggleExpansion(String key) {
    setState(() {
      if (_expandedNodes.contains(key)) {
        _expandedNodes.remove(key);
      } else {
        _expandedNodes.add(key);
      }
    });
  }

  Widget _buildTreeItem(DownloadTreeNode node, int depth, {bool isFirst = false}) {
    return _DownloadTreeItem(
      node: node,
      depth: depth,
      isExpanded: _expandedNodes.contains(node.key),
      onToggleExpansion: () => _toggleExpansion(node.key),
      onPause: widget.onPause,
      onResume: widget.onResume,
      onRetry: widget.onRetry,
      onCancel: widget.onCancel,
      onDelete: widget.onDelete,
      onNavigateLeft: widget.onNavigateLeft,
      onBack: widget.onBack,
      rowFocusNode: isFirst ? firstItemFocusNode : null,
      autofocus: isFirst && !widget.suppressAutoFocus,
      pauseAllChildren: _pauseAllChildren,
      resumeAllChildren: _resumeAllChildren,
      retryAllChildren: widget.onRetryAll == null ? null : _retryAllChildren,
      deleteAllChildren: _deleteAllChildren,
    );
  }

  /// Pause all active (downloading and queued) children of a container node
  void _pauseAllChildren(DownloadTreeNode node) {
    final keys = _leafKeys(
      node,
      where: (leaf) => leaf.status == DownloadStatus.downloading || leaf.status == DownloadStatus.queued,
    );
    for (final key in keys) {
      widget.onPause?.call(key);
    }
  }

  void _resumeAllChildren(DownloadTreeNode node) {
    final keys = _leafKeys(node, where: (leaf) => leaf.status == DownloadStatus.paused);
    for (final key in keys) {
      widget.onResume?.call(key);
    }
  }

  void _retryAllChildren(DownloadTreeNode node) {
    widget.onRetryAll?.call(_leafKeys(node, where: (leaf) => leaf.status == DownloadStatus.failed));
  }

  /// Delete all children of a container node via the container's globalKey
  /// so deleteDownload's transitive show/season path cleans up all maps.
  void _deleteAllChildren(DownloadTreeNode node) {
    final containerKey = resolveDownloadContainerGlobalKey(node, widget.metadata);
    if (containerKey != null) {
      widget.onDelete?.call(containerKey);
      return;
    }

    // Container globalKey unresolvable; fall back to per-leaf delete.
    for (final key in _leafKeys(node)) {
      widget.onDelete?.call(key);
    }
  }

  /// Get the keys of every leaf below a container node, in tree order.
  /// [where] filters which leaves are collected; unset collects all of them.
  List<String> _leafKeys(DownloadTreeNode node, {bool Function(DownloadTreeNode leaf)? where}) {
    final List<String> keys = [];
    for (final child in node.children) {
      if (child.hasChildren) {
        keys.addAll(_leafKeys(child, where: where));
      } else if (where == null || where(child)) {
        keys.add(child.key);
      }
    }
    return keys;
  }
}

/// Tree-node keys for shows/seasons aren't provider globalKeys; reconstruct
/// from any leaf episode's serverId + grandparentId/parentId.
@visibleForTesting
String? resolveDownloadContainerGlobalKey(DownloadTreeNode node, Map<String, MediaItem> metadata) {
  final firstLeafKey = _firstLeafKey(node);
  if (firstLeafKey == null) return null;
  final firstLeafMeta = metadata[firstLeafKey];
  final serverId = firstLeafMeta?.serverId;
  if (serverId == null) return null;
  switch (node.type) {
    case DownloadNodeType.show:
      final showRatingKey = firstLeafMeta!.grandparentId;
      if (showRatingKey == null) return null;
      return buildGlobalKey(ServerId(serverId), showRatingKey);
    case DownloadNodeType.season:
    case DownloadNodeType.album:
      final parentRatingKey = firstLeafMeta!.parentId;
      if (parentRatingKey == null) return null;
      return buildGlobalKey(ServerId(serverId), parentRatingKey);
    case DownloadNodeType.episode:
    case DownloadNodeType.movie:
    case DownloadNodeType.track:
      return null;
  }
}

/// Reduce child statuses to a container status, covering every
/// [DownloadStatus] value explicitly.
///
/// Active states take precedence (downloading > queued > paused > failed);
/// among purely terminal children, all-cancelled stays cancelled, all-completed
/// stays completed, and any other mix — completed next to cancelled, or a
/// child that is itself partial — is partial.
@visibleForTesting
DownloadStatus determineDownloadAggregateStatus(List<DownloadStatus> statuses) {
  if (statuses.isEmpty) return DownloadStatus.queued;

  if (statuses.any((s) => s == DownloadStatus.downloading)) {
    return DownloadStatus.downloading;
  }
  if (statuses.any((s) => s == DownloadStatus.queued)) {
    return DownloadStatus.queued;
  }
  if (statuses.any((s) => s == DownloadStatus.paused)) {
    return DownloadStatus.paused;
  }
  if (statuses.any((s) => s == DownloadStatus.failed)) {
    return DownloadStatus.failed;
  }

  // Only terminal outcomes remain: completed, cancelled, partial.
  if (statuses.every((s) => s == DownloadStatus.cancelled)) {
    return DownloadStatus.cancelled;
  }
  if (statuses.every((s) => s == DownloadStatus.completed)) {
    return DownloadStatus.completed;
  }
  return DownloadStatus.partial;
}

String? _firstLeafKey(DownloadTreeNode node) {
  for (final child in node.children) {
    if (child.hasChildren) {
      final result = _firstLeafKey(child);
      if (result != null) return result;
    } else {
      return child.key;
    }
  }
  return null;
}

/// Whether any leaf below a container node failed. The container's aggregate
/// status hides a failure next to an active or paused sibling.
bool _hasFailedLeaf(DownloadTreeNode node) =>
    node.children.any((child) => child.hasChildren ? _hasFailedLeaf(child) : child.status == DownloadStatus.failed);

class _FlatNode {
  final DownloadTreeNode node;
  final int depth;

  const _FlatNode({required this.node, required this.depth});
}

/// A single action button of a tree row: the guards that decide which actions
/// exist live in one place ([_DownloadTreeItemState._actions]), so the focus
/// node count and the rendered buttons can never disagree.
typedef _RowAction = ({IconData icon, String tooltip, VoidCallback onPressed});

/// A single tree item with focusable row content and action buttons
class _DownloadTreeItem extends StatefulWidget {
  final DownloadTreeNode node;
  final int depth;
  final bool isExpanded;
  final VoidCallback onToggleExpansion;
  final void Function(String globalKey)? onPause;
  final void Function(String globalKey)? onResume;
  final void Function(String globalKey)? onRetry;
  final void Function(String globalKey)? onCancel;
  final void Function(String globalKey)? onDelete;
  final VoidCallback? onNavigateLeft;
  final VoidCallback? onBack;
  final FocusNode? rowFocusNode;
  final bool autofocus;
  final void Function(DownloadTreeNode) pauseAllChildren;
  final void Function(DownloadTreeNode) resumeAllChildren;
  final void Function(DownloadTreeNode)? retryAllChildren;
  final void Function(DownloadTreeNode) deleteAllChildren;

  const _DownloadTreeItem({
    required this.node,
    required this.depth,
    required this.isExpanded,
    required this.onToggleExpansion,
    this.onPause,
    this.onResume,
    this.onRetry,
    this.onCancel,
    this.onDelete,
    this.onNavigateLeft,
    this.onBack,
    this.rowFocusNode,
    this.autofocus = false,
    required this.pauseAllChildren,
    required this.resumeAllChildren,
    this.retryAllChildren,
    required this.deleteAllChildren,
  });

  @override
  State<_DownloadTreeItem> createState() => _DownloadTreeItemState();
}

class _DownloadTreeItemState extends State<_DownloadTreeItem> {
  /// Treat downloading items with no progress/speed as effectively queued
  /// (they're waiting in background_downloader's HoldingQueue).
  DownloadStatus get _effectiveStatus {
    if (widget.node.status == DownloadStatus.downloading &&
        widget.node.progress == 0 &&
        (widget.node.downloadProgress?.speed ?? 0) == 0) {
      return DownloadStatus.queued;
    }
    return widget.node.status;
  }

  FocusNode? _ownedRowFocusNode;
  final List<FocusNode> _buttonFocusNodes = [];

  FocusNode get _rowFocusNode => widget.rowFocusNode ?? _ownedRowFocusNode!;

  @override
  void initState() {
    super.initState();
    _initRowFocusNode();
    _initButtonFocusNodes();
  }

  @override
  void didUpdateWidget(_DownloadTreeItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Reinitialize focus nodes if action count changed
    if (_actions().length != _buttonFocusNodes.length) {
      _disposeButtonFocusNodes();
      _initButtonFocusNodes();
    }
  }

  void _initRowFocusNode() {
    if (widget.rowFocusNode == null) {
      _ownedRowFocusNode = FocusNode(debugLabel: 'download_row_${widget.node.key}');
    }
  }

  void _initButtonFocusNodes() {
    final actionCount = _actions().length;
    for (int i = 0; i < actionCount; i++) {
      _buttonFocusNodes.add(FocusNode(debugLabel: 'download_action_$i'));
    }
  }

  void _disposeButtonFocusNodes() {
    for (final node in _buttonFocusNodes) {
      node.dispose();
    }
    _buttonFocusNodes.clear();
  }

  @override
  void dispose() {
    _ownedRowFocusNode?.dispose();
    _disposeButtonFocusNodes();
    super.dispose();
  }

  void _focusFirstButton() {
    if (_buttonFocusNodes.isNotEmpty) {
      _buttonFocusNodes.first.requestFocus();
    }
  }

  void _focusRow() {
    _rowFocusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final canExpand = widget.node.hasChildren;
    final actions = _actions();

    return Padding(
      padding: EdgeInsets.only(left: widget.depth * 12.0, bottom: 10),
      child: FocusableWrapper(
        focusNode: _rowFocusNode,
        autofocus: widget.autofocus,
        onSelect: canExpand ? widget.onToggleExpansion : null,
        onNavigateLeft: widget.onNavigateLeft,
        onNavigateRight: actions.isNotEmpty ? _focusFirstButton : null,
        onBack: widget.onBack,
        borderRadius: 18.0,
        disableScale: true,
        useBackgroundFocus: false,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: canExpand ? widget.onToggleExpansion : null,
          child: Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerLow,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: theme.colorScheme.outlineVariant.withValues(alpha: .5)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: LayoutBuilder(
              builder: (context, bounds) {
                final buttons = Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [for (int i = 0; i < actions.length; i++) _buildActionButton(actions[i], i)],
                );
                if (bounds.maxWidth < 520) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildRowContent(theme, canExpand),
                      if (actions.isNotEmpty) Align(alignment: AlignmentDirectional.centerEnd, child: buttons),
                    ],
                  );
                }
                return Row(
                  children: [
                    Expanded(child: _buildRowContent(theme, canExpand)),
                    if (actions.isNotEmpty) ...[const SizedBox(width: 16), buttons],
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRowContent(ThemeData theme, bool canExpand) {
    return Row(
      children: [
        if (canExpand)
          AppIcon(widget.isExpanded ? Symbols.expand_more_rounded : Symbols.chevron_right_rounded, fill: 1, size: 20),
        const SizedBox(width: 8),
        Container(
          width: 48,
          height: 64,
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer.withValues(alpha: .6),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(child: DownloadStatusIcon(status: _effectiveStatus, size: 28)),
        ),

        const SizedBox(width: 12),

        Expanded(
          child: Column(
            crossAxisAlignment: .start,
            mainAxisSize: .min,
            children: [
              Text(
                widget.node.title,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: canExpand ? FontWeight.w600 : FontWeight.normal,
                ),
                maxLines: 2,
                overflow: .ellipsis,
              ),

              if (canExpand) ...[
                const SizedBox(height: 4),
                Text(
                  _getNodeSummary(),
                  style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurface.withValues(alpha: 0.6)),
                ),
              ],

              // Progress bar for active downloads
              if (_effectiveStatus == DownloadStatus.downloading || _effectiveStatus == DownloadStatus.paused) ...[
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  value: widget.node.progress.clamp(0, 1),
                  minHeight: 6,
                  borderRadius: BorderRadius.circular(6),
                  backgroundColor: theme.colorScheme.surfaceContainerHighest,
                ),
                if (widget.node.downloadProgress == null) ...[
                  const SizedBox(height: 6),
                  Text('${(widget.node.progress * 100).clamp(0, 100).round()}%', style: theme.textTheme.labelLarge),
                ],
                if (widget.node.downloadProgress != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    '${(widget.node.progress * 100).clamp(0, 100).toStringAsFixed(0)}%'
                    '${_effectiveStatus == DownloadStatus.downloading && widget.node.downloadProgress!.speed > 0 ? ' · ${widget.node.downloadProgress!.speedFormatted}' : ''}'
                    '${widget.node.downloadProgress!.totalBytes > 0 ? ' · ${ByteFormatter.formatBytes(widget.node.downloadProgress!.downloadedBytes)} / ${ByteFormatter.formatBytes(widget.node.downloadProgress!.totalBytes)}' : ''}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                    ),
                  ),
                ],
              ],

              // Queued label
              if (_effectiveStatus == DownloadStatus.queued) ...[
                const SizedBox(height: 4),
                Text(
                  t.downloads.downloadQueued,
                  style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurface.withValues(alpha: 0.5)),
                ),
              ],

              // Error message for failed downloads
              if (_effectiveStatus == DownloadStatus.failed && widget.node.downloadProgress?.errorMessage != null) ...[
                const SizedBox(height: 4),
                Text(
                  widget.node.downloadProgress!.errorMessage!,
                  style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.error),
                  maxLines: 2,
                  overflow: .ellipsis,
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }

  String _getNodeSummary() {
    final total = widget.node.children.length;
    final completed = widget.node.completedChildrenCount;
    return t.downloads.completedOfTotal(completed: completed, total: total);
  }

  /// The actions this row offers, in render order. Single source of truth:
  /// both the button widgets and the focus nodes sizing come from this list,
  /// so they cannot drift apart. Uses the raw node status, not
  /// [_effectiveStatus] (which only remaps the row content).
  List<_RowAction> _actions() {
    final status = widget.node.status;
    final isContainer =
        widget.node.type == DownloadNodeType.show ||
        widget.node.type == DownloadNodeType.season ||
        widget.node.type == DownloadNodeType.album;
    final actions = <_RowAction>[];

    if (isContainer) {
      // Pause all button
      if ((status == DownloadStatus.downloading || status == DownloadStatus.queued) && widget.onPause != null) {
        actions.add((
          icon: Symbols.pause_rounded,
          tooltip: t.downloads.pauseAll,
          onPressed: () => widget.pauseAllChildren(widget.node),
        ));
      }

      // Resume all button
      if (status == DownloadStatus.paused && widget.onResume != null) {
        actions.add((
          icon: Symbols.play_arrow_rounded,
          tooltip: t.downloads.resumeAll,
          onPressed: () => widget.resumeAllChildren(widget.node),
        ));
      }

      // Retry all button; a failed leaf can sit under an active container
      final retryAllChildren = widget.retryAllChildren;
      if (retryAllChildren != null && _hasFailedLeaf(widget.node)) {
        actions.add((
          icon: Symbols.refresh_rounded,
          tooltip: t.downloads.retryAll,
          onPressed: () => retryAllChildren(widget.node),
        ));
      }

      // Delete all button
      if (widget.onDelete != null) {
        actions.add((
          icon: Symbols.delete_sweep_rounded,
          tooltip: t.downloads.deleteAll,
          onPressed: () async {
            if (await _confirmDelete()) widget.deleteAllChildren(widget.node);
          },
        ));
      }

      return actions;
    }

    final globalKey = widget.node.key;

    // Pause button for downloading items
    if (status == DownloadStatus.downloading && widget.onPause != null) {
      actions.add((icon: Symbols.pause_rounded, tooltip: t.common.pause, onPressed: () => widget.onPause!(globalKey)));
    }

    // Resume button for paused items
    if (status == DownloadStatus.paused && widget.onResume != null) {
      actions.add((
        icon: Symbols.play_arrow_rounded,
        tooltip: t.common.resume,
        onPressed: () => widget.onResume!(globalKey),
      ));
    }

    // Cancel button for downloading/queued items
    if ((status == DownloadStatus.downloading || status == DownloadStatus.queued) && widget.onCancel != null) {
      actions.add((
        icon: Symbols.close_rounded,
        tooltip: t.common.cancel,
        onPressed: () => widget.onCancel!(globalKey),
      ));
    }

    // Retry button for failed items
    if (status == DownloadStatus.failed && widget.onRetry != null) {
      actions.add((
        icon: Symbols.refresh_rounded,
        tooltip: t.downloads.retryDownload,
        onPressed: () => widget.onRetry!(globalKey),
      ));
    }

    // Delete button for completed/failed/cancelled items
    if ((status == DownloadStatus.completed || status == DownloadStatus.failed || status == DownloadStatus.cancelled) &&
        widget.onDelete != null) {
      actions.add((
        icon: Symbols.delete_rounded,
        tooltip: t.common.delete,
        onPressed: () async {
          if (await _confirmDelete()) widget.onDelete!(globalKey);
        },
      ));
    }

    return actions;
  }

  Future<bool> _confirmDelete() {
    return showDeleteConfirmation(
      context,
      title: t.downloads.deleteDownload,
      message: t.downloads.deleteConfirm(title: widget.node.title),
    );
  }

  Widget _buildActionButton(_RowAction action, int buttonIndex) {
    final isFirst = buttonIndex == 0;
    final isLast = buttonIndex == _buttonFocusNodes.length - 1;

    return FocusableWrapper(
      focusNode: _buttonFocusNodes[buttonIndex],
      onSelect: action.onPressed,
      onNavigateLeft: isFirst ? _focusRow : () => _buttonFocusNodes[buttonIndex - 1].requestFocus(),
      onNavigateRight: isLast ? null : () => _buttonFocusNodes[buttonIndex + 1].requestFocus(),
      onBack: widget.onBack,
      borderRadius: 20.0,
      disableScale: true,
      useBackgroundFocus: true,
      autoScroll: false,
      child: Tooltip(
        message: action.tooltip,
        child: GestureDetector(
          onTap: action.onPressed,
          child: Padding(padding: const EdgeInsets.all(8.0), child: AppIcon(action.icon, fill: 1, size: 20)),
        ),
      ),
    );
  }
}
