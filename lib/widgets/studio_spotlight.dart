import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../focus/focusable_button.dart';
import '../focus/key_event_utils.dart';
import '../i18n/strings.g.dart';
import '../media/media_item.dart';
import '../media/media_server_client.dart';
import '../utils/formatters.dart';
import '../utils/media_image_helper.dart';
import 'app_icon.dart';
import 'cycling_media_backdrop.dart';
import 'studio_cinematic_spotlight.dart';
import '../utils/platform_detector.dart';

/// A persistent, landscape title treatment above the independently scrolling
/// catalog. Its overview action opens a reader rather than a clipped sidebar.
class StudioSpotlight extends StatelessWidget {
  const StudioSpotlight({
    super.key,
    required this.item,
    required this.artwork,
    required this.studioName,
    required this.tint,
    required this.overviewFocus,
    required this.onOverview,
    required this.onNavigateDown,
    required this.onNavigateUp,
    this.client,
    this.compact = false,
    this.collapsed = false,
  });

  final MediaItem item;
  final MediaItem artwork;
  final MediaServerClient? client;
  final String studioName;
  final Color tint;
  final FocusNode overviewFocus;
  final VoidCallback onOverview;
  final VoidCallback onNavigateDown;
  final VoidCallback onNavigateUp;
  final bool compact;
  final bool collapsed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final scale = MediaQuery.textScalerOf(context).scale(14) / 14;
    final metadata = [
      if (item.year != null) '${item.year}',
      if (item.contentRating?.isNotEmpty == true) item.contentRating!,
      if (item.rating != null) '★ ${formatRating(item.rating!)}',
      if ((item.durationMs ?? 0) > 0) formatDurationTextual(item.durationMs!),
    ].join('  ·  ');
    final action = FocusableButton(
      focusNode: overviewFocus,
      onPressed: onOverview,
      onNavigateDown: onNavigateDown,
      onNavigateUp: onNavigateUp,
      onNavigateRight: onNavigateDown,
      autoScroll: false,
      child: FilledButton.tonalIcon(
        key: const ValueKey('studio_overview_button'),
        onPressed: onOverview,
        icon: const AppIcon(Symbols.subject_rounded, size: 18),
        label: Text(t.fileInfo.overview),
      ),
    );
    if (PlatformDetector.isTV() && !compact) {
      return StudioCinematicSpotlight(
        item: item,
        artwork: artwork,
        client: client,
        tint: tint,
        overviewFocus: overviewFocus,
        onOverview: onOverview,
        onNavigateUp: onNavigateUp,
        onNavigateDown: onNavigateDown,
        collapsed: collapsed,
      );
    }
    if (compact) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Container(width: 3, height: 32, color: tint),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                item.displayTitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(width: 12),
            action,
          ],
        ),
      );
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        final minimal = constraints.maxHeight < 205 * scale;
        final textWidth = constraints.maxWidth * (minimal ? 0.72 : 0.62);
        return ClipRect(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                width: constraints.maxWidth * 0.64,
                child: ExcludeSemantics(
                  child: IgnorePointer(
                    child: CyclingMediaBackdrop(
                      mediaKey: artwork.globalKey,
                      client: client,
                      imagePaths: artwork.heroArtCandidates(containerAspectRatio: 16 / 9),
                      fallbackImagePaths: [?artwork.artPath, ?artwork.thumbPath],
                      imageType: ImageType.featureArt,
                      width: constraints.maxWidth * 0.64,
                      height: constraints.maxHeight,
                      fallbackColor: colors.surface,
                      active: false,
                    ),
                  ),
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: const [0, 0.36, 0.78, 1],
                    colors: [
                      colors.surface,
                      colors.surface.withValues(alpha: 0.86),
                      colors.surface.withValues(alpha: 0.04),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [colors.surface.withValues(alpha: 0.12), Colors.transparent, colors.surface],
                    stops: const [0, 0.45, 1],
                  ),
                ),
              ),
              Positioned(
                left: 36,
                top: 6,
                bottom: 6,
                width: textWidth - 36,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (!minimal) ...[
                      Row(
                        children: [
                          Container(width: 22, height: 3, color: tint),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              studioName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.labelSmall?.copyWith(
                                letterSpacing: 2,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                    ],
                    Flexible(
                      child: Text(
                        item.displayTitle,
                        key: const ValueKey('studio_spotlight_title'),
                        maxLines: minimal ? 1 : 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.headlineMedium?.copyWith(
                          fontSize: minimal ? 24 : 32,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.8,
                          height: 1.08,
                        ),
                      ),
                    ),
                    if (metadata.isNotEmpty) ...[
                      const SizedBox(height: 8),
                      Text(
                        metadata,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelMedium?.copyWith(color: colors.onSurfaceVariant),
                      ),
                    ],
                    ...[
                      const SizedBox(height: 10),
                      Text(
                        item.summary?.trim().isNotEmpty == true ? item.summary! : t.dashboard.synopsisUnavailable,
                        key: const ValueKey('studio_visible_synopsis'),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium?.copyWith(height: 1.45, color: colors.onSurfaceVariant),
                      ),
                    ],
                    const SizedBox(height: 10),
                    action,
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

/// Large-screen editorial column. The synopsis is part of the composition,
/// always visible and directly scrollable, rather than behind a button.
class StudioEditorialSpotlight extends StatefulWidget {
  const StudioEditorialSpotlight({
    super.key,
    required this.item,
    required this.studioName,
    required this.tint,
    required this.overviewFocus,
    required this.onOverview,
    required this.onNavigateDown,
    required this.onNavigateUp,
    required this.onNavigateRight,
  });

  final MediaItem item;
  final String studioName;
  final Color tint;
  final FocusNode overviewFocus;
  final VoidCallback onOverview;
  final VoidCallback onNavigateDown;
  final VoidCallback onNavigateUp;
  final VoidCallback onNavigateRight;

  @override
  State<StudioEditorialSpotlight> createState() => _StudioEditorialSpotlightState();
}

class _StudioEditorialSpotlightState extends State<StudioEditorialSpotlight> {
  final _scroll = ScrollController();

  @override
  void didUpdateWidget(covariant StudioEditorialSpotlight oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.item.globalKey != widget.item.globalKey && _scroll.hasClients) _scroll.jumpTo(0);
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  KeyEventResult _key(FocusNode node, KeyEvent event) {
    final key = event.logicalKey;
    final up = key == LogicalKeyboardKey.arrowUp || key == LogicalKeyboardKey.pageUp;
    final down = key == LogicalKeyboardKey.arrowDown || key == LogicalKeyboardKey.pageDown;
    final right = key == LogicalKeyboardKey.arrowRight;
    final select =
        key == LogicalKeyboardKey.enter || key == LogicalKeyboardKey.select || key == LogicalKeyboardKey.space;
    if (!up && !down && !right && !select) return KeyEventResult.ignored;
    if (event is KeyUpEvent) return KeyEventResult.handled;
    if (right) {
      widget.onNavigateRight();
    } else if (select) {
      if (event is KeyDownEvent) widget.onOverview();
    } else if (_scroll.hasClients) {
      final position = _scroll.position;
      if (up && position.extentBefore < 1) {
        widget.onNavigateUp();
      } else if (down && position.extentAfter < 1) {
        widget.onNavigateDown();
      } else {
        final step = key == LogicalKeyboardKey.pageUp || key == LogicalKeyboardKey.pageDown
            ? position.viewportDimension * 0.8
            : 70.0;
        _scroll.jumpTo((position.pixels + (up ? -step : step)).clamp(0.0, position.maxScrollExtent));
      }
    }
    return KeyEventResult.handled;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final metadata = [
      if (widget.item.year != null) '${widget.item.year}',
      if (widget.item.contentRating?.isNotEmpty == true) widget.item.contentRating!,
      if (widget.item.rating != null) '★ ${formatRating(widget.item.rating!)}',
      if ((widget.item.durationMs ?? 0) > 0) formatDurationTextual(widget.item.durationMs!),
    ].join('   ·   ');
    return LayoutBuilder(
      builder: (context, constraints) {
        final tall = constraints.maxHeight >= 680;
        return Padding(
          padding: EdgeInsets.fromLTRB(36, tall ? 48 : 22, 38, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(width: 32, height: 2, color: Color.lerp(widget.tint, colors.onSurface, 0.45)),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(
                      widget.studioName.toUpperCase(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelSmall?.copyWith(letterSpacing: 3.2, color: colors.onSurfaceVariant),
                    ),
                  ),
                ],
              ),
              SizedBox(height: tall ? 30 : 22),
              Text(
                widget.item.displayTitle,
                key: const ValueKey('studio_spotlight_title'),
                maxLines: tall ? 3 : 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.displaySmall?.copyWith(
                  fontSize: tall ? 54 : 40,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -1.8,
                  height: 1.08,
                ),
              ),
              if (metadata.isNotEmpty) ...[
                const SizedBox(height: 20),
                Text(
                  metadata,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium?.copyWith(color: colors.onSurfaceVariant, letterSpacing: 0.4),
                ),
              ],
              const SizedBox(height: 26),
              Container(width: 48, height: 1, color: colors.onSurface.withValues(alpha: 0.25)),
              const SizedBox(height: 20),
              Expanded(
                child: Focus(
                  focusNode: widget.overviewFocus,
                  onKeyEvent: _key,
                  child: ListenableBuilder(
                    listenable: widget.overviewFocus,
                    builder: (context, _) => DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: widget.overviewFocus.hasFocus ? widget.tint : Colors.transparent,
                            width: 2,
                          ),
                        ),
                      ),
                      child: Scrollbar(
                        controller: _scroll,
                        thumbVisibility: true,
                        child: SingleChildScrollView(
                          key: const ValueKey('studio_inline_overview_scroll'),
                          controller: _scroll,
                          padding: const EdgeInsets.fromLTRB(12, 0, 18, 12),
                          child: Text(
                            widget.item.summary?.trim().isNotEmpty == true
                                ? widget.item.summary!
                                : t.dashboard.synopsisUnavailable,
                            key: const ValueKey('studio_visible_synopsis'),
                            style: theme.textTheme.bodyLarge?.copyWith(
                              fontSize: tall ? 20 : 17,
                              height: 1.7,
                              color: colors.onSurface.withValues(alpha: 0.85),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              ExcludeFocus(
                child: TextButton.icon(
                  key: const ValueKey('studio_overview_button'),
                  onPressed: widget.onOverview,
                  icon: const AppIcon(Symbols.open_in_full_rounded, size: 14),
                  label: Text(t.fileInfo.overview),
                  style: TextButton.styleFrom(foregroundColor: colors.onSurfaceVariant),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// A dedicated reading surface: no line limit, visible scrollbar, remote
/// up/down/page scrolling, and a fixed close action that never scrolls away.
class StudioOverviewDialog extends StatefulWidget {
  const StudioOverviewDialog({super.key, required this.item, required this.tint});
  final MediaItem item;
  final Color tint;

  @override
  State<StudioOverviewDialog> createState() => _StudioOverviewDialogState();
}

class _StudioOverviewDialogState extends State<StudioOverviewDialog> {
  final _scroll = ScrollController();
  final _reader = FocusNode(debugLabel: 'studio_overview_reader');
  final _close = FocusNode(debugLabel: 'studio_overview_close');

  @override
  void dispose() {
    _scroll.dispose();
    _reader.dispose();
    _close.dispose();
    super.dispose();
  }

  KeyEventResult _key(FocusNode node, KeyEvent event) {
    final back = handleBackKeyAction(event, () => Navigator.of(context).pop());
    if (back == KeyEventResult.handled) return back;
    final key = event.logicalKey;
    final down = key == LogicalKeyboardKey.arrowDown || key == LogicalKeyboardKey.pageDown;
    final up = key == LogicalKeyboardKey.arrowUp || key == LogicalKeyboardKey.pageUp;
    if (!down && !up) return KeyEventResult.ignored;
    if (event is KeyUpEvent) return KeyEventResult.handled;
    if (!_scroll.hasClients) return KeyEventResult.handled;
    final position = _scroll.position;
    final delta = (key == LogicalKeyboardKey.pageDown || key == LogicalKeyboardKey.pageUp)
        ? position.viewportDimension * 0.8
        : 80.0;
    if (down && position.extentAfter < 1) {
      _close.requestFocus();
    } else {
      _scroll.jumpTo((position.pixels + (down ? delta : -delta)).clamp(0.0, position.maxScrollExtent));
    }
    return KeyEventResult.handled;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Dialog(
      insetPadding: const EdgeInsets.all(24),
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        width: math.min(760, size.width - 48),
        height: math.min(640, size.height * 0.82),
        child: Focus(
          canRequestFocus: false,
          onKeyEvent: (_, event) => handleBackKeyAction(event, () => Navigator.of(context).pop()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(height: 3, color: widget.tint),
              Expanded(
                child: Focus(
                  focusNode: _reader,
                  autofocus: true,
                  onKeyEvent: _key,
                  child: Scrollbar(
                    controller: _scroll,
                    thumbVisibility: true,
                    child: SingleChildScrollView(
                      key: const ValueKey('studio_overview_scroll'),
                      controller: _scroll,
                      padding: const EdgeInsets.all(28),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            t.fileInfo.overview,
                            style: theme.textTheme.labelLarge?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            widget.item.displayTitle,
                            style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            widget.item.summary?.trim().isNotEmpty == true
                                ? widget.item.summary!
                                : t.dashboard.synopsisUnavailable,
                            key: const ValueKey('studio_full_synopsis'),
                            style: theme.textTheme.bodyLarge?.copyWith(height: 1.65),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(height: 1),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: FocusableButton(
                    focusNode: _close,
                    onPressed: () => Navigator.of(context).pop(),
                    onNavigateUp: _reader.requestFocus,
                    autoScroll: false,
                    child: FilledButton(onPressed: () => Navigator.of(context).pop(), child: Text(t.common.close)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
