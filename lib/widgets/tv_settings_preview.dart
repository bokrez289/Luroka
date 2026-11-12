import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../i18n/strings.g.dart';
import '../screens/settings/subtitle_styling_screen.dart';
import '../services/settings_service.dart';
import 'appearance_workspace.dart';
import 'live_home_preview.dart';
import 'settings_preview_thumbnail.dart';
import 'expanded_settings_preview.dart';
import 'settings_builder.dart';
import 'settings_workspace_scope.dart';
import '../focus/focusable_button.dart';

/// Informational only: no controls or second, disconnected theme selection.
class TvSettingsPreviewPanel extends StatelessWidget {
  const TvSettingsPreviewPanel({
    super.key,
    required this.categoryId,
    required this.help,
    this.previewFocus,
    this.onReturn,
  });
  final String categoryId;
  final ValueListenable<SettingsHelp?> help;
  final FocusNode? previewFocus;
  final VoidCallback? onReturn;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ValueListenableBuilder<SettingsHelp?>(
      valueListenable: help,
      builder: (context, focused, _) {
        final homeArtwork = categoryId == 'library' && focused?.title == t.homeLayout.episodeThumbnails;
        final library = categoryId == 'library' && !homeArtwork;
        final home = categoryId == 'home' || homeArtwork;
        final theme = categoryId == 'appearance';
        final subtitle = categoryId == 'audio' && focused?.title == t.settings.subtitleStyling;
        final title = library
            ? t.tvSettingsV2.libraryPreview
            : home
            ? t.tvSettingsV2.homePreview
            : theme
            ? t.tvSettingsV2.themePreview
            : subtitle
            ? t.tvSettingsV2.subtitlePreview
            : (focused?.title ?? '');
        return Container(
          key: const ValueKey('tv-contextual-preview'),
          margin: const EdgeInsets.only(left: 12, bottom: 16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: colors.surfaceContainerLow,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: colors.outlineVariant.withValues(alpha: .5)),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Icon(Icons.visibility_outlined, size: 18, color: colors.primary),
                    const SizedBox(width: 7),
                    Expanded(
                      child: Text(
                        t.tvSettingsV2.previewLive,
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge?.copyWith(color: colors.primary, fontWeight: FontWeight.w700),
                      ),
                    ),
                    if (library || home || theme)
                      FocusableButton(
                        onPressed: () => showExpandedSettingsPreview(
                          context,
                          library ? const LibrarySettingsPreview(embedded: true) : const LiveHomePreview(),
                        ),
                        child: IconButton(
                          tooltip: t.common.fullscreen,
                          icon: const Icon(Icons.open_in_full_rounded),
                          onPressed: () => showExpandedSettingsPreview(
                            context,
                            library ? const LibrarySettingsPreview(embedded: true) : const LiveHomePreview(),
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 10),
                if (title.isNotEmpty)
                  Text(title, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),
                if (focused?.description.isNotEmpty == true) ...[
                  const SizedBox(height: 8),
                  Text(
                    focused!.description,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: colors.onSurfaceVariant),
                  ),
                ],
                if (library || home || theme || subtitle) const SizedBox(height: 16),
                if (library)
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: SettingsPreviewThumbnail(
                      preview: const LibrarySettingsPreview(embedded: true),
                      focusNode: previewFocus,
                      onNavigateLeft: onReturn,
                      onNavigateDown: onReturn,
                    ),
                  )
                else if (home || theme)
                  MiniHomePreview(focusNode: previewFocus, onReturn: onReturn)
                else if (subtitle)
                  const _SubtitlePreview()
                else
                  Text(
                    t.tvSettingsV2.settingsSaved,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: colors.onSurfaceVariant),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class MiniHomePreview extends StatelessWidget {
  const MiniHomePreview({super.key, this.focusNode, this.onReturn});
  final FocusNode? focusNode;
  final VoidCallback? onReturn;
  @override
  Widget build(BuildContext context) => AspectRatio(
    aspectRatio: 16 / 9,
    child: SettingsPreviewThumbnail(
      preview: const LiveHomePreview(previewKey: ValueKey('tv-mini-home-preview')),
      focusNode: focusNode,
      onNavigateLeft: onReturn,
      onNavigateDown: onReturn,
    ),
  );
}

class _SubtitlePreview extends StatelessWidget {
  const _SubtitlePreview();
  @override
  Widget build(BuildContext context) => SettingsBuilder(
    prefs: [
      SettingsService.subtitleFontSize,
      SettingsService.subtitleTextColor,
      SettingsService.subtitleBorderSize,
      SettingsService.subtitleBorderColor,
      SettingsService.subtitleBackgroundColor,
      SettingsService.subtitleBackgroundOpacity,
      SettingsService.subtitleBold,
      SettingsService.subtitleItalic,
      SettingsService.subtitlePosition,
    ],
    builder: (context) => SubtitleStylingScreen.buildPreview(context, embedded: true),
  );
}
