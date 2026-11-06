import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:luroka/utils/formatters.dart';

import '../../../media/media_item.dart';
import '../../../i18n/strings.g.dart';
import '../../../watch_together/widgets/watch_together_overlay.dart';
import '../../../watch_together/providers/watch_together_provider.dart';
import '../../app_bar_back_button.dart';
import '../../system_clock.dart';
import '../../../utils/platform_detector.dart';
import '../../../utils/content_utils.dart';

/// Header layout style for video controls
enum VideoHeaderStyle {
  /// Multi-line: Series name on first line, episode info on second line
  multiLine,

  /// Single-line: All info combined with separators (for macOS)
  singleLine,
}

/// Shared header widget for video controls with back button and title.
///
/// Displays the video title with optional series/episode information.
/// Supports both single-line (macOS) and multi-line (other platforms) layouts.
class VideoControlsHeader extends StatelessWidget {
  final MediaItem metadata;
  final VideoHeaderStyle style;

  /// Optional trailing widget (e.g., track/chapter controls)
  final Widget? trailing;

  /// Optional callback for back button. If null, defaults to Navigator.pop(true).
  final VoidCallback? onBack;
  final VoidCallback? onCancelAutoHide;
  final VoidCallback? onStartAutoHide;

  /// Whether to show the system clock. Off for a portrait phone, where the
  /// header is too narrow to fit the clock beside the title and trailing
  /// controls.
  final bool showClock;

  const VideoControlsHeader({
    super.key,
    required this.metadata,
    this.style = VideoHeaderStyle.multiLine,
    this.trailing,
    this.onBack,
    this.onCancelAutoHide,
    this.onStartAutoHide,
    this.showClock = true,
  });

  @override
  Widget build(BuildContext context) {
    final itemTitle = metadata.title ?? t.common.unknown;
    return Row(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: const Color(0x33151e2a),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: Colors.white12),
          ),
          child: AppBarBackButton(
            style: BackButtonStyle.video,
            onPressed: onBack ?? () => Navigator.of(context).pop(true),
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: style == VideoHeaderStyle.singleLine
              ? _buildSingleLineTitle(itemTitle)
              : _buildMultiLineTitle(context, itemTitle),
        ),
        Selector<WatchTogetherProvider, bool>(
          selector: (_, p) => p.isInSession,
          builder: (context, inSession, child) {
            if (!inSession) return const SizedBox.shrink();
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: WatchTogetherSessionIndicator(
                onCancelAutoHide: onCancelAutoHide,
                onStartAutoHide: onStartAutoHide,
              ),
            );
          },
        ),
        if (showClock)
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(color: const Color(0x33151e2a), borderRadius: BorderRadius.circular(12)),
              child: SystemClock(
                style: const TextStyle(color: Colors.white70, fontSize: 14, fontWeight: .w500),
              ),
            ),
          ),
        ?trailing,
      ],
    );
  }

  Widget _buildSingleLineTitle(String itemTitle) {
    final seriesName = metadata.grandparentTitle ?? itemTitle;
    final hasEpisodeInfo = metadata.parentIndex != null && metadata.index != null;

    final List<String> parts = [seriesName];

    if (hasEpisodeInfo) {
      parts.add('S${metadata.parentIndex}E${metadata.index}');
      parts.add(itemTitle);
    }

    return Text(
      toBulletedString(parts),
      style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: .w500),
      maxLines: 1,
      overflow: .ellipsis,
    );
  }

  Widget _buildMultiLineTitle(BuildContext context, String itemTitle) {
    final List<String> secondLineParts = [];
    final tv = PlatformDetector.isTV();
    final compact = MediaQuery.sizeOf(context).height < 450;

    if (metadata.parentIndex != null && metadata.index != null) {
      secondLineParts.add('S${metadata.parentIndex}');
      secondLineParts.add('E${metadata.index}');
      secondLineParts.add(itemTitle);
    }

    if (metadata.durationMs != null) {
      secondLineParts.add(formatDurationTextual(metadata.durationMs!));
    }
    if (metadata.parentIndex == null && metadata.index == null) {
      if (metadata.year != null) secondLineParts.insert(0, '${metadata.year}');
      if (metadata.contentRating?.isNotEmpty == true) secondLineParts.add(formatContentRating(metadata.contentRating!));
    }

    return Column(
      crossAxisAlignment: .start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (tv && !compact) ...[
          Text(
            t.playerChrome.nowPlaying,
            style: const TextStyle(
              color: Color(0xffb7c9e4),
              fontSize: 10,
              fontWeight: FontWeight.w600,
              letterSpacing: 2.2,
            ),
          ),
          const SizedBox(height: 6),
        ],
        Text(
          metadata.grandparentTitle ?? itemTitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: compact
                ? 17
                : tv
                ? 28
                : 21,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.5,
          ),
          maxLines: 1,
          overflow: .ellipsis,
        ),
        if (secondLineParts.isNotEmpty) ...[
          const SizedBox(height: 3),
          Text(
            toBulletedString(secondLineParts),
            style: TextStyle(color: Colors.white70, fontSize: compact ? 12 : 13),
            maxLines: 1,
            overflow: .ellipsis,
          ),
        ],
      ],
    );
  }
}
