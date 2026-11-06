import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../services/device_performance.dart';
import '../../theme/kids_style.dart';

/// Static painted scenery: no perpetual tickers, blur layers, or particle work.
class KidsSky extends StatelessWidget {
  const KidsSky({super.key, required this.style, this.child});
  final KidsStyle style;
  final Widget? child;

  @override
  Widget build(BuildContext context) => Stack(
    fit: StackFit.expand,
    children: [
      Positioned.fill(
        child: ExcludeSemantics(
          child: IgnorePointer(
            child: RepaintBoundary(child: CustomPaint(painter: _SkyPainter(style, DevicePerformance.isReduced))),
          ),
        ),
      ),
      ?child,
    ],
  );
}

class _SkyPainter extends CustomPainter {
  const _SkyPainter(this.style, this.reduced);
  final KidsStyle style;
  final bool reduced;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    canvas.drawRect(rect, Paint()..color = style.background);
    canvas.drawRect(
      rect,
      Paint()
        ..shader = RadialGradient(
          center: const Alignment(-0.8, -1),
          radius: 1.5,
          colors: [style.violet.withValues(alpha: 0.22), style.background.withValues(alpha: 0)],
        ).createShader(rect),
    );
    canvas.drawRect(
      rect,
      Paint()
        ..shader = RadialGradient(
          center: const Alignment(1, 0.4),
          radius: 1.1,
          colors: [style.teal.withValues(alpha: 0.1), style.background.withValues(alpha: 0)],
        ).createShader(rect),
    );
    if (style.isOlder) return;
    final paint = Paint();
    final count = reduced ? 10 : 32;
    for (var i = 0; i < count; i++) {
      final center = Offset(((i * 73 + 19) % 997) / 997 * size.width, ((i * 131 + 37) % 991) / 991 * size.height);
      paint.color = (i.isEven ? style.teal : Colors.white).withValues(alpha: i % 3 == 0 ? 0.32 : 0.14);
      canvas.drawCircle(center, i % 5 == 0 ? 2 : 1, paint);
      if (i % 9 == 0) {
        paint.strokeWidth = 1;
        canvas.drawLine(center - const Offset(4, 0), center + const Offset(4, 0), paint);
        canvas.drawLine(center - const Offset(0, 4), center + const Offset(0, 4), paint);
      }
    }
    final planet = Offset(size.width * 0.9, size.height * 0.14);
    final radius = math.min(size.width * 0.045, 42.0);
    canvas.drawCircle(planet, radius, Paint()..color = style.violet.withValues(alpha: 0.14));
    canvas.save();
    canvas.translate(planet.dx, planet.dy);
    canvas.rotate(-0.4);
    canvas.drawOval(
      Rect.fromCenter(center: Offset.zero, width: radius * 3.3, height: radius * 0.8),
      Paint()
        ..color = style.teal.withValues(alpha: 0.24)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.5,
    );
    canvas.restore();
  }

  @override
  bool shouldRepaint(_SkyPainter old) => old.style.maxAge != style.maxAge || old.reduced != reduced;
}

/// One welcome transition per mount. Accessibility and low-end tiers snap.
class KidsEntrance extends StatelessWidget {
  const KidsEntrance({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (KidsStyle.reduceMotion(context)) return child;
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: KidsStyle.motion(context, 480),
      curve: Curves.easeOutCubic,
      child: child,
      builder: (context, value, child) => value == 1
          ? child!
          : Opacity(
              opacity: value,
              child: Transform.translate(offset: Offset(0, 14 * (1 - value)), child: child),
            ),
    );
  }
}
