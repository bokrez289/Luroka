import 'dart:math' as math;

import 'package:flutter/material.dart';

/// Watch Together's own look: a deep night backdrop with violet glows, glass
/// cards and a violet→rose accent — a venue of its own rather than another
/// settings page. The screen forces the app's dark theme over it, so all
/// theme-aware section widgets read correctly; these tokens add the parts
/// the theme can't express.
abstract final class WatchCinema {
  /// The venue backdrop: deep night, slightly violet at the bottom.
  static const backdropTop = Color(0xff0a0c16);
  static const backdropMiddle = Color(0xff131028);
  static const backdropBottom = Color(0xff1c1034);

  /// The party accent: violet to rose, for primary actions and highlights.
  static const accentStart = Color(0xff7c5cff);
  static const accentEnd = Color(0xffff7ab8);
  static const accentGradient = LinearGradient(
    colors: [accentStart, accentEnd],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const cardRadius = 20.0;
  static const chipRadius = 999.0;

  /// A glass card surface: translucent white over the night backdrop.
  static Color glass(BuildContext context) => Theme.of(context).colorScheme.onSurface.withValues(alpha: .06);

  static Color glassBorder(BuildContext context) => Theme.of(context).colorScheme.onSurface.withValues(alpha: .14);

  /// Secondary text on the venue surfaces.
  static Color textMuted(BuildContext context) => Theme.of(context).colorScheme.onSurface.withValues(alpha: .64);

  static BoxDecoration card(BuildContext context, {double radius = cardRadius}) => BoxDecoration(
    color: glass(context),
    borderRadius: BorderRadius.circular(radius),
    border: Border.all(color: glassBorder(context)),
  );

  /// The full-bleed venue backdrop with two soft glows.
  static Widget backdrop({required Widget child}) {
    return Builder(
      builder: (context) {
        final scheme = Theme.of(context).colorScheme;
        final base = scheme.brightness == Brightness.dark ? scheme.surface : backdropTop;
        return DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [base, Color.alphaBlend(scheme.primary.withValues(alpha: .10), base), base],
            ),
          ),
          child: Stack(
            children: [
              Positioned(left: -120, top: -140, child: _Glow(size: 360, color: scheme.primary.withValues(alpha: .12))),
              Positioned(
                right: -140,
                bottom: -120,
                child: _Glow(size: 420, color: scheme.secondary.withValues(alpha: .10)),
              ),
              child,
            ],
          ),
        );
      },
    );
  }

  /// A deterministic per-participant hue from their peer id, capped below
  /// 330° so nobody lands near the error red.
  static double avatarHue(String seed) {
    var hash = 0;
    for (final rune in seed.codeUnits) {
      hash = (hash * 31 + rune) & 0x7fffffff;
    }
    return (hash % 330).toDouble();
  }

  /// The participant color for [seed]: a saturated pastel that reads on the
  /// night backdrop.
  static Color avatarColor(String seed) {
    return HSLColor.fromAHSL(1, avatarHue(seed), .62, .66).toColor();
  }
}

class _Glow extends StatelessWidget {
  const _Glow({required this.size, required this.color});

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: SizedBox.square(
        dimension: size,
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(colors: [color, color.withValues(alpha: 0)]),
          ),
        ),
      ),
    );
  }
}

/// mm:ss (or h:mm:ss) for the room's progress labels.
String watchClockLabel(int milliseconds) {
  final totalSeconds = math.max(0, milliseconds) ~/ 1000;
  final hours = totalSeconds ~/ 3600;
  final minutes = (totalSeconds % 3600) ~/ 60;
  final seconds = totalSeconds % 60;
  String two(int value) => value.toString().padLeft(2, '0');
  return hours > 0 ? '$hours:${two(minutes)}:${two(seconds)}' : '$minutes:${two(seconds)}';
}
