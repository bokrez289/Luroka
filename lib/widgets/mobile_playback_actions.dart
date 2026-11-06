import 'package:flutter/material.dart';
import '../focus/focusable_button.dart';
import '../i18n/strings.g.dart';

/// Short, readable playback labels. Large text or long translations switch to
/// a vertical arrangement rather than truncating the action the user can take.
class MobilePlaybackActions extends StatelessWidget {
  const MobilePlaybackActions({
    super.key,
    required this.label,
    required this.icon,
    required this.onPlay,
    this.onRestart,
    this.playFocus,
    this.onNavigateDown,
    this.contextLabel,
  });
  final String label;
  final Widget icon;
  final VoidCallback onPlay;
  final VoidCallback? onRestart;
  final FocusNode? playFocus;
  final VoidCallback? onNavigateDown;
  final String? contextLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.labelLarge!.copyWith(fontSize: 14, fontWeight: FontWeight.w700);
    double width(String label) {
      final painter = TextPainter(
        text: TextSpan(text: label, style: style),
        textDirection: Directionality.of(context),
        textScaler: MediaQuery.textScalerOf(context),
      )..layout();
      final result = painter.width + 56;
      painter.dispose();
      return result;
    }

    return LayoutBuilder(
      builder: (context, bounds) {
        final sideBySide =
            onRestart != null &&
            bounds.maxWidth >=
                2 *
                        (width(label) > width(t.detailComposition.startOver)
                            ? width(label)
                            : width(t.detailComposition.startOver)) +
                    8;
        final buttonStyle = FilledButton.styleFrom(
          minimumSize: const Size.fromHeight(48),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          textStyle: style,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        );
        final primary = FocusableButton(
          focusNode: playFocus,
          borderRadius: 12,
          onPressed: onPlay,
          onNavigateDown: onNavigateDown,
          child: FilledButton.icon(
            key: const ValueKey('mobile_title_primary_play'),
            onPressed: onPlay,
            icon: icon,
            label: Text(label, textAlign: TextAlign.center),
            style: buttonStyle,
          ),
        );
        final secondary = onRestart == null
            ? null
            : OutlinedButton.icon(
                key: const ValueKey('mobile_title_restart'),
                onPressed: onRestart,
                icon: const Icon(Icons.replay_rounded, size: 20),
                label: Text(t.detailComposition.startOver, textAlign: TextAlign.center),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  textStyle: style,
                  foregroundColor: theme.colorScheme.onSurface,
                  side: BorderSide(color: theme.colorScheme.outlineVariant),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              );
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (sideBySide)
              Row(
                children: [
                  Expanded(child: primary),
                  const SizedBox(width: 8),
                  Expanded(child: secondary!),
                ],
              )
            else ...[
              primary,
              if (secondary != null) ...[const SizedBox(height: 8), secondary],
            ],
            if (contextLabel != null)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  contextLabel!,
                  key: const ValueKey('mobile_title_episode_context'),
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                ),
              ),
          ],
        );
      },
    );
  }
}
