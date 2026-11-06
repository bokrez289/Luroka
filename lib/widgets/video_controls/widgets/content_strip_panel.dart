import 'package:flutter/material.dart';

import '../../app_icon.dart';
import '../../../i18n/strings.g.dart';

/// Gradient scrim that hosts the content strip once it is on screen.
///
/// [chevron] points back at the controls the strip replaced — down for the
/// mobile swipe, up for D-pad focus. [padding] compensates for the strip's
/// own horizontal padding, which differs between touch and focus navigation.
class ContentStripPanel extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final IconData chevron;
  final Widget child;

  const ContentStripPanel({super.key, required this.padding, required this.chevron, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xf0101114),
      ),
      child: Column(
        mainAxisSize: .min,
        children: [
          Container(
            width: 36,
            height: 3,
            decoration: BoxDecoration(color: Colors.white24, borderRadius: BorderRadius.circular(2)),
          ),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }
}

/// Chevron pinned to the bottom of the controls hinting that the content
/// strip can be pulled into view. Must be placed directly in a [Stack].
class ContentStripHint extends StatelessWidget {
  final IconData chevron;

  const ContentStripHint(this.chevron, {super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppIcon(chevron, color: Colors.white70, size: 16),
          const SizedBox(width: 4),
          Text(t.playerChrome.browse, style: const TextStyle(color: Colors.white60, fontSize: 10, letterSpacing: 0.4)),
        ],
      ),
    );
  }
}
