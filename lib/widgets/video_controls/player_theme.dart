import 'package:flutter/material.dart';

import '../../theme/mono_theme.dart';

/// A neutral cinema surface shared by player chrome and every hosted sheet.
/// Dark accents from light themes are lifted until they remain legible here.
class PlayerTheme extends StatelessWidget {
  const PlayerTheme({super.key, required this.child});

  final Widget child;

  static const surface = Color(0xff17191f);
  static const background = Color(0xff101114);

  static Color readableAccent(Color accent) {
    final opaque = accent.withValues(alpha: 1);
    if (MonoPalette.contrastRatio(opaque, surface) >= 4.5) return opaque;
    var low = 0.0;
    var high = 1.0;
    for (var i = 0; i < 20; i++) {
      final mid = (low + high) / 2;
      final candidate = Color.lerp(opaque, Colors.white, mid)!;
      if (MonoPalette.contrastRatio(candidate, surface) >= 4.5) {
        high = mid;
      } else {
        low = mid;
      }
    }
    return Color.lerp(opaque, Colors.white, high)!;
  }

  @override
  Widget build(BuildContext context) {
    final accent = readableAccent(Theme.of(context).colorScheme.primary);
    final theme = monoTheme(
      MonoPalette(
        bg: background,
        surface: surface,
        outline: const Color(0x38ffffff),
        text: const Color(0xfff4f5f8),
        textMuted: const Color(0xffb7bbc4),
        accent: accent,
      ),
    );
    return Theme(data: theme, child: child);
  }
}
