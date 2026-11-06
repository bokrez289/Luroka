import 'package:flutter/material.dart';
import '../utils/platform_detector.dart';

/// Shared visual rhythm for mobile filter/sort editors; the child still owns
/// its original staged selection, navigation and backend-specific operators.
class LurokaOptionSurface extends StatelessWidget {
  const LurokaOptionSurface({super.key, required this.child, this.selected = false});
  final Widget child;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    if (!PlatformDetector.isMobile(context)) return child;
    final colors = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: selected ? colors.primary.withValues(alpha: 0.1) : colors.onSurface.withValues(alpha: 0.035),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: selected ? colors.primary.withValues(alpha: 0.3) : colors.onSurface.withValues(alpha: 0.06),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Material(type: MaterialType.transparency, child: child),
    );
  }
}
