import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/hidden_libraries_provider.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import '../media/ids.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../media/library_query.dart';
import '../media/media_backend.dart';
import '../media/media_item.dart';
import '../media/media_kind.dart';
import '../media/media_person.dart';
import '../media/media_server_client.dart';
import '../mixins/paginated_item_loader.dart';
import '../mixins/standard_paginated_view.dart';
import '../utils/app_logger.dart';
import '../utils/error_message_utils.dart';
import '../utils/media_server_http_client.dart';
import '../utils/provider_extensions.dart';
import '../widgets/desktop_app_bar.dart';
import '../widgets/optimized_media_image.dart';
import '../utils/media_image_helper.dart';
import '../i18n/app_locale_utils.dart';
import '../i18n/strings.g.dart';
import 'base_media_list_detail_screen.dart';
import 'focusable_detail_screen_mixin.dart';
import '../mixins/grid_focus_node_mixin.dart';
import '../focus/focusable_action_bar.dart';
import '../utils/platform_detector.dart';
import '../focus/focusable_wrapper.dart';
import '../widgets/focusable_tab_chip.dart';
import '../media/movie_copy_groups.dart';
import '../widgets/movie_copy_picker.dart';
import '../utils/media_navigation_helper.dart';
import '../media/person_filmography.dart';
import '../widgets/person_filmography_info.dart';
import '../widgets/app_menu.dart';
import '../focus/key_event_utils.dart';
import '../services/settings_service.dart';
import '../widgets/settings_builder.dart';

/// Screen to browse all media featuring a specific actor.
class ActorMediaScreen extends StatefulWidget {
  final String actorName;
  final String personId;
  final String? actorThumb;
  final String? characterName;
  final String serverId;
  final String? serverName;
  final MediaBackend backend;

  const ActorMediaScreen({
    super.key,
    required this.actorName,
    required this.personId,
    this.actorThumb,
    this.characterName,
    required this.serverId,
    this.serverName,
    required this.backend,
  });

  @override
  State<ActorMediaScreen> createState() => _ActorMediaScreenState();
}

class _ActorMediaScreenState extends BaseMediaListDetailScreen<ActorMediaScreen>
    with
        GridFocusNodeMixin<ActorMediaScreen>,
        FocusableDetailScreenMixin<ActorMediaScreen>,
        PaginatedItemLoader<MediaItem, ActorMediaScreen>,
        PaginatedItemUpdatable<ActorMediaScreen>,
        StandardPaginatedView<MediaItem, ActorMediaScreen> {
  static const int _pageSize = 200;

  /// Keeps a long biography to a readable line length on wide layouts.
  static const double _biographyMaxWidth = 800;

  final AbortController _detailsAbort = AbortController();
  late final FocusNode _biographyFocusNode = FocusNode(debugLabel: 'person_biography');
  MediaPersonDetails _details = MediaPersonDetails.empty;
  final _aboutFocus = FocusNode(debugLabel: 'person_about');
  final _filters = List.generate(3, (index) => FocusNode(debugLabel: 'person_filter_$index'));
  MediaKind? _kind;
  bool _filterLoading = false;
  bool _openingCopy = false;
  PersonFilmographySort _sort = PersonFilmographySort.newest;
  final _sortFocus = FocusNode(debugLabel: 'person_sort');
  final _sortMenu = GlobalKey<AppMenuButtonState<PersonFilmographySort>>();
  final _focusedTitle = ValueNotifier<PersonTitleSelection?>(null);
  Future<void>? _completingFilmography;
  bool _filmographyLoading = false;
  double _inset(BuildContext context) => PlatformDetector.isTV()
      ? (MediaQuery.sizeOf(context).width * SettingsService.instance.read(SettingsService.tvScreenMargin) / 100)
            .clamp(28, 96)
            .toDouble()
      : 16;
  int get _filterIndex => _kind == MediaKind.movie
      ? 1
      : _kind == MediaKind.show
      ? 2
      : 0;
  int get _titleCount => loadedItems.length >= totalSize ? MovieCopyGroups(loadedItems.values).items.length : totalSize;
  List<MediaItem> get _filteredItems {
    final keys = loadedItems.keys.toList()..sort();
    final sources = context.read<HiddenLibrariesProvider?>();
    return [
      for (final key in keys)
        if ((_kind == null || loadedItems[key]!.kind == _kind) && (sources?.allowsItem(loadedItems[key]!) ?? true))
          loadedItems[key]!,
    ];
  }

  void _focusFilters() => _filters[_filterIndex].requestFocus();
  void _focusAbout() {
    if (scrollController.hasClients) scrollController.jumpTo(0);
    _aboutFocus.requestFocus();
  }

  void _focusTitles() {
    if ((_kind == null && totalSize > 0) || _filteredItems.isNotEmpty) firstItemFocusNode.requestFocus();
  }

  Future<void> _filter(MediaKind? kind) async {
    setState(() {
      _kind = kind;
      _focusedTitle.value = null;
      gridContentVersion++;
      _reconcileFilmography();
      _filterLoading = kind != null && loadedItems.length < totalSize;
    });
    if (!_filterLoading) return;
    try {
      await _completeFilmography();
    } finally {
      if (mounted) setState(() => _filterLoading = false);
    }
  }

  Future<void> _openCopy(List<MediaItem> copies) async {
    if (_openingCopy) return;
    _openingCopy = true;
    try {
      final labelled = await Future.wait(
        copies.map((item) async {
          if (item.libraryTitle?.isNotEmpty == true) return item;
          try {
            return await _mediaClient.stampLibrary(item);
          } catch (_) {
            return item;
          }
        }),
      );
      if (!mounted) return;
      final selected = await chooseMovieCopy(context, labelled);
      if (!mounted || selected == null) return;
      await navigateToMediaItemDetails(context, selected, onRefresh: updateItem);
    } finally {
      _openingCopy = false;
    }
  }

  String _sortLabel(PersonFilmographySort sort) => switch (sort) {
    PersonFilmographySort.newest => t.personSpotlight.newestFirst,
    PersonFilmographySort.oldest => t.personSpotlight.oldestFirst,
    PersonFilmographySort.title => t.personSpotlight.titleAscending,
  };

  void _setSort(PersonFilmographySort sort) {
    setState(() {
      _sort = sort;
      _focusedTitle.value = null;
      gridContentVersion++;
      _reconcileFilmography();
    });
    unawaited(_completeFilmography());
  }

  void _reconcileFilmography() {
    final visible = sortPersonFilmography(MovieCopyGroups(_filteredItems).items, _sort);
    reconcileGridFocusNodes({for (final (index, item) in visible.indexed) item.globalKey: index});
  }

  Future<void> _completeFilmography() {
    if (loadedItems.length >= totalSize) return Future.value();
    if (_completingFilmography != null) return _completingFilmography!;
    return _completingFilmography = () async {
      if (loadedItems.length >= totalSize) return;
      if (mounted) setState(() => _filmographyLoading = true);
      try {
        while (mounted && loadedItems.length < totalSize) {
          final before = loadedItems.length;
          await ensureRangeLoaded(before, _pageSize, buffer: 0);
          if (loadedItems.length <= before) break;
        }
      } finally {
        _completingFilmography = null;
        if (mounted) setState(() => _filmographyLoading = false);
      }
    }();
  }

  @override
  void onPageLoaded(int start, List<MediaItem> page) => _reconcileFilmography();

  @override
  MediaItem get mediaItem => MediaItem(
    id: '',
    backend: widget.backend,
    kind: MediaKind.unknown,
    serverId: widget.serverId,
    serverName: widget.serverName,
  );

  @override
  String get title => widget.actorName;

  @override
  String get emptyMessage => t.discover.noContentAvailable;

  @override
  bool get hasItems => totalSize > 0;

  @override
  void initState() {
    super.initState();
    unawaited(_loadDetails());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && PlatformDetector.isTV()) _focusAbout();
    });
  }

  @override
  void dispose() {
    _detailsAbort.abort();
    _biographyFocusNode.dispose();
    _aboutFocus.dispose();
    _sortFocus.dispose();
    _focusedTitle.dispose();
    for (final node in _filters) {
      node.dispose();
    }
    disposePagination();
    disposeFocusResources();
    super.dispose();
  }

  MediaServerClient get _mediaClient => context.getMediaClientForServer(ServerId(widget.serverId));

  /// The server may be offline (a cast tap from an offline detail): the header
  /// then shows the fallback avatar and the load reports the failure, instead
  /// of the lookup throwing during build.
  MediaServerClient? get _mediaClientOrNull => context.tryGetMediaClientForServer(ServerId(widget.serverId));

  /// Best-effort: the filmography is the page. A server that cannot describe
  /// the person, or a failed lookup, leaves the header as name and photo.
  Future<void> _loadDetails() async {
    final client = _mediaClientOrNull;
    if (client == null) return;
    try {
      final details = await client.fetchPersonDetails(widget.personId, abort: _detailsAbort);
      if (!mounted || details.isEmpty) return;
      setState(() => _details = details);
    } catch (error, stackTrace) {
      if (_detailsAbort.isAborted) return;
      appLogger.w('Person details unavailable for ${widget.actorName}', error: error, stackTrace: stackTrace);
    }
  }

  /// Born, died, and birthplace rows; the age goes with the death date for
  /// someone who has died, and with the birth date otherwise.
  List<({String label, String value})> _personFacts() {
    final details = _details;
    final locale = LocaleSettings.currentLocale.intlLocaleName;
    String format(DateTime date) => DateFormat.yMMMMd(locale).format(date);
    final age = details.ageOn(DateTime.now());
    final strings = t.discover.person;
    return [
      if (details.birthDate case final born?)
        (
          label: strings.born,
          value: age != null && details.deathDate == null
              ? strings.dateWithAge(date: format(born), age: age)
              : format(born),
        ),
      if (details.deathDate case final died?)
        (
          label: strings.died,
          value: age != null ? strings.dateWithAgeAtDeath(date: format(died), age: age) : format(died),
        ),
      if (details.birthPlace case final place?) (label: strings.birthplace, value: place),
    ];
  }

  Future<void> _showBiography() async {
    if (_details.biography == null) return;
    final scroll = ScrollController();
    try {
      await showDialog<void>(
        context: context,
        builder: (context) => Dialog(
          child: SizedBox(
            width: 720,
            height: MediaQuery.sizeOf(context).height * .78,
            child: Focus(
              onKeyEvent: (_, event) {
                final back = handleBackKeyNavigation(context, event);
                if (back == KeyEventResult.handled) return back;
                if ((event is KeyDownEvent || event is KeyRepeatEvent) && scroll.hasClients) {
                  final direction = event.logicalKey == LogicalKeyboardKey.arrowDown
                      ? 1
                      : event.logicalKey == LogicalKeyboardKey.arrowUp
                      ? -1
                      : 0;
                  if (direction != 0) {
                    scroll.jumpTo((scroll.offset + 90 * direction).clamp(0, scroll.position.maxScrollExtent));
                    return KeyEventResult.handled;
                  }
                }
                return KeyEventResult.ignored;
              },
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(child: Text(widget.actorName, style: Theme.of(context).textTheme.titleLarge)),
                        IconButton(
                          autofocus: true,
                          tooltip: t.common.close,
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.close_rounded),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: SingleChildScrollView(
                        controller: scroll,
                        child: Text(
                          _details.biography!,
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.6),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    } finally {
      scroll.dispose();
    }
  }

  @override
  Future<LibraryPage<MediaItem>> fetchPage(int start, int size, AbortController? abort) async {
    final sources = context.read<HiddenLibrariesProvider?>();
    final page = await _mediaClient.fetchPersonMediaPage(widget.personId, start: start, size: size, abort: abort);
    if (sources?.hasSourceSelection != true) return page;
    final items = await Future.wait(
      page.items.map((item) async {
        if (item.libraryId != null) return item;
        try {
          return await _mediaClient.stampLibrary(item);
        } catch (_) {
          return item;
        }
      }),
    );
    return LibraryPage(items: items, totalCount: page.totalCount, offset: page.offset);
  }

  @override
  Future<void> loadItems() {
    return loadStandardPaginatedItems(
      pageSize: _pageSize,
      errorMessageFor: (error, stackTrace) => localizedLoadErrorMessage(error, stackTrace, context: widget.actorName),
      onLoaded: (loadedCount, totalCount) {
        appLogger.d('Loaded $loadedCount of $totalCount items for actor: ${widget.actorName}');
        if (loadedItems.length < totalSize) unawaited(_completeFilmography());
      },
    );
  }

  @override
  List<FocusableAction> getAppBarActions() {
    return [
      FocusableAction(icon: Symbols.person_rounded, tooltip: t.lurokaCatalog.aboutPerson, onPressed: _focusAbout),
    ];
  }

  @override
  void navigateToGrid() => _focusAbout();

  Widget _buildActorHeader() {
    final theme = Theme.of(context);
    final mutedColor = theme.colorScheme.onSurfaceVariant;
    final facts = _personFacts();
    final biography = _details.biography;
    final tv = PlatformDetector.isTV();
    final scale = tv ? (MediaQuery.sizeOf(context).width / 1280).clamp(.8, 1.6) : 1.0;
    final portraitSize = tv ? 148 * scale : 88.0;
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.fromLTRB(_inset(context), 12 * scale, _inset(context), 14 * scale),
        child: FocusableWrapper(
          focusNode: _aboutFocus,
          delegateFocusBorder: true,
          useFocusGlow: false,
          autoScroll: false,
          disableScale: true,
          borderRadius: 12,
          semanticLabel: '${t.lurokaCatalog.aboutPerson}: ${widget.actorName}',
          onSelect: biography == null ? _focusFilters : () => unawaited(_showBiography()),
          onNavigateDown: _focusFilters,
          onNavigateUp: navigateToAppBar,
          onBack: popFromAppBar,
          child: LayoutBuilder(
            builder: (context, bounds) {
              final compact = bounds.maxWidth < 600;
              final portrait = Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: theme.colorScheme.outlineVariant),
                    ),
                    child: ClipOval(
                      child: OptimizedMediaImage(
                        client: _mediaClientOrNull,
                        imagePath: widget.actorThumb,
                        width: portraitSize,
                        height: portraitSize,
                        fit: BoxFit.cover,
                        imageType: ImageType.avatar,
                        fallbackIcon: Symbols.person_rounded,
                      ),
                    ),
                  ),
                  if (totalSize > 0 && !compact) ...[
                    const SizedBox(height: 10),
                    Text(
                      t.discover.titleCount(n: _titleCount),
                      style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      t.personSpotlight.inYourLibraries,
                      style: theme.textTheme.labelSmall?.copyWith(color: mutedColor),
                    ),
                  ],
                ],
              );
              final intro = Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    t.lurokaCatalog.aboutPerson,
                    style: theme.textTheme.labelSmall?.copyWith(color: mutedColor, letterSpacing: 1.8),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    widget.actorName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineLarge?.copyWith(
                      fontSize: tv ? 34 * scale : 26,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -.6,
                    ),
                  ),
                  if (widget.characterName?.isNotEmpty == true)
                    Text(widget.characterName!, style: theme.textTheme.bodySmall?.copyWith(color: mutedColor)),
                  if (facts.isNotEmpty) ...[
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 20,
                      runSpacing: 4,
                      children: [
                        for (final fact in facts)
                          Text(
                            '${fact.label} ${fact.value}',
                            style: theme.textTheme.bodySmall?.copyWith(color: mutedColor),
                          ),
                      ],
                    ),
                  ],
                ],
              );
              final bio = biography == null
                  ? const SizedBox.shrink()
                  : Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: tv ? 600 * scale : _biographyMaxWidth),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              biography,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontSize: tv ? 14 * scale : null,
                                height: 1.4,
                              ),
                            ),
                            FocusableWrapper(
                              focusNode: _biographyFocusNode,
                              descendantsAreFocusable: false,
                              disableScale: true,
                              onSelect: () => unawaited(_showBiography()),
                              onNavigateUp: _aboutFocus.requestFocus,
                              onNavigateDown: _focusFilters,
                              child: TextButton(
                                onPressed: () => unawaited(_showBiography()),
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                                  minimumSize: const Size(0, 32),
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: Text(t.personSpotlight.readBiography),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
              if (compact) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        portrait,
                        const SizedBox(width: 16),
                        Expanded(child: intro),
                      ],
                    ),
                    bio,
                  ],
                );
              }
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  portrait,
                  SizedBox(width: 28 * scale),
                  Expanded(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [intro, bio]),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) =>
      SettingsBuilder(prefs: const [SettingsService.tvScreenMargin], builder: _buildPage);

  Widget _buildPage(BuildContext context) {
    context.watch<HiddenLibrariesProvider?>();
    final filtered = _filteredItems;
    final groups = MovieCopyGroups(filtered);
    final visible = sortPersonFilmography(groups.items, _sort);
    final hasMore = loadedItems.length < totalSize;
    final tv = PlatformDetector.isTV();
    final inset = _inset(context);
    final textScale = MediaQuery.textScalerOf(context).scale(14) / 14;
    return buildDetailScaffold(
      slivers: [
        CustomAppBar(
          title: Text(widget.actorName),
          pinned: true,
          actions: buildFocusableAppBarActions(),
          onBackPressed: popFromAppBar,
        ),
        _buildActorHeader(),
        ...buildStateSlivers(),
        SliverPersistentHeader(
          pinned: true,
          delegate: _PersonControlsHeader(
            extent: (MediaQuery.sizeOf(context).width < 600 || textScale > 1.3) ? 116 * textScale.clamp(1, 1.6) : 54,
            child: _buildFilmographyControls(inset),
          ),
        ),
        if (_filterLoading || _filmographyLoading)
          const SliverToBoxAdapter(child: LinearProgressIndicator(minHeight: 2)),
        if (paginationError != null)
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: inset),
              child: TextButton.icon(
                onPressed: () => unawaited(_completeFilmography()),
                icon: const Icon(Icons.refresh_rounded),
                label: Text(t.personSpotlight.retryTitles),
              ),
            ),
          ),
        if (hasItems)
          SliverPersistentHeader(
            pinned: tv,
            delegate: PersonFilmographyInfo(
              selection: _focusedTitle,
              fallback: visible.isEmpty ? null : (item: visible.first, copies: groups.copiesFor(visible.first).length),
              count: hasMore ? totalSize : visible.length,
              inset: inset,
              extent: 72 * textScale.clamp(1, 2),
            ),
          ),
        if (hasItems)
          buildSparseFocusableGrid(
            totalItems: visible.length + (hasMore ? 1 : 0),
            itemAt: (index) => index < visible.length ? visible[index] : null,
            onRefresh: updateItem,
            onItemTap: (index) => unawaited(_openCopy(groups.copiesFor(visible[index]))),
            onSkeletonVisible: (_) => WidgetsBinding.instance.addPostFrameCallback((_) {
              if (mounted) unawaited(_completeFilmography());
            }),
            onFirstRowNavigateUp: _focusFilters,
            followPosterDetails: true,
            // Keep the scaled focus border clear of the three pinned headers.
            gridScrollAlignment: tv ? .58 : .5,
            gridPadding: EdgeInsets.fromLTRB(inset, 10, inset, 24),
            onItemFocused: (item) => _focusedTitle.value = (item: item, copies: groups.copiesFor(item).length),
          ),
      ],
    );
  }

  Widget _buildFilmographyControls(double inset) {
    final tabs = TabChipStrip(
      children: [
        for (final (index, (kind, label)) in [
          (null, t.studios.all),
          (MediaKind.movie, t.studios.movies),
          (MediaKind.show, t.studios.shows),
        ].indexed)
          FocusableTabChip(
            editorial: true,
            label: label,
            isSelected: _kind == kind,
            focusNode: _filters[index],
            onSelect: () => unawaited(_filter(kind)),
            onNavigateLeft: index > 0 ? _filters[index - 1].requestFocus : _focusAbout,
            onNavigateRight: index < 2 ? _filters[index + 1].requestFocus : _sortFocus.requestFocus,
            onNavigateUp: _focusAbout,
            onNavigateDown: _focusTitles,
          ),
      ],
    );
    final sort = FocusableWrapper(
      focusNode: _sortFocus,
      descendantsAreFocusable: false,
      disableScale: true,
      onSelect: () => unawaited(_sortMenu.currentState?.showButtonMenu()),
      onNavigateLeft: _filters.last.requestFocus,
      onNavigateDown: _focusTitles,
      onNavigateUp: _focusAbout,
      child: AppMenuButton<PersonFilmographySort>(
        key: _sortMenu,
        tooltip: t.personSpotlight.sortTitles,
        adaptiveSheet: true,
        anchorAlignment: AppMenuAnchorAlignment.end,
        onSelected: _setSort,
        entriesBuilder: (_) => [
          for (final sort in PersonFilmographySort.values)
            AppMenuItem(value: sort, label: _sortLabel(sort), selected: sort == _sort),
        ],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.sort_rounded, size: 20),
              const SizedBox(width: 8),
              Flexible(child: Text(_sortLabel(_sort), maxLines: 1, overflow: TextOverflow.ellipsis)),
              const SizedBox(width: 4),
              const Icon(Icons.expand_more_rounded, size: 18),
            ],
          ),
        ),
      ),
    );
    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: inset, vertical: 4),
        child: LayoutBuilder(
          builder: (context, bounds) => bounds.maxWidth < 600 || MediaQuery.textScalerOf(context).scale(14) > 18
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [tabs, sort],
                )
              : Row(
                  children: [
                    Expanded(child: tabs),
                    sort,
                  ],
                ),
        ),
      ),
    );
  }
}

class _PersonControlsHeader extends SliverPersistentHeaderDelegate {
  _PersonControlsHeader({required this.child, required this.extent});
  final Widget child;
  final double extent;
  @override
  double get minExtent => extent;
  @override
  double get maxExtent => extent;
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) => SizedBox.expand(child: child);
  @override
  bool shouldRebuild(covariant _PersonControlsHeader oldDelegate) =>
      oldDelegate.child != child || oldDelegate.extent != extent;
}
