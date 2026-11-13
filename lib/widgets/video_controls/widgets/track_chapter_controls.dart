import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:flutter/services.dart';

import '../../../focus/dpad_navigator.dart';
import '../../../mpv/mpv.dart';
import '../../../media/media_source_info.dart';
import '../../../media/media_item_types.dart';
import '../../../services/sleep_timer_service.dart';
import '../../../utils/platform_detector.dart';
import '../../../utils/quality_preset_labels.dart';
import '../../../i18n/strings.g.dart';
import '../../../widgets/overlay_sheet.dart';
import '../models/track_controls_state.dart';
import '../sheets/chapter_sheet.dart';
import '../sheets/info_sheet.dart';
import '../sheets/queue_sheet.dart';
import '../sheets/track_sheet.dart';
import '../sheets/video_settings_sheet.dart';
import '../../../utils/track_label_builder.dart';
import '../video_control_button.dart';

/// Row of track and chapter control buttons for the video player
class TrackChapterControls extends StatelessWidget {
  final Player player;
  final List<MediaChapter> chapters;
  final bool chaptersLoaded;
  final TrackControlsState trackControlsState;
  final Future<void> Function(Duration position)? onSeekRequested;
  final Function(Duration position)? onSeekCompleted;

  /// List of FocusNodes for the buttons (passed from parent for navigation)
  final List<FocusNode>? focusNodes;

  /// Called when focus changes on any button
  final ValueChanged<bool>? onFocusChange;

  final VoidCallback? onNavigateLeft;

  /// Called to navigate up from any button (e.g., to focus timeline on TV)
  final VoidCallback? onNavigateUp;

  /// Called to navigate down from any button (e.g., to show content strip on TV)
  final VoidCallback? onNavigateDown;

  /// Whether to hide the chapters and queue buttons (mobile uses content strip instead)
  final bool hideChaptersAndQueue;
  final bool showLabels;
  final bool hidePictureInPicture;

  const TrackChapterControls({
    super.key,
    required this.player,
    required this.chapters,
    required this.chaptersLoaded,
    required this.trackControlsState,
    this.onSeekRequested,
    this.onSeekCompleted,
    this.focusNodes,
    this.onFocusChange,
    this.onNavigateLeft,
    this.onNavigateUp,
    this.onNavigateDown,
    this.hideChaptersAndQueue = false,
    this.showLabels = false,
    this.hidePictureInPicture = false,
  });

  KeyEventResult _handleButtonKeyEvent(FocusNode _, KeyEvent event, int index, int totalButtons) {
    if (!event.isActionable) {
      return KeyEventResult.ignored;
    }

    final key = event.logicalKey;

    if (key == LogicalKeyboardKey.arrowLeft) {
      if (index > 0 && focusNodes != null && focusNodes!.length > index - 1) {
        focusNodes![index - 1].requestFocus();
        return KeyEventResult.handled;
      } else if (index == 0) {
        onNavigateLeft?.call();
        return KeyEventResult.handled;
      }
      return KeyEventResult.handled;
    }

    if (key == LogicalKeyboardKey.arrowRight) {
      if (index < totalButtons - 1 && focusNodes != null && focusNodes!.length > index + 1) {
        focusNodes![index + 1].requestFocus();
        return KeyEventResult.handled;
      }
      return KeyEventResult.handled;
    }

    if (key == LogicalKeyboardKey.arrowUp) {
      onNavigateUp?.call();
      return KeyEventResult.handled;
    }

    if (key == LogicalKeyboardKey.arrowDown) {
      onNavigateDown?.call();
      return KeyEventResult.handled;
    }

    return KeyEventResult.ignored;
  }

  /// Build a track control button with consistent focus handling
  Widget _buildTrackButton({
    required int buttonIndex,
    required IconData icon,
    required String semanticLabel,
    required VoidCallback? onPressed,
    // The row being built. Arrow-key navigation reads its length lazily, so
    // by event time it reflects every button that build() actually added.
    required List<Widget> buttons,
    String? tooltip,
    String? semanticValue,
    bool? checked,
    bool isActive = false,
  }) {
    return VideoControlButton(
      icon: icon,
      tooltip: tooltip,
      semanticLabel: semanticLabel,
      label: showLabels ? semanticLabel : null,
      autoScroll: showLabels,
      semanticValue: semanticValue,
      checked: checked,
      isActive: isActive,
      focusNode: focusNodes != null && focusNodes!.length > buttonIndex ? focusNodes![buttonIndex] : null,
      onKeyEvent: focusNodes != null
          ? (node, event) => _handleButtonKeyEvent(node, event, buttonIndex, buttons.length)
          : null,
      onFocusChange: onFocusChange,
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Tracks>(
      stream: player.streams.tracks,
      initialData: player.state.tracks,
      builder: (context, snapshot) {
        final tracks = snapshot.data;
        final state = trackControlsState;
        final isMobile = PlatformDetector.isMobile(context);
        final isDesktop = PlatformDetector.isDesktopOS();

        final buttons = <Widget>[];
        int buttonIndex = 0;

        Widget settingsButton(int index) => ListenableBuilder(
          listenable: SleepTimerService(),
          builder: (context, _) {
            final sleepTimer = SleepTimerService();
            final shaderService = state.shaderService;
            final isShaderActive =
                shaderService != null && shaderService.isSupported && shaderService.currentPreset.isEnabled;
            final isZoomActive = (state.videoZoomScale - 1.0).abs() > 0.0001;
            final isActive =
                sleepTimer.isActive ||
                state.audioSyncOffset != 0 ||
                state.subtitleSyncOffset != 0 ||
                isShaderActive ||
                isZoomActive;
            return _buildTrackButton(
              buttonIndex: index,
              icon: Symbols.tune_rounded,
              isActive: isActive,
              checked: isActive,
              tooltip: t.videoControls.settingsButton,
              semanticValue: _versionQualitySemanticValue(),
              semanticLabel: PlatformDetector.isTV() ? t.titlePage.more : t.videoControls.settingsButton,
              buttons: buttons,
              onPressed: () {
                state.onCancelAutoHide?.call();
                OverlaySheetController.of(context)
                    .show(
                      builder: (_) => VideoSettingsSheet(player: player, trackControlsState: state),
                    )
                    .whenComplete(() => state.onStartAutoHide?.call());
              },
            );
          },
        );

        {
          final currentIndex = buttonIndex;
          buttons.add(
            StreamBuilder<TrackSelection>(
              stream: player.streams.track,
              initialData: player.state.track,
              builder: (context, selectionSnapshot) {
                final selection = selectionSnapshot.data ?? player.state.track;
                final hasSubtitleControls = state.hasSubtitleControls(tracks);
                final selectedSub = selection.subtitle;
                final hasActiveSubtitle = selectedSub != null && selectedSub.id != SubtitleTrack.off.id;
                final isHidden = hasSubtitleControls && hasActiveSubtitle && !state.subtitlesVisible;
                final icon = hasSubtitleControls
                    ? (isHidden ? Symbols.subtitles_off_rounded : Symbols.subtitles_rounded)
                    : Symbols.audiotrack_rounded;
                return _buildTrackButton(
                  buttonIndex: currentIndex,
                  icon: icon,
                  tooltip: t.videoControls.tracksButton,
                  semanticLabel: PlatformDetector.isTV()
                      ? t.lurokaWorkspace.audioSubtitles
                      : t.videoControls.tracksButton,
                  semanticValue: _selectionSemanticValue(tracks, selection),
                  buttons: buttons,
                  onPressed: () {
                    state.onCancelAutoHide?.call();
                    OverlaySheetController.of(context)
                        .show(
                          builder: (_) => TrackSheet(player: player, trackControlsState: state),
                        )
                        .whenComplete(() => state.onStartAutoHide?.call());
                  },
                );
              },
            ),
          );
          buttonIndex++;
        }

        if (!PlatformDetector.isTV()) {
          if (isMobile && !state.isLive && state.serverSupportsTranscoding && state.onSwitchQualityPreset != null) {
            final currentIndex = buttonIndex++;
            buttons.add(
              _buildTrackButton(
                buttonIndex: currentIndex,
                icon: Symbols.high_quality_rounded,
                semanticLabel: t.mobileUi.streamingQuality,
                tooltip: t.mobileUi.streamingQuality,
                buttons: buttons,
                onPressed: () {
                  state.onCancelAutoHide?.call();
                  OverlaySheetController.of(context)
                      .show(
                        builder: (_) =>
                            VideoSettingsSheet(player: player, trackControlsState: state, openQuality: true),
                      )
                      .whenComplete(() => state.onStartAutoHide?.call());
                },
              ),
            );
          }
          buttons.add(settingsButton(buttonIndex++));
        }

        if (chapters.isNotEmpty && !hideChaptersAndQueue) {
          final currentIndex = buttonIndex;
          buttons.add(
            _buildTrackButton(
              buttonIndex: currentIndex,
              icon: Symbols.bookmarks_rounded,
              tooltip: t.videoControls.chaptersButton,
              semanticLabel: t.videoControls.chaptersButton,
              buttons: buttons,
              onPressed: () {
                state.onCancelAutoHide?.call();
                OverlaySheetController.of(context)
                    .show(
                      builder: (_) => ChapterSheet(
                        player: player,
                        chapters: chapters,
                        chaptersLoaded: chaptersLoaded,
                        canControl: state.canControl,
                        serverId: state.serverId,
                        onSeekRequested: onSeekRequested,
                        onSeekCompleted: onSeekCompleted,
                      ),
                    )
                    .whenComplete(() => state.onStartAutoHide?.call());
              },
            ),
          );
          buttonIndex++;
        }

        if (state.showQueueButton && state.onQueueItemSelected != null && !hideChaptersAndQueue) {
          final currentIndex = buttonIndex;
          buttons.add(
            _buildTrackButton(
              buttonIndex: currentIndex,
              icon: Symbols.queue_rounded,
              tooltip: t.videoControls.queue,
              semanticLabel: PlatformDetector.isTV() && state.metadata?.isEpisode == true
                  ? t.libraries.groupings.episodes
                  : t.videoControls.queue,
              buttons: buttons,
              onPressed: () {
                state.onCancelAutoHide?.call();
                OverlaySheetController.of(context)
                    .show(builder: (_) => QueueSheet(onItemSelected: state.onQueueItemSelected!))
                    .whenComplete(() => state.onStartAutoHide?.call());
              },
            ),
          );
          buttonIndex++;
        }

        if (PlatformDetector.isTV()) {
          if (!state.isLive &&
              ((state.availableVersions.length > 1 && state.onSwitchVersion != null) ||
                  (state.serverSupportsTranscoding && state.onSwitchQualityPreset != null))) {
            final currentIndex = buttonIndex++;
            buttons.add(
              _buildTrackButton(
                buttonIndex: currentIndex,
                icon: Symbols.high_quality_rounded,
                semanticLabel: state.serverSupportsTranscoding && state.onSwitchQualityPreset != null
                    ? t.mobileUi.streamingQuality
                    : t.mobileUi.fileVersions,
                semanticValue: _versionQualitySemanticValue(),
                buttons: buttons,
                onPressed: () {
                  state.onCancelAutoHide?.call();
                  OverlaySheetController.of(context)
                      .show(
                        builder: (_) =>
                            VideoSettingsSheet(player: player, trackControlsState: state, openQuality: true),
                      )
                      .whenComplete(() => state.onStartAutoHide?.call());
                },
              ),
            );
          }
          if (state.metadata != null) {
            final currentIndex = buttonIndex;
            buttons.add(
              _buildTrackButton(
                buttonIndex: currentIndex,
                icon: Symbols.info_rounded,
                tooltip: t.videoControls.infoButton,
                semanticLabel: t.videoControls.infoButton,
                buttons: buttons,
                onPressed: () {
                  state.onCancelAutoHide?.call();
                  OverlaySheetController.of(context)
                      .show(
                        builder: (_) => MediaInfoSheet(
                          item: state.metadata!,
                          player: player,
                          canControl: state.canControl,
                          onPlayPauseRequested: state.onPlayPauseRequested,
                        ),
                      )
                      .whenComplete(() => state.onStartAutoHide?.call());
                },
              ),
            );
            buttonIndex++;
          }
          buttons.add(settingsButton(buttonIndex++));
        }

        if (isMobile && state.metadata != null) {
          final currentIndex = buttonIndex++;
          buttons.add(
            _buildTrackButton(
              buttonIndex: currentIndex,
              icon: Symbols.info_rounded,
              tooltip: t.videoControls.infoButton,
              semanticLabel: t.videoControls.infoButton,
              buttons: buttons,
              onPressed: () {
                state.onCancelAutoHide?.call();
                OverlaySheetController.of(context)
                    .show(
                      builder: (_) => MediaInfoSheet(
                        item: state.metadata!,
                        player: player,
                        canControl: state.canControl,
                        onPlayPauseRequested: state.onPlayPauseRequested,
                      ),
                    )
                    .whenComplete(() => state.onStartAutoHide?.call());
              },
            ),
          );
        }

        if (state.onTogglePIPMode != null && !hidePictureInPicture) {
          final currentIndex = buttonIndex;
          buttons.add(
            _buildTrackButton(
              buttonIndex: currentIndex,
              icon: Symbols.picture_in_picture_alt_rounded,
              tooltip: t.videoControls.pipButton,
              semanticLabel: t.videoControls.pipButton,
              buttons: buttons,
              onPressed: state.onTogglePIPMode,
            ),
          );
          buttonIndex++;
        }

        // BoxFit mode button
        if (state.onCycleBoxFitMode != null && !PlatformDetector.isTV()) {
          final currentIndex = buttonIndex;
          buttons.add(
            _buildTrackButton(
              buttonIndex: currentIndex,
              icon: _getBoxFitIcon(state.boxFitMode),
              tooltip: _getBoxFitTooltip(state.boxFitMode),
              semanticLabel: t.videoControls.aspectRatioButton,
              semanticValue: _getBoxFitTooltip(state.boxFitMode),
              buttons: buttons,
              onPressed: state.onCycleBoxFitMode,
            ),
          );
          buttonIndex++;
        }

        // Rotation lock button (mobile only, not on TV since screens don't rotate)
        if (isMobile && !PlatformDetector.isTV()) {
          final currentIndex = buttonIndex;
          buttons.add(
            _buildTrackButton(
              buttonIndex: currentIndex,
              icon: state.isRotationLocked ? Symbols.screen_lock_rotation_rounded : Symbols.screen_rotation_rounded,
              tooltip: state.isRotationLocked ? t.videoControls.unlockRotation : t.videoControls.lockRotation,
              semanticLabel: t.videoControls.rotationLockButton,
              checked: state.isRotationLocked,
              buttons: buttons,
              onPressed: state.onToggleRotationLock,
            ),
          );
          buttonIndex++;
        }

        // Screen lock button (mobile only, not on TV)
        if (isMobile && !PlatformDetector.isTV()) {
          final currentIndex = buttonIndex;
          buttons.add(
            _buildTrackButton(
              buttonIndex: currentIndex,
              icon: Symbols.lock_rounded,
              tooltip: t.videoControls.lockScreen,
              semanticLabel: t.videoControls.screenLockButton,
              buttons: buttons,
              onPressed: state.onToggleScreenLock,
            ),
          );
          buttonIndex++;
        }

        // Always on top button (desktop only, not TV)
        if (isDesktop && state.onToggleAlwaysOnTop != null) {
          final currentIndex = buttonIndex;
          buttons.add(
            _buildTrackButton(
              buttonIndex: currentIndex,
              icon: Symbols.layers_rounded,
              tooltip: t.videoControls.alwaysOnTopButton,
              semanticLabel: t.videoControls.alwaysOnTopButton,
              isActive: state.isAlwaysOnTop,
              checked: state.isAlwaysOnTop,
              buttons: buttons,
              onPressed: state.onToggleAlwaysOnTop,
            ),
          );
          buttonIndex++;
        }

        // Fullscreen button (desktop only)
        if (isDesktop) {
          final currentIndex = buttonIndex;
          buttons.add(
            _buildTrackButton(
              buttonIndex: currentIndex,
              icon: state.isFullscreen ? Symbols.fullscreen_exit_rounded : Symbols.fullscreen_rounded,
              tooltip: state.isFullscreen ? t.videoControls.exitFullscreenButton : t.videoControls.fullscreenButton,
              semanticLabel: state.isFullscreen
                  ? t.videoControls.exitFullscreenButton
                  : t.videoControls.fullscreenButton,
              checked: state.isFullscreen,
              buttons: buttons,
              onPressed: state.onToggleFullscreen,
            ),
          );
        }

        if (isMobile && showLabels) {
          return Wrap(
            spacing: 8,
            runSpacing: 6,
            children: [
              for (final button in buttons)
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 190),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.06),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: button,
                  ),
                ),
            ],
          );
        }
        return IntrinsicHeight(
          child: Row(
            mainAxisSize: .min,
            crossAxisAlignment: .stretch,
            children: [
              for (final (index, button) in buttons.indexed) ...[if (index > 0) const SizedBox(width: 6), button],
            ],
          ),
        );
      },
    );
  }

  String? _versionQualitySemanticValue() {
    final state = trackControlsState;
    final values = <String>[];
    if (state.availableVersions.length > 1) {
      final index = state.selectedMediaIndex;
      if (index >= 0 && index < state.availableVersions.length) {
        values.add(state.availableVersions[index].displayLabel);
      }
    }
    if (state.serverSupportsTranscoding) {
      values.add(qualityPresetLabel(state.selectedQualityPreset));
    }
    return values.isEmpty ? null : values.join(' / ');
  }

  String? _selectionSemanticValue(Tracks? tracks, TrackSelection selection) {
    final values = <String>[];
    final audio = selection.audio;
    if (audio != null && audio.id != AudioTrack.off.id) {
      final index = tracks?.audio.indexWhere((track) => track.id == audio.id) ?? -1;
      final visibleIndex = index < 0 ? 0 : index;
      final label = TrackLabelBuilder.audioLabel(
        title: audio.title,
        language: audio.language,
        codec: audio.codec,
        codecProfile: audio.codecProfile,
        channels: audio.channelsCount,
        index: visibleIndex,
      );
      values.add(label.joined);
    }

    final subtitle = selection.subtitle;
    if (subtitle != null && subtitle.id != SubtitleTrack.off.id) {
      final index = tracks?.subtitle.indexWhere((track) => track.id == subtitle.id) ?? -1;
      values.add(
        TrackLabelBuilder.subtitleLabel(
          title: subtitle.title,
          language: subtitle.language,
          codec: subtitle.codec,
          forced: subtitle.isForced,
          index: index < 0 ? 0 : index,
        ).joined,
      );
    }

    return values.isEmpty ? null : values.join(', ');
  }

  IconData _getBoxFitIcon(int mode) {
    switch (mode) {
      case 0:
        return Symbols.fit_screen_rounded; // contain (letterbox)
      case 1:
        return Symbols.aspect_ratio_rounded; // cover (fill screen)
      case 2:
        return Symbols.settings_overscan_rounded; // fill (stretch)
      default:
        return Symbols.fit_screen_rounded;
    }
  }

  String _getBoxFitTooltip(int mode) {
    switch (mode) {
      case 0:
        return t.videoControls.letterbox;
      case 1:
        return t.videoControls.fillScreen;
      case 2:
        return t.videoControls.stretch;
      default:
        return t.videoControls.letterbox;
    }
  }
}
