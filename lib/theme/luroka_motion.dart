import 'package:flutter/material.dart';

import '../services/device_performance.dart';

/// Luroka's shared motion language.
///
/// One place for the durations and curves the shells animate with, so the
/// dock, hints and shells move as one system instead of each widget picking
/// its own timing. All durations route through [of], which snaps to zero on
/// the reduced-effects tier and for reduced-motion switches — the same rule
/// [FocusTheme.getAnimationDuration] applies to focus chrome.
abstract final class LurokaMotion {
  /// Micro-interactions: selection pills, tint fades.
  static const fast = Duration(milliseconds: 150);

  /// Standard element transitions: the dock's sliding indicator, hint fades.
  static const base = Duration(milliseconds: 220);

  /// Scene-level transitions: shell crossfades, hero moments.
  static const scene = Duration(milliseconds: 350);

  /// The single deceleration curve every Luroka transition uses.
  static const Curve curve = Curves.easeOutCubic;

  /// [duration] when motion is welcome, [Duration.zero] otherwise.
  static Duration of(BuildContext context, [Duration duration = base]) =>
      DevicePerformance.isReduced || (MediaQuery.maybeDisableAnimationsOf(context) ?? false) ? Duration.zero : duration;
}
