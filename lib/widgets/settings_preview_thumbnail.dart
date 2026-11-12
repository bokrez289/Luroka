import 'package:flutter/material.dart';

import '../i18n/strings.g.dart';
import '../utils/platform_detector.dart';
import 'expanded_settings_preview.dart';
import '../focus/focusable_button.dart';

/// Fits one device viewport into the available space. The page stays at its
/// normal layout width; only the finished viewport is scaled down.
class SettingsPreviewThumbnail extends StatelessWidget {
  const SettingsPreviewThumbnail({
    super.key,
    required this.preview,
    this.onExpand,
    this.focusNode,
    this.onNavigateLeft,
    this.onNavigateDown,
  });
  final Widget preview;
  final VoidCallback? onExpand;
  final FocusNode? focusNode;
  final VoidCallback? onNavigateLeft;
  final VoidCallback? onNavigateDown;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final width = PlatformDetector.isTV() ? 960.0 : size.width;
    final height = PlatformDetector.isTV() ? 540.0 : size.height;
    final open = onExpand ?? () => showExpandedSettingsPreview(context, preview);
    return FocusableButton(
      focusNode: focusNode,
      onPressed: open,
      onNavigateLeft: onNavigateLeft,
      onNavigateDown: onNavigateDown,
      borderRadius: 14,
      child: Material(
        color: Theme.of(context).colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(14),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: open,
          child: Semantics(
            button: true,
            label: t.common.fullscreen,
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: SizedBox.expand(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: SizedBox(
                    width: width,
                    height: height,
                    child: ClipRect(
                      child: ExcludeSemantics(
                        child: ExcludeFocus(
                          child: IgnorePointer(
                            child: MediaQuery(
                              data: MediaQuery.of(
                                context,
                              ).copyWith(size: Size(width, height), padding: EdgeInsets.zero),
                              child: PrimaryScrollController.none(child: SingleChildScrollView(child: preview)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
