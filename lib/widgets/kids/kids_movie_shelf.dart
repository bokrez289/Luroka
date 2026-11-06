import 'package:flutter/material.dart';
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
import '../../utils/platform_detector.dart';
import '../../utils/app_identity.dart';
import '../../media/media_item_types.dart';
import '../optimized_media_image.dart';
import '../movie_copy_picker.dart';

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
  final bool loading;
  final String? error;
  final VoidCallback? onRetry;
  @override
  State<KidsMovieShelf> createState() => KidsMovieShelfState();
}

class KidsMovieShelfState extends State<KidsMovieShelf> {
  static const _ink = Color(0xff071529);
  static const _yellow = Color(0xffffdc55);
  final _filters = List.generate(3, (i) => FocusNode(debugLabel: 'kids-shelf-filter-$i'));
  final _cards = <String, FocusNode>{};
  final _rowAnchors = <String, GlobalKey>{};
  final _remembered = <String, String>{};
  final _scroll = ScrollController();
  int _filter = 0;
  String? _lastCard;
  final Map<String, List<MediaItem>> _copies = {};

  @override
  void initState() {
    super.initState();
    KidsProfileService.instance.addListener(_policyChanged);
  }

  void _policyChanged() {
    if (mounted) {
      _lastCard = null;
      setState(() {});
    }
  }

  FocusNode _card(String id) => _cards.putIfAbsent(id, () => FocusNode(debugLabel: 'kids-shelf:$id'));
  void requestContentFocus() {
    final previous = _cards[_lastCard];
    if (previous?.context != null && previous!.canRequestFocus) {
      previous.requestFocus();
    } else {
      _filters[_filter].requestFocus();
    }
  }

  @override
  void dispose() {
    KidsProfileService.instance.removeListener(_policyChanged);
    for (final node in [..._filters, ..._cards.values]) {
      node.dispose();
    }
    _scroll.dispose();
    super.dispose();
  }

  void _focusRow(_KidsRow row) {
    final key = _remembered[row.id] ?? '${row.id}:${row.items.first.globalKey}';
    final anchor = _rowAnchors[row.id]?.currentContext;
    if (anchor != null) Scrollable.ensureVisible(anchor, alignment: .15);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final node = _cards[key];
      if (node?.context != null) node!.requestFocus();
    });
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
        .where(
          (item) =>
              resumeSeen.add(item.globalKey) &&
              (_filter == 0 || (_filter == 1 ? item.kind == MediaKind.movie : item.kind != MediaKind.movie)),
        )
        .take(count)
        .toList();
    final movies = titles.where((item) => item.kind == MediaKind.movie).take(count).toList();
    final shows = titles.where((item) => item.kind == MediaKind.show).take(count).toList();
    return [
      if (resume.isNotEmpty)
        _KidsRow('resume', t.kidsHome.keepWatching, Icons.play_circle_fill_rounded, resume, resume: true),
      if (_filter != 2 && movies.isNotEmpty) _KidsRow('movies', t.kidsShelf.movieShelf, Icons.movie_rounded, movies),
      if (_filter != 1 && shows.isNotEmpty) _KidsRow('shows', t.kidsShelf.showShelf, Icons.tv_rounded, shows),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final rows = _rows();
    final tv = PlatformDetector.isTV();
    final width = MediaQuery.sizeOf(context).width;
    final inset = tv ? (width * .045).clamp(24.0, 70.0) : 18.0;
    final scale = MediaQuery.textScalerOf(context).scale(14) / 14;
    return Material(
      color: _ink,
      child: SafeArea(
        bottom: false,
        child: CustomScrollView(
          key: const ValueKey('kids-movie-shelf'),
          controller: _scroll,
          slivers: [
            SliverToBoxAdapter(
              child: _header(context, tv: tv, inset: inset, rows: rows),
            ),
            if (widget.loading && rows.isEmpty)
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: LinearProgressIndicator(color: _yellow),
                ),
              ),
            if (rows.isEmpty && !widget.loading)
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Text(
                        widget.error ?? t.kids.emptyHint,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white70),
                      ),
                      if (widget.onRetry != null) TextButton(onPressed: widget.onRetry, child: Text(t.common.retry)),
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
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: tv ? 23 : 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    LayoutBuilder(
                      builder: (context, bounds) {
                        final cardWidth = tv
                            ? ((bounds.maxWidth - inset * 2 - 48) / (rows[r].resume ? 4 : 5)).clamp(165.0, 310.0)
                            : (bounds.maxWidth * (rows[r].resume ? .73 : .54)).clamp(150.0, 265.0);
                        final cardHeight = cardWidth / (rows[r].resume ? 16 / 9 : 1.25) + 48 * scale;
                        return SizedBox(
                          height: cardHeight + 20,
                          child: ListView.separated(
                            key: PageStorageKey('kids-row-${rows[r].id}-$_filter'),
                            padding: EdgeInsets.fromLTRB(inset, 4, inset, 16),
                            scrollDirection: Axis.horizontal,
                            itemCount: rows[r].items.length,
                            separatorBuilder: (_, _) => const SizedBox(width: 14),
                            itemBuilder: (context, index) => _tile(
                              context,
                              rows[r],
                              rows[r].items[index],
                              cardWidth,
                              onUp: r == 0 ? _filters[_filter].requestFocus : () => _focusRow(rows[r - 1]),
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
            SliverToBoxAdapter(child: SizedBox(height: 24 + MediaQuery.paddingOf(context).bottom)),
          ],
        ),
      ),
    );
  }

  Widget _header(BuildContext context, {required bool tv, required double inset, required List<_KidsRow> rows}) {
    final scale = MediaQuery.textScalerOf(context).scale(14) / 14;
    final height =
        (tv ? (MediaQuery.sizeOf(context).height * .44).clamp(225.0, 360.0) : 290.0) + (scale - 1).clamp(0, 3) * 105;
    return ConstrainedBox(
      key: const ValueKey('kids-illustrated-header'),
      constraints: BoxConstraints(minHeight: height),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            bottom: 0,
            left: tv ? MediaQuery.sizeOf(context).width * .20 : 0,
            child: ExcludeSemantics(
              child: const RepaintBoundary(child: CustomPaint(painter: _KidsLandscapePainter())),
            ),
          ),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    _ink,
                    _ink.withValues(alpha: tv ? .8 : .5),
                    Colors.transparent,
                  ],
                  stops: const [0, .35, .75],
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
                  stops: const [0, .6, 1],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(inset, tv ? 18 : 12, inset, 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Spacer(),
                    if (widget.showToolbar) SizedBox(width: 52, height: 44, child: widget.toolbar),
                  ],
                ),
                SizedBox(height: tv ? 18 : 24),
                Text(
                  AppIdentity.name,
                  style: TextStyle(color: Colors.white, fontSize: tv ? 38 : 30, fontWeight: FontWeight.w900, height: 1),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'K',
                        style: TextStyle(color: Color(0xffd9a2ff)),
                      ),
                      const TextSpan(
                        text: 'i',
                        style: TextStyle(color: Color(0xffffa173)),
                      ),
                      const TextSpan(
                        text: 'd',
                        style: TextStyle(color: _yellow),
                      ),
                      const TextSpan(
                        text: 's',
                        style: TextStyle(color: Color(0xff69e6cf)),
                      ),
                    ],
                  ),
                  style: TextStyle(fontSize: tv ? 56 : 46, fontWeight: FontWeight.w900, height: 1.1),
                ),
                const SizedBox(height: 10),
                Text(
                  t.kidsShelf.pickSomething,
                  style: TextStyle(color: Colors.white, fontSize: tv ? 16 : 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 18),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 620),
                  child: Row(
                    children: [
                      for (var i = 0; i < 3; i++) ...[
                        if (i > 0) const SizedBox(width: 10),
                        Expanded(
                          child: FocusableButton(
                            focusNode: _filters[i],
                            borderRadius: 100,
                            focusColor: Colors.white,
                            onNavigateLeft: i == 0 ? widget.onSidebar : _filters[i - 1].requestFocus,
                            onNavigateRight: i < 2 ? _filters[i + 1].requestFocus : null,
                            onNavigateUp: widget.onToolbar,
                            onNavigateDown: rows.isEmpty ? null : () => _focusRow(rows.first),
                            onPressed: () => setState(() {
                              _filter = i;
                              _lastCard = null;
                            }),
                            child: OutlinedButton(
                              key: ValueKey('kids-shelf-filter-$i'),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: _filter == i ? _yellow : _ink.withValues(alpha: .7),
                                foregroundColor: _filter == i ? _ink : Colors.white,
                                side: BorderSide(color: _filter == i ? _yellow : Colors.white54),
                                padding: EdgeInsets.symmetric(horizontal: 6, vertical: tv ? 13 : 11),
                              ),
                              onPressed: () => setState(() {
                                _filter = i;
                                _lastCard = null;
                              }),
                              child: Text(
                                [t.kidsShelf.all, t.kids.movies, t.kids.shows][i],
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: tv ? 15 : 12, fontWeight: FontWeight.w800),
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

  Widget _tile(
    BuildContext context,
    _KidsRow row,
    MediaItem item,
    double width, {
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
    final copyCount = (_copies[item.globalKey] ?? [item]).where(KidsProfileService.instance.allows).length;
    Future<void> activate() async {
      if (!KidsProfileService.instance.allows(item)) return;
      final choices = (_copies[item.globalKey] ?? [item]).where(KidsProfileService.instance.allows).toList();
      final selected = row.resume ? item : await chooseMovieCopy(context, choices);
      if (!mounted || selected == null || !KidsProfileService.instance.allows(selected)) return;
      if (row.resume) {
        widget.onResume(selected);
      } else {
        widget.onDetails(selected);
      }
    }

    return SizedBox(
      width: width,
      child: FocusableWrapper(
        key: ValueKey(id),
        focusNode: _card(id),
        borderRadius: 16,
        focusColor: _yellow,
        disableScale: true,
        onSelect: activate,
        onFocusChange: (focused) {
          if (focused) {
            _lastCard = id;
            _remembered[row.id] = id;
          }
        },
        onNavigateUp: onUp,
        onNavigateDown: onDown,
        onNavigateLeft: first ? widget.onSidebar : null,
        child: InkWell(
          onTap: activate,
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
                          fit: BoxFit.cover,
                        ),
                      ),
                      if (copyCount > 1)
                        Positioned(
                          top: 6,
                          left: 6,
                          child: Semantics(
                            label: t.personSpotlight.copies(n: copyCount),
                            child: DecoratedBox(
                              key: const ValueKey('kids-copy-count'),
                              decoration: BoxDecoration(
                                color: Colors.black.withValues(alpha: .76),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(Icons.video_library_rounded, size: 12, color: Colors.white),
                                    const SizedBox(width: 3),
                                    Text(
                                      '$copyCount',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
                      if (row.resume)
                        const Positioned(
                          top: 10,
                          right: 10,
                          child: Icon(Icons.play_circle_fill_rounded, color: Colors.white, size: 28),
                        ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(3, 8, 3, 0),
                child: Text(
                  item.grandparentTitle ?? item.displayTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, height: 1.2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
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
