import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show ScrollCacheExtent;
import '../../focus/focusable_button.dart';
import '../../focus/focusable_wrapper.dart';
import '../../i18n/strings.g.dart';
import '../../media/media_hub.dart';
import '../../media/media_item.dart';
import '../../media/media_kind.dart';
import '../../media/movie_copy_groups.dart';
import '../../media/media_server_client.dart';
import '../../services/kids_profile_service.dart';
import '../../services/settings_service.dart' hide ThemeMode;
import '../../models/kids_atmosphere.dart';
import '../../utils/platform_detector.dart';
import '../../utils/media_image_helper.dart';
import '../../utils/error_dialog.dart';
import '../../theme/kids_style.dart';
import '../app_menu.dart';
import 'kids_avatar.dart';
import 'kids_shelf_spotlight.dart';
import '../../media/media_item_types.dart';
import '../optimized_media_image.dart';

/// Illustrated landing with independent, horizontally browsable rows. Artwork
/// is bundled; media and progress always belong to the active child's library.
class KidsMovieShelf extends StatefulWidget {
  const KidsMovieShelf({
    super.key,
    required this.rows,
    required this.onDeck,
    required this.name,
    required this.toolbar,
    required this.showToolbar,
    required this.resolveClient,
    required this.onPlay,
    required this.onDetails,
    required this.onResume,
    required this.onSidebar,
    required this.onToolbar,
    this.onBrowse,
    this.loading = false,
    this.error,
    this.onRetry,
  });
  final List<MediaHub> rows;
  final List<MediaItem> onDeck;
  final String name;
  final Widget toolbar;
  final bool showToolbar;
  final MediaServerClient? Function(MediaItem) resolveClient;
  final ValueChanged<MediaItem> onPlay, onDetails, onResume;
  final VoidCallback onSidebar, onToolbar;
  final ValueChanged<MediaKind>? onBrowse;
  final bool loading;
  final String? error;
  final VoidCallback? onRetry;
  @override
  State<KidsMovieShelf> createState() => KidsMovieShelfState();
}

class KidsMovieShelfState extends State<KidsMovieShelf> {
  KidsAtmosphere get _atmosphere {
    final kids = KidsProfileService.instance;
    return kids.activeId == null ? KidsAtmosphere.sunshine : kids.atmosphereFor(kids.activeId!);
  }
  Color get _ink => _atmosphere.background;
  Color get _yellow => _atmosphere == KidsAtmosphere.sunshine && _quiet
      ? const Color(0xff89ecd3) : _atmosphere.accent;
  bool get _quiet {
    final kids = KidsProfileService.instance;
    return kids.activeId != null && kids.quietSceneryFor(kids.activeId!);
  }

  final _filters = List.generate(2, (i) => FocusNode(debugLabel: 'kids-shelf-filter-$i'));
  final _cards = <String, FocusNode>{};
  final _rowAnchors = <String, GlobalKey>{};
  final _remembered = <String, String>{};
  final _scroll = ScrollController();
  int _shortcut = 0;
  String? _lastCard;
  String? _spotlightCard;
  Timer? _settle;
  final _stage = GlobalKey();
  int _previewRequest = 0;

  bool _hideSpoiler(MediaItem item) =>
      item.isEpisode &&
      item.shouldHideSpoiler &&
      (SettingsService.instanceOrNull?.read(SettingsService.hideSpoilers) ?? false);

  void _cardFocus(String id, MediaItem item, bool focused) {
    if (focused) {
      _lastCard = id;
      if (!PlatformDetector.isTV()) return;
      _settle?.cancel();
      final request = ++_previewRequest;
      _settle = Timer(const Duration(milliseconds: 220), () async {
        if (!mounted || _cards[id]?.hasPrimaryFocus != true || !KidsProfileService.instance.allows(item)) return;
        final size = _stage.currentContext?.size;
        final path = KidsShelfSpotlight.backdrop(item, _hideSpoiler(item));
        if (size != null && path != null) {
          final image = OptimizedMediaImage(
            client: widget.resolveClient(item),
            imagePath: path,
            imageType: ImageType.featureArt,
          );
          final (_, provider) = image.resolveNetworkImage(
            context,
            size.width * KidsShelfSpotlight.artFraction,
            size.height,
          );
          if (provider != null) {
            // Keep the current scene while artwork decodes. A stalled server
            // mustn't keep the new title and its fallback off-screen indefinitely.
            await precacheImage(
              provider,
              context,
              onError: (_, _) {},
            ).timeout(const Duration(milliseconds: 900), onTimeout: () {});
          }
        }
        if (mounted && request == _previewRequest && _cards[id]?.hasPrimaryFocus == true) {
          setState(() => _spotlightCard = id);
        }
      });
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted || _cards[_lastCard]?.hasFocus == true) return;
        _settle?.cancel();
        if (_spotlightCard != null) setState(() => _spotlightCard = null);
      });
    }
  }

  final Map<String, List<MediaItem>> _copies = {};

  @override
  void initState() {
    super.initState();
    KidsProfileService.instance.addListener(_policyChanged);
  }

  void _policyChanged() {
    if (mounted) {
      _lastCard = null;
      _previewRequest++;
      _settle?.cancel();
      _spotlightCard = null;
      setState(() {});
    }
  }

  FocusNode _card(String id) => _cards.putIfAbsent(id, () => FocusNode(debugLabel: 'kids-shelf:$id'));
  void requestContentFocus() {
    final previous = _cards[_lastCard];
    if (previous?.context != null && previous!.canRequestFocus) {
      previous.requestFocus();
    } else {
      _filters[_shortcut].requestFocus();
    }
  }

  @override
  void dispose() {
    KidsProfileService.instance.removeListener(_policyChanged);
    for (final node in [..._filters, ..._cards.values]) {
      node.dispose();
    }
    _settle?.cancel();
    _scroll.dispose();
    super.dispose();
  }

  void _focusRow(_KidsRow row) {
    final remembered = _remembered[row.id];
    final key = row.items.any((item) => '${row.id}:${item.globalKey}' == remembered)
        ? remembered!
        : '${row.id}:${row.items.first.globalKey}';
    final anchor = _rowAnchors[row.id]?.currentContext;
    if (anchor != null) Scrollable.ensureVisible(anchor, alignment: 0);
    final target = _cards[key];
    if (target?.context != null) {
      target!.requestFocus();
      return;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final node = _cards[key];
      if (node?.context != null) node!.requestFocus();
    });
    WidgetsBinding.instance.ensureVisualUpdate();
  }

  List<_KidsRow> _rows() {
    final kids = KidsProfileService.instance;
    final safeHubs = kids.filterHubs(widget.rows);
    final seen = <String>{};
    final rawTitles = safeHubs
        .expand((row) => row.items)
        .where((item) => (item.kind == MediaKind.movie || item.kind == MediaKind.show) && seen.add(item.globalKey))
        .toList();
    final grouped = MovieCopyGroups(rawTitles);
    _copies
      ..clear()
      ..addEntries(grouped.items.map((item) => MapEntry(item.globalKey, grouped.copiesFor(item))));
    final titles = grouped.items;
    final resumeSeen = <String>{};
    final count = (SettingsService.instanceOrNull?.read(SettingsService.homeShelfItemCount) ?? 16).clamp(16, 48);
    final resume = kids
        .filter(widget.onDeck, continueWatching: true)
        .where((item) => resumeSeen.add(item.globalKey))
        .take(count)
        .toList();
    final movies = titles.where((item) => item.kind == MediaKind.movie).take(count).toList();
    final shows = titles.where((item) => item.kind == MediaKind.show).take(count).toList();
    return [
      if (resume.isNotEmpty)
        _KidsRow('resume', t.kidsHome.keepWatching, Icons.play_circle_fill_rounded, resume, resume: true),
      if (movies.isNotEmpty) _KidsRow('movies', t.kidsShelf.movieShelf, Icons.movie_rounded, movies),
      if (shows.isNotEmpty) _KidsRow('shows', t.kidsShelf.showShelf, Icons.tv_rounded, shows),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final rows = _rows();
    final tv = PlatformDetector.isTV();
    final tablet = !tv && PlatformDetector.isMobile(context) && MediaQuery.sizeOf(context).shortestSide >= 600;
    final width = MediaQuery.sizeOf(context).width;
    final inset = tv ? (width * .045).clamp(24.0, 70.0) : 18.0;
    final scale = MediaQuery.textScalerOf(context).scale(14) / 14;
    final shelf = CustomScrollView(
      key: const ValueKey('kids-movie-shelf'),
      controller: _scroll,
      scrollCacheExtent: ScrollCacheExtent.pixels(tv ? 720 : 240),
      slivers: [
        if (!tv)
          SliverToBoxAdapter(
            child: _header(context, tv: false, tablet: tablet, inset: inset, rows: rows),
          ),
        if (widget.loading && rows.isEmpty)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: LinearProgressIndicator(color: _yellow),
            ),
          ),
        if (rows.isEmpty && !widget.loading)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Icon(
                    widget.error == null ? Icons.local_movies_outlined : Icons.cloud_off_outlined,
                    size: 48,
                    color: _yellow,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    widget.error ?? t.kids.emptyHint,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white70),
                  ),
                  if (widget.error != null && widget.onRetry != null)
                    TextButton(onPressed: widget.onRetry, child: Text(t.common.retry)),
                ],
              ),
            ),
          ),
        for (var r = 0; r < rows.length; r++)
          SliverToBoxAdapter(
            child: Column(
              key: _rowAnchors.putIfAbsent(rows[r].id, GlobalKey.new),
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(inset, r == 0 ? 0 : 8, inset, 12),
                  child: Row(
                    children: [
                      Icon(rows[r].icon, color: _yellow, size: tv ? 26 : 22),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          rows[r].title,
                          style: TextStyle(color: Colors.white, fontSize: tv ? 20 : 18, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                ),
                LayoutBuilder(
                  builder: (context, bounds) {
                    final cardWidth = tv
                        ? ((bounds.maxWidth - inset * 2 - 48) / (rows[r].resume ? 4 : 5)).clamp(165.0, 310.0)
                        : tablet
                        ? ((bounds.maxWidth - inset * 2 - 42) /
                                (MediaQuery.orientationOf(context) == Orientation.landscape ? 4 : 3))
                            .clamp(160.0, 300.0)
                        : (bounds.maxWidth * (rows[r].resume ? .56 : .42)).clamp(130.0, 220.0);
                    final cardHeight = cardWidth / (tv || tablet || rows[r].resume ? 16 / 9 : 1.25) + 48 * scale;
                    return SizedBox(
                      height: cardHeight + 20,
                      child: ListView.separated(
                        key: PageStorageKey('kids-row-${rows[r].id}'),
                        padding: EdgeInsets.fromLTRB(inset, 4, inset, 16),
                        scrollDirection: Axis.horizontal,
                        itemCount: rows[r].items.length,
                        separatorBuilder: (_, _) => const SizedBox(width: 14),
                        itemBuilder: (context, index) => _tile(
                          context,
                          rows[r],
                          rows[r].items[index],
                          cardWidth,
                          tablet: tablet,
                          onUp: r == 0 ? _filters[_shortcut].requestFocus : () => _focusRow(rows[r - 1]),
                          onDown: r + 1 < rows.length ? () => _focusRow(rows[r + 1]) : null,
                          first: index == 0,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        if (tv && rows.isNotEmpty)
          SliverLayoutBuilder(
            builder: (context, constraints) {
              final last = rows.last;
              final cardWidth = ((constraints.crossAxisExtent - inset * 2 - 48) / (last.resume ? 4 : 5)).clamp(
                165.0,
                310.0,
              );
              final cardHeight = cardWidth / (16 / 9) + 48 * scale + 20;
              // Allow the final row to reach the top even when it is shorter
              // than the viewport; otherwise the preceding row stays clipped.
              final space = (constraints.viewportMainAxisExtent - cardHeight).clamp(24.0, double.infinity);
              return SliverToBoxAdapter(child: SizedBox(height: space));
            },
          )
        else
          SliverToBoxAdapter(child: SizedBox(height: 24 + MediaQuery.paddingOf(context).bottom)),
      ],
    );
    // The welcome and the spotlight occupy exactly the same stage. Only the
    // rails scroll, so changing focus never moves the selected poster.
    MediaItem? selected;
    bool resume = false;
    if (tv && _spotlightCard != null) {
      for (final row in rows) {
        final match = row.items.where((i) => '${row.id}:${i.globalKey}' == _spotlightCard).firstOrNull;
        if (match != null) {
          selected = match;
          resume = row.resume;
          break;
        }
      }
    }
    return Material(
      color: _ink,
      child: SafeArea(
        bottom: false,
        child: !tv
            ? shelf
            : Column(
                children: [
                  Stack(
                    key: _stage,
                    children: [
                      IgnorePointer(
                        ignoring: selected != null,
                        child: ExcludeSemantics(
                          excluding: selected != null,
                          child: Opacity(
                            opacity: selected == null ? 1 : 0,
                            child: _header(context, tv: true, inset: inset, rows: rows),
                          ),
                        ),
                      ),
                      if (selected != null)
                        Positioned.fill(
                          child: IgnorePointer(
                            child: KidsShelfSpotlight(
                              key: ValueKey('spotlight:${selected.globalKey}'),
                              item: selected,
                              client: widget.resolveClient(selected),
                              quiet: _quiet,
                              background: _ink,
                              accent: _yellow,
                              inset: inset,
                              resume: resume,
                              spoiler: _hideSpoiler(selected),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Expanded(child: shelf),
                ],
              ),
      ),
    );
  }

  Widget _header(BuildContext context, {required bool tv, bool tablet = false, required double inset, required List<_KidsRow> rows}) {
    final scale = MediaQuery.textScalerOf(context).scale(14) / 14;
    final size = MediaQuery.sizeOf(context);
    final phone = !tv && !tablet && PlatformDetector.isMobile(context);
    final tabletHeight = MediaQuery.orientationOf(context) == Orientation.landscape
        ? (size.height * .46).clamp(250.0, 390.0)
        : (size.width * .46).clamp(260.0, 400.0);
    final height = (tv ? (size.height * .36).clamp(185.0, 300.0) : tablet ? tabletHeight : 152.0) +
        (scale - 1).clamp(0, 3) * 45;
    return ConstrainedBox(
      key: const ValueKey('kids-illustrated-header'),
      constraints: BoxConstraints(minHeight: height),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            bottom: 0,
            left: tv ? MediaQuery.sizeOf(context).width * .44 : 0,
            child: ExcludeSemantics(
              child: RepaintBoundary(
                child: _quiet
                    ? const CustomPaint(painter: _KidsLandscapePainter())
                    : tablet || phone
                    ? Image.asset(
                        'assets/branding/kids-world-${tablet && size.width > size.height ? 'tv' : 'phone'}.webp',
                        key: ValueKey(tablet ? 'kids-tablet-treehouse-art' : 'kids-phone-treehouse-art'),
                        fit: BoxFit.cover,
                        alignment: tablet ? const Alignment(0, -.4) : Alignment.centerRight,
                        errorBuilder: (_, _, _) => const CustomPaint(painter: _KidsLandscapePainter()),
                      )
                    : ShaderMask(
                        blendMode: BlendMode.dstIn,
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [Colors.transparent, Colors.white],
                          stops: [0, .30],
                        ).createShader(bounds),
                        child: Image.asset(
                          'assets/branding/kids-world-${tv ? 'tv' : 'phone'}.webp',
                          fit: BoxFit.cover,
                          alignment: tv ? const Alignment(1, -.65) : Alignment.centerRight,
                          errorBuilder: (_, _, _) => const CustomPaint(painter: _KidsLandscapePainter()),
                        ),
                      ),
              ),
            ),
          ),
          Positioned.fill(
            child: IgnorePointer(child: DecoratedBox(
              decoration: BoxDecoration(gradient: LinearGradient(
                colors: [
                  _atmosphere == KidsAtmosphere.sunshine ? Colors.transparent : _atmosphere.skyTint.withValues(alpha: .38),
                  Colors.transparent,
                ],
                stops: const [0, .72],
              )),
            )),
          ),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    tablet ? _ink.withValues(alpha: .58) : phone ? _ink.withValues(alpha: .70) : _ink,
                    _ink.withValues(alpha: tv ? .8 : tablet ? .30 : phone ? .38 : .5),
                    Colors.transparent,
                  ],
                  stops: const [0, .30, .78],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [_ink.withValues(alpha: .05), _ink.withValues(alpha: .05), _ink],
                  stops: tablet ? const [0, .66, 1] : const [0, .72, 1],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(inset, tv ? 12 : 10, inset, 14),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    if (!(phone && widget.showToolbar)) ...[
                      KidsAvatar(
                        avatar: KidsProfileService.instance.avatarFor(KidsProfileService.instance.activeId ?? ''),
                        size: tv || tablet ? 46 : 38,
                        older: _quiet,
                      ),
                      const SizedBox(width: 12),
                    ],
                    Expanded(
                      child: Text(
                        widget.name.trim().isEmpty ? t.kids.title : t.kids.welcome(name: widget.name),
                        style: TextStyle(color: Colors.white, fontSize: tv || tablet ? 28 : 21, fontWeight: FontWeight.w800),
                      ),
                    ),
                    if (widget.showToolbar) SizedBox(width: 52, height: 44, child: widget.toolbar),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  t.kidsShelf.pickSomething,
                  style: TextStyle(color: Colors.white, fontSize: tv || tablet ? 16 : 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 12),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: tv || tablet ? 360 : 300),
                  child: Row(
                    children: [
                      for (var i = 0; i < 2; i++) ...[
                        if (i > 0) const SizedBox(width: 10),
                        Expanded(
                          child: FocusableButton(
                            focusNode: _filters[i],
                            borderRadius: 14,
                            focusColor: Colors.white,
                            onNavigateLeft: i == 0 ? widget.onSidebar : _filters[i - 1].requestFocus,
                            onNavigateRight: i < 1 ? _filters[i + 1].requestFocus : null,
                            onNavigateUp: widget.onToolbar,
                            onNavigateDown: rows.isEmpty ? null : () => _focusRow(rows.first),
                            onPressed: () => _browse(i),
                            child: OutlinedButton(
                              key: ValueKey('kids-shelf-filter-$i'),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: tablet && i == 0 ? _yellow : _ink.withValues(alpha: .8),
                                foregroundColor: tablet && i == 0 ? _ink : Colors.white,
                                side: BorderSide(color: _yellow.withValues(alpha: .65)),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                minimumSize: const Size(0, 48),
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                              ),
                              onPressed: () => _browse(i),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(i == 0 ? Icons.movie_rounded : Icons.tv_rounded, size: 19, color: tablet && i == 0 ? _ink : _yellow),
                                  const SizedBox(width: 8),
                                  Flexible(
                                    child: Text(
                                      [t.kids.movies, t.kids.shows][i],
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: tv ? 14 : 12, fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _browse(int index) {
    _shortcut = index;
    widget.onBrowse?.call(index == 0 ? MediaKind.movie : MediaKind.show);
  }

  Widget _tile(
    BuildContext context,
    _KidsRow row,
    MediaItem item,
    double width, {
    bool tablet = false,
    required VoidCallback onUp,
    VoidCallback? onDown,
    required bool first,
  }) {
    final id = '${row.id}:${item.globalKey}';
    final spoiler =
        item.kind == MediaKind.episode &&
        (SettingsService.instanceOrNull?.read(SettingsService.hideSpoilers) ?? false) &&
        item.shouldHideSpoiler;
    final image = spoiler ? item.grandparentThumbPath : item.artPath ?? item.grandparentArtPath ?? item.thumbPath;
    Future<void> activate() async {
      if (!KidsProfileService.instance.allows(item)) return;
      final choices = (_copies[item.globalKey] ?? [item]).where(KidsProfileService.instance.allows).toList();
      final selected = row.resume ? item : choices.firstOrNull;
      if (!mounted || selected == null || !KidsProfileService.instance.allows(selected)) return;
      if (row.resume && PlatformDetector.isTV()) {
        widget.onResume(selected);
      } else {
        widget.onDetails(selected);
      }
    }

    Future<void> remove() async {
      final kids = KidsProfileService.instance;
      final owner = kids.activeId;
      if (owner == null || !row.resume || !kids.allows(item)) return;
      final box = _card(id).context?.findRenderObject();
      final confirm = await showAdaptiveAppMenu<bool>(
        context,
        title: item.grandparentTitle ?? item.displayTitle,
        position: box is RenderBox && box.hasSize
            ? box.localToGlobal(Offset.zero)
            : MediaQuery.sizeOf(context).center(Offset.zero),
        focusFirstItem: true,
        entries: [
          AppMenuItem(value: true, icon: Icons.remove_circle_outline, label: t.mediaMenu.removeFromContinueWatching),
        ],
      );
      if (confirm != true || !mounted || kids.activeId != owner) return;
      try {
        await kids.dismissFromKidsShelf(item, owner);
        if (!mounted || kids.activeId != owner) return;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted || kids.activeId != owner) return;
          final next = _rows().firstOrNull;
          if (next != null) {
            _focusRow(next);
          } else {
            _filters[_shortcut].requestFocus();
          }
        });
      } catch (_) {
        if (context.mounted) await showErrorDialog(context, t.kids.saveFailed);
      }
    }

    return SizedBox(
      width: width,
      child: FocusableWrapper(
        key: ValueKey(id),
        focusNode: _card(id),
        borderRadius: 16,
        focusColor: _yellow,
        disableScale: KidsStyle.reduceMotion(context),
        focusScale: 1.025,
        autoScroll: false,
        descendantsAreFocusable: false,
        enableLongPress: row.resume,
        onLongPress: row.resume ? remove : null,
        onSelect: activate,
        onFocusChange: (focused) {
          _cardFocus(id, item, focused);
          if (focused) _remembered[row.id] = id;
        },
        onNavigateUp: onUp,
        onNavigateDown: onDown,
        onNavigateLeft: first ? widget.onSidebar : null,
        child: InkWell(
          onTap: activate,
          onLongPress: row.resume ? remove : null,
          borderRadius: BorderRadius.circular(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ColoredBox(
                        color: const Color(0xff172b45),
                        child: OptimizedMediaImage(
                          client: widget.resolveClient(item),
                          imagePath: image,
                          imageType: ImageType.art,
                          fit: BoxFit.cover,
                        ),
                      ),
                      if (row.resume && item.hasActiveProgress)
                        Positioned(
                          left: 12,
                          right: 12,
                          bottom: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: LinearProgressIndicator(
                              value: (item.viewOffsetMs! / item.durationMs!).clamp(0, 1),
                              color: _yellow,
                              backgroundColor: Colors.black54,
                              minHeight: 5,
                            ),
                          ),
                        ),
                      if (row.resume && !PlatformDetector.isMobile(context))
                        Positioned(
                          top: 10,
                          right: 10,
                          child: DecoratedBox(
                            decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              child: Text(
                                t.common.resume,
                                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 48 * MediaQuery.textScalerOf(context).scale(14) / 14,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(3, 8, 3, 0),
                  child: Text(
                    item.grandparentTitle ?? item.displayTitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, height: 1.2),
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

/// The same reduced-detail scene is also used by the setup preview.
class KidsQuietScenery extends StatelessWidget {
  const KidsQuietScenery({super.key});
  @override
  Widget build(BuildContext context) => const CustomPaint(painter: _KidsLandscapePainter());
}

/// Resolution-independent illustrated night landscape; painted once per size.
class _KidsLandscapePainter extends CustomPainter {
  const _KidsLandscapePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final bounds = Offset.zero & size;
    canvas.drawRect(
      bounds,
      Paint()
        ..shader = const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff152b59), Color(0xff3a4980), Color(0xffde907c)],
        ).createShader(bounds),
    );
    canvas.save();
    canvas.scale(size.width / 1000, size.height / 400);
    final moon = const Offset(780, 95);
    canvas.drawCircle(moon, 48, Paint()..color = const Color(0x22fff3c7));
    canvas.drawCircle(moon, 34, Paint()..color = const Color(0xffffe6ab));
    final stars = Paint()..color = const Color(0xfff8e2b3);
    for (var i = 0; i < 40; i++) {
      final x = 270.0 + ((i * 137) % 710);
      final y = 12.0 + ((i * 61) % 185);
      canvas.drawCircle(Offset(x, y), i % 5 == 0 ? 2.1 : 1.1, stars);
    }
    void hills(Color color, double y, double rise) {
      final path = Path()
        ..moveTo(0, 400)
        ..lineTo(0, y)
        ..cubicTo(190, y - rise, 340, y + 35, 500, y - rise * .5)
        ..cubicTo(680, y - rise * 1.4, 830, y + 20, 1000, y - rise * .7)
        ..lineTo(1000, 400)
        ..close();
      canvas.drawPath(path, Paint()..color = color);
    }

    hills(const Color(0xff586b8d), 280, 90);
    hills(const Color(0xff304e70), 320, 70);
    hills(const Color(0xff173c55), 365, 55);
    final trees = Paint()..color = const Color(0xff102f45);
    for (var i = 0; i < 17; i++) {
      final x = 360.0 + i * 45;
      final y = 345.0 + (i * 17 % 30);
      final h = 28.0 + (i * 13 % 32);
      final tree = Path()
        ..moveTo(x, y - h)
        ..lineTo(x - h * .25, y)
        ..lineTo(x + h * .25, y)
        ..close();
      canvas.drawPath(tree, trees);
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant _KidsLandscapePainter oldDelegate) => false;
}

class _KidsRow {
  const _KidsRow(this.id, this.title, this.icon, this.items, {this.resume = false});
  final String id, title;
  final IconData icon;
  final List<MediaItem> items;
  final bool resume;
}
