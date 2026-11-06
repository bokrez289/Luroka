import 'package:flutter/material.dart';
import 'package:luroka/widgets/app_icon.dart';

/// A circular semi-transparent button used in the mobile video controls.
///
/// Renders an [AppIcon] inside an [IconButton] on a black circle with 50%
/// opacity. Disabled buttons grey out the icon.
class CircularControlButton extends StatelessWidget {
  final String semanticLabel;
  final IconData icon;
  final double iconSize;
  final VoidCallback? onPressed;
  final bool emphasized;
  final String? caption;

  const CircularControlButton({
    super.key,
    required this.semanticLabel,
    required this.icon,
    required this.iconSize,
    this.onPressed,
    this.emphasized = false,
    this.caption,
  });

  @override
  Widget build(BuildContext context) {
    final isEnabled = onPressed != null;
    final colors = Theme.of(context).colorScheme;
    final foreground = isEnabled ? (emphasized ? colors.onPrimary : Colors.white) : Colors.white30;
    return Container(
      decoration: BoxDecoration(
        color: emphasized ? colors.primary : const Color(0x66101826),
        borderRadius: BorderRadius.circular(emphasized ? 24 : 17),
        border: Border.all(color: emphasized ? colors.primary.withValues(alpha: 0.5) : Colors.white12),
      ),
      child: Semantics(
        label: semanticLabel,
        button: true,
        enabled: isEnabled,
        onTap: onPressed,
        excludeSemantics: true,
        child: IconButton(
          icon: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppIcon(icon, fill: emphasized ? 1 : 0, color: foreground, size: iconSize),
              if (caption != null)
                Text(
                  caption!,
                  style: TextStyle(color: foreground, fontSize: 10, fontWeight: FontWeight.w700),
                ),
            ],
          ),
          iconSize: iconSize,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
