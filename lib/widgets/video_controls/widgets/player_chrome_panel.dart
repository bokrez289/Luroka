import 'package:flutter/material.dart';
import '../../../utils/platform_detector.dart';

/// Paint-only player surface. No blur or backdrop sampling, so the same chrome
/// remains inexpensive over hardware-decoded HDR video on a Fire Stick.
class PlayerChromePanel extends StatelessWidget {
  const PlayerChromePanel({super.key, required this.child, this.padding = const EdgeInsets.all(16), this.radius = 24});
  final Widget child;
  final EdgeInsetsGeometry padding;
  final double radius;

  @override
  Widget build(BuildContext context) {
    if (PlatformDetector.isTV()) {
      final accent = Theme.of(context).colorScheme.primary;
      return DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.alphaBlend(accent.withValues(alpha: 0.12), const Color(0xf21a202b)),
              const Color(0xf20b0d12),
            ],
          ),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: const Color(0x26ffffff)),
          boxShadow: const [BoxShadow(color: Color(0x50000000), blurRadius: 20, offset: Offset(0, 6))],
        ),
        child: Padding(padding: padding, child: child),
      );
    }
    if (PlatformDetector.isMobile(context)) {
      final accent = Theme.of(context).colorScheme.primary;
      return DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.alphaBlend(accent.withValues(alpha: 0.10), const Color(0xeb121b29)),
              const Color(0xeb080c14),
            ],
          ),
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(color: const Color(0x24ffffff)),
        ),
        child: Padding(padding: padding, child: child),
      );
    }
    return DecoratedBox(
      decoration: BoxDecoration(color: const Color(0xc0101114), borderRadius: BorderRadius.circular(8)),
      child: Padding(padding: padding, child: child),
    );
  }
}
