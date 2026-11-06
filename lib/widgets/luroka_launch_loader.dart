import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../services/device_performance.dart';
import '../utils/app_identity.dart';

/// The same static mark throughout Android's native-to-Flutter TV handoff.
class LaunchBrandMark extends StatelessWidget {
  const LaunchBrandMark({super.key, this.size = 120});
  final double size;

  @override
  Widget build(BuildContext context) => SvgPicture.asset(
    AppIdentity.markAsset,
    width: size,
    height: size,
    semanticsLabel: AppIdentity.name,
  );
}

/// Luroka's launch loader.
///
/// The beam of the mark ignites instead of a spinner: the beam contour traces
/// itself in, the fill sweeps across with the brand gradient, the stem rises
/// into place, and an ambient glow breathes behind the mark while the
/// [progress] filament reports real startup progress.
///
/// Every animation is finite — one ignition pass plus [loops] ambient cycles —
/// so `pumpAndSettle` always terminates and the loader parks on its lit frame
/// instead of ticking forever behind a modal (a profile picker can hold the
/// setup screen for minutes). Reduced-motion settings and the low-end
/// hardware tier skip straight to the lit frame with no controllers running.
class LurokaLaunchLoader extends StatefulWidget {
  const LurokaLaunchLoader({
    super.key,
    this.caption,
    this.progress,
    this.markSize = 136,
    this.tvLayout = false,
    this.loops = 10,
  });

  /// Progress fraction 0.1 for the filament line, or `null` for the
  /// indeterminate sweep.
  final double? progress;

  /// Status shown under the filament, crossfading on change. Startup keeps
  /// this empty unless something is wrong: connecting is silent, failure is
  /// the one state the loader names.
  final String? caption;

  /// Width of the mark; the height follows the mark's 590:630 aspect.
  final double markSize;

  /// 10-foot layout: larger mark, caption and chips for TV screens.
  final bool tvLayout;

  /// Ambient (breathing + shimmer) cycles before the loader parks.
  final int loops;

  @override
  State<LurokaLaunchLoader> createState() => _LurokaLaunchLoaderState();
}

class _LurokaLaunchLoaderState extends State<LurokaLaunchLoader> with TickerProviderStateMixin {
  static const _igniteDuration = Duration(milliseconds: 1400);
  static const _ambientCycle = Duration(milliseconds: 2800);

  late final AnimationController _ignite = AnimationController(vsync: this, duration: _igniteDuration);
  late final AnimationController _ambient = AnimationController(vsync: this, duration: _ambientCycle * widget.loops);

  bool _started = false;

  /// Whether motion is welcome: the OS reduced-motion switch and the
  /// low-end hardware tier both pin the loader to its lit frame.
  bool get _isAnimated => !(MediaQuery.maybeDisableAnimationsOf(context) ?? false) && !DevicePerformance.isReduced;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_started) return;
    _started = true;
    if (_isAnimated) {
      _ignite.forward();
      _ambient.forward();
    }
  }

  @override
  void dispose() {
    _ignite.dispose();
    _ambient.dispose();
    super.dispose();
  }

  double get _phase => (_ambient.value * widget.loops) % 1;

  @override
  Widget build(BuildContext context) {
    final animated = _isAnimated;
    final theme = Theme.of(context);
    final tv = widget.tvLayout;

    // One listenable drives the whole loader: the tree is tiny, and every
    // child (shimmer, pulse dots) reads a phase captured at build time.
    return Semantics(
      label: AppIdentity.name,
      excludeSemantics: true,
      child: ListenableBuilder(
        listenable: animated ? Listenable.merge([_ignite, _ambient]) : const _NoopListenable(),
        builder: (context, _) {
          final phase = animated ? _phase : 0.0;
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomPaint(
                size: Size(widget.markSize, widget.markSize * 630 / 590),
                painter: _IgnitionMarkPainter(ignite: animated ? _ignite.value : 1, breathePhase: phase),
              ),
              SizedBox(height: tv ? 40 : 28),
              _Filament(
                width: widget.markSize * 0.92,
                thickness: tv ? 3 : 2,
                progress: widget.progress,
                shimmerPhase: animated ? phase : null,
              ),
              if (widget.caption != null) ...[
                SizedBox(height: tv ? 26 : 18),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  child: Text(
                    widget.caption!,
                    key: ValueKey(widget.caption),
                    textAlign: TextAlign.center,
                    style: (tv ? theme.textTheme.bodyLarge : theme.textTheme.bodyMedium)?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.55),
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}

class _NoopListenable implements Listenable {
  const _NoopListenable();

  @override
  void addListener(VoidCallback listener) {}

  @override
  void removeListener(VoidCallback listener) {}
}

/// Paints the Luroka mark in the SVG's user space (`230 190 590 630`).
///
/// Timeline over [ignite] 0.1:
/// - 0.00–0.50: the beam contour traces itself in as a stroke;
/// - 0.28–0.64: the stem fades in and rises into place;
/// - 0.42–0.72: the beam fill sweeps on (stroke crossfades out);
/// - 0.55–1.00: the ambient glow blooms behind the mark and then breathes
/// with [breathePhase] for as long as the loader lives.
class _IgnitionMarkPainter extends CustomPainter {
  _IgnitionMarkPainter({required this.ignite, required this.breathePhase});

  final double ignite;
  final double breathePhase;

  static final Path _stemPath = Path()
    ..moveTo(318, 228)
    ..cubicTo(300, 228, 286, 242, 286, 260)
    ..lineTo(286, 630)
    ..cubicTo(286, 726, 342, 782, 438, 782)
    ..lineTo(706, 782)
    ..cubicTo(728, 782, 746, 764, 746, 742)
    ..lineTo(746, 698)
    ..cubicTo(746, 676, 728, 658, 706, 658)
    ..lineTo(446, 658)
    ..cubicTo(424, 658, 410, 644, 410, 622)
    ..lineTo(410, 260)
    ..cubicTo(410, 242, 396, 228, 378, 228)
    ..close();

  static final Path _beamPath = Path()
    ..moveTo(506, 244)
    ..cubicTo(494, 236, 480, 244, 480, 258)
    ..lineTo(480, 366)
    ..cubicTo(480, 374, 484, 382, 492, 386)
    ..lineTo(642, 476)
    ..lineTo(492, 566)
    ..cubicTo(484, 570, 480, 578, 480, 586)
    ..lineTo(480, 618)
    ..cubicTo(480, 634, 498, 642, 510, 632)
    ..lineTo(760, 492)
    ..cubicTo(772, 484, 772, 468, 760, 460)
    ..close();

  static final double _beamLength = _beamPath.computeMetrics().first.length;

  // Brand gradients, sampled from assets/luroka-mark.svg.
  // Brand gradients, sampled from assets/luroka-mark.svg. Alpha is baked
  // into the stops per frame — a shader replaces the paint colour, so the
  // ignition fades cannot ride on Paint.alpha.
  static const _stemStops = [Color(0xFFFF766F), Color(0xFFFF987B), Color(0xFFFFC395)];
  static const _stemStopsAt = [0.0, 0.55, 1.0];
  static const _beamStops = [Color(0xFFFFAC89), Color(0xFFFFE2B8)];

  static Paint _gradientPaint(Offset from, Offset to, List<Color> stops, List<double>? positions, double alpha) =>
      Paint()
        ..shader = ui.Gradient.linear(from, to, [for (final color in stops) color.withValues(alpha: alpha)], positions);

  static double _smooth(double t) {
    t = t.clamp(0.0, 1.0);
    return t * t * (3 - 2 * t);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final scale = size.width / 590;
    canvas.save();
    canvas.scale(scale);
    canvas.translate(-230, -190);

    final glowT = _smooth((ignite - 0.55) / 0.45);
    if (glowT > 0) {
      // Parked phase is 0, which cos maps to the brightest rest state, so the
      // loader settles on a calm lit glow rather than mid-breath.
      final factor = 0.8 + 0.2 * math.cos(2 * math.pi * breathePhase);
      final glow = Paint()
        ..shader = ui.Gradient.radial(const Offset(600, 470), 340, [
          Color(0xFFFF987B).withValues(alpha: 0.15 * glowT * factor),
          Color(0xFFFF987B).withValues(alpha: 0),
        ]);
      canvas.drawCircle(const Offset(600, 470), 340, glow);
    }

    final stemT = _smooth((ignite - 0.28) / 0.36);
    if (stemT > 0) {
      canvas.save();
      canvas.translate(0, (1 - stemT) * 26);
      canvas.drawPath(
        _stemPath,
        _gradientPaint(const Offset(286, 228), const Offset(700, 782), _stemStops, _stemStopsAt, stemT),
      );
      canvas.restore();
    }

    final beamT = _smooth((ignite - 0.42) / 0.30);
    if (beamT > 0) {
      canvas.drawPath(
        _beamPath,
        _gradientPaint(const Offset(480, 244), const Offset(766, 630), _beamStops, null, beamT),
      );
    }

    final strokeAlpha = 1 - _smooth((ignite - 0.35) / 0.30);
    if (strokeAlpha > 0) {
      final traceT = (ignite / 0.50).clamp(0.0, 1.0);
      final traced = _beamPath.computeMetrics().first.extractPath(0, _beamLength * traceT);
      canvas.drawPath(
        traced,
        _gradientPaint(const Offset(480, 244), const Offset(766, 630), _beamStops, null, strokeAlpha)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 7
          ..strokeCap = StrokeCap.round
          ..strokeJoin = StrokeJoin.round,
      );
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(_IgnitionMarkPainter oldDelegate) =>
      oldDelegate.ignite != ignite || oldDelegate.breathePhase != breathePhase;
}

/// The progress filament under the mark: a hairline that either fills with
/// [progress] or sweeps an indeterminate segment along the track.
class _Filament extends StatelessWidget {
  const _Filament({required this.width, required this.thickness, required this.progress, required this.shimmerPhase});

  final double width;
  final double thickness;
  final double? progress;

  /// Ambient phase driving the sweep, or `null` for a static track.
  final double? shimmerPhase;

  static const _fill = Color(0xFFFF987B);

  @override
  Widget build(BuildContext context) {
    final onSurface = Theme.of(context).colorScheme.onSurface;
    final track = onSurface.withValues(alpha: 0.08);

    Widget content;
    if (progress != null) {
      content = TweenAnimationBuilder<double>(
        tween: Tween(begin: 0, end: progress!.clamp(0.0, 1.0)),
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOutCubic,
        builder: (context, value, _) => Align(
          alignment: AlignmentDirectional.centerStart,
          child: FractionallySizedBox(
            widthFactor: value,
            child: DecoratedBox(
              decoration: BoxDecoration(color: _fill, borderRadius: BorderRadius.circular(thickness)),
              child: const SizedBox.expand(),
            ),
          ),
        ),
      );
    } else if (shimmerPhase != null) {
      // A short segment sweeping the track, edge-faded so it never pops at
      // either end of its travel.
      final segment = width * 0.35;
      final travel = width + segment;
      final x = -segment + shimmerPhase! * travel;
      content = ClipRect(
        child: Stack(
          children: [
            Positioned(
              left: x,
              top: 0,
              width: segment,
              height: thickness,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(thickness),
                  gradient: LinearGradient(colors: [_fill.withValues(alpha: 0), _fill, _fill.withValues(alpha: 0)]),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      content = Center(
        child: FractionallySizedBox(
          widthFactor: 0.4,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: onSurface.withValues(alpha: 0.18),
              borderRadius: BorderRadius.circular(thickness),
            ),
            child: const SizedBox.expand(),
          ),
        ),
      );
    }

    return SizedBox(
      width: width,
      height: thickness,
      child: DecoratedBox(
        decoration: BoxDecoration(color: track, borderRadius: BorderRadius.circular(thickness)),
        child: content,
      ),
    );
  }
}
