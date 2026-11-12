import 'package:flutter/material.dart';

import '../i18n/strings.g.dart';
import '../utils/platform_detector.dart';
import 'appearance_workspace.dart';
import 'live_home_preview.dart';
import 'expanded_settings_preview.dart';
import 'settings_preview_thumbnail.dart';
import '../focus/focusable_button.dart';

/// A device miniature with a full-size view one tap away.
class MobileSettingsPreviewFrame extends StatelessWidget {
  const MobileSettingsPreviewFrame({super.key, required this.categoryId, this.previewFocus, this.onReturn});
  final String categoryId;
  final FocusNode? previewFocus;
  final VoidCallback? onReturn;

  @override
  Widget build(BuildContext context) => SizedBox(
    height: PlatformDetector.isTV() ? 190 : 160,
    child: MobileSettingsPreview(categoryId: categoryId, previewFocus: previewFocus, onReturn: onReturn),
  );
}

class MobileSettingsPreview extends StatelessWidget {
  const MobileSettingsPreview({super.key, required this.categoryId, this.previewFocus, this.onReturn});
  final String categoryId;
  final FocusNode? previewFocus;
  final VoidCallback? onReturn;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final preview = categoryId == 'library'
        ? const LibrarySettingsPreview(embedded: true, rows: 2)
        : LiveHomePreview(
            previewKey: ValueKey(PlatformDetector.isTV() ? 'tv-mini-home-preview' : 'mobile-mini-home-preview'),
          );
    final title = switch (categoryId) {
      'appearance' => t.tvSettingsV2.themePreview,
      'home' => t.tvSettingsV2.homePreview,
      _ => t.tvSettingsV2.libraryPreview,
    };
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(Icons.visibility_outlined, size: 18, color: colors.primary),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  PlatformDetector.isTV() ? t.tvSettingsV2.previewLive : title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              FocusableButton(
                onPressed: () => showExpandedSettingsPreview(context, preview),
                child: IconButton(
                  key: const ValueKey('expand-settings-preview'),
                  tooltip: t.common.fullscreen,
                  icon: const Icon(Icons.open_in_full_rounded),
                  onPressed: () => showExpandedSettingsPreview(context, preview),
                ),
              ),
            ],
          ),
          // Keep the header readable at larger text sizes; the thumbnail can
          // shrink to the remaining height without clipping or overflowing.
          Flexible(
            child: SizedBox(
              height: PlatformDetector.isTV() ? 124 : 94,
              child: SettingsPreviewThumbnail(
                preview: preview,
                focusNode: previewFocus,
                onNavigateDown: onReturn,
                onNavigateLeft: onReturn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
