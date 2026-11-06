import 'package:flutter/widgets.dart';

import '../services/settings_service.dart';
import '../utils/platform_detector.dart';
import 'settings_builder.dart';

/// Protects TV controls from display overscan without reducing video playback.
/// Apply at browsing-route boundaries, outside their LayoutBuilder, so every
/// layout decision uses the real safe viewport rather than the physical screen.
class TvScreenInsets extends StatelessWidget {
  const TvScreenInsets({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    if (!PlatformDetector.isTV() || context.dependOnInheritedWidgetOfExactType<_TvInsetsScope>() != null) return child;
    return SettingValueBuilder<int>(
      pref: SettingsService.tvScreenMargin,
      builder: (context, percent, _) {
        final size = MediaQuery.sizeOf(context);
        final fraction = percent.clamp(0, 8) / 100;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * fraction, vertical: size.height * fraction),
          child: _TvInsetsScope(child: child),
        );
      },
    );
  }
}

class _TvInsetsScope extends InheritedWidget {
  const _TvInsetsScope({required super.child});
  @override
  bool updateShouldNotify(_TvInsetsScope oldWidget) => false;
}
