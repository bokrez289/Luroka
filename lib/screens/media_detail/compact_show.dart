part of '../media_detail_screen.dart';

extension _CompactShowPresentation on _MediaDetailScreenState {
  Future<void> _chooseCompactSeason() async {
    if (_seasons.isEmpty || !_canUseDetail) return;
    final selectedId = _seasons[_selectedSeasonIndex].id;
    final result = await showDialog<String>(
      context: context,
      builder: (dialogContext) => _CompactSeasonDialog(seasons: _seasons, selectedId: selectedId),
    );
    if (!_canUseDetail) return;
    if (result != null) {
      final index = _seasons.indexWhere((season) => season.id == result);
      if (index >= 0 && index != _selectedSeasonIndex) {
        setStateIfMounted(() {
          _selectedSeasonIndex = index;
          _clearTvDetailFocusedEpisode();
          if (!_showEpisodesDirectly) _syncSelectedSeasonEpisodes(index, result);
        });
        if (!_showEpisodesDirectly) unawaited(_fetchSeasonEpisodes(index));
      }
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_canUseDetail && (ModalRoute.of(context)?.isCurrent ?? false)) _compactSeasonFocus.requestFocus();
    });
  }

  Widget _buildCompactShowScreen(
    BuildContext context,
    MediaItem show,
    KeyEventResult Function(FocusNode, KeyEvent) handleBack,
  ) {
    final layout = TitlePageLayout(
      MediaQuery.sizeOf(context),
      marginPercent: SettingsService.instance.read(SettingsService.tvScreenMargin),
    );
    final scale = layout.scale;
    final colors = Theme.of(context).colorScheme;
    final season = _seasons.isEmpty ? null : _seasons[_selectedSeasonIndex.clamp(0, _seasons.length - 1)];
    final episodes = _showEpisodesDirectly && season != null && _seasons.length > 1
        ? _episodes.where((episode) => episode.parentId == season.id || episode.parentIndex == season.index).toList()
        : _episodes;
    final hideSpoilers = SettingsService.instance.read(SettingsService.hideSpoilers);
    final upcoming = _compactShowTab == 0
        ? _scheduleItems().where((item) => item.raw?['scheduleFuture'] == true).toList()
        : <MediaItem>[];
    final nextEpisode = _showEpisodeState.intent == ShowPlayIntent.next ? _showEpisodeState.episode : null;
    final status = switch ('${show.raw?['Status'] ?? show.raw?['status'] ?? ''}'.toLowerCase()) {
      'continuing' || 'returning series' => t.referenceDetails.continuing,
      'ended' => t.explore.status.ended,
      'canceled' || 'cancelled' => t.explore.status.canceled,
      _ => null,
    };
    if (!_tvDetailRevealed && _isTvDetailReadyToReveal(show)) {
      _scheduleTvDetailReveal(0, focusPrimaryAction: true);
    }
    final content = NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (_compactShowTab == 0 &&
            notification.metrics.extentAfter < 500 &&
            _episodeListHasMore &&
            !_episodeListLoadingMore &&
            !_episodeListPageError) {
          unawaited(_loadMoreEpisodeList());
        }
        return false;
      },
      child: CustomScrollView(
        key: const ValueKey('compact_show_scroll'),
        controller: _scrollController,
        slivers: [
          SliverPadding(
            padding: EdgeInsets.fromLTRB(layout.inset + 22 * scale, 64 * scale, layout.inset + 22 * scale, 10 * scale),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClearLogoImage(
                    client: _getArtworkMediaClient(context),
                    logoPath: show.clearLogoPath,
                    width: 290 * scale,
                    height: 68 * scale,
                    fallbackWidth: 540 * scale,
                    logoToneTarget: colors.onSurface,
                    fallbackBuilder: (_) => Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        show.displayTitle,
                        key: const ValueKey('compact_show_title'),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 30 * scale, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  SizedBox(height: 8 * scale),
                  Wrap(
                    spacing: 12 * scale,
                    runSpacing: 4 * scale,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      if (show.year != null) Text('${show.year}'),
                      if (_seasons.isNotEmpty) Text('${_seasons.length} ${t.libraries.groupings.seasons}'),
                      if (show.genres?.isNotEmpty == true) Text(show.genres!.take(3).join(' · ')),
                      if (_titleRatings(show).isNotEmpty)
                        InlineRatingBadges(
                          ratings: _titleRatings(show),
                          textStyle: TextStyle(fontSize: 14 * scale),
                        ),
                    ],
                  ),
                  if (show.summary?.trim().isNotEmpty == true) ...[
                    SizedBox(height: 10 * scale),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 600 * scale),
                      child: Text(
                        show.summary!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 15 * scale, height: 1.35),
                      ),
                    ),
                  ],
                  SizedBox(height: 14 * scale),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6 * scale, vertical: 5 * scale),
                    decoration: BoxDecoration(
                      color: colors.surfaceContainerLow.withValues(alpha: .88),
                      borderRadius: BorderRadius.circular(12 * scale),
                      border: Border.all(color: colors.outlineVariant.withValues(alpha: .5)),
                    ),
                    child: _buildActionButtons(show),
                  ),
                  SizedBox(height: 12 * scale),
                  Wrap(
                    spacing: 10 * scale,
                    children: [
                      for (final (index, label) in [
                        t.showDetailLayout.episodes,
                        t.showDetailLayout.details,
                        t.showDetailLayout.cast,
                        t.showDetailLayout.related,
                      ].indexed)
                        FocusableWrapper(
                          key: ValueKey('compact_show_tab_$index'),
                          focusNode: switch (index) {
                            0 => _compactEpisodesTabFocus,
                            2 => _compactCastTabFocus,
                            3 => _compactRelatedTabFocus,
                            _ => null,
                          },
                          disableScale: true,
                          checked: _compactShowTab == index,
                          onSelect: () => setStateIfMounted(() => _compactShowTab = index),
                          onNavigateUp: _focusTvDetailActionRow,
                          onNavigateDown: _compactShowTab != index
                              ? null
                              : switch (index) {
                                  0 when season != null => _compactSeasonFocus.requestFocus,
                                  2 when show.roles?.isNotEmpty == true =>
                                    () => _compactCastKey.currentState?.requestFocus(),
                                  3 when _relatedHubs.any((hub) => hub.items.isNotEmpty) =>
                                    () => _compactRelatedKey.currentState?.requestFocusFromMemory(),
                                  _ => null,
                                },
                          child: TextButton(
                            onPressed: () => setStateIfMounted(() => _compactShowTab = index),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  label,
                                  style: TextStyle(
                                    fontSize: 15 * scale,
                                    fontWeight: _compactShowTab == index ? FontWeight.w800 : FontWeight.w500,
                                    color: _compactShowTab == index ? colors.primary : colors.onSurface,
                                  ),
                                ),
                                SizedBox(height: 4 * scale),
                                Container(
                                  height: 2 * scale,
                                  width: 36 * scale,
                                  color: _compactShowTab == index ? colors.primary : Colors.transparent,
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                  SizedBox(height: 8 * scale),
                  if (_compactShowTab == 0 && season != null)
                    FocusableWrapper(
                      focusNode: _compactSeasonFocus,
                      disableScale: true,
                      onSelect: _chooseCompactSeason,
                      onNavigateUp: _compactEpisodesTabFocus.requestFocus,
                      child: OutlinedButton.icon(
                        key: const ValueKey('compact_show_season_picker'),
                        onPressed: _chooseCompactSeason,
                        icon: const AppIcon(Symbols.view_list_rounded),
                        label: Text('${seasonLabel(season)}  ▾'),
                      ),
                    ),
                  if (_compactShowTab == 0 && (_isLoadingSeasonEpisodes || _isLoadingAllEpisodes))
                    const LinearProgressIndicator(minHeight: 2),
                  if (_compactShowTab == 0 && _seasonsLoadFailed)
                    TextButton(onPressed: () => unawaited(_loadSeasons()), child: Text(t.common.retry)),
                  if (_compactShowTab == 0 && _seasonEpisodesFirstPageError && !_showEpisodesDirectly)
                    TextButton(
                      onPressed: () => unawaited(_fetchSeasonEpisodes(_selectedSeasonIndex)),
                      child: Text(t.common.retry),
                    ),
                ],
              ),
            ),
          ),
          if (_compactShowTab == 0)
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: layout.inset + 22 * scale),
              sliver: SliverList.builder(
                itemCount: episodes.length + (_episodeListPageError ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == episodes.length) {
                    return TextButton(onPressed: () => unawaited(_loadMoreEpisodeList()), child: Text(t.common.retry));
                  }
                  final episode = _fresh(episodes[index]);
                  final isNext = nextEpisode != null && nextEpisode.globalKey == episode.globalKey && !episode.isWatched;
                  final hidden = hideSpoilers && episode.shouldHideSpoiler;
                  final summary = _tvDetailItemDescription(episode, hideSpoilers: hideSpoilers);
                  return Padding(
                    padding: EdgeInsets.only(bottom: 7 * scale),
                    child: FocusableWrapper(
                      key: ValueKey('compact_episode_${episode.id}'),
                      disableScale: true,
                      semanticLabel: [
                        formatSeasonEpisodeLabel(episode.parentIndex, episode.index),
                        if (!hidden) episode.title,
                        if (episode.isWatched) t.detailComposition.watched,
                        if (isNext) t.discover.nextUp,
                      ].whereType<String>().where((value) => value.isNotEmpty).join(', '),
                      onSelect: () => unawaited(_openEpisodeDestination(episode)),
                      enableLongPress: true,
                      onLongPress: () => _seasonPageEpisodeMenus[episode.id]?.currentState?.showContextMenu(context),
                      onNavigateUp: index == 0 ? _compactSeasonFocus.requestFocus : null,
                      child: MediaContextMenu(
                        key: _seasonPageEpisodeMenus.putIfAbsent(episode.id, () => GlobalKey<MediaContextMenuState>()),
                        item: episode,
                        isOffline: widget.isOffline,
                        onRefresh: (item) => unawaited(_refreshItemInPlace(item)),
                        child: InkWell(
                          onTap: () => unawaited(_openEpisodeDestination(episode)),
                          child: Container(
                            padding: EdgeInsets.all(8 * scale),
                            decoration: BoxDecoration(
                              color: colors.surfaceContainerHigh.withValues(alpha: .82),
                              borderRadius: BorderRadius.circular(10 * scale),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 128 * scale,
                                  height: 72 * scale,
                                  child: Stack(fit: StackFit.expand, children: [
                                    MediaSelectorThumbnail(
                                      width: 128 * scale,
                                      height: 72 * scale,
                                      thumbnail: _titleEpisodeArtwork(episode, Size(128 * scale, 72 * scale)),
                                      isCurrent: false,
                                      borderColor: Colors.transparent,
                                      radius: 7 * scale,
                                      blurThumbnail: hidden,
                                    ),
                                    WatchedIndicator(item: episode, size: WatchedIndicatorSize.compact),
                                    if (isNext)
                                      Positioned(
                                        left: 4 * scale,
                                        top: 4 * scale,
                                        child: Container(
                                          key: ValueKey('compact_next_up_${episode.id}'),
                                          padding: EdgeInsets.symmetric(horizontal: 6 * scale, vertical: 3 * scale),
                                          decoration: BoxDecoration(color: colors.primary,
                                            borderRadius: BorderRadius.circular(5 * scale)),
                                          child: Text(t.discover.nextUp, maxLines: 1,
                                            style: TextStyle(color: colors.onPrimary, fontSize: 10 * scale,
                                              fontWeight: FontWeight.w700)),
                                        ),
                                      ),
                                  ]),
                                ),
                                SizedBox(width: 14 * scale),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        formatSeasonEpisodeLabel(episode.parentIndex, episode.index) ?? '',
                                        style: TextStyle(color: colors.primary, fontSize: 12 * scale),
                                      ),
                                      Text(
                                        hidden ? t.dashboard.spoilerHidden : (episode.title ?? episode.displayTitle),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 16 * scale, fontWeight: FontWeight.w700),
                                      ),
                                      if (summary != null)
                                        Text(
                                          summary,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 13 * scale, color: colors.onSurfaceVariant),
                                        ),
                                    ],
                                  ),
                                ),
                                if ((episode.durationMs ?? 0) > 0 ||
                                    DateTime.tryParse(episode.originallyAvailableAt ?? '') != null)
                                  Padding(
                                    padding: EdgeInsets.only(left: 12 * scale),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        if ((episode.durationMs ?? 0) > 0)
                                          Text(
                                            formatDurationTextual(episode.durationMs!),
                                            style: TextStyle(fontSize: 13 * scale),
                                          ),
                                        if (DateTime.tryParse(episode.originallyAvailableAt ?? '') case final date?)
                                          Text(
                                            MaterialLocalizations.of(context).formatMediumDate(date.toLocal()),
                                            style: TextStyle(fontSize: 12 * scale, color: colors.onSurfaceVariant),
                                          ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          if (upcoming.isNotEmpty && !_episodeListHasMore && !_episodeListLoadingMore && !_episodeListPageError)
            SliverPadding(
              padding: EdgeInsets.fromLTRB(layout.inset + 22 * scale, 18 * scale, layout.inset + 22 * scale, 24 * scale),
              sliver: SliverToBoxAdapter(
                child: Column(
                  key: const ValueKey('compact_show_upcoming'),
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(t.showSchedule.upcoming, style: Theme.of(context).textTheme.titleLarge),
                    SizedBox(height: 10 * scale),
                    Column(children: [
                      for (final item in upcoming)
                        Padding(
                          padding: EdgeInsets.only(bottom: 7 * scale),
                          child: FocusableWrapper(
                          disableScale: true,
                          onSelect: () => unawaited(_openScheduleEntry(item)),
                          child: InkWell(
                            onTap: () => unawaited(_openScheduleEntry(item)),
                            child: Container(
                              key: ValueKey('compact_upcoming_${item.parentIndex}_${item.index}'),
                              padding: EdgeInsets.all(8 * scale),
                              decoration: BoxDecoration(
                                color: colors.surfaceContainerHigh.withValues(alpha: .82),
                                borderRadius: BorderRadius.circular(10 * scale),
                              ),
                              child: Row(children: [
                                Container(
                                  width: 128 * scale,
                                  height: 72 * scale,
                                  decoration: BoxDecoration(
                                    color: colors.surfaceContainerHighest,
                                    borderRadius: BorderRadius.circular(7 * scale),
                                  ),
                                  child: Icon(Icons.event_outlined, color: colors.primary, size: 28 * scale),
                                ),
                                SizedBox(width: 14 * scale),
                                Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(formatSeasonEpisodeLabel(item.parentIndex, item.index) ?? '',
                                      style: TextStyle(color: colors.primary, fontSize: 12 * scale)),
                                    Text(item.title ?? '', maxLines: 1, overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 16 * scale, fontWeight: FontWeight.w700)),
                                    Text(t.showSchedule.notYetAired,
                                      style: TextStyle(fontSize: 13 * scale, color: colors.onSurfaceVariant)),
                                  ],
                                )),
                                SizedBox(width: 12 * scale),
                                Flexible(child: Text(showScheduleDate(item.originallyAvailableAt ?? ''),
                                  textAlign: TextAlign.end, style: TextStyle(fontSize: 12 * scale, color: colors.onSurfaceVariant))),
                              ]),
                            ),
                          ),
                        ),
                        ),
                    ]),
                  ],
                ),
              ),
            ),
          if (_compactShowTab == 1)
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  layout.inset + 22 * scale,
                  8 * scale,
                  layout.inset + 22 * scale,
                  32 * scale,
                ),
                child: Container(
                  padding: EdgeInsets.all(18 * scale),
                  decoration: BoxDecoration(
                    color: colors.surfaceContainerLow.withValues(alpha: .94),
                    borderRadius: BorderRadius.circular(16 * scale),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(t.showDetailLayout.details, style: Theme.of(context).textTheme.titleLarge),
                      SizedBox(height: 10 * scale),
                      Wrap(
                        spacing: 14 * scale,
                        runSpacing: 6 * scale,
                        children: [
                          if (show.year != null) Text('${show.year}', style: TextStyle(fontSize: 14 * scale)),
                          if (status != null) Text(status, style: TextStyle(fontSize: 14 * scale)),
                          if (show.contentRating?.isNotEmpty == true)
                            Text(formatContentRating(show.contentRating!), style: TextStyle(fontSize: 14 * scale)),
                          if (_seasons.isNotEmpty)
                            Text(
                              '${_seasons.length} ${t.libraries.groupings.seasons}',
                              style: TextStyle(fontSize: 14 * scale),
                            ),
                        ],
                      ),
                      if (show.summary?.trim().isNotEmpty == true) ...[
                        SizedBox(height: 12 * scale),
                        Text(show.summary!, style: TextStyle(fontSize: 15 * scale, height: 1.4)),
                      ],
                      if (show.genres?.isNotEmpty == true) ...[
                        SizedBox(height: 12 * scale),
                        Text(
                          show.genres!.join(' · '),
                          style: TextStyle(color: colors.onSurfaceVariant, fontSize: 14 * scale),
                        ),
                      ],
                      if (show.studio?.trim().isNotEmpty == true) ...[
                        SizedBox(height: 8 * scale),
                        Text('${t.discover.studio}: ${show.studio}', style: TextStyle(fontSize: 14 * scale)),
                      ],
                      if (show.directors?.isNotEmpty == true) ...[
                        SizedBox(height: 8 * scale),
                        Text(
                          '${t.discover.director}: ${show.directors!.join(', ')}',
                          style: TextStyle(fontSize: 14 * scale),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          if (_compactShowTab == 2 && (show.roles?.isEmpty ?? true) ||
              _compactShowTab == 3 && _relatedHubs.every((hub) => hub.items.isEmpty))
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: layout.inset + 22 * scale, vertical: 18 * scale),
                child: Text(t.messages.noItemsAvailable, style: TextStyle(color: colors.onSurfaceVariant)),
              ),
            ),
          if (_compactShowTab == 2 && show.roles?.isNotEmpty == true)
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: layout.inset + 22 * scale),
              sliver: SliverToBoxAdapter(
                child: SizedBox(
                  height: CastMemberStrip.heightForCardWidth(110 * scale),
                  child: CastMemberStrip(
                    key: _compactCastKey,
                    members: [
                      for (final actor in show.roles!)
                        (name: actor.tag, secondary: actor.role, imagePath: actor.thumbPath),
                    ],
                    imageClient: _getArtworkMediaClient(context),
                    circularPortraits: true,
                    cardWidth: 110 * scale,
                    canOpenMember: (index) => show.roles![index].id != null,
                    onMemberTap: (index) => _navigateToActorMedia(show.roles![index]),
                    onNavigateUp: _compactCastTabFocus.requestFocus,
                  ),
                ),
              ),
            ),
          if (_compactShowTab == 3 && _relatedHubs.any((hub) => hub.items.isNotEmpty))
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: layout.inset + 22 * scale),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    for (final (index, hub) in _relatedHubs.where((hub) => hub.items.isNotEmpty).indexed)
                      HubSection(
                        key: index == 0 ? _compactRelatedKey : null,
                        hub: hub,
                        focusMemory: _hubFocusMemory,
                        icon: _getRelatedHubIcon(hub),
                        onNavigateUp: _compactRelatedTabFocus.requestFocus,
                        onRefresh: (item) => unawaited(_refreshItemInPlace(item)),
                      ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
    return OverlaySheetHost(
      canPop: widget.previewShowLayout == null ? !InputModeTracker.shouldBlockSystemBack(context) : null,
      onSystemBack: _handleMediaDetailSystemBack,
      child: Focus(
        onKeyEvent: handleBack,
        child: Scaffold(
          body: Stack(
            children: [
              _buildTitlePageBackdrop(show, layout),
              Positioned.fill(
                child: IgnorePointer(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [colors.surface.withValues(alpha: .08), colors.surface.withValues(alpha: .48)],
                      ),
                    ),
                  ),
                ),
              ),
              _buildTvDetailRevealGate(content, handleBack),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: 54 * scale,
                child: IgnorePointer(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [colors.surface.withValues(alpha: .9), colors.surface.withValues(alpha: 0)],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: layout.inset - 12,
                child: SafeArea(
                  bottom: false,
                  child: AppBarBackButton(
                    style: BackButtonStyle.circular,
                    onPressed: _popMediaDetail,
                    focusNode: _backButtonFocusNode,
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

class _CompactSeasonDialog extends StatefulWidget {
  const _CompactSeasonDialog({required this.seasons, required this.selectedId});
  final List<MediaItem> seasons;
  final String selectedId;
  @override
  State<_CompactSeasonDialog> createState() => _CompactSeasonDialogState();
}

class _CompactSeasonDialogState extends State<_CompactSeasonDialog> {
  late final ScrollController _scroll;
  @override
  void initState() {
    super.initState();
    final index = math.max(0, widget.seasons.indexWhere((season) => season.id == widget.selectedId));
    _scroll = ScrollController(initialScrollOffset: math.max(0, index * 64.0 - 128));
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Dialog(
      backgroundColor: colors.surfaceContainerHigh,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 620, maxHeight: MediaQuery.sizeOf(context).height * .76),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 20, 22, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(t.showDetailLayout.seasons, style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 12),
              Flexible(
                child: ListView.builder(
                  controller: _scroll,
                  shrinkWrap: true,
                  itemCount: widget.seasons.length,
                  itemBuilder: (context, index) {
                    final season = widget.seasons[index];
                    final selected = season.id == widget.selectedId;
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Material(
                        color: selected ? colors.primaryContainer : colors.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(14),
                        child: FocusableListTile(
                          key: ValueKey('compact-season-${season.id}'),
                          autofocus: selected,
                          selected: selected,
                          title: Text(seasonLabel(season)),
                          subtitle: season.leafCount == null
                              ? null
                              : Text(t.seriesBrowser.episodeCount(count: season.leafCount!)),
                          trailing: selected ? Icon(Icons.check_circle_rounded, color: colors.primary) : null,
                          onTap: () => Navigator.of(context).pop(season.id),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
