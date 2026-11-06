import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show KeyDownEvent, LogicalKeyboardKey;
import 'package:material_symbols_icons/symbols.dart';

import '../../../focus/focusable_wrapper.dart';
import '../../../i18n/strings.g.dart';
import '../../../media/media_source_info.dart';
import '../../app_icon.dart';
import '../../../utils/platform_detector.dart';

class SkipMarkerButton extends StatelessWidget {
  final MediaMarker marker;
  final Duration playerDuration;
  final bool hasNextEpisode;
  final bool isAutoSkipActive;
  final bool shouldShowAutoSkip;
  final int autoSkipDelay;
  final double autoSkipProgress;
  final FocusNode focusNode;
  final VoidCallback onActivate;
  final VoidCallback onFocusDown;

  const SkipMarkerButton({
    super.key,
    required this.marker,
    required this.playerDuration,
    required this.hasNextEpisode,
    required this.isAutoSkipActive,
    required this.shouldShowAutoSkip,
    required this.autoSkipDelay,
    required this.autoSkipProgress,
    required this.focusNode,
    required this.onActivate,
    required this.onFocusDown,
  });

  @override
  Widget build(BuildContext context) {
    final isCredits = marker.isCredits;
    final tv = PlatformDetector.isTV();
    final accent = Theme.of(context).colorScheme.primary;
    final creditsAtEnd =
        isCredits && playerDuration > Duration.zero && (playerDuration - marker.endTime).inMilliseconds <= 1000;
    final showNextEpisode = creditsAtEnd && hasNextEpisode;
    String baseButtonText;
    if (showNextEpisode) {
      baseButtonText = t.videoControls.nextEpisode;
    } else if (isCredits) {
      baseButtonText = t.videoControls.skipCredits;
    } else {
      baseButtonText = t.videoControls.skipIntro;
    }

    final remainingSeconds = isAutoSkipActive && shouldShowAutoSkip
        ? (autoSkipDelay - (autoSkipProgress * autoSkipDelay)).ceil().clamp(0, autoSkipDelay)
        : 0;

    final showAutoSkipCountdown = isAutoSkipActive && shouldShowAutoSkip;
    final buttonText = showAutoSkipCountdown && remainingSeconds > 0
        ? (tv ? '$baseButtonText · $remainingSeconds' : '$baseButtonText ($remainingSeconds)')
        : baseButtonText;
    final buttonIcon = showNextEpisode ? Symbols.skip_next_rounded : Symbols.fast_forward_rounded;

    return FocusableWrapper(
      focusNode: focusNode,
      onSelect: _activate,
      borderRadius: 16,
      useBackgroundFocus: true,
      autoScroll: false,
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent && event.logicalKey == LogicalKeyboardKey.arrowDown) {
          onFocusDown();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: _activate,
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: tv ? const Color(0xf2131720) : Colors.white,
                  border: tv ? Border.all(color: accent.withValues(alpha: .5)) : null,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(color: Colors.black.withValues(alpha: 0.3), blurRadius: 8, offset: const Offset(0, 2)),
                  ],
                ),
                child: Row(
                  mainAxisSize: .min,
                  children: [
                    Text(
                      buttonText,
                      style: TextStyle(color: tv ? Colors.white : Colors.black, fontSize: 16, fontWeight: .w600),
                    ),
                    const SizedBox(width: 8),
                    AppIcon(buttonIcon, fill: 1, color: tv ? accent : Colors.black, size: 20),
                  ],
                ),
              ),
              if (isAutoSkipActive && shouldShowAutoSkip)
                Positioned(
                  left: 12,
                  right: 12,
                  bottom: 0,
                  child: LinearProgressIndicator(
                    value: autoSkipProgress.clamp(0, 1),
                    minHeight: 3,
                    color: tv ? accent : Colors.black54,
                    backgroundColor: Colors.white12,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _activate() => onActivate();
}
