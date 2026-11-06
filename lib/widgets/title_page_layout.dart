import 'dart:math' as math;
import 'package:flutter/widgets.dart';

/// Logical-pixel geometry, bounded for both low-resolution TVs and large 4K
/// windows. Hero content and shelves use the same overscan-safe alignment.
class TitlePageLayout {
  TitlePageLayout(Size size, {int marginPercent = 3})
    : scale = (size.height / 720).clamp(0.85, 2.0),
      inset = math.max(32 * (size.height / 720).clamp(0.85, 2.0), size.width * marginPercent / 100),
      heroHeight = math.max(340.0, size.height * 0.72);
  final double scale;
  final double inset;
  final double heroHeight;
  double textWidth(double width) => math.min(width * 0.60, 1040 * scale);
  double get previewHeight => 190 * scale;
}
