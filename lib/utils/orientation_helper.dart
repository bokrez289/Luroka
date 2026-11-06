import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'platform_detector.dart';

class OrientationHelper {
  /// Whether the platform, not the app, owns display rotation.
  ///
  /// Cars are fixed-orientation head units, and a TV never rotates at all.
  /// Asking anyway is not a harmless no-op there: Flutter encodes
  /// [DeviceOrientation.values] as Android's `SCREEN_ORIENTATION_FULL_USER`,
  /// which is one of only two request values that make WindowManager accept a
  /// 180° display rotation — every app that leaves orientation alone has that
  /// rotation filtered out by `config_allowAllRotations`. On a TV box that does
  /// not pin rotation itself, the app alone then renders upside down.
  static bool get _platformOwnsOrientation => PlatformDetector.isAutomotive() || PlatformDetector.isTV();

  /// Allows rotation in the player when its rotation lock is disabled.
  static Future<void> restoreDefaultOrientations() async {
    if (_platformOwnsOrientation) return;
    await SystemChrome.setPreferredOrientations(DeviceOrientation.values);
  }

  /// Uses the full display rather than the current window: an iPad in split
  /// view or an Android app letterboxed by an orientation lock is still a
  /// tablet. The threshold matches [PlatformDetector.isTablet].
  static bool isPhoneDisplay(BuildContext context) {
    if (!PlatformDetector.isMobile(context) || _platformOwnsOrientation) return false;
    final display = View.of(context).display;
    final size = display.size / display.devicePixelRatio;
    return math.sqrt(size.width * size.width + size.height * size.height) < 7 * 160;
  }

  /// Phone browsing is portrait-only; tablets retain their normal rotation.
  /// Call at startup and when the player releases its orientation override.
  static Future<void> restoreAppOrientations({required bool isPhone}) async {
    if (_platformOwnsOrientation) return;
    await SystemChrome.setPreferredOrientations(
      isPhone ? const [DeviceOrientation.portraitUp] : DeviceOrientation.values,
    );
  }

  /// Pins playback to landscape without touching system UI, for the player's
  /// rotation-lock toggle.
  static Future<void> lockLandscapeOrientation() async {
    if (_platformOwnsOrientation) return;
    await SystemChrome.setPreferredOrientations(const [
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  /// Enters the player's full-screen presentation with rotation locked.
  static void setLandscapeOrientation() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    unawaited(lockLandscapeOrientation());
  }

  /// Restores the app's default visible system UI mode.
  ///
  /// Should be called when exiting full-screen mode.
  static Future<void> restoreSystemUI() async {
    // Explicitly show both overlays first to clear any legacy immersive flags.
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }
}
