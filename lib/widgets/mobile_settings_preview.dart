import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../i18n/strings.g.dart';
import '../media/ids.dart';
import '../media/media_item.dart';
import '../media/media_item_types.dart';
import '../providers/discover_provider.dart';
import '../services/settings_service.dart';
import '../utils/provider_extensions.dart';
import 'appearance_workspace.dart';
import 'luroka_mark.dart';
import 'optimized_media_image.dart';
import 'settings_builder.dart';

/// Scales the non-interactive illustration to fit a predictable phone-sized
/// area, leaving the labels and controls around it at the user's text scale.
class MobileSettingsPreviewFrame extends StatelessWidget {
  const MobileSettingsPreviewFrame({super.key, required this.categoryId});
  final String categoryId;

  @override
  Widget build(BuildContext context) => LayoutBuilder(builder: (context, bounds) {
    final height = (MediaQuery.sizeOf(context).height * .34).clamp(100.0, 220.0);
    return SizedBox(
      width: bounds.maxWidth,
      height: height,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.topCenter,
        child: SizedBox(width: bounds.maxWidth, child: MobileSettingsPreview(categoryId: categoryId)),
      ),
    );
  });
}

/// A small, non-interactive preview driven by the current profile and settings.
class MobileSettingsPreview extends StatelessWidget {
  const MobileSettingsPreview({super.key, required this.categoryId});
  final String categoryId;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final title = switch (categoryId) {
      'appearance' => t.tvSettingsV2.themePreview,
      'home' => t.tvSettingsV2.homePreview,
      _ => t.tvSettingsV2.libraryPreview,
    };
    return ExcludeFocus(
      child: IgnorePointer(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 560),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: colors.surfaceContainerLow,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: colors.outlineVariant.withValues(alpha: .5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.visibility_outlined, size: 18, color: colors.primary),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              title,
                              style: Theme.of(
                                context,
                              ).textTheme.titleSmall?.copyWith(color: colors.onSurface, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Text(
                            t.tvSettingsV2.previewLive,
                            style: Theme.of(context).textTheme.labelSmall?.copyWith(color: colors.primary),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      if (categoryId == 'library')
                        const LibrarySettingsPreview(embedded: true, rows: 1, forceGrid: true)
                      else
                        const _MobileHomePreview(),
                    ],
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

class _MobileHomePreview extends StatelessWidget {
  const _MobileHomePreview();

  @override
  Widget build(BuildContext context) {
    final discover = context.watch<DiscoverProvider?>();
    final seen = <String>{};
    final items = <MediaItem>[
      ...?discover?.onDeck,
      ...?discover?.hubs.expand((hub) => hub.items),
    ].where((item) => !item.isEpisode && seen.add(item.globalKey)).take(5).toList();
    return SettingsBuilder(
      prefs: const [
        SettingsService.showHeroSection,
        SettingsService.homeShelfItemCount,
        SettingsService.showExploreTab,
        SettingsService.showLiveTvTab,
      ],
      builder: (context) {
        final settings = SettingsService.instance;
        final colors = Theme.of(context).colorScheme;
        const heroHeight = 88.0;
        Widget artwork(MediaItem item) => OptimizedMediaImage(
          client: item.serverId == null ? null : context.tryGetMediaClientForServer(ServerId(item.serverId!)),
          imagePath: item.thumbPath ?? item.artPath,
          fit: BoxFit.cover,
        );
        return Container(
          key: const ValueKey('mobile-mini-home-preview'),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: colors.outlineVariant.withValues(alpha: .55)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const LurokaMark(size: 15),
                  const SizedBox(width: 6),
                  Text(
                    'LUROKA',
                    style: TextStyle(color: colors.onSurface, fontSize: 9, fontWeight: FontWeight.w800),
                  ),
                  const Spacer(),
                  Icon(Icons.search_rounded, size: 15, color: colors.onSurfaceVariant),
                ],
              ),
              if (settings.read(SettingsService.showHeroSection)) ...[
                const SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                    height: heroHeight,
                    width: double.infinity,
                    child: items.isEmpty
                        ? ColoredBox(
                            color: colors.surfaceContainerHigh,
                            child: Center(
                              child: Text(
                                t.tvSettingsV2.previewPlaceholder,
                                style: TextStyle(color: colors.onSurfaceVariant, fontSize: 10),
                              ),
                            ),
                          )
                        : Stack(
                            fit: StackFit.expand,
                            children: [
                              artwork(items.first),
                              const DecoratedBox(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [Colors.black87, Colors.transparent],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9,
                                right: 9,
                                bottom: 8,
                                child: Text(
                                  items.first.displayTitle,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
              ],
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      t.discover.continueWatching,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: colors.onSurface, fontSize: 10, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Text(
                    '${settings.read(SettingsService.homeShelfItemCount)}',
                    style: TextStyle(color: colors.onSurfaceVariant, fontSize: 9),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              SizedBox(
                height: 40,
                child: Row(
                  children: [
                    for (var i = 0; i < 4; i++) ...[
                      if (i > 0) const SizedBox(width: 5),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: SizedBox.expand(
                            child: i < items.length
                                ? artwork(items[i])
                                : ColoredBox(color: colors.surfaceContainerHigh),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
