import 'dart:async';
import 'dart:ui' show ImageFilter;

import 'package:flutter/foundation.dart' show ValueListenable, listEquals;
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../../focus/focusable_button.dart';
import '../../../focus/input_mode_tracker.dart';
import '../../../i18n/strings.g.dart';
import '../../../media/ids.dart';
import '../../../media/media_item.dart';
import '../../../media/media_item_types.dart';
import '../../../providers/playback_state_provider.dart';
import '../../../services/download_artwork_service.dart';
import '../../../services/download_storage_service.dart';
import '../../../services/pip_service.dart';
import '../../../services/settings_service.dart';
import '../../../utils/platform_detector.dart';
import '../../../utils/formatters.dart';
import '../../../utils/provider_extensions.dart';
import '../../../watch_together/providers/watch_together_provider.dart';
import '../../../watch_together/widgets/watch_together_overlay.dart';
import '../../../widgets/app_icon.dart';
import '../../../widgets/optimized_media_image.dart';
import '../../../widgets/settings_builder.dart';
import '../../../widgets/video_controls/player_chrome_controller.dart';

class VideoPlayerMacPipPlaceholder extends StatelessWidget {
  const VideoPlayerMacPipPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: PipService().isPipActive,
      builder: (context, isInPip, child) {
        if (!isInPip) return const SizedBox.shrink();
        return Positioned.fill(
          child: Container(
            color: Colors.black,
            child: Center(
              child: Column(
                mainAxisSize: .min,
                children: [
                  AppIcon(Symbols.picture_in_picture_alt_rounded, size: 48, color: Colors.white.withValues(alpha: 0.5)),
                  const SizedBox(height: 12),
                  Text(
                    t.videoControls.pipActive,
                    style: TextStyle(color: Colors.white.withValues(alpha: 0.5), fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

/// The player's loading spinner.
///
/// Labelled rather than silent: a bare [CircularProgressIndicator] contributes
/// no semantics at all, so a screen reader announced nothing while the picture
/// was still coming up. The label also makes "the first frame has not rendered
/// yet" an observable state instead of something inferred from the chrome,
/// which a television no longer raises on startup.
class PlayerLoadingIndicator extends StatelessWidget {
  final double strokeWidth;

  const PlayerLoadingIndicator({super.key, this.strokeWidth = 4});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: Colors.white,
      strokeWidth: strokeWidth,
      semanticsLabel: t.videoControls.loadingVideo,
    );
  }
}

class VideoPlayerBufferingOverlay extends StatelessWidget {
  final ValueListenable<bool> isBuffering;
  final ValueListenable<bool> hasFirstFrame;
  final ValueListenable<bool> isExiting;

  const VideoPlayerBufferingOverlay({
    super.key,
    required this.isBuffering,
    required this.hasFirstFrame,
    required this.isExiting,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: PipService().isPipActive,
      builder: (context, isInPip, child) {
        if (isInPip) return const SizedBox.shrink();
        return ValueListenableBuilder<bool>(
          valueListenable: isBuffering,
          builder: (context, buffering, child) {
            return ValueListenableBuilder<bool>(
              valueListenable: hasFirstFrame,
              builder: (context, hasFrame, child) {
                if ((!buffering && hasFrame) || isExiting.value) return const SizedBox.shrink();
                return Positioned.fill(
                  child: IgnorePointer(
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0.5), shape: BoxShape.circle),
                        child: const PlayerLoadingIndicator(strokeWidth: 3),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

/// The room's surfaces over the player: the reconnecting pill, the mismatch
/// prompt (a sheet in the player's host), and the play-blocked prompt.
class VideoPlayerWatchTogetherOverlays extends StatelessWidget {
  const VideoPlayerWatchTogetherOverlays({super.key});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Selector<WatchTogetherProvider, bool>(
            selector: (_, provider) => provider.isReconnecting,
            builder: (context, reconnecting, child) {
              if (!reconnecting) return const SizedBox.shrink();
              return Positioned(
                bottom: 120,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: const BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      mainAxisSize: .min,
                      children: [
                        if (PlatformDetector.isTV())
                          const AppIcon(Symbols.sync_rounded, size: 14, color: Colors.white)
                        else
                          const SizedBox(
                            width: 14,
                            height: 14,
                            child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                          ),
                        const SizedBox(width: 8),
                        Text(t.watchTogether.reconnecting, style: const TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          const WatchMismatchPromptLauncher(),
          const _WatchPlayBlockedPrompt(),
        ],
      ),
    );
  }
}

/// The player refused to start in a playing room: a Play button that starts
/// it, focused for the D-pad while it shows, and focus handed back after.
class _WatchPlayBlockedPrompt extends StatefulWidget {
  const _WatchPlayBlockedPrompt();

  @override
  State<_WatchPlayBlockedPrompt> createState() => _WatchPlayBlockedPromptState();
}

class _WatchPlayBlockedPromptState extends State<_WatchPlayBlockedPrompt> {
  final _playFocusNode = FocusNode(debugLabel: 'WatchPlayBlockedPlay');
  FocusNode? _returnFocus;
  bool _shown = false;

  @override
  void dispose() {
    _playFocusNode.dispose();
    super.dispose();
  }

  void _sync(bool visible) {
    if (visible == _shown) return;
    _shown = visible;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || visible != _shown) return;
      if (!visible) return _restoreFocus();
      if (!InputModeTracker.isKeyboardMode(context, listen: false)) return;
      final current = FocusManager.instance.primaryFocus;
      _returnFocus = identical(current, _playFocusNode) ? null : current;
      _playFocusNode.requestFocus();
    });
  }

  void _restoreFocus() {
    final target = _returnFocus;
    _returnFocus = null;
    if (!_playFocusNode.hasFocus) return;
    if (target != null && target.context != null && target.canRequestFocus) {
      target.requestFocus();
    } else {
      _playFocusNode.unfocus(disposition: UnfocusDisposition.previouslyFocusedChild);
    }
  }

  void _play() {
    _restoreFocus();
    unawaited(context.read<WatchTogetherProvider>().playBlockedPlayer());
  }

  @override
  Widget build(BuildContext context) {
    final visible = context.select<WatchTogetherProvider, bool>((provider) => provider.playBlocked);
    _sync(visible);
    if (!visible) return const SizedBox.shrink();
    return ValueListenableBuilder<bool>(
      valueListenable: PipService().isPipActive,
      builder: (context, inPip, child) => inPip ? const SizedBox.shrink() : child!,
      child: Positioned(
        right: 16,
        bottom: (MediaQuery.sizeOf(context).height - 300).clamp(16.0, 220.0),
        child: _VideoPlayerPromptCard(
          child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .start,
            children: [
              Text(
                t.watchTogether.playBlockedTitle,
                style: TextStyle(color: Colors.white.withValues(alpha: 0.7), fontSize: 12, fontWeight: .w500),
              ),
              const SizedBox(height: 4),
              Text(
                t.watchTogether.playBlockedDescription,
                style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: .w600),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: FocusableButton(
                  focusNode: _playFocusNode,
                  onPressed: _play,
                  autoScroll: false,
                  onNavigateUp: () {},
                  onNavigateDown: () {},
                  useBackgroundFocus: true,
                  child: FilledButton.icon(
                    onPressed: _play,
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    icon: const AppIcon(Symbols.play_arrow_rounded, fill: 1),
                    label: Text(t.common.play),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoPlayerExitOverlay extends StatelessWidget {
  final ValueListenable<bool> isExiting;

  const VideoPlayerExitOverlay({super.key, required this.isExiting});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isExiting,
      builder: (context, exiting, child) {
        if (!exiting) return const SizedBox.shrink();
        return const Positioned.fill(child: ColoredBox(color: Colors.black));
      },
    );
  }
}

class VideoPlayerPlayNextOverlay extends StatelessWidget {
  final bool visible;
  final MediaItem? nextEpisode;
  final ValueListenable<int> autoPlayCountdown;
  final FocusNode cancelFocusNode;
  final FocusNode confirmFocusNode;
  final PlayerChromeController chromeController;
  final VoidCallback onCancel;
  final VoidCallback onPlayNext;

  const VideoPlayerPlayNextOverlay({
    super.key,
    required this.visible,
    required this.nextEpisode,
    required this.autoPlayCountdown,
    required this.cancelFocusNode,
    required this.confirmFocusNode,
    required this.chromeController,
    required this.onCancel,
    required this.onPlayNext,
  });

  @override
  Widget build(BuildContext context) {
    final episode = nextEpisode;
    if (episode == null) return const SizedBox.shrink();
    // Resolved only while shown: the overlay sits in the player build with
    // visible=false for the whole episode, and the lookup hashes the artwork
    // path per call.
    final backdrop = visible ? _buildThumbnailBackdrop(context, episode) : null;
    if (!visible) return const SizedBox.shrink();
    final tv = PlatformDetector.isTV();
    return ValueListenableBuilder<bool>(
        valueListenable: PipService().isPipActive,
        builder: (context, inPip, _) => inPip
            ? const SizedBox.shrink()
            : _VideoPlayerPromptPosition(
                chromeController: chromeController,
                child: _VideoPlayerPromptInteractionHold(
                  chromeController: chromeController,
                  focusNodes: [cancelFocusNode, confirmFocusNode],
                  child: _NextEpisodeCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (tv) ...[
                          const _PlayNextLabel(badge: true),
                          const SizedBox(height: 12),
                        ],
                        Row(
                          crossAxisAlignment: tv ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                          children: [
                            _NextEpisodeArtwork(image: backdrop),
                            const SizedBox(width: 14),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                   _PlayNextEpisodeHeader(episode: episode, showLabel: !tv),
                                  if (episode.durationMs != null) ...[
                                    const SizedBox(height: 6),
                                    Text(
                                      formatDurationTextual(episode.durationMs!),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(color: Colors.white60, fontSize: 12),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ],
                        ),
                        _PlayNextCountdown(countdown: autoPlayCountdown),
                        const SizedBox(height: 12),
                        _VideoPlayerPromptActions(
                          nextEpisodeStyle: true,
                          cancelLabel: t.lurokaPlayerDesign.keepWatching,
                          cancelFocusNode: cancelFocusNode,
                          onCancel: onCancel,
                          confirmFocusNode: confirmFocusNode,
                          onConfirm: onPlayNext,
                          confirmChildren: [
                            const AppIcon(Symbols.play_arrow_rounded, size: 18, fill: 1),
                            const SizedBox(width: 6),
                            Text(t.videoControls.playNext),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      );
  }

  /// The next episode's video-frame still, shown in the card's artwork slot.
  ///
  /// Null keeps the original text-only card: the item has no thumb, or
  /// nothing could serve one (no live client and no artwork directory for a
  /// downloaded copy). A load that starts and fails degrades to the dark card
  /// via the shrinking placeholder/error widgets instead of a fallback icon.
  Widget? _buildThumbnailBackdrop(BuildContext context, MediaItem episode) {
    final thumbPath = episode.thumbPath;
    if (thumbPath == null) return null;
    final serverId = serverIdOrNull(episode.serverId);
    final client = context.tryGetMediaClientForServer(serverId);
    final localFilePath = serverId == null
        ? null
        : DownloadArtworkService.localPathSync(DownloadStorageService.instance, serverId, thumbPath);
    if (client == null && localFilePath == null) return null;
    final image = OptimizedMediaImage.thumb(
      client: client,
      imagePath: thumbPath,
      localFilePath: localFilePath,
      fit: BoxFit.cover,
      placeholder: (_, _) => const SizedBox.shrink(),
      errorWidget: (_, _, _) => const SizedBox.shrink(),
    );
    // The next episode is unwatched by definition, so hide-spoilers users get
    // the same blurred still as the queue strip and episode cards.
    return SettingValueBuilder<bool>(
      pref: SettingsService.hideSpoilers,
      builder: (context, hideSpoilers, _) {
        if (!hideSpoilers || !episode.shouldHideSpoiler) return image;
        return ClipRect(
          child: ImageFiltered(imageFilter: ImageFilter.blur(sigmaX: 12, sigmaY: 12), child: image),
        );
      },
    );
  }
}

/// A compact cinema surface: one distinct tile rather than the generic player
/// dialog, so the episode stays in view while the next action is easy to find.
class _NextEpisodeCard extends StatelessWidget {
  const _NextEpisodeCard({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final accent = Theme.of(context).colorScheme.primary;
    final width = (MediaQuery.sizeOf(context).width - 32).clamp(0.0, PlatformDetector.isTV() ? 420.0 : 360.0);
    return Container(
      key: const ValueKey('up-next-card'),
      width: width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
         gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
           colors: [
             Color.alphaBlend(accent.withValues(alpha: .14), const Color(0xf5222732)),
             const Color(0xf2161922),
             const Color(0xf2101219),
           ],
        ),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Color.alphaBlend(accent.withValues(alpha: .18), const Color(0x40ffffff))),
        boxShadow: const [BoxShadow(color: Color(0x66000000), blurRadius: 24, offset: Offset(0, 10))],
      ),
      child: child,
    );
  }
}

class _NextEpisodeArtwork extends StatelessWidget {
  const _NextEpisodeArtwork({required this.image});
  final Widget? image;

  @override
  Widget build(BuildContext context) {
    final width = PlatformDetector.isTV() ? 148.0 : 100.0;
    final accent = Theme.of(context).colorScheme.primary;
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: SizedBox(
        width: width,
        height: width * 9 / 16,
        child: Stack(
          fit: StackFit.expand,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [accent.withValues(alpha: .35), const Color(0xff202531), const Color(0xff11141d)],
              )),
            ),
            ?image,
            const DecoratedBox(decoration: BoxDecoration(gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Color(0x55000000)],
            ))),
             if (image == null)
               const Center(child: Icon(Symbols.play_circle_rounded, color: Colors.white70, size: 28)),
          ],
        ),
      ),
    );
  }
}

class _PlayNextEpisodeHeader extends StatelessWidget {
  final MediaItem episode;
  final bool showLabel;

  const _PlayNextEpisodeHeader({required this.episode, required this.showLabel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              if (showLabel) ...[const _PlayNextLabel(), const SizedBox(height: 4)],
              if (episode.parentIndex != null && episode.index != null)
                Text(
                  'S${episode.parentIndex} E${episode.index} · ${episode.displayTitle}',
                  style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: .w600),
                  maxLines: 2,
                  overflow: .ellipsis,
                )
              else
                Text(
                  episode.displayTitle,
                  style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: .w600),
                  maxLines: 2,
                  overflow: .ellipsis,
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PlayNextLabel extends StatelessWidget {
  const _PlayNextLabel({this.badge = false});
  final bool badge;

  @override
  Widget build(BuildContext context) {
    final accent = Theme.of(context).colorScheme.primary;
    final shuffle = context.select<PlaybackStateProvider, bool>((state) => state.isShuffleActive);
    final label = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (badge) ...[
          AppIcon(Symbols.play_arrow_rounded, size: 15, color: accent, fill: 1),
          const SizedBox(width: 5),
        ],
        Flexible(child: Text(
          badge ? t.lurokaPlayerDesign.upNext : t.videoControls.nextEpisode,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: accent, fontSize: badge ? 12 : 11, fontWeight: .w700, letterSpacing: 1.4),
        )),
        if (shuffle) ...[
          const SizedBox(width: 5),
          const AppIcon(Symbols.shuffle_rounded, fill: 1, size: 12, color: Colors.white70),
        ],
      ],
    );
    if (!badge) return label;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(color: accent.withValues(alpha: .14), borderRadius: BorderRadius.circular(20)),
      child: label,
    );
  }
}

class _PlayNextCountdown extends StatefulWidget {
  const _PlayNextCountdown({required this.countdown});
  final ValueListenable<int> countdown;
  @override
  State<_PlayNextCountdown> createState() => _PlayNextCountdownState();
}

class _PlayNextCountdownState extends State<_PlayNextCountdown> {
  late int _total = widget.countdown.value > 0 ? widget.countdown.value : 1;
  @override
  Widget build(BuildContext context) => ValueListenableBuilder<int>(
    valueListenable: widget.countdown,
    builder: (context, seconds, _) {
      if (seconds < 0) return const SizedBox.shrink();
      if (seconds > _total) _total = seconds;
      return Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              t.lurokaPlayerDesign.playingIn(seconds: seconds),
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
            const SizedBox(height: 7),
            LinearProgressIndicator(
              value: (seconds / _total).clamp(0, 1),
              minHeight: 3,
              borderRadius: BorderRadius.circular(3),
               backgroundColor: Colors.white12,
               color: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
      );
    },
  );
}

class VideoPlayerStillWatchingOverlay extends StatelessWidget {
  final bool visible;
  final ValueListenable<int> countdown;
  final FocusNode pauseFocusNode;
  final FocusNode continueFocusNode;
  final PlayerChromeController chromeController;
  final VoidCallback onPause;
  final VoidCallback onContinue;

  const VideoPlayerStillWatchingOverlay({
    super.key,
    required this.visible,
    required this.countdown,
    required this.pauseFocusNode,
    required this.continueFocusNode,
    required this.chromeController,
    required this.onPause,
    required this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    return _VideoPlayerPromptShell(
      visible: visible,
      chromeController: chromeController,
      focusNodes: [pauseFocusNode, continueFocusNode],
      children: [
        Text(
          t.videoControls.stillWatching,
          style: TextStyle(color: Colors.white.withValues(alpha: 0.7), fontSize: 12, fontWeight: .w500),
        ),
        const SizedBox(height: 4),
        ValueListenableBuilder<int>(
          valueListenable: countdown,
          builder: (context, seconds, child) => Text(
            t.videoControls.pausingIn(seconds: '$seconds'),
            style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: .w600),
          ),
        ),
        const SizedBox(height: 12),
        _VideoPlayerPromptActions(
          cancelLabel: t.videoControls.pauseButton,
          cancelFocusNode: pauseFocusNode,
          onCancel: onPause,
          confirmFocusNode: continueFocusNode,
          onConfirm: onContinue,
          confirmChildren: [
            ValueListenableBuilder<int>(
              valueListenable: countdown,
              builder: (context, seconds, child) => Text('$seconds'),
            ),
            const SizedBox(width: 4),
            Text(t.videoControls.continueWatching),
          ],
        ),
      ],
    );
  }
}

class _VideoPlayerPromptShell extends StatelessWidget {
  final bool visible;
  final PlayerChromeController chromeController;
  final List<FocusNode> focusNodes;

  final List<Widget> children;

  const _VideoPlayerPromptShell({
    required this.visible,
    required this.chromeController,
    required this.focusNodes,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: PipService().isPipActive,
      builder: (context, isInPip, child) {
        if (isInPip || !visible) {
          return const SizedBox.shrink();
        }
        return _VideoPlayerPromptPosition(
          chromeController: chromeController,
          child: _VideoPlayerPromptInteractionHold(
            chromeController: chromeController,
            focusNodes: focusNodes,
            child: _VideoPlayerPromptCard(
              child: Column(mainAxisSize: .min, crossAxisAlignment: .start, children: children),
            ),
          ),
        );
      },
    );
  }
}

class _VideoPlayerPromptActions extends StatelessWidget {
  final String cancelLabel;
  final FocusNode cancelFocusNode;
  final VoidCallback onCancel;
  final FocusNode confirmFocusNode;
  final VoidCallback onConfirm;
  final List<Widget> confirmChildren;
  final bool nextEpisodeStyle;

  const _VideoPlayerPromptActions({
    required this.cancelLabel,
    required this.cancelFocusNode,
    required this.onCancel,
    required this.confirmFocusNode,
    required this.onConfirm,
    required this.confirmChildren,
    this.nextEpisodeStyle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FocusableButton(
            focusNode: cancelFocusNode,
            onPressed: onCancel,
            autoScroll: false,
            onNavigateRight: () => confirmFocusNode.requestFocus(),
            onNavigateUp: () {},
            onNavigateDown: () {},
            child: OutlinedButton(
              onPressed: onCancel,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: BorderSide(color: Colors.white.withValues(alpha: nextEpisodeStyle ? 0.2 : 0.5)),
                padding: EdgeInsets.symmetric(vertical: nextEpisodeStyle ? 10 : 12, horizontal: 8),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(nextEpisodeStyle ? 14 : 10)),
              ),
              child: FittedBox(fit: BoxFit.scaleDown, child: Text(cancelLabel, maxLines: 1)),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: FocusableButton(
            focusNode: confirmFocusNode,
            onPressed: onConfirm,
            autoScroll: false,
            onNavigateLeft: () => cancelFocusNode.requestFocus(),
            onNavigateUp: () {},
            onNavigateDown: () {},
            useBackgroundFocus: true,
            child: FilledButton(
              onPressed: onConfirm,
              style: FilledButton.styleFrom(
                backgroundColor: PlatformDetector.isTV() ? Theme.of(context).colorScheme.primary : Colors.white,
                foregroundColor: PlatformDetector.isTV() ? Theme.of(context).colorScheme.onPrimary : Colors.black,
                padding: EdgeInsets.symmetric(vertical: nextEpisodeStyle ? 10 : 12, horizontal: 8),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(nextEpisodeStyle ? 14 : 10)),
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: confirmChildren,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _VideoPlayerPromptPosition extends StatelessWidget {
  final PlayerChromeController chromeController;
  final Widget child;

  const _VideoPlayerPromptPosition({required this.chromeController, required this.child});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: chromeController,
      builder: (context, controlsShown, child) {
        return AnimatedPositioned(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          right: PlatformDetector.isTV() ? 32 : 16,
          bottom: PlatformDetector.isTV()
              ? (controlsShown ? (MediaQuery.sizeOf(context).height - 260).clamp(24.0, 260.0) : 24)
              : (controlsShown ? (MediaQuery.sizeOf(context).height - 300).clamp(16.0, 220.0) : 16),
          child: child!,
        );
      },
      child: child,
    );
  }
}

class _VideoPlayerPromptCard extends StatelessWidget {
  final Widget child;

  const _VideoPlayerPromptCard({required this.child});

  @override
  Widget build(BuildContext context) {
    final content = Padding(padding: const EdgeInsets.all(20), child: child);
    final width = (MediaQuery.sizeOf(context).width - 64).clamp(0.0, PlatformDetector.isTV() ? 420.0 : 360.0);
    final decoration = BoxDecoration(
      color: const Color(0xf2131720),
      border: Border.all(color: Theme.of(context).colorScheme.primary.withValues(alpha: .3)),
      borderRadius: const BorderRadius.all(Radius.circular(18)),
    );
    return Container(width: width, decoration: decoration, child: content);
  }
}

class _VideoPlayerPromptInteractionHold extends StatefulWidget {
  final PlayerChromeController chromeController;
  final List<FocusNode> focusNodes;
  final Widget child;

  const _VideoPlayerPromptInteractionHold({
    required this.chromeController,
    required this.focusNodes,
    required this.child,
  });

  @override
  State<_VideoPlayerPromptInteractionHold> createState() => _VideoPlayerPromptInteractionHoldState();
}

class _VideoPlayerPromptInteractionHoldState extends State<_VideoPlayerPromptInteractionHold> {
  bool _hovered = false;
  bool _focused = false;

  @override
  void initState() {
    super.initState();
    _addFocusListeners(widget.focusNodes);
    _syncFocusState();
  }

  @override
  void didUpdateWidget(_VideoPlayerPromptInteractionHold oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!listEquals(oldWidget.focusNodes, widget.focusNodes)) {
      _removeFocusListeners(oldWidget.focusNodes);
      _addFocusListeners(widget.focusNodes);
      _syncFocusState();
    }
    if (oldWidget.chromeController != widget.chromeController) {
      oldWidget.chromeController.release(PlayerChromeHold.promptInteraction);
      _syncHold();
    }
  }

  @override
  void dispose() {
    _removeFocusListeners(widget.focusNodes);
    widget.chromeController.release(PlayerChromeHold.promptInteraction, notify: false, restartAutoHide: false);
    super.dispose();
  }

  void _addFocusListeners(List<FocusNode> nodes) {
    for (final node in nodes) {
      node.addListener(_syncFocusState);
    }
  }

  void _removeFocusListeners(List<FocusNode> nodes) {
    for (final node in nodes) {
      node.removeListener(_syncFocusState);
    }
  }

  void _syncFocusState() {
    final focused = widget.focusNodes.any((node) => node.hasFocus);
    if (_focused == focused) return;
    _focused = focused;
    _syncHold();
  }

  void _setHovered(bool hovered) {
    if (_hovered == hovered) return;
    _hovered = hovered;
    if (hovered) widget.chromeController.recordPointerActivity();
    _syncHold();
  }

  void _syncHold() {
    if (_hovered || _focused) {
      widget.chromeController.hold(PlayerChromeHold.promptInteraction);
    } else {
      widget.chromeController.release(PlayerChromeHold.promptInteraction);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _setHovered(true),
      onHover: (_) => widget.chromeController.recordPointerActivity(),
      onExit: (_) => _setHovered(false),
      child: widget.child,
    );
  }
}
