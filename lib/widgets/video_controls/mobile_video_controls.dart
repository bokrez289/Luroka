import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../media/media_item.dart';
import '../../mpv/mpv.dart';
import '../../models/livetv_capture_buffer.dart';
import '../../media/media_source_info.dart';
import '../../services/scrub_preview_source.dart';
import '../../utils/desktop_window_padding.dart';
import '../../i18n/strings.g.dart';
import 'player_chrome_controller.dart';
import 'widgets/circular_control_button.dart';
import 'widgets/content_strip.dart';
import 'widgets/content_strip_panel.dart';
import 'widgets/first_frame_guard.dart';
import 'widgets/play_pause_stream_builder.dart';
import 'widgets/live_timeline_bar.dart';
import 'widgets/player_chrome_panel.dart';
import 'widgets/video_timeline_bar.dart';

/// Luroka mobile playback console over the existing player/chapter pipeline.
///
/// Displays a full-screen overlay with:
/// - Top bar: Back button, title, and track/chapter controls
/// - Center: Large playback controls (seek backward, play/pause, seek forward)
/// - Bottom bar: Timeline slider with chapter markers and timestamps
///
/// When chapters or queue are available, the user can swipe up on the bottom
/// area to slide a content strip into view. The playback controls and timeline
/// fade out while the strip slides up — only the top bar stays fixed.
class MobileVideoControls extends StatefulWidget {
  final Player player;
  final MediaItem metadata;
  final List<MediaChapter> chapters;
  final bool chaptersLoaded;
  final bool showChapterMarkersOnTimeline;
  final int seekTimeSmall;
  final Widget trackChapterControls;
  final Function(Duration) onSeek;
  final Function(Duration) onSeekEnd;
  final VoidCallback? onScrubStart;
  final VoidCallback? onScrubEnd;
  final Future<void> Function(Duration position)? onSeekRequested;
  final Function(Duration)? onSeekCompleted;
  final VoidCallback onPlayPause;
  final VoidCallback? onCancelAutoHide;
  final VoidCallback? onStartAutoHide;
  final VoidCallback? onBack;
  final VoidCallback? onNext;
  final VoidCallback? onPrevious;
  final VoidCallback? onPictureInPicture;

  /// Whether the user can control playback (false in host-only mode for non-host).
  final bool canControl;

  /// Notifier for whether first video frame has rendered (shows loading state when false).
  final ValueNotifier<bool>? hasFirstFrame;

  /// Optional callback that returns thumbnail image bytes for a given timestamp.
  final ScrubFrame? Function(Duration time)? thumbnailDataBuilder;

  /// Whether this is a live TV stream
  final bool isLive;

  final String? liveChannelName;

  // Live TV time-shift
  final CaptureBuffer? captureBuffer;
  final bool isAtLiveEdge;
  final int Function(Duration position)? liveEpochForPosition;
  final ValueChanged<int>? onLiveSeek;

  /// Server ID for chapter thumbnails in the content strip
  final String? serverId;

  final bool showQueueTab;

  /// Callback when a queue item is selected from the content strip
  final Function(MediaItem)? onQueueItemSelected;

  /// Shared controller for chrome visibility (used to reset strip on hide)
  final PlayerChromeController? chromeController;

  /// Called when the content strip visibility changes
  final ValueChanged<bool>? onStripVisibilityChanged;

  /// Returns true when a global touch position belongs to the parent edge-adjustment zone.
  final bool Function(Offset globalPosition)? isInEdgeAdjustmentZone;

  const MobileVideoControls({
    super.key,
    required this.player,
    required this.metadata,
    required this.chapters,
    required this.chaptersLoaded,
    this.showChapterMarkersOnTimeline = true,
    required this.seekTimeSmall,
    required this.trackChapterControls,
    required this.onSeek,
    required this.onSeekEnd,
    this.onScrubStart,
    this.onScrubEnd,
    required this.onPlayPause,
    this.onSeekRequested,
    this.onSeekCompleted,
    this.onCancelAutoHide,
    this.onStartAutoHide,
    this.onBack,
    this.onNext,
    this.onPrevious,
    this.onPictureInPicture,
    this.canControl = true,
    this.hasFirstFrame,
    this.thumbnailDataBuilder,
    this.isLive = false,
    this.liveChannelName,
    this.captureBuffer,
    this.isAtLiveEdge = true,
    this.liveEpochForPosition,
    this.onLiveSeek,
    this.serverId,
    this.showQueueTab = false,
    this.onQueueItemSelected,
    this.chromeController,
    this.onStripVisibilityChanged,
    this.isInEdgeAdjustmentZone,
  });

  @override
  State<MobileVideoControls> createState() => _MobileVideoControlsState();
}

class _MobileVideoControlsState extends State<MobileVideoControls> with SingleTickerProviderStateMixin {
  late final AnimationController _stripAnim;
  bool _stripVisible = false;
  late bool _lastControlsVisible;
  bool _stripDragEnabled = true;
  bool _toolsExpanded = false;

  /// Drag distance (in pixels) required to fully reveal the strip.
  static const _dragExtent = 150.0;

  bool get _hasStripContent =>
      widget.chapters.isNotEmpty || (widget.showQueueTab && widget.onQueueItemSelected != null);

  @override
  void initState() {
    super.initState();
    _stripAnim = AnimationController(vsync: this, duration: const Duration(milliseconds: 250));
    _stripAnim.addListener(_onStripAnimChanged);
    _lastControlsVisible = widget.chromeController?.controlsVisible ?? true;
    widget.chromeController?.addListener(_onChromeVisibilityChanged);
  }

  @override
  void didUpdateWidget(MobileVideoControls oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.chromeController != widget.chromeController) {
      oldWidget.chromeController?.removeListener(_onChromeVisibilityChanged);
      oldWidget.chromeController?.release(PlayerChromeHold.mobileTools, notify: false, restartAutoHide: false);
      _lastControlsVisible = widget.chromeController?.controlsVisible ?? true;
      widget.chromeController?.addListener(_onChromeVisibilityChanged);
      if (_toolsExpanded) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && _toolsExpanded) widget.chromeController?.hold(PlayerChromeHold.mobileTools);
        });
      }
    }
  }

  @override
  void dispose() {
    widget.chromeController?.removeListener(_onChromeVisibilityChanged);
    widget.chromeController?.release(PlayerChromeHold.mobileTools, notify: false, restartAutoHide: false);
    _stripAnim.removeListener(_onStripAnimChanged);
    _stripAnim.dispose();
    super.dispose();
  }

  void _onStripAnimChanged() {
    final visible = _stripAnim.value > 0.5;
    if (visible != _stripVisible) {
      setState(() => _stripVisible = visible);
      widget.onStripVisibilityChanged?.call(visible);
    }
  }

  void _onChromeVisibilityChanged() {
    final chromeController = widget.chromeController;
    final controlsVisible = chromeController?.controlsVisible ?? true;
    final wasControlsVisible = _lastControlsVisible;
    _lastControlsVisible = controlsVisible;
    if (!controlsVisible && _toolsExpanded) {
      setState(() => _toolsExpanded = false);
      chromeController?.release(PlayerChromeHold.mobileTools, notify: false, restartAutoHide: false);
    } else if (_toolsExpanded && chromeController?.isHeld(PlayerChromeHold.mobileTools) == false) {
      setState(() => _toolsExpanded = false);
    }

    if (chromeController?.contentStripVisible == false && _stripAnim.value > 0) {
      _stripAnim.reverse();
    }

    if (!controlsVisible && wasControlsVisible && _stripVisible) {
      // Just notify parent that strip is no longer active — don't animate,
      // let the overlay fade out with the strip still showing.
      _stripVisible = false;
      widget.onStripVisibilityChanged?.call(false);
    } else if (controlsVisible && !wasControlsVisible && _stripAnim.value > 0) {
      // Reset strip when controls reappear so page 0 is shown.
      _stripAnim.value = 0;
    }
  }

  void _onVerticalDragStart(DragStartDetails details) {
    _stripDragEnabled = widget.isInEdgeAdjustmentZone?.call(details.globalPosition) != true;
  }

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    if (!_stripDragEnabled) return;
    // Negative primaryDelta = swipe up = reveal strip (increase value)
    _stripAnim.value -= (details.primaryDelta ?? 0) / _dragExtent;
  }

  void _onVerticalDragEnd(DragEndDetails details) {
    if (!_stripDragEnabled) {
      _stripDragEnabled = true;
      return;
    }
    final velocity = details.primaryVelocity ?? 0;
    // Fast swipe up or past halfway without fast swipe down → show strip
    if (velocity < -200 || (_stripAnim.value > 0.5 && velocity < 200)) {
      _stripAnim.forward();
    } else {
      _stripAnim.reverse();
    }
  }

  void _dismissExpandedPanels() {
    if (_toolsExpanded) _setTools(false);
    if (_stripAnim.value > 0) _stripAnim.reverse();
  }

  @override
  Widget build(BuildContext context) {
    if (!_hasStripContent) {
      return Stack(
        fit: StackFit.expand,
        children: [
          if (_toolsExpanded)
            Positioned.fill(
              child: GestureDetector(behavior: HitTestBehavior.opaque, onTap: _dismissExpandedPanels),
            ),
          Center(child: _buildPlaybackControls(context)),
          Align(alignment: Alignment.bottomCenter, child: _buildBottomBar(context)),
          Positioned(top: 0, left: 0, right: 0, child: _buildTopBar(context)),
        ],
      );
    }

    // Top bar stays fixed. Everything below it is a Stack where the controls
    // fade out and the content strip slides up from the bottom on swipe.
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          child: GestureDetector(
            onTap: _toolsExpanded || _stripVisible ? _dismissExpandedPanels : null,
            onVerticalDragStart: _onVerticalDragStart,
            onVerticalDragUpdate: _onVerticalDragUpdate,
            onVerticalDragEnd: _onVerticalDragEnd,
            behavior: HitTestBehavior.translucent,
            child: ListenableBuilder(
              listenable: _stripAnim,
              builder: (context, _) {
                final t = _stripAnim.value;
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Normal controls — fade out as strip appears
                    Positioned.fill(
                      child: IgnorePointer(
                        ignoring: t > 0.5,
                        child: Opacity(
                          opacity: (1 - t * 2).clamp(0.0, 1.0),
                          child: Stack(
                            children: [
                              Center(child: _buildPlaybackControls(context)),
                              Align(alignment: Alignment.bottomCenter, child: _buildBottomBar(context)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Content strip — slides up from below the bottom edge
                    Align(
                      alignment: .bottomCenter,
                      child: FractionalTranslation(
                        translation: Offset(0, 1 - t),
                        child: IgnorePointer(
                          ignoring: t < 0.5,
                          child: Opacity(
                            opacity: (t * 2).clamp(0.0, 1.0),
                            child: ContentStripPanel(
                              padding: const EdgeInsets.only(top: 32),
                              chevron: Symbols.keyboard_arrow_down_rounded,
                              child: ContentStrip(
                                player: widget.player,
                                chapters: widget.chapters,
                                canControl: widget.canControl,
                                serverId: widget.serverId,
                                showQueueTab: widget.showQueueTab,
                                onQueueItemSelected: widget.onQueueItemSelected,
                                onSeekRequested: widget.onSeekRequested,
                                onSeekCompleted: widget.onSeekCompleted,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        Positioned(top: 0, left: 0, right: 0, child: _buildTopBar(context)),
      ],
    );
  }

  Widget _buildTopBar(BuildContext context) {
    final title = widget.metadata.displayTitle;
    final subtitle = widget.metadata.displaySubtitle?.trim();
    // A portrait phone header is too narrow for the clock beside the back button,
    // title, and track/chapter controls.
    final topBar = _conditionalSafeArea(
      context: context,
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: MediaQuery.sizeOf(context).height < 450 ? 4 : 8),
        child: Padding(
          key: const ValueKey('luroka_player_header'),
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  if (_toolsExpanded) {
                    _setTools(false);
                    return;
                  }
                  if (_stripAnim.value > 0) {
                    _stripAnim.reverse();
                    return;
                  }
                  if (widget.onBack case final back?) {
                    back();
                  } else {
                    Navigator.of(context).maybePop();
                  }
                },
                tooltip: t.common.back,
                color: Colors.white,
                style: IconButton.styleFrom(minimumSize: const Size(40, 40), padding: const EdgeInsets.all(8)),
                icon: const Icon(Icons.arrow_back_rounded, size: 24),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.3,
                      ),
                    ),
                    if (subtitle != null && subtitle.isNotEmpty && subtitle.toLowerCase() != title.trim().toLowerCase())
                      Text(
                        subtitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: Colors.white70, fontSize: 11),
                      ),
                  ],
                ),
              ),
              if (widget.onPictureInPicture != null)
                IconButton(
                  key: const ValueKey('mobile_player_pip'),
                  onPressed: widget.onPictureInPicture,
                  tooltip: t.videoControls.pipButton,
                  color: Colors.white,
                  style: IconButton.styleFrom(minimumSize: const Size(44, 44), padding: const EdgeInsets.all(8)),
                  icon: const Icon(Icons.picture_in_picture_alt_outlined, size: 22),
                )
              else
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'LUROKA',
                    style: TextStyle(color: Colors.white60, fontSize: 9, fontWeight: FontWeight.w800, letterSpacing: 2),
                  ),
                ),
              const SizedBox(width: 12),
            ],
          ),
        ),
      ),
    );

    return DesktopAppBarHelper.wrapWithGestureDetector(
      DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xaa000000), Color(0x88000000), Colors.transparent],
            stops: [0, 0.75, 1],
          ),
        ),
        child: topBar,
      ),
      opaque: true,
    );
  }

  Widget _buildPlaybackControls(BuildContext _) {
    // Hide all playback controls in host-only mode for non-host
    if (!widget.canControl || _toolsExpanded) {
      return const SizedBox.shrink();
    }

    return FirstFrameGuard(
      hasFirstFrame: widget.hasFirstFrame,
      builder: (context) => _buildPlaybackControlsContent(context),
    );
  }

  Widget _buildPlaybackControlsContent(BuildContext context) {
    final compact = MediaQuery.sizeOf(context).height < 450;
    return PlayPauseStreamBuilder(
      player: widget.player,
      builder: (context, isPlaying) {
        return Row(
          mainAxisAlignment: .center,
          children: [
            if (!widget.isLive) ...[
              CircularControlButton(
                semanticLabel: t.videoControls.seekBackwardButton(seconds: widget.seekTimeSmall),
                icon: Symbols.replay_rounded,
                iconSize: 26,
                caption: '${widget.seekTimeSmall}s',
                onPressed: () => _seekBy(-widget.seekTimeSmall),
              ),
              const SizedBox(width: 12),
            ],
            CircularControlButton(
              semanticLabel: isPlaying ? t.videoControls.pauseButton : t.videoControls.playButton,
              icon: isPlaying ? Symbols.pause_rounded : Symbols.play_arrow_rounded,
              iconSize: compact ? 44 : 56,
              emphasized: true,
              onPressed: () {
                widget.onPlayPause();
                if (isPlaying) {
                  widget.onCancelAutoHide?.call();
                } else {
                  widget.onStartAutoHide?.call();
                }
              },
            ),
            if (!widget.isLive) ...[
              const SizedBox(width: 12),
              CircularControlButton(
                semanticLabel: t.videoControls.seekForwardButton(seconds: widget.seekTimeSmall),
                icon: Symbols.forward_rounded,
                iconSize: 26,
                caption: '${widget.seekTimeSmall}s',
                onPressed: () => _seekBy(widget.seekTimeSmall),
              ),
            ],
          ],
        );
      },
    );
  }

  Future<void> _seekBy(int seconds) async {
    final position = widget.player.state.position.inMilliseconds;
    final duration = widget.player.state.duration.inMilliseconds;
    final target = Duration(
      milliseconds: (position + seconds * 1000)
          .clamp(0, duration > 0 ? duration : position + seconds.abs() * 1000)
          .toInt(),
    );
    widget.onCancelAutoHide?.call();
    try {
      if (widget.onSeekRequested case final request?) {
        await request(target);
      } else {
        widget.onSeekEnd(target);
      }
    } finally {
      if (mounted) widget.onStartAutoHide?.call();
    }
  }

  Widget _buildBottomBar(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final landscapeBottomInset = size.width > size.height ? MediaQuery.viewPaddingOf(context).bottom : 0.0;
    final console = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (!_toolsExpanded) _buildTimeline(context),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            Semantics(
              expanded: _toolsExpanded,
              child: TextButton.icon(
                key: const ValueKey('mobile_playback_tools_toggle'),
                onPressed: () => _setTools(!_toolsExpanded),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white70,
                  minimumSize: const Size(0, 40),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                ),
                icon: Icon(_toolsExpanded ? Icons.expand_less_rounded : Icons.tune_rounded, size: 19),
                label: Text(
                  _toolsExpanded ? t.mobileUi.hidePlaybackTools : t.mobileUi.playbackTools,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            if (_hasStripContent)
              TextButton.icon(
                key: const ValueKey('mobile_chapters_toggle'),
                onPressed: () {
                  _setTools(false);
                  _stripAnim.forward();
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white70,
                  minimumSize: const Size(0, 40),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                ),
                icon: const Icon(Icons.keyboard_arrow_up_rounded, size: 19),
                label: Text(
                  t.playerChrome.browse,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
          ],
        ),
        if (_toolsExpanded)
          Align(
            alignment: Alignment.center,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: PlayerChromePanel(
                key: const ValueKey('mobile_playback_tools_panel'),
                radius: 18,
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (!widget.isLive && widget.canControl && (widget.onPrevious != null || widget.onNext != null))
                      Row(
                        children: [
                          Text(
                            t.mobileUi.playbackTools,
                            style: const TextStyle(color: Colors.white70, fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          if (widget.onPrevious != null)
                            IconButton(
                              onPressed: widget.onPrevious,
                              tooltip: t.videoControls.previousButton,
                              color: Colors.white,
                              icon: const Icon(Symbols.skip_previous_rounded),
                            ),
                          if (widget.onNext != null)
                            IconButton(
                              onPressed: widget.onNext,
                              tooltip: t.videoControls.nextButton,
                              color: Colors.white,
                              icon: const Icon(Symbols.skip_next_rounded),
                            ),
                        ],
                      ),
                    widget.trackChapterControls,
                  ],
                ),
              ),
            ),
          ),
      ],
    );
    return _conditionalSafeArea(
      context: context,
      top: false,
      child: Padding(
        key: const ValueKey('mobile_player_bottom_bar'),
        padding: EdgeInsets.fromLTRB(20, 0, 20, 22 + landscapeBottomInset),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0x00080c14), Color(0x99080c14)],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            child: _toolsExpanded
                ? ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: MediaQuery.sizeOf(context).height * 0.75),
                    child: SingleChildScrollView(primary: false, child: console),
                  )
                : console,
          ),
        ),
      ),
    );
  }

  void _setTools(bool expanded) {
    if (_toolsExpanded == expanded) return;
    setState(() => _toolsExpanded = expanded);
    if (expanded) {
      widget.chromeController?.hold(PlayerChromeHold.mobileTools);
      widget.onCancelAutoHide?.call();
    } else {
      widget.chromeController?.release(PlayerChromeHold.mobileTools);
      widget.onStartAutoHide?.call();
    }
  }

  Widget _buildTimeline(BuildContext _) {
    if (widget.isLive) {
      if (widget.captureBuffer != null) {
        // Live TV with time-shift: show seekable timeline
        return FirstFrameGuard(
          hasFirstFrame: widget.hasFirstFrame,
          builder: (context) => LiveTimelineBar(
            player: widget.player,
            captureBuffer: widget.captureBuffer!,
            epochForPosition: widget.liveEpochForPosition!,
            isAtLiveEdge: widget.isAtLiveEdge,
            onSeekEnd: widget.onLiveSeek,
            horizontalLayout: false,
            enabled: widget.canControl,
          ),
        );
      }
      // Fallback: static LIVE badge (no capture buffer)
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: const BoxDecoration(color: Colors.red, borderRadius: BorderRadius.all(Radius.circular(4))),
              child: Text(
                t.liveTv.live,
                style: const TextStyle(color: Colors.white, fontWeight: .bold, fontSize: 12),
              ),
            ),
          ],
        ),
      );
    }
    return FirstFrameGuard(hasFirstFrame: widget.hasFirstFrame, builder: (context) => _buildBottomBarContent(context));
  }

  Widget _buildBottomBarContent(BuildContext context) {
    return VideoTimelineBar(
      player: widget.player,
      chapters: widget.chapters,
      chaptersLoaded: widget.chaptersLoaded,
      showChapterMarkersOnTimeline: widget.showChapterMarkersOnTimeline,
      onSeek: widget.onSeek,
      onSeekEnd: widget.onSeekEnd,
      onScrubStart: widget.onScrubStart,
      onScrubEnd: widget.onScrubEnd,
      horizontalLayout: false,
      enabled: widget.canControl,
      compactMobile: true,
      showFinishTime: _toolsExpanded,
      thumbnailDataBuilder: widget.thumbnailDataBuilder,
    );
  }

  /// Respect the status bar in both orientations and the bottom inset in
  /// portrait. The landscape bottom bar applies view padding separately.
  Widget _conditionalSafeArea({
    required BuildContext context,
    required Widget child,
    bool top = true,
    bool bottom = true,
  }) {
    final isPortrait = MediaQuery.orientationOf(context) == Orientation.portrait;
    return SafeArea(top: top, bottom: isPortrait && bottom, child: child);
  }
}
