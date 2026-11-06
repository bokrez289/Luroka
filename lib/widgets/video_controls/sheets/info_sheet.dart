import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../i18n/strings.g.dart';
import '../../../media/ids.dart';
import '../../../media/media_item.dart';
import '../../../media/media_item_labels.dart';
import '../../../media/media_item_types.dart';
import '../../../media/media_role.dart';
import '../../../services/settings_service.dart';
import '../../../theme/mono_tokens.dart';
import '../../../utils/content_utils.dart';
import '../../../utils/formatters.dart';
import '../../../utils/platform_detector.dart';
import '../../../utils/provider_extensions.dart';
import '../../../widgets/cast_member_strip.dart';
import '../../../widgets/fitted_metadata_line.dart';
import '../../../widgets/media_rating_badge.dart';
import '../../../widgets/settings_builder.dart';
import '../../optimized_media_image.dart';
import 'base_video_control_sheet.dart';

/// Read-only details for the item currently playing — the detail page's
/// headline facts (title, year/runtime/certification/scores, genres,
/// synopsis, cast) without leaving playback. Playback is never touched:
/// the sheet renders over it, and BACK/tap-away returns to the controls.
///
/// Sections the playing item's metadata cannot fill are omitted rather than
/// shown empty, and an unwatched episode's synopsis respects the viewer's
/// spoiler preference.
class MediaInfoSheet extends StatefulWidget {
  final MediaItem item;

  const MediaInfoSheet({super.key, required this.item});

  @override
  State<MediaInfoSheet> createState() => _MediaInfoSheetState();
}

class _MediaInfoSheetState extends State<MediaInfoSheet> {
  final _scroll = ScrollController();
  final _bodyFocus = FocusNode(debugLabel: 'player_info_body');
  final _castKey = GlobalKey<CastMemberStripState>();
  MediaItem get item => widget.item;

  @override
  void dispose() {
    _scroll.dispose();
    _bodyFocus.dispose();
    super.dispose();
  }

  KeyEventResult _handleScrollKey(FocusNode node, KeyEvent event) {
    if (!PlatformDetector.isTV() || (event is! KeyDownEvent && event is! KeyRepeatEvent) || !_scroll.hasClients) {
      return KeyEventResult.ignored;
    }
    final down = event.logicalKey == LogicalKeyboardKey.arrowDown;
    final up = event.logicalKey == LogicalKeyboardKey.arrowUp;
    if (!down && !up) return KeyEventResult.ignored;
    final position = _scroll.position;
    if (down && position.pixels >= position.maxScrollExtent - 2 && _castKey.currentState != null) {
      _castKey.currentState!.requestFocus();
    } else {
      if (up && !_bodyFocus.hasPrimaryFocus) _bodyFocus.requestFocus();
      _scroll.animateTo(
        (position.pixels + (down ? 160 : -160)).clamp(position.minScrollExtent, position.maxScrollExtent),
        duration: const Duration(milliseconds: 160),
        curve: Curves.easeOut,
      );
    }
    return KeyEventResult.handled;
  }

  @override
  Widget build(BuildContext context) {
    return SettingValueBuilder<bool>(
      pref: SettingsService.hideSpoilers,
      builder: (context, hideSpoilers, _) {
        final synopsisMasked = hideSpoilers && item.shouldHideSpoiler;
        final roles = item.roles ?? const <MediaRole>[];
        return BaseVideoControlSheet(
          title: t.videoControls.infoButton,
          icon: Symbols.info_rounded,
          child: Focus(
            focusNode: _bodyFocus,
            onKeyEvent: _handleScrollKey,
            child: Scrollbar(
              controller: _scroll,
              child: SingleChildScrollView(
                key: const ValueKey('player_info_scroll'),
                controller: _scroll,
                padding: EdgeInsets.fromLTRB(
                  PlatformDetector.isTV() ? 28 : 20,
                  22,
                  PlatformDetector.isTV() ? 28 : 20,
                  28,
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    LayoutBuilder(
                      builder: (context, constraints) {
                        final poster = item.posterThumb();
                        final showPoster = poster != null && constraints.maxWidth >= 480;
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (showPoster) ...[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: OptimizedMediaImage.poster(
                                  client: context.tryGetMediaClientForServer(serverIdOrNull(item.serverId)),
                                  imagePath: poster,
                                  width: 110,
                                  height: 165,
                                ),
                              ),
                              const SizedBox(width: 24),
                            ],
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (item.isEpisode || item.isSeason) ...[
                                    Text(
                                      formatQueueItemSubtitle(item),
                                      key: const ValueKey('player_info_context'),
                                      maxLines: 1,
                                      overflow: .ellipsis,
                                      style: TextStyle(
                                        color: tokens(context).textMuted,
                                        fontSize: 13,
                                        fontWeight: .w600,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                  ],
                                  Text(
                                    item.title ?? '',
                                    key: const ValueKey('player_info_title'),
                                    style: TextStyle(
                                      fontSize: PlatformDetector.isTV() ? 26 : 22,
                                      fontWeight: .w800,
                                      height: 1.15,
                                    ),
                                  ),
                                  if (item.tagline?.trim().isNotEmpty == true) ...[
                                    const SizedBox(height: 4),
                                    Text(
                                      item.tagline!,
                                      style: TextStyle(
                                        color: tokens(context).textMuted,
                                        fontSize: 13,
                                        fontStyle: .italic,
                                      ),
                                    ),
                                  ],
                                  _buildMetaLine(context),
                                  _buildGenresAndDirector(context),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    Text(
                      synopsisMasked ? t.dashboard.spoilerHidden : _synopsis,
                      key: ValueKey(synopsisMasked ? 'player_info_synopsis_masked' : 'player_info_synopsis'),
                      style: TextStyle(color: tokens(context).textMuted, fontSize: 14, height: 1.45),
                    ),
                    if (roles.isNotEmpty) _buildCast(context, roles),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  String get _synopsis {
    final summary = item.summary?.trim();
    return (summary?.isNotEmpty == true) ? summary! : item.displayTitle;
  }

  /// Fitted strip: year · runtime · certification · attributed scores, the
  /// same shedding behaviour as the detail title pages on narrow sheets.
  Widget _buildMetaLine(BuildContext context) {
    final parts = <MetadataLinePart>[
      if (item.year != null) MetadataLineText('${item.year}', dropPriority: 3),
      if (item.durationMs != null && item.durationMs! > 0)
        MetadataLineText(formatDurationTextual(item.durationMs!), dropPriority: 2),
      if (item.contentRating?.trim().isNotEmpty == true)
        MetadataLineText(formatContentRating(item.contentRating), dropPriority: 1),
      MetadataLineRatings(mediaRatingsFor(item), dropPriority: 0),
    ];
    if (parts.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: const .only(top: 8),
      child: FittedMetadataLine(
        key: const ValueKey('player_info_meta_line'),
        textStyle: TextStyle(color: tokens(context).textMuted, fontSize: 13, fontWeight: .w600),
        parts: parts,
      ),
    );
  }

  Widget _buildGenresAndDirector(BuildContext context) {
    final genres = item.genres ?? const <String>[];
    final hasDirectors = item.isMovie && (item.directors?.isNotEmpty == true);
    if (genres.isEmpty && !hasDirectors) return const SizedBox.shrink();
    final scheme = Theme.of(context).colorScheme;
    Widget chip(String label) => Container(
      padding: const .symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHighest.withValues(alpha: 0.55),
        borderRadius: .circular(8),
        border: Border.all(color: scheme.onSurface.withValues(alpha: 0.12)),
      ),
      child: Text(label, style: TextStyle(fontSize: 12, color: scheme.onSurfaceVariant)),
    );
    return Padding(
      padding: const .only(top: 10),
      child: Wrap(
        spacing: 7,
        runSpacing: 5,
        children: [
          for (final genre in genres.take(6)) chip(genre),
          if (hasDirectors)
            Padding(
              padding: const .symmetric(vertical: 4),
              child: Text(
                '${t.discover.director}: ${item.directors!.take(2).join(', ')}',
                style: TextStyle(color: tokens(context).textMuted, fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildCast(BuildContext context, List<MediaRole> roles) {
    final client = context.tryGetMediaClientForServer(serverIdOrNull(item.serverId));
    return Column(
      crossAxisAlignment: .start,
      children: [
        const SizedBox(height: 24),
        Text(
          t.discover.cast,
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface, fontSize: 16, fontWeight: .w700),
        ),
        const SizedBox(height: 10),
        CastMemberStrip(
          key: _castKey,
          debugLabel: 'player_info_cast',
          imageClient: client,
          members: [for (final role in roles) (name: role.tag, secondary: role.role, imagePath: role.thumbPath)],
        ),
      ],
    );
  }
}
