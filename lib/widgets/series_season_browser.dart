import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../focus/card_focus_scope.dart';
import '../focus/focusable_wrapper.dart';
import '../i18n/strings.g.dart';
import '../media/media_item.dart';
import '../utils/season_labels.dart';

/// The series page's two-level navigation: browse season artwork first, then
/// enter its dedicated page. Highlighted seasons drive the inline episode shelf.
class SeriesSeasonBrowser extends StatefulWidget {
  const SeriesSeasonBrowser({
    super.key,
    required this.seasons,
    required this.selectedId,
    required this.scale,
    required this.onActivate,
    required this.onNavigateUp,
    required this.onFocus,
    required this.posterBuilder,
    required this.decorateSeason,
    required this.onSeasonMenu,
    required this.episodeCount,
    this.loading = false,
    this.onBrowseEpisodes,
    this.onHighlighted,
  });
  final List<MediaItem> seasons;
  final String selectedId;
  final double scale;
  final bool loading;
  final ValueChanged<MediaItem> onActivate;
  final ValueChanged<MediaItem>? onBrowseEpisodes;
  final ValueChanged<MediaItem>? onHighlighted;
  final VoidCallback onNavigateUp;
  final VoidCallback onFocus;
  final Widget Function(MediaItem, Size) posterBuilder;
  final Widget Function(MediaItem, Widget) decorateSeason;
  final ValueChanged<MediaItem> onSeasonMenu;
  final int? Function(MediaItem) episodeCount;

  static double textFactor(BuildContext context) => math.max(1, MediaQuery.textScalerOf(context).scale(14) / 14);
  static double infoStart(BuildContext context, double scale) => (76 * textFactor(context) + 215) * scale;
  static double heightFor(BuildContext context, double scale) =>
      infoStart(context, scale) + (42 * textFactor(context) + 34 * textFactor(context) + 8) * scale;

  @override
  State<SeriesSeasonBrowser> createState() => SeriesSeasonBrowserState();
}

class SeriesSeasonBrowserState extends State<SeriesSeasonBrowser> {
  final _scroll = ScrollController();
  final Map<String, FocusNode> _nodes = {};
  String? _previewId;
  double get _extent => 150 * widget.scale;
  FocusNode _node(String id) => _nodes.putIfAbsent(id, () => FocusNode(debugLabel: 'title_season:$id'));
  int get _selectedIndex => math.max(0, widget.seasons.indexWhere((s) => s.id == widget.selectedId));
  int get _previewIndex {
    final index = widget.seasons.indexWhere((s) => s.id == _previewId);
    return index < 0 ? _selectedIndex : index;
  }

  @override
  void didUpdateWidget(SeriesSeasonBrowser oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.seasons.every((s) => s.id != _previewId)) _previewId = widget.selectedId;
  }

  void requestFocus() => _focusAt(_selectedIndex);

  void _focusAt(int index) {
    if (widget.seasons.isEmpty || index < 0 || index >= widget.seasons.length) return;
    final id = widget.seasons[index].id;
    setState(() => _previewId = id);
    widget.onFocus();
    widget.onHighlighted?.call(widget.seasons[index]);
    if (_scroll.hasClients) {
      final target = (index * _extent - (_scroll.position.viewportDimension - _extent) / 2).clamp(
        0.0,
        _scroll.position.maxScrollExtent,
      );
      // Reveal before requesting a lazy item's node. Rapid key repeats advance
      // the preview index even while the next card is not mounted yet.
      _scroll.jumpTo(target);
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && _previewId == id) _node(id).requestFocus();
    });
    WidgetsBinding.instance.ensureVisualUpdate();
  }

  @override
  void dispose() {
    _scroll.dispose();
    for (final node in _nodes.values) {
      node.dispose();
    }
    super.dispose();
  }

  String _count(MediaItem season) {
    final count = widget.episodeCount(season);
    return count == null
        ? ''
        : count == 1
        ? t.seriesBrowser.oneEpisode
        : t.seriesBrowser.episodeCount(count: count);
  }

  Widget _seasonCard(MediaItem season) {
    final scale = widget.scale;
    final selected = season.id == widget.selectedId;
    final count = _count(season);
    final total = widget.episodeCount(season) ?? 0;
    final watched = season.viewedLeafCount ?? (season.isWatched ? total : 0);
    return FocusableWrapper(
      key: ValueKey(season.id),
      focusNode: _node(season.id),
      disableScale: true,
      delegateFocusBorder: true,
      autoScroll: false,
      checked: selected,
      enableLongPress: true,
      semanticLabel: [seasonLabel(season), count].where((s) => s.isNotEmpty).join(', '),
      onSelect: () => widget.onActivate(widget.seasons[_previewIndex]),
      onNavigateDown: () => (widget.onBrowseEpisodes ?? widget.onActivate)(widget.seasons[_previewIndex]),
      onNavigateUp: widget.onNavigateUp,
      onNavigateLeft: () => _focusAt(_previewIndex - 1),
      onNavigateRight: () => _focusAt(_previewIndex + 1),
      onLongPress: () => widget.onSeasonMenu(season),
      onFocusChange: (focused) {
        if (focused) {
          setState(() => _previewId = season.id);
          widget.onFocus();
          widget.onHighlighted?.call(season);
        }
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() => _previewId = season.id);
          widget.onHighlighted?.call(season);
        },
        child: widget.decorateSeason(
          season,
          GestureDetector(
            onTap: () {
              setState(() => _previewId = season.id);
              widget.onActivate(season);
            },
            child: Builder(
              builder: (context) {
                final focus = CardFocusScope.maybeOf(context) ?? false;
                final scheme = Theme.of(context).colorScheme;
                return Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: selected ? scheme.surfaceContainerHigh : scheme.surface,
                    borderRadius: BorderRadius.circular(5 * scale),
                    border: Border.all(
                      width: 2 * scale,
                      color: focus
                          ? scheme.onSurface
                          : selected
                          ? scheme.primary
                          : scheme.outlineVariant,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        height: 195 * scale,
                        child: widget.posterBuilder(season, Size(130 * scale, 195 * scale)),
                      ),
                      Positioned(
                        top: 195 * scale,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: DecoratedBox(decoration: BoxDecoration(color: scheme.surface)),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8 * scale, 197 * scale, 8 * scale, 4 * scale),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              seasonLabel(season),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 13 * scale, height: 1.1, fontWeight: FontWeight.w600),
                            ),
                            if (count.isNotEmpty) ...[
                              SizedBox(height: 3 * scale),
                              Text(
                                count,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 11 * scale, height: 1.1, color: scheme.onSurfaceVariant),
                              ),
                            ],
                          ],
                        ),
                      ),
                      if (selected)
                        Positioned(
                          top: 6 * scale,
                          right: 6 * scale,
                          child: Icon(Icons.check_circle, size: 16 * scale, color: scheme.primary),
                        ),
                      if (total > 0 && watched > 0)
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: LinearProgressIndicator(
                            value: (watched / total).clamp(0.0, 1.0),
                            minHeight: 3 * scale,
                            backgroundColor: scheme.outlineVariant,
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.seasons.isEmpty) return const SizedBox.shrink();
    final scale = widget.scale;
    final factor = SeriesSeasonBrowser.textFactor(context);
    final season = widget.seasons[_previewIndex];
    final selected = widget.seasons[_selectedIndex];
    final scheme = Theme.of(context).colorScheme;
    return SizedBox(
      height: SeriesSeasonBrowser.heightFor(context, scale),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 26 * scale * factor,
            child: Text(
              t.libraries.groupings.seasons,
              style: TextStyle(fontSize: 22 * scale, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 8 * scale),
          SizedBox(
            height: (195 + 50 * factor) * scale,
            child: ListView.separated(
              controller: _scroll,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(right: 32 * scale),
              itemCount: widget.seasons.length,
              separatorBuilder: (_, _) => SizedBox(width: 20 * scale),
              itemBuilder: (context, index) => SizedBox(width: 130 * scale, child: _seasonCard(widget.seasons[index])),
            ),
          ),
          SizedBox(height: 12 * scale),
          SizedBox(
            height: 42 * scale * factor,
            child: Container(
              margin: EdgeInsets.only(right: 32 * scale),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: scheme.surface, borderRadius: BorderRadius.circular(10 * scale)),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12 * scale, vertical: 4 * scale),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                [
                                  seasonLabel(season),
                                  if (season.year != null) '${season.year}',
                                  _count(season),
                                  if ((season.viewedLeafCount ?? 0) > 0)
                                    t.seriesBrowser.watchedCount(count: season.viewedLeafCount!),
                                ].where((s) => s.isNotEmpty).join(' · '),
                                key: const ValueKey('series_season_heading'),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 13 * scale, color: scheme.onSurfaceVariant),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8 * scale),
          SizedBox(
            height: 34 * scale * factor,
            child: Padding(
              padding: EdgeInsets.only(right: 32 * scale),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      t.libraries.groupings.episodes,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 19 * scale, fontWeight: FontWeight.w600),
                    ),
                  ),
                  if (_count(selected).isNotEmpty) ...[
                    Text(
                      _count(selected),
                      style: TextStyle(fontSize: 12 * scale, color: scheme.onSurfaceVariant),
                    ),
                    SizedBox(width: 16 * scale),
                  ],
                  if (widget.loading)
                    SizedBox(
                      width: 16 * scale,
                      height: 16 * scale,
                      child: const CircularProgressIndicator(strokeWidth: 2),
                    )
                  else
                    Flexible(
                      child: Text(
                        t.seriesBrowser.enterHint,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 11 * scale, color: scheme.onSurfaceVariant),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
