import 'package:flutter/material.dart';

import '../services/settings_service.dart';
import 'rasterized_gradient.dart';

/// Changes artwork shading while preserving solid edges and the theme color.
class BackdropScrim extends StatelessWidget {
  const BackdropScrim({super.key, required this.gradient});

  final LinearGradient gradient;
  static const minBrightness = 50;
  static const maxBrightness = 150;

  @override
  Widget build(BuildContext context) {
    final settings = SettingsService.instanceOrNull;
    if (settings == null) return RasterizedGradient(gradient: gradient);
    return ValueListenableBuilder<int>(
      valueListenable: settings.listenable(SettingsService.backdropBrightness),
      builder: (context, value, _) {
        final change = (value.clamp(minBrightness, maxBrightness) - 100) / 50;
        if (change == 0) return RasterizedGradient(gradient: gradient);
        return RasterizedGradient(
          gradient: LinearGradient(
            begin: gradient.begin,
            end: gradient.end,
            stops: gradient.stops,
            tileMode: gradient.tileMode,
            transform: gradient.transform,
            colors: [
              for (final color in gradient.colors)
                color.withValues(
                  alpha: change > 0
                      ? color.a - change * color.a * (1 - color.a)
                      : color.a - change * (1 - color.a) * .25,
                ),
            ],
          ),
        );
      },
    );
  }
}
