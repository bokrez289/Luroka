import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../i18n/strings.g.dart';
import '../media/media_item.dart';
import '../media/media_item_types.dart';
import '../media/media_kind.dart';
import '../media/media_server_client.dart';
import '../services/home_preview_controller.dart';
import '../services/kids_profile_service.dart';
import '../services/settings_service.dart';
import '../theme/kids_style.dart';
import '../utils/media_image_helper.dart';
import 'media_rating_badge.dart';
import 'optimized_media_image.dart';

/// A handheld billboard made from real, playable library records. Each page
/// owns its action target; swiping never triggers playback or opens a detail.
class MobileHomeCarousel extends StatefulWidget {
  static const pageFraction = 0.76;

  /// Keep the full poster and caption, but budget against the actual body
  /// viewport (after navigation/status bars), leaving a peek of the shelves.
  static double heightFor(BuildContext context, double width, {double? availableHeight}) {
    final scale = MediaQuery.textScalerOf(context).scale(16) / 16;
    if (MediaQuery.sizeOf(context).shortestSide >= 600) {
      final natural = (width * .42).clamp(300.0, 460.0) + (scale - 1).clamp(0, 2) * 100;
      if (availableHeight == null) return natural;
      final maximum = (availableHeight - 72).clamp(240.0, double.infinity);
      return natural.clamp(240.0, maximum).toDouble();
    }
    final posterWidth = (width * pageFraction - 12).clamp(120.0, 360.0);
    final natural = posterWidth * 1.5 + 72 + 178 * scale;
    if (availableHeight == null) return natural;
    final minimum = 300 + (scale - 1).clamp(0, 2) * 140;
    return natural.clamp(minimum, (availableHeight - 72).clamp(minimum, double.infinity)).toDouble();
  }

  const MobileHomeCarousel({
    super.key,
    required this.items,
    required this.label,
    required this.resolveClient,
    required this.onPlay,
    required this.onDetails,
    required this.active,
    this.kidsStyle,
  });

  final List<MediaItem> items;
  final String label;
  final MediaServerClient? Function(MediaItem) resolveClient;
  final ValueChanged<MediaItem> onPlay, onDetails;
  final bool active;
  final KidsStyle? kidsStyle;

  @override
  State<MobileHomeCarousel> createState() => _MobileHomeCarouselState();
}

class _MobileHomeCarouselState extends State<MobileHomeCarousel> with WidgetsBindingObserver {
  final _phonePages = PageController(viewportFraction: MobileHomeCarousel.pageFraction);
  final _tabletPages = PageController(viewportFraction: .94);
  bool _tablet = false;
  PageController get _pages => _tablet ? _tabletPages : _phonePages;
  late final HomePreviewController _preview;
  ValueListenable<TickerModeData>? _ticker;
  Timer? _timer;
  int _index = 0;
  bool _foreground = true, _touching = false, _dragging = false;
  bool _reduceMotion = false;

  bool get _canRotate =>
      mounted &&
      widget.kidsStyle == null &&
      widget.active &&
      _foreground &&
      !_touching &&
      !_dragging &&
      !_reduceMotion &&
      (_ticker?.value.enabled ?? true) &&
      widget.items.length > 1 &&
      (ModalRoute.of(context)?.isCurrent ?? true);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _preview = HomePreviewController(
      includeRatings: true,
      resolveClient: (item) => widget.resolveClient(item),
      canFetch: () =>
          mounted && widget.active && (_ticker?.value.enabled ?? true) && (ModalRoute.of(context)?.isCurrent ?? true),
    );
    _select();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final tablet = MediaQuery.sizeOf(context).shortestSide >= 600 && widget.kidsStyle == null;
    if (_tablet != tablet) {
      _tablet = tablet;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && _pages.hasClients) _pages.jumpToPage(_index);
      });
    }
    final ticker = TickerMode.getValuesNotifier(context);
    if (!identical(ticker, _ticker)) {
      _ticker?.removeListener(_visibilityChanged);
      _ticker = ticker..addListener(_visibilityChanged);
    }
    _reduceMotion =
        MediaQuery.disableAnimationsOf(context) ||
        MediaQuery.accessibleNavigationOf(context) ||
        (widget.kidsStyle != null && KidsStyle.reduceMotion(context));
    ModalRoute.isCurrentOf(context);
    _schedule();
  }

  @override
  void didUpdateWidget(MobileHomeCarousel oldWidget) {
    super.didUpdateWidget(oldWidget);
    final oldKey = oldWidget.items.isEmpty
        ? null
        : oldWidget.items[_index.clamp(0, oldWidget.items.length - 1)].globalKey;
    final followed = widget.items.indexWhere((item) => item.globalKey == oldKey);
    final target = followed < 0 ? 0 : followed;
    if (_index != target) {
      _index = target;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && _pages.hasClients) _pages.jumpToPage(_index);
      });
    }
    _preview.setActive(widget.active);
    _select();
    // Parent shelf updates must not keep resetting the rotation countdown.
    if (oldWidget.active != widget.active || oldWidget.items.length != widget.items.length) _schedule();
  }

  void _select() {
    if (widget.items.isNotEmpty) _preview.select(widget.items[_index], rowTitle: widget.label);
  }

  void _visibilityChanged() {
    _preview.setActive(widget.active && (_ticker?.value.enabled ?? true));
    _schedule();
  }

  void _schedule({bool interacted = false}) {
    _timer?.cancel();
    if (!_canRotate) return;
    _timer = Timer(Duration(seconds: interacted ? 12 : 7), () {
      if (!_canRotate || !_pages.hasClients) return;
      _pages.animateToPage(
        (_index + 1) % widget.items.length,
        duration: const Duration(milliseconds: 450),
        curve: Curves.easeInOutCubic,
      );
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _foreground = state == AppLifecycleState.resumed;
    _schedule(interacted: true);
  }

  @override
  void dispose() {
    _timer?.cancel();
    _ticker?.removeListener(_visibilityChanged);
    WidgetsBinding.instance.removeObserver(this);
    _preview.dispose();
    _phonePages.dispose();
    _tabletPages.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 4, 20, 12),
        child: Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            widget.label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(
              context,
            ).textTheme.labelLarge?.copyWith(color: widget.kidsStyle?.accent, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      Expanded(
        child: Listener(
          onPointerDown: (_) {
            _touching = true;
            _timer?.cancel();
          },
          onPointerUp: (_) {
            _touching = false;
            _schedule(interacted: true);
          },
          onPointerCancel: (_) {
            _touching = false;
            _schedule(interacted: true);
          },
          child: NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification.metrics.axis != Axis.horizontal) return false;
              if (notification is ScrollStartNotification && notification.dragDetails != null) {
                _dragging = true;
                _timer?.cancel();
              } else if (notification is ScrollEndNotification) {
                final interacted = _dragging;
                _dragging = false;
                _schedule(interacted: interacted);
              }
              return false;
            },
            child: PageView.builder(
              key: ValueKey(_tablet ? 'tablet_home_carousel' : 'mobile_home_carousel'),
              controller: _pages,
              itemCount: widget.items.length,
              onPageChanged: (index) {
                setState(() => _index = index);
                _select();
                _schedule(interacted: _touching || _dragging);
              },
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: ValueListenableBuilder<HomePreview?>(
                  valueListenable: _preview,
                  builder: (context, preview, _) {
                    final original = widget.items[index];
                    final item = preview?.item.globalKey == original.globalKey ? preview!.item : original;
                    if (!KidsProfileService.instance.allows(item)) return const SizedBox.shrink();
                    return _tablet ? _tabletSpotlight(context, item) : _poster(context, item);
                  },
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 36,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var index = 0; index < widget.items.length; index++)
              Semantics(
                label: '${index + 1} / ${widget.items.length}',
                selected: _index == index,
                child: GestureDetector(
                  onTap: () {
                    _schedule(interacted: true);
                    if (_reduceMotion) {
                      _pages.jumpToPage(index);
                    } else {
                      _pages.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 350),
                        curve: Curves.easeOutCubic,
                      );
                    }
                  },
                  behavior: HitTestBehavior.opaque,
                  child: SizedBox(
                    width: 28,
                    height: 36,
                    child: Center(
                      child: Container(
                        width: _index == index ? 20 : 6,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withValues(alpha: _index == index ? 0.9 : 0.25),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    ],
  );

  Widget _tabletSpotlight(BuildContext context, MediaItem item) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final movie = item.kind == MediaKind.movie;
    final overview =
        (SettingsService.instanceOrNull?.read(SettingsService.hideSpoilers) ?? false) && item.shouldHideSpoiler
        ? null
        : item.summary?.trim();
    void details() {
      _schedule(interacted: true);
      widget.onDetails(item);
    }

    return ClipRRect(
      key: ValueKey('tablet_feature_${item.globalKey}'),
      borderRadius: BorderRadius.circular(22),
      child: LayoutBuilder(
        builder: (context, bounds) => Stack(
          fit: StackFit.expand,
          children: [
            ColoredBox(color: colors.surfaceContainerHigh),
            if (item.artPath != null)
              OptimizedMediaImage(
                client: widget.resolveClient(item),
                imagePath: item.artPath,
                imageType: ImageType.art,
                fit: BoxFit.cover,
              ),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    colors.surface.withValues(alpha: .98),
                    colors.surface.withValues(alpha: .88),
                    colors.surface.withValues(alpha: .35),
                  ],
                  stops: const [0, .56, 1],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.displayTitle,
                          key: ValueKey('mobile_feature_title_${item.globalKey}'),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w800, height: 1.12),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          [
                            movie ? t.discover.movie : t.discover.tvShow,
                            if (item.year != null) '${item.year}',
                          ].join(' · '),
                          style: theme.textTheme.bodyMedium?.copyWith(color: colors.onSurfaceVariant),
                        ),
                        if (mediaRatingsFor(item).isNotEmpty) ...[
                          const SizedBox(height: 8),
                          SizedBox(
                            width: double.infinity,
                            child: FittedBox(
                              alignment: Alignment.centerLeft,
                              fit: BoxFit.scaleDown,
                              child: InlineRatingBadges(
                                ratings: mediaRatingsFor(item),
                                textStyle: theme.textTheme.labelMedium,
                              ),
                            ),
                          ),
                        ],
                        Expanded(
                          child: overview == null || overview.isEmpty
                              ? const SizedBox.shrink()
                              : Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: Text(
                                    overview,
                                    maxLines: bounds.maxHeight < 260 ? 2 : 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      height: 1.35,
                                      color: colors.onSurfaceVariant,
                                    ),
                                  ),
                                ),
                        ),
                        Wrap(
                          spacing: 8,
                          runSpacing: 6,
                          children: [
                            FilledButton.icon(
                              key: ValueKey('mobile_feature_open_${item.globalKey}'),
                              onPressed: movie
                                  ? () {
                                      _schedule(interacted: true);
                                      widget.onPlay(item);
                                    }
                                  : details,
                              icon: Icon(movie ? Icons.play_arrow_rounded : Icons.info_outline_rounded),
                              label: Text(
                                movie
                                    ? (item.hasActiveProgress ? t.common.resume : t.common.play)
                                    : t.mediaMenu.viewDetails,
                              ),
                            ),
                            if (movie) OutlinedButton(onPressed: details, child: Text(t.mediaMenu.viewDetails)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: (bounds.maxWidth * .26).clamp(100.0, 200.0),
                    child: Center(
                      child: GestureDetector(
                        onTap: details,
                        child: AspectRatio(
                          aspectRatio: 2 / 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: OptimizedMediaImage.poster(
                              client: widget.resolveClient(item),
                              imagePath: item.thumbPath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _poster(BuildContext context, MediaItem item) {
    void details() {
      _schedule(interacted: true);
      widget.onDetails(item);
    }

    final movie = item.kind == MediaKind.movie;
    final kids = widget.kidsStyle;
    final canPlay = movie || kids != null;
    final colors = Theme.of(context).colorScheme;
    final panel = kids?.surface ?? colors.surface;
    return ClipRRect(
      borderRadius: BorderRadius.circular(kids?.radius ?? 20),
      child: ColoredBox(
        color: panel,
        child: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: details,
                behavior: HitTestBehavior.opaque,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: OptimizedMediaImage(
                    client: widget.resolveClient(item),
                    imagePath: item.thumbPath ?? item.artPath,
                    imageType: ImageType.poster,
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter,
                    placeholder: (_, _) => ColoredBox(color: Theme.of(context).colorScheme.surfaceContainerHighest),
                  ),
                ),
              ),
            ),
            Padding(
              key: ValueKey('mobile_feature_caption_${item.globalKey}'),
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    item.displayTitle,
                    key: ValueKey('mobile_feature_title_${item.globalKey}'),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: colors.onSurface, fontSize: 22, fontWeight: FontWeight.w800, height: 1.1),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    [
                      movie ? t.discover.movie : t.discover.tvShow,
                      if (kids != null && item.contentRating?.isNotEmpty == true) item.contentRating!,
                      if (item.year != null) '${item.year}',
                    ].join(' · '),
                    style: TextStyle(color: colors.onSurfaceVariant, fontSize: 13),
                  ),
                  if ((kids == null || kids.isOlder) && mediaRatingsFor(item).isNotEmpty) ...[
                    const SizedBox(height: 8),
                    InlineRatingBadges(
                      ratings: mediaRatingsFor(item),
                      textStyle: TextStyle(color: colors.onSurface, fontSize: 12),
                    ),
                  ],
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      Expanded(
                        child: FilledButton.icon(
                          key: ValueKey('mobile_feature_open_${item.globalKey}'),
                          onPressed: canPlay
                              ? () {
                                  _schedule(interacted: true);
                                  widget.onPlay(item);
                                }
                              : details,
                          style: FilledButton.styleFrom(
                            backgroundColor: kids?.accent ?? colors.primary,
                            foregroundColor: kids?.background ?? colors.onPrimary,
                            minimumSize: kids == null ? null : const Size(0, 52),
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                          ),
                          icon: Icon(canPlay ? Icons.play_arrow_rounded : Icons.info_outline_rounded, size: 20),
                          label: Text(
                            canPlay
                                ? (item.hasActiveProgress ? t.common.resume : t.common.play)
                                : t.mediaMenu.viewDetails,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      if (kids != null) ...[
                        const SizedBox(width: 8),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: details,
                            style: OutlinedButton.styleFrom(
                              foregroundColor: colors.onSurface,
                              backgroundColor: kids.surface.withValues(alpha: 0.85),
                              side: BorderSide(color: kids.accent.withValues(alpha: 0.6)),
                              minimumSize: const Size(0, 52),
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                            ),
                            child: Text(t.kids.moreInfo, maxLines: 1, overflow: TextOverflow.ellipsis),
                          ),
                        ),
                      ] else if (movie) ...[
                        const SizedBox(width: 8),
                        IconButton(
                          onPressed: details,
                          tooltip: t.mediaMenu.viewDetails,
                          style: IconButton.styleFrom(
                            backgroundColor: colors.onSurface.withValues(alpha: 0.08),
                            foregroundColor: colors.onSurface,
                          ),
                          icon: const Icon(Icons.info_outline_rounded),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
