import 'package:flutter/material.dart';

import '../navigation/navigation_tabs.dart';
import '../theme/luroka_motion.dart';

/// Luroka's floating mobile dock. Geometry-led line icons are drawn locally so
/// the primary navigation has its own visual identity at every pixel density.
class LurokaMobileNavigation extends StatelessWidget {
  const LurokaMobileNavigation({
    super.key,
    required this.tabs,
    required this.selected,
    required this.onSelected,
    this.onLibrariesLongPress,
    this.onHomeDoubleTap,
    this.onDestinationDoubleTap,
    this.showLabels = true,
  });
  final List<NavigationTab> tabs;
  final NavigationTabId selected;
  final ValueChanged<NavigationTabId> onSelected;
  final VoidCallback? onLibrariesLongPress;
  final VoidCallback? onHomeDoubleTap;
  final ValueChanged<NavigationTabId>? onDestinationDoubleTap;
  final bool showLabels;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 7, 12, 9),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: colors.surface,
            borderRadius: BorderRadius.circular(26),
            border: Border.all(color: colors.onSurface.withValues(alpha: 0.08)),
            boxShadow: [
              BoxShadow(color: Colors.black.withValues(alpha: 0.12), blurRadius: 24, offset: const Offset(0, 6)),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
            child: Row(
              children: [
                for (final tab in tabs)
                  Expanded(
                    child: Semantics(
                      button: true,
                      selected: selected == tab.id,
                      label: tab.getLabel(),
                      excludeSemantics: true,
                      onTap: () => onSelected(tab.id),
                      onLongPress: tab.id == NavigationTabId.libraries ? onLibrariesLongPress : null,
                      child: Tooltip(
                        message: tab.getLabel(),
                        child: InkWell(
                          key: ValueKey('luroka_nav_${tab.id.name}'),
                          borderRadius: BorderRadius.circular(20),
                          onTap: () => onSelected(tab.id),
                          onDoubleTap: onDestinationDoubleTap != null
                              ? () => onDestinationDoubleTap!(tab.id)
                              : tab.id == NavigationTabId.discover
                              ? onHomeDoubleTap
                              : null,
                          onLongPress: tab.id == NavigationTabId.libraries ? onLibrariesLongPress : null,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 7),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AnimatedContainer(
                                  duration: LurokaMotion.of(context, LurokaMotion.fast),
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: selected == tab.id
                                        ? colors.primary.withValues(alpha: 0.16)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: CustomPaint(
                                    size: const Size(23, 23),
                                    painter: _DockIcon(
                                      tab.id,
                                      selected == tab.id ? colors.primary : colors.onSurfaceVariant,
                                    ),
                                  ),
                                ),
                                if (showLabels) ...[
                                  const SizedBox(height: 3),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 2),
                                    child: Text(
                                      tab.getLabel(),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: selected == tab.id ? FontWeight.w800 : FontWeight.w500,
                                        color: selected == tab.id ? colors.primary : colors.onSurfaceVariant,
                                      ),
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DockIcon extends CustomPainter {
  const _DockIcon(this.id, this.color);
  final NavigationTabId id;
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();
    canvas.scale(size.width / 24, size.height / 24);
    final pen = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.8
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    final path = Path();
    switch (id) {
      case NavigationTabId.discover:
        path.moveTo(3, 10);
        path.lineTo(12, 3);
        path.lineTo(21, 10);
        path.moveTo(5, 9);
        path.lineTo(5, 21);
        path.lineTo(10, 21);
        path.lineTo(10, 15);
        path.lineTo(14, 15);
        path.lineTo(14, 21);
        path.lineTo(19, 21);
        path.lineTo(19, 9);
      case NavigationTabId.favorites:
        path.moveTo(12, 21);
        path.cubicTo(9, 18, 2, 13, 3, 7);
        path.cubicTo(4, 2, 10, 2, 12, 7);
        path.cubicTo(14, 2, 20, 2, 21, 7);
        path.cubicTo(22, 13, 15, 18, 12, 21);
      case NavigationTabId.search:
        canvas.drawCircle(const Offset(10, 10), 7, pen);
        path.moveTo(15, 15);
        path.lineTo(22, 22);
      case NavigationTabId.explore:
        canvas.drawCircle(const Offset(12, 12), 9, pen);
        path.moveTo(16, 7);
        path.lineTo(14, 14);
        path.lineTo(7, 17);
        path.lineTo(10, 10);
        path.close();
      case NavigationTabId.downloads:
        path.moveTo(12, 3);
        path.lineTo(12, 16);
        path.moveTo(7, 11);
        path.lineTo(12, 16);
        path.lineTo(17, 11);
        path.moveTo(4, 18);
        path.lineTo(4, 21);
        path.lineTo(20, 21);
        path.lineTo(20, 18);
      case NavigationTabId.settings:
        canvas.drawCircle(const Offset(12, 7), 4, pen);
        path.moveTo(4, 22);
        path.cubicTo(4, 12, 20, 12, 20, 22);
      case NavigationTabId.kidsMovies:
        canvas.drawRRect(RRect.fromRectAndRadius(const Rect.fromLTWH(3, 4, 18, 16), const Radius.circular(3)), pen);
        path.moveTo(7, 4);
        path.lineTo(7, 20);
        path.moveTo(17, 4);
        path.lineTo(17, 20);
        for (final y in [8.0, 15.0]) {
          path.moveTo(3, y);
          path.lineTo(7, y);
          path.moveTo(17, y);
          path.lineTo(21, y);
        }
      case NavigationTabId.kidsShows || NavigationTabId.liveTv:
        canvas.drawRRect(RRect.fromRectAndRadius(const Rect.fromLTWH(3, 7, 18, 14), const Radius.circular(3)), pen);
        path.moveTo(8, 2);
        path.lineTo(12, 7);
        path.lineTo(16, 2);
      case NavigationTabId.libraries:
        canvas.drawRRect(RRect.fromRectAndRadius(const Rect.fromLTWH(6, 4, 15, 17), const Radius.circular(3)), pen);
        path.moveTo(3, 7);
        path.lineTo(3, 19);
        path.moveTo(11, 9);
        path.lineTo(16, 12);
        path.lineTo(11, 15);
        path.close();
    }
    canvas.drawPath(path, pen);
    canvas.restore();
  }

  @override
  bool shouldRepaint(_DockIcon oldDelegate) => oldDelegate.id != id || oldDelegate.color != color;
}
