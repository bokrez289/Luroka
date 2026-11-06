import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import '../i18n/strings.g.dart';
import '../media/ids.dart';
import '../media/media_item.dart';
import '../media/media_item_types.dart';
import '../providers/discover_provider.dart';
import '../providers/multi_server_provider.dart';
import '../screens/settings/subtitle_styling_screen.dart';
import '../services/settings_service.dart';
import '../utils/provider_extensions.dart';
import 'appearance_workspace.dart';
import 'luroka_mark.dart';
import 'optimized_media_image.dart';
import 'settings_builder.dart';
import 'settings_workspace_scope.dart';

/// Informational only: no controls or second, disconnected theme selection.
class TvSettingsPreviewPanel extends StatelessWidget {
  const TvSettingsPreviewPanel({super.key, required this.categoryId, required this.help});
  final String categoryId;
  final ValueListenable<SettingsHelp?> help;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ValueListenableBuilder<SettingsHelp?>(
      valueListenable: help,
      builder: (context, focused, _) {
        final library = categoryId == 'library';
        final home = categoryId == 'home';
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
                Row(children: [
                  Icon(Icons.visibility_outlined, size: 18, color: colors.primary),
                  const SizedBox(width: 7),
                  Expanded(child: Text(t.tvSettingsV2.previewLive,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(color: colors.primary, fontWeight: FontWeight.w700))),
                ]),
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
                  const LibrarySettingsPreview(embedded: true)
                else if (home || theme)
                  const MiniHomePreview()
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

/// The same profile-filtered Home snapshot and settings, never fabricated media.
class MiniHomePreview extends StatelessWidget {
  const MiniHomePreview({super.key});
  @override
  Widget build(BuildContext context) {
    final discover = context.watch<DiscoverProvider?>();
    final items = <MediaItem>[
      ...?discover?.onDeck,
      ...?discover?.hubs.expand((hub) => hub.items),
    ].where((item) => !item.isEpisode).take(8).toList();
    final colors = Theme.of(context).colorScheme;
    final hasLiveTv = context.watch<MultiServerProvider?>()?.hasLiveTv ?? false;
    return SettingsBuilder(
      prefs: const [
        SettingsService.showHeroSection,
        SettingsService.homeHeroSize,
        SettingsService.homeShelfItemCount,
        SettingsService.showWatchedIndicators,
        SettingsService.showLiveTvTab,
        SettingsService.showExploreTab,
      ],
      builder: (context) {
        final settings = SettingsService.instance;
        final heroSize = settings.read(SettingsService.homeHeroSize);
        final height = switch (heroSize) {
          HomeHeroSize.small => 72.0,
          HomeHeroSize.medium => 92.0,
          HomeHeroSize.large => 112.0,
        };
        return DecoratedBox(
          key: const ValueKey('tv-mini-home-preview'),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            border: Border.all(color: colors.outlineVariant),
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const LurokaMark(size: 16),
                      const SizedBox(width: 6),
                      Text(
                        'LUROKA',
                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: colors.onSurface),
                      ),
                      const Spacer(),
                      if (hasLiveTv && settings.read(SettingsService.showLiveTvTab)) ...[
                        Text(t.navigation.liveTv, style: TextStyle(fontSize: 8, color: colors.onSurfaceVariant)),
                        const SizedBox(width: 6),
                      ],
                      if (settings.read(SettingsService.showExploreTab)) ...[
                        Icon(Icons.explore_outlined, size: 14, color: colors.onSurfaceVariant),
                        const SizedBox(width: 6),
                      ],
                      Icon(Icons.search, size: 16, color: colors.onSurface),
                    ],
                  ),
                  if (settings.read(SettingsService.showHeroSection)) ...[
                    const SizedBox(height: 10),
                    SizedBox(
                      height: height,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: items.isEmpty
                            ? ColoredBox(
                                color: colors.surfaceContainerHigh,
                                child: Center(
                                  child: Text(
                                    t.tvSettingsV2.previewPlaceholder,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: colors.onSurfaceVariant, fontSize: 10),
                                  ),
                                ),
                              )
                            : Stack(
                                fit: StackFit.expand,
                                children: [
                                  OptimizedMediaImage(
                                    client: items.first.serverId == null
                                        ? null
                                        : context.tryGetMediaClientForServer(ServerId(items.first.serverId!)),
                                    imagePath: items.first.artPath ?? items.first.thumbPath,
                                    width: 360,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                  DecoratedBox(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [Colors.black.withValues(alpha: .85), Colors.transparent],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 8,
                                    bottom: 8,
                                    right: 10,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          items.first.displayTitle,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: 11,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: colors.primary,
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                                            child: Text(
                                              t.common.play,
                                              style: TextStyle(fontSize: 8, color: colors.onPrimary),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    ),
                  ],
                  const SizedBox(height: 10),
                  Text(
                    t.discover.continueWatching,
                    style: TextStyle(fontSize: 10, color: colors.onSurface, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      for (var i = 0; i < 4; i++) ...[
                        if (i > 0) const SizedBox(width: 5),
                        Expanded(
                          child: AspectRatio(
                            aspectRatio: 2 / 3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: i >= items.length
                                  ? ColoredBox(color: colors.surfaceContainerHigh)
                                  : OptimizedMediaImage(
                                      client: items[i].serverId == null
                                          ? null
                                          : context.tryGetMediaClientForServer(ServerId(items[i].serverId!)),
                                      imagePath: items[i].thumbPath,
                                      width: 100,
                                      height: 150,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    t.tvSettingsV2.previewShelfCount(count: settings.read(SettingsService.homeShelfItemCount)),
                    key: const ValueKey('home-preview-shelf-count'),
                    style: TextStyle(fontSize: 10, color: colors.onSurfaceVariant),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
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
