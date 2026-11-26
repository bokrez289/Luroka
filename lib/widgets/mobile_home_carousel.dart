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
  static double heightFor(BuildContext context, double width, {double? availableHeight, bool kids = false, bool? cinematicOverride, bool? marqueeOverride, bool? picksOverride}) {
    final scale = MediaQuery.textScalerOf(context).scale(16) / 16;
    if (MediaQuery.sizeOf(context).shortestSide >= 600) {
      final marquee = !kids && (marqueeOverride ?? SettingsService.instanceOrNull?.read(SettingsService.tabletMarquee) ?? false);
      final picks = !kids && (picksOverride ?? SettingsService.instanceOrNull?.read(SettingsService.tabletTonightPicks) ?? false);
      final stacked = MediaQuery.orientationOf(context) == Orientation.portrait || width < 740;
      final artworkHeight = picks ? (width * .31).clamp(280.0, 340.0) : marquee
          ? (stacked ? (width * .48).clamp(290.0, 390.0) : (width * .29).clamp(245.0, 340.0))
          : (width * .42).clamp(300.0, 460.0);
      final natural = artworkHeight + (scale - 1).clamp(0, 2) * 100;
      if (availableHeight == null) return natural;
      final maximum = (availableHeight - 72).clamp(240.0, double.infinity);
      return natural.clamp(240.0, maximum).toDouble();
    }
    final posterWidth = (width * pageFraction - 12).clamp(120.0, 360.0);
    final size = kids
        ? PhoneSpotlightSize.large
        : SettingsService.instanceOrNull?.read(SettingsService.phoneSpotlightSize) ?? PhoneSpotlightSize.compact;
    final posterFactor = switch (size) {
      PhoneSpotlightSize.compact => .65,
      PhoneSpotlightSize.standard => 1.0,
      PhoneSpotlightSize.large => 1.5,
    };
    if (!kids && (cinematicOverride ?? SettingsService.instanceOrNull?.read(SettingsService.phoneCinematicSpotlight) ?? true)) {
      final minimum = 288.0 + (scale - 1).clamp(0, 2) * 140;
      final natural = minimum + width * (posterFactor - .65) * .36;
      return availableHeight == null ? natural : natural.clamp(minimum, (availableHeight - 72).clamp(minimum, double.infinity)).toDouble();
    }
    final natural = posterWidth * posterFactor + 72 + (kids ? 178 : 185) * scale;
    if (availableHeight == null) return natural;
    final minimum = 300 + (scale - 1).clamp(0, 2) * 140;
    return natural.clamp(minimum, (availableHeight - 72).clamp(minimum, double.infinity)).toDouble();
  }

  const MobileHomeCarousel({
    super.key,
    required this.items,
    required this.label,
    this.labelFor,
    required this.resolveClient,
    required this.onPlay,
    required this.onDetails,
    required this.active,
    this.kidsStyle,
    this.cinematicOverride,
    this.marqueeOverride,
    this.picksOverride,
  });

  final List<MediaItem> items;
  final String label;
  final String Function(MediaItem)? labelFor;
  final MediaServerClient? Function(MediaItem) resolveClient;
  final ValueChanged<MediaItem> onPlay, onDetails;
  final bool active;
  final KidsStyle? kidsStyle;
  final bool? cinematicOverride;
  final bool? marqueeOverride;
  final bool? picksOverride;

  @override
  State<MobileHomeCarousel> createState() => _MobileHomeCarouselState();
}

class _MobileHomeCarouselState extends State<MobileHomeCarousel> with WidgetsBindingObserver {
  final _phonePages = PageController(viewportFraction: MobileHomeCarousel.pageFraction);
  final _tabletPages = PageController(viewportFraction: .94);
  final _marqueePages = PageController(keepPage: false);
  bool get _usePicks => _tablet && (widget.picksOverride ?? SettingsService.instanceOrNull?.read(SettingsService.tabletTonightPicks) ?? false);
  bool get _useMarquee => _tablet && !_usePicks && (widget.marqueeOverride ?? SettingsService.instanceOrNull?.read(SettingsService.tabletMarquee) ?? false);
  bool _tablet = false;
  bool get _cinematic => widget.kidsStyle == null && !_tablet &&
      (widget.cinematicOverride ?? SettingsService.instanceOrNull?.read(SettingsService.phoneCinematicSpotlight) ?? true);
  PageController get _pages => _useMarquee || _usePicks ? _marqueePages : _tablet || _cinematic ? _tabletPages : _phonePages;
  late final HomePreviewController _preview;
  ValueListenable<TickerModeData>? _ticker;
  Timer? _timer;
  Listenable? _rotationPreferences;
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
      (SettingsService.instanceOrNull?.read(SettingsService.homeSpotlightAutoRotate) ?? true) &&
      (_ticker?.value.enabled ?? true) &&
      widget.items.length > 1 &&
      (ModalRoute.of(context)?.isCurrent ?? true);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    final settings = SettingsService.instanceOrNull;
    if (settings != null) {
      _rotationPreferences = Listenable.merge([
        settings.listenable(SettingsService.homeSpotlightAutoRotate),
        settings.listenable(SettingsService.homeSpotlightInterval),
      ])..addListener(_schedule);
    }
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
    if (widget.items.isNotEmpty) {
      final item = widget.items[_index];
      _preview.select(item, rowTitle: widget.labelFor?.call(item) ?? widget.label);
    }
  }

  void _visibilityChanged() {
    _preview.setActive(widget.active && (_ticker?.value.enabled ?? true));
    _schedule();
  }

  void _schedule({bool interacted = false}) {
    _timer?.cancel();
    if (!_canRotate) return;
    final interval = (SettingsService.instanceOrNull?.read(SettingsService.homeSpotlightInterval) ?? 15).clamp(10, 60);
    _timer = Timer(Duration(seconds: interval), () {
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
    _rotationPreferences?.removeListener(_schedule);
    _ticker?.removeListener(_visibilityChanged);
    WidgetsBinding.instance.removeObserver(this);
    _preview.dispose();
    _phonePages.dispose();
    _tabletPages.dispose();
    _marqueePages.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
    children: [
      if (_useMarquee || _usePicks)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(children: [
            Expanded(child: Text(_usePicks ? 'Tonight’s Picks' : t.lurokaWorkspace.spotlight, style: Theme.of(context).textTheme.titleMedium)),
            if (widget.items.length > 1) ...[
              IconButton(tooltip: MaterialLocalizations.of(context).previousPageTooltip,
                onPressed: () => _moveMarquee(-1), icon: const Icon(Icons.chevron_left)),
              Text('${_index + 1} / ${widget.items.length}', style: Theme.of(context).textTheme.labelMedium),
              IconButton(tooltip: MaterialLocalizations.of(context).nextPageTooltip,
                onPressed: () => _moveMarquee(1), icon: const Icon(Icons.chevron_right)),
            ],
          ]),
        )
      else Padding(
        padding: const EdgeInsets.fromLTRB(20, 4, 20, 12),
        child: Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            widget.items.isEmpty ? widget.label : widget.labelFor?.call(widget.items[_index]) ?? widget.label,
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
                padding: EdgeInsets.symmetric(horizontal: _useMarquee || _usePicks ? 16 : 6),
                child: ValueListenableBuilder<HomePreview?>(
                  valueListenable: _preview,
                  builder: (context, preview, _) {
                    final original = widget.items[index];
                    final item = preview?.item.globalKey == original.globalKey ? preview!.item : original;
                    if (!KidsProfileService.instance.allows(item)) return const SizedBox.shrink();
                    if (_usePicks) return _tonightPicks(context, index, item);
                    if (_useMarquee) {
                      return _marquee(context, index, item);
                    }
                    return _tablet ? _tabletSpotlight(context, item) : _cinematic ? _landscape(context, item) : _poster(context, item);
                  },
                ),
              ),
            ),
          ),
        ),
      ),
      if (_useMarquee || _usePicks) const SizedBox(height: 12) else SizedBox(
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

  bool _hideSpoilers(MediaItem item) =>
      (SettingsService.instanceOrNull?.read(SettingsService.hideSpoilers) ?? false) && item.shouldHideSpoiler;

  void _moveMarquee(int delta) {
    final next = (_index + delta) % widget.items.length;
    if (_reduceMotion) {
      _pages.jumpToPage(next);
    } else {
      _pages.animateToPage(next, duration: const Duration(milliseconds: 300), curve: Curves.easeOutCubic);
    }
    _schedule(interacted: true);
  }

  Widget _tonightPicks(BuildContext context, int index, MediaItem lead) {
    final picks = <MediaItem>[lead];
    for (var offset = 1; offset < widget.items.length && picks.length < 3; offset++) {
      final item = widget.items[(index + offset) % widget.items.length];
      if (KidsProfileService.instance.allows(item)) picks.add(item);
    }
    return Row(
      key: const ValueKey('tonight_picks'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final item in picks) ...[
          if (item != picks.first) const SizedBox(width: 8),
          Expanded(child: Material(
            color: Theme.of(context).colorScheme.surfaceContainerHigh,
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(14),
            child: InkWell(
              key: ValueKey('tonight_pick_${item.globalKey}'),
              onTap: () => widget.onDetails(item),
              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                Expanded(flex: 5, child: OptimizedMediaImage(
                  client: widget.resolveClient(item),
                  imagePath: item.isEpisode ? item.grandparentArtPath : item.artPath,
                  imageType: ImageType.art, fit: BoxFit.cover,
                )),
                Expanded(flex: 4, child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: SingleChildScrollView(child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(widget.labelFor?.call(item) ?? widget.label, maxLines: 1, overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.primary)),
                    const SizedBox(height: 3),
                    Text(_safeTitle(item), maxLines: 2, overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 3),
                    Text([item.isMovie ? t.discover.movie : t.discover.tvShow, if (item.year != null) '${item.year}'].join(' · '),
                      maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelSmall),
                  ])),
                )),
              ]),
            ),
          )),
        ],
      ],
    );
  }

  Widget _marquee(BuildContext context, int index, MediaItem item) {
    final lead = _marqueeCard(item, lead: true);
    final companions = <Widget>[];
    for (var offset = 1; offset < widget.items.length && companions.length < 2; offset++) {
      final other = widget.items[(index + offset) % widget.items.length];
      if (KidsProfileService.instance.allows(other)) companions.add(_marqueeCard(other));
    }
    if (companions.isEmpty) return lead;
    return LayoutBuilder(builder: (context, bounds) {
      final stacked = MediaQuery.orientationOf(context) == Orientation.portrait || bounds.maxWidth < 680;
      return Flex(
        direction: stacked ? Axis.vertical : Axis.horizontal,
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(flex: stacked ? 3 : 5, child: lead),
          Expanded(flex: stacked ? 2 : 3, child: Flex(
            direction: stacked ? Axis.horizontal : Axis.vertical,
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [for (final card in companions) Expanded(child: card)],
          )),
        ],
      );
    });
  }

  Widget _marqueeCard(MediaItem item, {bool lead = false}) {
    final art = item.isEpisode ? item.grandparentArtPath : item.artPath;
    final image = art;
    Widget artwork({required bool contain}) => OptimizedMediaImage(
      key: ValueKey('marquee_art_${item.globalKey}'),
      client: widget.resolveClient(item), imagePath: image,
      imageType: ImageType.art,
      fit: contain ? BoxFit.contain : BoxFit.cover,
    );
    final playable = lead && (item.isMovie || item.isEpisode);
    if (lead) {
      final colors = Theme.of(context).colorScheme;
      return Material(
        color: colors.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.antiAlias,
        child: InkWell(onTap: () => widget.onDetails(item), child: Row(children: [
          Expanded(flex: 4, child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
              Flexible(child: Text(widget.labelFor?.call(item) ?? widget.label, maxLines: 1,
                overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelMedium?.copyWith(color: colors.primary))),
              const SizedBox(height: 5),
              Flexible(flex: 3, child: Text(_safeTitle(item), maxLines: 2, overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold, height: 1.05))),
              const SizedBox(height: 8),
              FilledButton.tonalIcon(
                onPressed: playable ? () => widget.onPlay(item) : () => widget.onDetails(item),
                icon: Icon(playable ? Icons.play_arrow_rounded : Icons.info_outline_rounded),
                label: Text(playable ? (item.hasActiveProgress ? t.common.resume : t.common.play) : t.mediaMenu.viewDetails,
                  maxLines: 1, overflow: TextOverflow.ellipsis),
              ),
            ]),
          )),
          Expanded(flex: 6, child: Stack(fit: StackFit.expand, children: [
            artwork(contain: true),
            IgnorePointer(child: DecoratedBox(decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.centerStart, end: AlignmentDirectional.centerEnd,
                colors: [colors.surfaceContainerHigh, colors.surfaceContainerHigh.withValues(alpha: 0)],
                stops: const [0, .22],
              ),
            ))),
          ])),
        ])),
      );
    }
    return Material(
      color: Theme.of(context).colorScheme.surfaceContainerHigh,
      borderRadius: BorderRadius.circular(16),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => widget.onDetails(item),
        child: Stack(fit: StackFit.expand, children: [
          artwork(contain: false),
          const DecoratedBox(decoration: BoxDecoration(gradient: LinearGradient(
            begin: Alignment.topCenter, end: Alignment.bottomCenter,
            colors: [Colors.transparent, Color(0xda101218)],
          ))),
          Align(alignment: AlignmentDirectional.bottomStart, child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(children: [
              Expanded(child: Text(_safeTitle(item), maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white, fontFamily: 'serif',
                  fontSize: 20, fontWeight: FontWeight.bold, height: 1.05))),
              const Icon(Icons.chevron_right_rounded, color: Colors.white),
            ]),
          )),
        ]),
      ),
    );
  }

  String _safeTitle(MediaItem item) {
    final hidden = _hideSpoilers(item);
    if (item.isEpisode && hidden && (item.grandparentTitle?.trim().isEmpty ?? true)) {
      return t.dashboard.episodeFallback;
    }
    return item.displayTitle;
  }

  Widget _tabletSpotlight(BuildContext context, MediaItem item) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final movie = item.kind == MediaKind.movie;
    final playable = movie || item.kind == MediaKind.episode;
    final poster = item.isEpisode ? item.grandparentThumbPath ?? item.parentThumbPath : item.thumbPath;
    final backdrop = item.isEpisode ? item.grandparentArtPath : item.artPath;
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
            if (backdrop != null)
              OptimizedMediaImage(
                client: widget.resolveClient(item),
                imagePath: backdrop,
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
                          _safeTitle(item),
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
                              onPressed: playable
                                  ? () {
                                      _schedule(interacted: true);
                                      widget.onPlay(item);
                                    }
                                  : details,
                              icon: Icon(playable ? Icons.play_arrow_rounded : Icons.info_outline_rounded),
                              label: Text(
                                playable
                                    ? ((item.hasActiveProgress ||
                                              ((item.viewOffsetMs ?? 0) > 0 && item.durationMs == null))
                                          ? t.common.resume
                                          : t.common.play)
                                    : t.mediaMenu.viewDetails,
                              ),
                            ),
                            if (playable) OutlinedButton(onPressed: details, child: Text(t.mediaMenu.viewDetails)),
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
                              imagePath: poster,
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

  Widget _landscape(BuildContext context, MediaItem item) {
    final backdrop = item.isEpisode ? item.grandparentArtPath : item.artPath;
    final poster = item.isEpisode ? item.grandparentThumbPath ?? item.parentThumbPath : item.thumbPath;
    final playable = item.isMovie || item.isEpisode;
    void details() {
      _schedule(interacted: true);
      widget.onDetails(item);
    }
    return ClipRRect(
      key: ValueKey('cinematic_feature_${item.globalKey}'),
      borderRadius: BorderRadius.circular(20),
      child: Stack(fit: StackFit.expand, children: [
        const ColoredBox(color: Color(0xff172238)),
        if (backdrop != null || poster != null)
          GestureDetector(onTap: details, child: OptimizedMediaImage(
            client: widget.resolveClient(item), imagePath: backdrop ?? poster,
            imageType: backdrop == null ? ImageType.poster : ImageType.art,
            fit: backdrop == null ? BoxFit.contain : BoxFit.cover,
            alignment: Alignment.centerRight,
          )),
        const IgnorePointer(child: DecoratedBox(decoration: BoxDecoration(gradient: LinearGradient(
          begin: Alignment.topRight, end: Alignment.bottomLeft,
          colors: [Colors.transparent, Color(0x55000000), Color(0xee000000)],
          stops: [.12, .54, .95],
        )))),
        Align(alignment: AlignmentDirectional.bottomStart, child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(_safeTitle(item), maxLines: 3, overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white, fontSize: 22, height: 1.1, fontWeight: FontWeight.w800)),
            Text([item.isMovie ? t.discover.movie : t.discover.tvShow, if (item.year != null) '${item.year}'].join(' · '),
              style: const TextStyle(color: Colors.white, fontSize: 13)),
            const SizedBox(height: 6),
            Row(children: [
              Flexible(child: FilledButton.icon(
                key: ValueKey('mobile_feature_open_${item.globalKey}'),
                onPressed: playable ? () { _schedule(interacted: true); widget.onPlay(item); } : details,
                icon: Icon(playable ? Icons.play_arrow_rounded : Icons.info_outline_rounded),
                label: Text(playable ? (item.hasActiveProgress || ((item.viewOffsetMs ?? 0) > 0 && item.durationMs == null)
                    ? t.common.resume : t.common.play) : t.mediaMenu.viewDetails, maxLines: 1, overflow: TextOverflow.ellipsis),
              )),
              if (playable) IconButton(onPressed: details, tooltip: t.mediaMenu.viewDetails,
                icon: const Icon(Icons.info_outline_rounded, color: Colors.white)),
            ]),
          ]),
        )),
      ]),
    );
  }

  Widget _poster(BuildContext context, MediaItem item) {
    void details() {
      _schedule(interacted: true);
      widget.onDetails(item);
    }

    final movie = item.kind == MediaKind.movie;
    final kids = widget.kidsStyle;
    final canPlay = movie || item.kind == MediaKind.episode || kids != null;
    final poster = item.isEpisode ? item.grandparentThumbPath ?? item.parentThumbPath : item.thumbPath ?? item.artPath;
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
                    imagePath: poster,
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
                    _safeTitle(item),
                    key: ValueKey('mobile_feature_title_${item.globalKey}'),
                    maxLines: kids == null ? 3 : 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: colors.onSurface,
                      fontSize: kids == null ? 19 : 22,
                      fontWeight: FontWeight.w800,
                      height: 1.1,
                    ),
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
                                ? ((item.hasActiveProgress || ((item.viewOffsetMs ?? 0) > 0 && item.durationMs == null))
                                      ? t.common.resume
                                      : t.common.play)
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
