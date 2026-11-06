import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../focus/focusable_button.dart';
import '../i18n/strings.g.dart';
import '../media/catalog_item_ref.dart';
import '../media/media_item.dart';
import '../models/catalog/catalog_item.dart';
import '../providers/explore_provider.dart';
import '../services/catalog/award_catalog.dart';
import '../services/catalog/wikidata_awards_service.dart';
import '../services/home_preview_controller.dart';
import '../services/settings_service.dart';
import '../utils/media_navigation_helper.dart';
import '../utils/provider_extensions.dart';
import '../utils/platform_detector.dart';
import '../widgets/app_menu.dart';
import '../widgets/desktop_app_bar.dart';
import '../widgets/focusable_list_tile.dart';
import '../widgets/focusable_media_card.dart';
import '../widgets/focusable_tab_chip.dart';
import '../widgets/movie_copy_picker.dart';
import '../widgets/studio_cinematic_spotlight.dart';
import '../widgets/studio_spotlight.dart';
import '../widgets/tv_screen_insets.dart';

class AwardFamilyScreen extends StatelessWidget {
  const AwardFamilyScreen({super.key, required this.family});
  final AwardFamily family;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: TvScreenInsets(
      child: CustomScrollView(
        slivers: [
          DesktopSliverAppBar(title: Text(family.name), pinned: true),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 16),
              child: Text(t.awardsCatalog.chooseCategory),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
            sliver: SliverList.builder(
              itemCount: family.categories.length,
              itemBuilder: (context, index) {
                final category = family.categories[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Material(
                    color: Theme.of(context).colorScheme.surfaceContainer,
                    borderRadius: BorderRadius.circular(12),
                    clipBehavior: Clip.antiAlias,
                    child: FocusableListTile(
                      key: ValueKey('award_category_${family.id}_${category.id}'),
                      autofocus: index == 0,
                      dense: false,
                      visualDensity: VisualDensity.standard,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      leading: Icon(Icons.emoji_events_outlined, color: Theme.of(context).colorScheme.primary),
                      title: Text(category.title, style: Theme.of(context).textTheme.titleMedium),
                      trailing: const Icon(Icons.chevron_right_rounded),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (_) => AwardCategoryScreen(family: family, category: category),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ),
  );
}

class AwardCategoryScreen extends StatefulWidget {
  const AwardCategoryScreen({super.key, required this.family, required this.category});
  final AwardFamily family;
  final AwardCategory category;
  @override
  State<AwardCategoryScreen> createState() => _AwardCategoryScreenState();
}

class _AwardCategoryScreenState extends State<AwardCategoryScreen> {
  late final WikidataAwardsService _awards;
  late final ExploreProvider _explore;
  late final HomePreviewController _preview;
  bool _ownsAwards = false;
  final _modes = List.generate(2, (index) => FocusNode(debugLabel: 'award_mode_$index'));
  final _overview = FocusNode(debugLabel: 'award_overview');
  final _decadeFocus = FocusNode(debugLabel: 'award_release_decade');
  final _retryFocus = FocusNode(debugLabel: 'award_retry');
  final _first = FocusNode(debugLabel: 'award_first_title');
  AwardSelection _mode = AwardSelection.winners;
  List<CatalogItem> _catalog = const [];
  List<AwardTitleReference> _refs = const [];
  bool _loading = true;
  bool _matching = false;
  bool _failed = false;
  bool _opening = false;
  int? _decade;
  int _generation = 0;
  int _matchingPass = 0;

  @override
  void initState() {
    super.initState();
    _explore = context.read<ExploreProvider>();
    final supplied = context.read<WikidataAwardsService?>();
    _ownsAwards = supplied == null;
    _awards = supplied ?? WikidataAwardsService();
    _preview = HomePreviewController(
      includeRatings: true,
      resolveClient: (item) => context.getMediaClientForItemOrNull(item),
      canFetch: () => mounted && (ModalRoute.of(context)?.isCurrent ?? false),
    );
    unawaited(_load());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _modes.first.requestFocus();
    });
  }

  Future<void> _load({bool refresh = false}) async {
    final generation = ++_generation;
    setState(() {
      _loading = true;
      _failed = false;
      _matching = false;
    });
    final seed = _awards.seed(widget.category, _mode);
    if (seed.isNotEmpty) {
      _refs = seed;
      _setCatalog();
      unawaited(_match(generation));
    }
    try {
      final refs = await _awards.load(widget.category, _mode, refresh: refresh);
      if (!mounted || generation != _generation) return;
      setState(() {
        _refs = refs;
        _setCatalog();
        _loading = false;
      });
      await _match(generation);
    } catch (_) {
      if (!mounted || generation != _generation) return;
      setState(() {
        _loading = false;
        _failed = true;
      });
    }
  }

  void _setCatalog() {
    final source = _explore.activeSource?.id ?? CatalogSourceId.cinemeta;
    _catalog = [
      for (final ref in _refs)
        if (_decade == null || (ref.year != null && ref.year! >= _decade! && ref.year! < _decade! + 10))
          ref.toCatalog(source),
    ];
  }

  Future<void> _match(int generation) async {
    if (!mounted || generation != _generation) return;
    final pass = ++_matchingPass;
    setState(() => _matching = true);
    try {
      await _explore.librarySearchResults(
        _catalog.map((item) => item.toMediaItem()).toList(),
        current: () => mounted && generation == _generation,
      );
    } finally {
      if (mounted && generation == _generation && pass == _matchingPass) setState(() => _matching = false);
    }
  }

  void _selectMode(AwardSelection mode) {
    if (_mode == mode) return;
    setState(() {
      _mode = mode;
      _refs = const [];
      _catalog = const [];
      _preview.clear();
    });
    unawaited(_load());
  }

  Future<void> _chooseDecade() async {
    if (_loading) return;
    final decades = _refs.where((ref) => ref.year != null).map((ref) => ref.year! ~/ 10 * 10).toSet().toList()
      ..sort((a, b) => b.compareTo(a));
    final value = await showAdaptiveAppMenu<int>(
      context,
      title: t.awardsCatalog.releaseDecade,
      position: Offset(MediaQuery.sizeOf(context).width / 2, 120),
      focusFirstItem: true,
      entries: [
        AppMenuItem(value: -1, label: t.awardsCatalog.allYears, selected: _decade == null),
        for (final decade in decades) AppMenuItem(value: decade, label: '${decade}s', selected: _decade == decade),
      ],
    );
    if (!mounted || value == null) return;
    setState(() {
      _decade = value < 0 ? null : value;
      _setCatalog();
      _preview.clear();
    });
    unawaited(_match(++_generation));
    _decadeFocus.requestFocus();
  }

  Future<void> _open(MediaItem item) async {
    if (_opening) return;
    _opening = true;
    final origin = FocusManager.instance.primaryFocus;
    try {
      // Catalog entries do not belong to a library yet. The copy chooser
      // would filter them out when source libraries are selected.
      if (item.isCatalogItem) {
        await navigateToMediaItem(context, item);
        return;
      }
      final raw = item.raw?['lurokaCopies'];
      final copies = raw is List ? raw.whereType<MediaItem>().toList() : <MediaItem>[];
      final copy = await chooseMovieCopy(context, copies.isEmpty ? [item] : copies);
      if (!mounted || copy == null) return;
      await navigateToMediaItemDetails(context, copy);
    } finally {
      _opening = false;
      if (mounted && origin?.context?.mounted == true && (ModalRoute.of(context)?.isCurrent ?? false)) {
        origin!.requestFocus();
      }
    }
  }

  Future<void> _showOverview() async {
    final item = _preview.value?.item;
    if (item == null) return;
    await showDialog<void>(
      context: context,
      builder: (_) => StudioOverviewDialog(item: item, tint: Theme.of(context).colorScheme.primary),
    );
    if (mounted) _overview.requestFocus();
  }

  @override
  void dispose() {
    _generation++;
    if (_ownsAwards) _awards.dispose();
    _preview.dispose();
    for (final node in [..._modes, _overview, _decadeFocus, _retryFocus, _first]) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<ExploreProvider>();
    final items = _explore.projectCollection(_catalog);
    if (_preview.value == null && items.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && _preview.value == null) _preview.select(items.first, rowTitle: widget.category.title);
      });
    }
    final tv = PlatformDetector.isTV();
    return Scaffold(
      body: TvScreenInsets(
        child: CustomScrollView(
          slivers: [
            DesktopSliverAppBar(
              title: Text('${widget.family.name} · ${widget.category.title}'),
              pinned: true,
              actions: [
                IconButton(
                  onPressed: () => unawaited(_load(refresh: true)),
                  tooltip: t.common.refresh,
                  icon: const Icon(Icons.refresh_rounded),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: TabChipStrip(
                  children: [
                    for (final (index, mode) in AwardSelection.values.indexed)
                      FocusableTabChip(
                        label: mode == AwardSelection.winners ? t.awardsCatalog.winners : t.awardsCatalog.nominees,
                        editorial: true,
                        isSelected: _mode == mode,
                        focusNode: _modes[index],
                        onSelect: () => _selectMode(mode),
                        onNavigateRight: index == 0 ? _modes[1].requestFocus : _decadeFocus.requestFocus,
                        onNavigateLeft: index == 1 ? _modes.first.requestFocus : null,
                        onNavigateDown: () => items.isNotEmpty
                            ? _first.requestFocus()
                            : _failed
                            ? _retryFocus.requestFocus()
                            : null,
                      ),
                    const SizedBox(width: 20),
                    FocusableButton(
                      focusNode: _decadeFocus,
                      onPressed: () => unawaited(_chooseDecade()),
                      onNavigateLeft: _modes.last.requestFocus,
                      onNavigateDown: items.isNotEmpty ? _first.requestFocus : null,
                      child: TextButton.icon(
                        onPressed: () => unawaited(_chooseDecade()),
                        icon: const Icon(Icons.date_range_outlined, size: 18),
                        label: Text(_decade == null ? t.awardsCatalog.allYears : '${_decade}s'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (tv && items.isNotEmpty)
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 170,
                  child: ValueListenableBuilder<HomePreview?>(
                    valueListenable: _preview,
                    builder: (context, preview, _) => preview == null
                        ? const SizedBox.shrink()
                        : StudioCinematicSpotlight(
                            item: preview.item,
                            artwork: preview.artwork,
                            client: context.getMediaClientForItemOrNull(preview.artwork),
                            tint: Theme.of(context).colorScheme.primary,
                            overviewFocus: _overview,
                            onOverview: () => unawaited(_showOverview()),
                            onNavigateUp: () => _modes[_mode.index].requestFocus(),
                            onNavigateDown: _first.requestFocus,
                          ),
                  ),
                ),
              ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 12),
                child: Text(
                  t.awardsCatalog.coverage,
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                ),
              ),
            ),
            if (_loading || _matching)
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const LinearProgressIndicator(minHeight: 2),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(_loading ? t.awardsCatalog.loading : t.awardsCatalog.matching),
                    ),
                  ],
                ),
              ),
            if (_failed)
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(t.awardsCatalog.unavailable),
                      FocusableButton(
                        focusNode: _retryFocus,
                        onPressed: () => unawaited(_load(refresh: true)),
                        child: TextButton(
                          onPressed: () => unawaited(_load(refresh: true)),
                          child: Text(t.common.retry),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if (items.isEmpty && !_loading && !_matching && !_failed)
              SliverFillRemaining(child: Center(child: Text(t.awardsCatalog.empty)))
            else
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(24, 12, 24, 32),
                sliver: SliverLayoutBuilder(
                  builder: (context, bounds) {
                    final columns = (bounds.crossAxisExtent / (tv ? 155 : 140)).floor().clamp(1, tv ? 6 : 5);
                    return SliverGrid.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: columns,
                        childAspectRatio: 2 / 3.5,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 20,
                      ),
                      itemCount: items.length,
                      itemBuilder: (context, index) => FocusableMediaCard(
                        key: ValueKey(items[index].globalKey),
                        item: items[index],
                        viewModeOverride: ViewMode.grid,
                        focusNode: index == 0 ? _first : null,
                        onTap: () => unawaited(_open(items[index])),
                        onFocusChange: (focus) {
                          if (focus) _preview.select(items[index], rowTitle: widget.category.title);
                        },
                        onNavigateUp: index < columns ? () => _modes[_mode.index].requestFocus() : null,
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
