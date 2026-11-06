import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../focus/focusable_wrapper.dart';
import '../media/media_item.dart';
import '../media/media_item_types.dart';
import '../i18n/strings.g.dart';
import '../utils/formatters.dart';
import '../utils/season_labels.dart';
import 'video_controls/widgets/media_selector_thumbnail.dart';
import 'title_page_layout.dart';

/// Artwork-first episode gallery with one focus stop per episode. Paging and
/// context-menu ownership remain with the detail route.
class SeasonEpisodePage extends StatefulWidget {
  const SeasonEpisodePage({
    super.key,
    required this.season,
    required this.episodes,
    required this.onBack,
    required this.onPlay,
    required this.onLoadMore,
    required this.onRetry,
    required this.posterBuilder,
    required this.thumbnailBuilder,
    required this.decorateEpisode,
    required this.onEpisodeMenu,
    required this.loading,
    required this.failed,
    required this.hasMore,
    required this.hideSpoilers,
    this.initialEpisodeId,
    this.marginPercent = 3,
    this.backdrop,
  });
  final MediaItem season;
  final List<MediaItem> episodes;
  final VoidCallback onBack, onRetry, onLoadMore;
  final ValueChanged<MediaItem> onPlay, onEpisodeMenu;
  final Widget Function(Size) posterBuilder;
  final Widget? Function(MediaItem, Size) thumbnailBuilder;
  final Widget Function(MediaItem, Widget) decorateEpisode;
  final bool loading, failed, hasMore, hideSpoilers;
  final String? initialEpisodeId;
  final int marginPercent;
  final Widget? backdrop;
  @override
  State<SeasonEpisodePage> createState() => _SeasonEpisodePageState();
}

class _SeasonEpisodePageState extends State<SeasonEpisodePage> {
  final _scroll = ScrollController();
  final _back = FocusNode(debugLabel: 'season_page_back');
  final _retry = FocusNode(debugLabel: 'season_page_retry');
  final Map<String, FocusNode> _nodes = {};
  int _index = 0;
  int _columns = 3;
  double _rowExtent = 250;
  bool _entered = false;
  int _focusGeneration = 0;
  FocusNode _node(String id) => _nodes.putIfAbsent(id, () => FocusNode(debugLabel: 'season_episode:$id'));

  @override
  void dispose() {
    _focusGeneration++;
    _scroll.dispose();
    _back.dispose();
    _retry.dispose();
    for (final node in _nodes.values) {
      node.dispose();
    }
    super.dispose();
  }

  void _focus(int index) {
    if (index < 0) {
      _back.requestFocus();
      return;
    }
    if (index >= widget.episodes.length) {
      if (widget.failed) {
        _retry.requestFocus();
      } else if (widget.hasMore && !widget.loading) {
        widget.onLoadMore();
      }
      return;
    }
    _index = index;
    final generation = ++_focusGeneration;
    final id = widget.episodes[index].id;
    if (_scroll.hasClients) {
      _scroll.jumpTo(((index ~/ _columns) * _rowExtent).clamp(0.0, _scroll.position.maxScrollExtent));
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && generation == _focusGeneration) _node(id).requestFocus();
    });
    WidgetsBinding.instance.ensureVisualUpdate();
  }

  void _initialFocus() {
    if (_entered || widget.loading && widget.episodes.isEmpty) return;
    _entered = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      if (widget.episodes.isEmpty) {
        (widget.failed ? _retry : _back).requestFocus();
        return;
      }
      final explicit = widget.episodes.indexWhere((item) => item.id == widget.initialEpisodeId);
      final resume = widget.episodes.indexWhere((item) => item.hasActiveProgress && !item.isWatched);
      _focus(
        explicit >= 0
            ? explicit
            : resume >= 0
            ? resume
            : 0,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    _initialFocus();
    final size = MediaQuery.sizeOf(context);
    final layout = TitlePageLayout(size, marginPercent: widget.marginPercent);
    final scale = layout.scale;
    final scheme = Theme.of(context).colorScheme;
    final textFactor = math.max(1.0, MediaQuery.textScalerOf(context).scale(14) / 14);
    return Scaffold(
      body: Stack(
        children: [
          if (widget.backdrop != null) widget.backdrop!,
          Positioned.fill(child: ColoredBox(color: Theme.of(context).scaffoldBackgroundColor.withValues(alpha: 0.96))),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(layout.inset, 12 * scale, layout.inset, 12 * scale),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      FocusableWrapper(
                        focusNode: _back,
                        disableScale: true,
                        onSelect: widget.onBack,
                        onNavigateDown: () => widget.episodes.isEmpty ? _retry.requestFocus() : _focus(_index),
                        onNavigateLeft: () {},
                        onNavigateRight: () {},
                        child: GestureDetector(
                          onTap: widget.onBack,
                          child: Padding(
                            padding: EdgeInsets.all(10 * scale),
                            child: Icon(Icons.arrow_back, size: 24 * scale),
                          ),
                        ),
                      ),
                      SizedBox(width: 12 * scale),
                      Expanded(
                        child: Text(
                          widget.season.parentTitle ?? widget.season.grandparentTitle ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 17 * scale, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16 * scale),
                  Row(
                    children: [
                      Text(
                        seasonLabel(widget.season),
                        key: const ValueKey('season_page_title'),
                        style: TextStyle(fontSize: 24 * scale, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: 14 * scale),
                      Text(
                        t.seriesBrowser.episodeCount(count: widget.season.leafCount ?? widget.episodes.length),
                        style: TextStyle(fontSize: 13 * scale, color: scheme.primary),
                      ),
                      const Spacer(),
                      if (widget.season.year != null)
                        Text('${widget.season.year}', style: TextStyle(color: scheme.onSurfaceVariant)),
                    ],
                  ),
                  SizedBox(height: 18 * scale),
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, bounds) {
                        _columns = bounds.maxWidth < 520 * scale ? 2 : 3;
                        final gap = 20 * scale;
                        final width = (bounds.maxWidth - gap * (_columns - 1)) / _columns;
                        final imageHeight = width * 9 / 16;
                        final extent = imageHeight + 158 * scale * textFactor;
                        _rowExtent = extent + gap;
                        return GridView.builder(
                          controller: _scroll,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: _columns,
                            crossAxisSpacing: gap,
                            mainAxisSpacing: gap,
                            mainAxisExtent: extent,
                          ),
                          itemCount:
                              widget.episodes.length +
                              (widget.loading || widget.failed || widget.episodes.isEmpty ? 1 : 0),
                          itemBuilder: (context, index) {
                            if (index == widget.episodes.length) {
                              if (widget.failed) {
                                return FocusableWrapper(
                                  focusNode: _retry,
                                  onSelect: widget.onRetry,
                                  onNavigateUp: () => widget.episodes.isEmpty
                                      ? _back.requestFocus()
                                      : _focus(widget.episodes.length - 1),
                                  child: ExcludeFocus(
                                    child: TextButton(onPressed: widget.onRetry, child: Text(t.common.retry)),
                                  ),
                                );
                              }
                              if (widget.loading) return const Center(child: CircularProgressIndicator());
                              return Center(child: Text(t.messages.noEpisodesFoundGeneral));
                            }
                            final item = widget.episodes[index];
                            final node = _node(item.id);
                            final hidden = widget.hideSpoilers && item.shouldHideSpoiler;
                            final title = hidden
                                ? t.dashboard.episodeLabel(
                                    season: item.parentIndex ?? '–',
                                    episode: item.index ?? index + 1,
                                  )
                                : '${item.index ?? index + 1}. ${item.title ?? item.displayTitle}';
                            return FocusableWrapper(
                              focusNode: node,
                              disableScale: true,
                              autoScroll: false,
                              enableLongPress: true,
                              semanticLabel: title,
                              onSelect: () => widget.onPlay(item),
                              onLongPress: () => widget.onEpisodeMenu(item),
                              onNavigateUp: () => _focus(index - _columns),
                              onNavigateDown: () => _focus(index + _columns),
                              onNavigateLeft: () => index == 0 ? _back.requestFocus() : _focus(index - 1),
                              onNavigateRight: () {
                                if (index + 1 < widget.episodes.length) _focus(index + 1);
                              },
                              onFocusChange: (focus) {
                                if (!focus) return;
                                _index = index;
                                if (index >= widget.episodes.length - _columns &&
                                    widget.hasMore &&
                                    !widget.loading &&
                                    !widget.failed) {
                                  widget.onLoadMore();
                                }
                              },
                              child: widget.decorateEpisode(
                                item,
                                GestureDetector(
                                  onTap: () => widget.onPlay(item),
                                  child: Container(
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      color: scheme.surface,
                                      borderRadius: BorderRadius.circular(5 * scale),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children: [
                                            MediaSelectorThumbnail(
                                              width: width,
                                              height: imageHeight,
                                              thumbnail: widget.thumbnailBuilder(item, Size(width, imageHeight)),
                                              blurThumbnail: hidden,
                                              isCurrent: false,
                                              borderColor: Colors.transparent,
                                              radius: 0,
                                            ),
                                            if (item.isWatched)
                                              Positioned(
                                                top: 8 * scale,
                                                right: 8 * scale,
                                                child: Icon(
                                                  Icons.check_circle,
                                                  color: scheme.primary,
                                                  size: 20 * scale,
                                                ),
                                              ),
                                            if (item.hasActiveProgress && (item.durationMs ?? 0) > 0)
                                              Positioned(
                                                left: 0,
                                                right: 0,
                                                bottom: 0,
                                                child: LinearProgressIndicator(
                                                  minHeight: 3 * scale,
                                                  value: ((item.viewOffsetMs ?? 0) / item.durationMs!).clamp(0, 1),
                                                ),
                                              ),
                                          ],
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(10 * scale),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  title,
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(fontSize: 15 * scale, fontWeight: FontWeight.w600),
                                                ),
                                                SizedBox(height: 5 * scale),
                                                Text(
                                                  [
                                                    if (item.durationMs != null)
                                                      formatDurationTextual(item.durationMs!),
                                                    if (item.rating != null) '★ ${formatRating(item.rating!)}',
                                                  ].join(' · '),
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                    fontSize: 12 * scale,
                                                    color: scheme.onSurfaceVariant,
                                                  ),
                                                ),
                                                SizedBox(height: 7 * scale),
                                                Flexible(
                                                  child: Text(
                                                    hidden ? t.dashboard.spoilerHidden : item.summary ?? '',
                                                    maxLines: 4,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 13 * scale,
                                                      height: 1.35,
                                                      color: scheme.onSurfaceVariant,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
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
