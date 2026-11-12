import 'package:flutter/material.dart';

import '../utils/platform_detector.dart';

/// Uses the host device's shape while keeping miniature content readable.
/// Receives existing preview content; never starts another library request.
class DevicePreviewFrame extends StatelessWidget {
  const DevicePreviewFrame({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final tv = PlatformDetector.isTV();
    final ratio = tv ? 16 / 9 : size.aspectRatio;
    final colors = Theme.of(context).colorScheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(tv ? 5 : 8),
          decoration: BoxDecoration(
            color: colors.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(tv ? 10 : 22),
            border: Border.all(color: colors.outlineVariant),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(tv ? 5 : 15),
            child: ColoredBox(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: tv
                  ? AspectRatio(
                      aspectRatio: ratio,
                      child: SingleChildScrollView(child: child),
                    )
                  : child,
            ),
          ),
        ),
        if (tv)
          Container(
            width: 64,
            height: 5,
            margin: const EdgeInsets.only(top: 5),
            decoration: BoxDecoration(color: colors.outlineVariant, borderRadius: BorderRadius.circular(4)),
          ),
      ],
    );
  }
}
