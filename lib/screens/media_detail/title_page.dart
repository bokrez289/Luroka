part of '../media_detail_screen.dart';

extension _TitlePagePresentation on _MediaDetailScreenState {
  Widget _buildSeasonDestination(MediaItem season) => OverlaySheetHost(
    canPop: !InputModeTracker.shouldBlockSystemBack(context),
    onSystemBack: _handleMediaDetailSystemBack,
    child: Focus(
      onKeyEvent: _handleMediaDetailBackKey,
      child: SeasonEpisodePage(
        season: season,
        episodes: _episodes.map(_fresh).toList(),
        onBack: _popMediaDetail,
        loading: !_hasLoadedEpisodes || _isLoadingEpisodes || _isLoadingAllEpisodes,
        failed: _allEpisodesPageError,
        hasMore: _allEpisodes.hasMore,
        hideSpoilers: SettingsService.instance.read(SettingsService.hideSpoilers),
        initialEpisodeId: widget.initialEpisodeId,
        marginPercent: SettingsService.instance.read(SettingsService.tvScreenMargin),
        onLoadMore: () => unawaited(_loadMoreAllEpisodes()),
        onRetry: () => unawaited(_episodes.isEmpty ? _fetchAllEpisodes() : _loadMoreAllEpisodes()),
        posterBuilder: (size) => _titleSeasonPoster(season, size),
        backdrop: _buildTitlePageBackdrop(
          season,
          TitlePageLayout(
            MediaQuery.sizeOf(context),
            marginPercent: SettingsService.instance.read(SettingsService.tvScreenMargin),
          ),
        ),
        thumbnailBuilder: _titleEpisodeArtwork,
        onPlay: (episode) => unawaited(_openEpisodeDestination(episode)),
        decorateEpisode: (episode, child) => MediaContextMenu(
          key: _seasonPageEpisodeMenus.putIfAbsent(episode.id, () => GlobalKey<MediaContextMenuState>()),
          item: episode,
          isOffline: widget.isOffline,
          onRefresh: (item) => unawaited(_refreshItemInPlace(item)),
          child: child,
        ),
        onEpisodeMenu: (episode) => _seasonPageEpisodeMenus[episode.id]?.currentState?.showContextMenu(context),
      ),
    ),
  );

  Future<void> _openEpisodeDestination(MediaItem episode) async {
    if (!_canUseDetail) return;
    final route = mediaDetailRoute(metadata: episode, isOffline: widget.isOffline);
    await Navigator.of(context).push<bool>(route);
    await route.completed;
    if (_canUseDetail) await _refreshItemInPlace(episode);
  }

  Future<void> _openSeasonDestination(MediaItem season) async {
    _titleSeasonPreviewTimer?.cancel();
    if (!_canUseDetail) return;
    final id = season.id;
    final selected = _seasons.indexWhere((item) => item.id == id);
    if (selected >= 0) {
      setStateIfMounted(() {
        _selectedSeasonIndex = selected;
        if (!_showEpisodesDirectly) _syncSelectedSeasonEpisodes(selected, id);
      });
    }
    final resolved = season.copyWith(
      parentTitle: season.parentTitle ?? _metadata.title,
      artPath: season.artPath ?? _metadata.artPath,
      serverId: season.serverId ?? _metadata.serverId,
      serverName: season.serverName ?? _metadata.serverName,
      parentId: season.parentId ?? _metadata.id,
    );
    final route = mediaDetailRoute(metadata: resolved, isOffline: widget.isOffline);
    await Navigator.of(context).push<bool>(route);
    await route.completed;
    if (!_canUseDetail) return;
    unawaited(_refreshWatchState());
    setStateIfMounted(() => _restoreSeasonAfterPop = true);
  }

  double _cinematicTitleHeight(TitlePageLayout layout) => MediaQuery.sizeOf(context).height;

  Widget _buildCinematicTitleHeader(MediaItem movie, TitlePageLayout layout) {
    final scale = layout.scale;
    final height = _cinematicTitleHeight(layout);
    final scheme = Theme.of(context).colorScheme;
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          Positioned(
            left: math.max(layout.inset, MediaQuery.sizeOf(context).width * .055),
            right: layout.inset,
            top: 66 * scale,
            bottom: 48 * scale,
            child: ListenableBuilder(
              listenable: _tvDetailForegroundListenable,
              builder: (context, _) => _buildReferenceTitleInfo(context, movie, layout),
            ),
          ),
          Positioned(
            bottom: 8 * scale,
            left: layout.inset,
            right: layout.inset,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.keyboard_arrow_down_rounded, color: scheme.primary, size: 20 * scale),
                SizedBox(width: 6 * scale),
                Text(
                  movie.isShow ? t.libraries.groupings.seasons : t.detailComposition.castAndCrew,
                  style: TextStyle(fontSize: 13 * scale, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReferenceTitleInfo(BuildContext context, MediaItem item, TitlePageLayout layout) {
    final scale = layout.scale;
    final scheme = Theme.of(context).colorScheme;
    final hidden = SettingsService.instance.read(SettingsService.hideSpoilers);
    final description = _tvDetailDescription(item, hideSpoilers: hidden);
    final ratings = item.isMovie || item.isShow
        ? _titleRatings(_withProbedRatings(item))
        : mediaRatingsFor(_withProbedRatings(item));
    final remaining = item.unwatchedCount;
    final upNext = item.isShow ? _showPlayEpisode() : null;
    final target = _playbackTargetItem(item);
    final probed = target == null ? null : _playbackSources[target.globalKey];
    // A show describes the exact episode Play will launch, never a random
    // season's first file. Wait for the saved-version probe before labelling it.
    final videoLabels = probed?.mediaIndex == null
        ? <String>[]
        : buildMediaVideoLabels(probed!.item, versionIndex: probed.mediaIndex!, partIndex: probed.source?.partIndex);
    final endYearRaw = item.raw?['EndDate'] ?? item.raw?['endDate'];
    final endYear = endYearRaw is String ? DateTime.tryParse(endYearRaw)?.year : null;
    final statusRaw = item.raw?['Status'] ?? item.raw?['status'];
    final status = statusRaw is String ? statusRaw.toLowerCase() : null;
    final continuing = status == 'continuing' || status == 'returning series';
    void openDetails() => _openTvDetailsSheet(context, item, hideSpoilers: hidden);
    return LayoutBuilder(
      builder: (context, bounds) {
        if (bounds.maxHeight < 260 * scale) {
          return _buildTvDetailForeground(context, item, hideSpoilers: hidden, scale: scale, titlePage: true);
        }
        final textWidth = math.min(bounds.maxWidth * 0.49, 700 * scale);
        final compact = bounds.maxHeight < 460 * scale;
        Widget chip(String label) => Container(
          padding: EdgeInsets.symmetric(horizontal: 9 * scale, vertical: 4 * scale),
          decoration: BoxDecoration(
            color: scheme.surface.withValues(alpha: 0.7),
            borderRadius: BorderRadius.circular(4 * scale),
            border: Border.all(color: scheme.onSurface.withValues(alpha: 0.22)),
          ),
          child: Text(
            label,
            style: TextStyle(fontSize: 12 * scale, color: scheme.onSurfaceVariant),
          ),
        );
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: textWidth,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: textWidth,
                          child: _buildDetailLogoOrTitle(
                            context,
                            item,
                            width: math.min(textWidth, 350 * scale),
                            height: (compact ? 54 : 74) * scale,
                            availableWidth: textWidth,
                            titleBuilder: (context, title) => _buildDetailTitle(
                              context,
                              title,
                              fontSize: 48 * scale,
                              fontWeight: FontWeight.w700,
                              shadowBlur: 0,
                            ),
                          ),
                        ),
                        if (item.isEpisode) ...[
                          SizedBox(height: 6 * scale),
                          Text(
                            item.title ?? item.displayTitle,
                            key: const ValueKey('detail_episode_name'),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 20 * scale, fontWeight: FontWeight.w600),
                          ),
                        ],
                        SizedBox(height: 8 * scale),
                        Semantics(
                          key: const ValueKey('tv_detail_information_semantics'),
                          identifier: 'tv_detail_information',
                          container: true,
                          button: true,
                          hint: t.mediaMenu.viewDetails,
                          onTap: openDetails,
                          label: _tvDetailInformationSemanticLabel(
                            item,
                            description: description,
                            genres: item.genres ?? [],
                          ),
                          child: ExcludeSemantics(
                            child: FocusableWrapper(
                              focusNode: _tvDetailInfoFocusNode,
                              onSelect: openDetails,
                              onNavigateUp: _backButtonFocusNode.requestFocus,
                              onNavigateDown: !widget.isOffline && _playbackTargetItem(item) != null
                                  ? _detailAudioFocus.requestFocus
                                  : _focusTvDetailActionRow,
                              onBack: _popMediaDetailIfBackNotSuppressed,
                              autoScroll: false,
                              disableScale: true,
                              useBackgroundFocus: true,
                              onFocusChange: (focus) {
                                if (focus) _tvDetailRailKey.currentState?.showPageHeader();
                              },
                              child: GestureDetector(
                                onTap: openDetails,
                                child: SizedBox(
                                  width: textWidth,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Wrap(
                                        spacing: 16 * scale,
                                        runSpacing: 6 * scale,
                                        children: [
                                          if (item.isEpisode)
                                            Text(
                                              t.dashboard.episodeLabel(
                                                season: item.parentIndex ?? '–',
                                                episode: item.index ?? '–',
                                              ),
                                              style: TextStyle(
                                                fontSize: 13 * scale,
                                                color: scheme.primary,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          if (item.isEpisode && item.originallyAvailableAt != null)
                                            Text(
                                              formatAbbreviatedDate(item.originallyAvailableAt!),
                                              style: TextStyle(fontSize: 13 * scale),
                                            ),
                                          if (item.year != null)
                                            Text(
                                              '${item.year}${item.isShow && continuing
                                                  ? '–${t.referenceDetails.present}'
                                                  : endYear != null
                                                  ? '–$endYear'
                                                  : ''}',
                                              style: TextStyle(fontSize: 13 * scale, fontWeight: FontWeight.w600),
                                            ),
                                          if (continuing)
                                            Text(
                                              t.referenceDetails.continuing,
                                              style: TextStyle(fontSize: 13 * scale, color: scheme.primary),
                                            ),
                                          if (item.isShow && item.studio?.isNotEmpty == true)
                                            Text(item.studio!, style: TextStyle(fontSize: 13 * scale)),
                                          if (remaining != null &&
                                              SettingsService.instance.read(SettingsService.showRemainingEpisodes))
                                            Text(
                                              remaining == 1
                                                  ? t.referenceDetails.oneEpisodeLeft
                                                  : t.referenceDetails.episodesLeft(count: remaining),
                                              key: const ValueKey('detail_unwatched_count'),
                                              style: TextStyle(
                                                fontSize: 13 * scale,
                                                color: scheme.primary,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          if (!item.isShow && item.durationMs != null)
                                            Text(
                                              formatDurationTextual(item.durationMs!),
                                              style: TextStyle(fontSize: 13 * scale),
                                            ),
                                          if (item.isShow && target?.durationMs != null)
                                            Text(
                                              formatDurationTextual(target!.durationMs!),
                                              key: const ValueKey('detail_episode_duration'),
                                              style: TextStyle(fontSize: 13 * scale),
                                            ),
                                          if (!item.isShow && (item.durationMs ?? 0) > 0)
                                            Text(
                                              t.detailComposition.endsAt(
                                                time: MaterialLocalizations.of(context).formatTimeOfDay(
                                                  TimeOfDay.fromDateTime(
                                                    DateTime.now().add(
                                                      Duration(
                                                        milliseconds: math.max(
                                                          0,
                                                          item.durationMs! - (item.viewOffsetMs ?? 0),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  alwaysUse24HourFormat: MediaQuery.alwaysUse24HourFormatOf(context),
                                                ),
                                              ),
                                              key: const ValueKey('detail_finish_time'),
                                              style: TextStyle(fontSize: 13 * scale),
                                            ),
                                        ],
                                      ),
                                      if (ratings.isNotEmpty) ...[
                                        SizedBox(height: 6 * scale),
                                        SizedBox(
                                          height: 24 * scale,
                                          child: FittedMetadataLine(
                                            key: const ValueKey('reference_detail_ratings'),
                                            textStyle: TextStyle(fontSize: 14 * scale, fontWeight: FontWeight.w600),
                                            parts: [MetadataLineRatings(ratings, dropPriority: 0)],
                                          ),
                                        ),
                                      ],
                                      SizedBox(height: 6 * scale),
                                      Wrap(
                                        spacing: 7 * scale,
                                        runSpacing: 5 * scale,
                                        children: [
                                          for (final genre in (item.genres ?? <String>[]).take(3)) chip(genre),
                                          if (item.contentRating?.isNotEmpty == true)
                                            chip(formatContentRating(item.contentRating!)),
                                          if (videoLabels.isNotEmpty)
                                            KeyedSubtree(
                                              key: const ValueKey('detail_video_quality'),
                                              child: chip(videoLabels.join(' · ')),
                                            ),
                                          if (item.isMovie && item.directors?.isNotEmpty == true)
                                            Padding(
                                              padding: EdgeInsets.symmetric(vertical: 4 * scale),
                                              child: Text(
                                                '${t.discover.director}: ${item.directors!.take(2).join(', ')}',
                                                style: TextStyle(fontSize: 12 * scale),
                                              ),
                                            ),
                                        ],
                                      ),
                                      if (upNext != null) ...[
                                        SizedBox(height: 12 * scale),
                                        Text(
                                          '${t.referenceDetails.upNext}  ›  ${formatSeasonEpisodeLabel(upNext.parentIndex, upNext.index) ?? ''}'
                                          '${hidden && upNext.shouldHideSpoiler ? '' : ' · ${upNext.title ?? ''}'}',
                                          key: const ValueKey('title_resume_status'),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 13 * scale, fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                      if (_showCompletionText() case final completion?) ...[
                                        SizedBox(height: 8 * scale),
                                        Text(
                                          completion,
                                          key: const ValueKey('detail_show_completion'),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 13 * scale,
                                            color: scheme.primary,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                      if (description?.isNotEmpty == true) ...[
                                        SizedBox(height: 10 * scale),
                                        Text(
                                          description!,
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 15 * scale,
                                            height: 1.4,
                                            color: scheme.onSurface.withValues(alpha: 0.78),
                                          ),
                                        ),
                                      ],
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            if (!widget.isOffline && _playbackTargetItem(item) != null) ...[
              SizedBox(height: 8 * scale),
              SizedBox(width: textWidth, child: _buildTitlePlaybackPanel(context, item, scale)),
            ],
            SizedBox(height: 10 * scale),
            SizedBox(
              width: math.min(bounds.maxWidth, textWidth + (target?.hasActiveProgress == true ? 340 : 260) * scale),
              child: Container(
                key: const ValueKey('reference_detail_action_bar'),
                padding: EdgeInsets.symmetric(horizontal: 6 * scale, vertical: 5 * scale),
                decoration: BoxDecoration(
                  color: scheme.surface.withValues(alpha: 0.86),
                  borderRadius: BorderRadius.circular(8 * scale),
                  border: Border.all(color: scheme.onSurface.withValues(alpha: 0.16)),
                ),
                child: _buildActionButtons(item),
              ),
            ),
            if (!item.isShow) ...[SizedBox(height: 8 * scale), _buildTitleResumeStatus(item, scale)],
            if (item.isShow) ...[
              SizedBox(height: 8 * scale),
              SizedBox(
                width: textWidth,
                child: _buildPlaybackTracksStatus(context, item, isTv: true, tvScale: scale, maxWidth: textWidth),
              ),
            ],
          ],
        );
      },
    );
  }

  Widget _buildTitleDetailsEntry(MediaItem metadata, TitlePageLayout layout) => Builder(
    builder: (sheetContext) => ValueListenableBuilder<int>(
      valueListenable: _playbackStatusRevision,
      builder: (context, _, _) {
        final target = _playbackTargetItem(metadata);
        if (target == null) return _buildLegacyTitleDetailsEntry(metadata, layout);
        final probed = _playbackSources[target.globalKey];
        final source = probed?.source;
        final scale = layout.scale;
        final colors = Theme.of(context).colorScheme;
        final video = probed?.mediaIndex == null
            ? <String>[]
            : buildMediaVideoLabels(probed!.item, versionIndex: probed.mediaIndex!, partIndex: source?.partIndex);
        final versions = probed?.item.mediaVersions;
        final index = probed?.mediaIndex ?? 0;
        final version = versions != null && index >= 0 && index < versions.length ? versions[index] : null;
        final videoDetails = <String>[
          if (video.isNotEmpty) video.join(' · '),
          if (version?.container != null) '${t.fileInfo.file}: ${version!.container!.toUpperCase()}',
          if (version?.width != null && version?.height != null)
            '${t.fileInfo.resolution}: ${version!.width} × ${version.height}',
          if (version?.videoCodec != null) '${t.fileInfo.codec}: ${version!.videoCodec!.toUpperCase()}',
          if (version?.bitrate != null) '${t.fileInfo.bitrate}: ${version!.bitrate} kbps',
        ];
        Widget group(String id, String label, IconData icon, List<String> rows, {int? count}) {
          final expanded = _detailInformationExpanded.contains(id);
          return Container(
            padding: EdgeInsets.all(10 * scale),
            decoration: BoxDecoration(color: colors.surfaceContainer, borderRadius: BorderRadius.circular(8 * scale)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FocusableWrapper(
                  disableScale: true,
                  borderRadius: 6 * scale,
                  onSelect: () => setStateIfMounted(() {
                    expanded ? _detailInformationExpanded.remove(id) : _detailInformationExpanded.add(id);
                  }),
                  onNavigateUp: () => _tvDetailRailKey.currentState?.requestFocus(),
                  child: GestureDetector(
                    onTap: () => setStateIfMounted(() {
                      expanded ? _detailInformationExpanded.remove(id) : _detailInformationExpanded.add(id);
                    }),
                    child: Padding(
                      padding: EdgeInsets.all(5 * scale),
                      child: Row(
                        children: [
                          Icon(icon, size: 18 * scale, color: colors.primary),
                          SizedBox(width: 8 * scale),
                          Expanded(
                            child: Text(
                              '$label (${count ?? rows.length})',
                              style: TextStyle(fontSize: 14 * scale, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Icon(
                            expanded ? Icons.remove_rounded : Icons.add_rounded,
                            size: 18 * scale,
                            color: colors.primary,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8 * scale),
                Text(
                  rows.isEmpty ? t.common.unknown : rows.first,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 13 * scale, color: colors.onSurfaceVariant),
                ),
                if (expanded) ...[
                  SizedBox(height: 10 * scale),
                  for (final row in rows.skip(1).take(4))
                    Padding(
                      padding: EdgeInsets.only(bottom: 6 * scale),
                      child: Text(
                        row,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12 * scale),
                      ),
                    ),
                ],
              ],
            ),
          );
        }

        Future<void> fullInfo() async {
          final client = _getMediaClientForMetadata(context);
          if (client == null) return;
          try {
            final info = await client.getFileInfo(target);
            if (!_canUseDetail || !sheetContext.mounted || info == null) return;
            await OverlaySheetController.of(sheetContext).show<void>(
              builder: (_) => FileInfoBottomSheet(fileInfo: info, title: target.displayTitle),
            );
          } catch (_) {
            if (context.mounted) showErrorDialog(context, t.messages.errorLoading(error: t.common.retry));
          }
        }

        return ColoredBox(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: layout.inset, vertical: 16 * scale),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FocusableWrapper(
                  focusNode: _infoRowsFocusNode,
                  disableScale: true,
                  onSelect: () => _openTvDetailsSheet(
                    sheetContext,
                    metadata,
                    hideSpoilers: SettingsService.instance.read(SettingsService.hideSpoilers),
                  ),
                  onNavigateUp: () => _tvDetailRailKey.currentState?.requestFocus(),
                  child: Text(
                    t.detailComposition.mediaInformation,
                    style: TextStyle(fontSize: 20 * scale, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 16 * scale),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: group(
                        'video',
                        t.fileInfo.video,
                        Symbols.movie_rounded,
                        videoDetails,
                        count: video.isEmpty ? 0 : 1,
                      ),
                    ),
                    SizedBox(width: 12 * scale),
                    Expanded(
                      child: group('audio', t.fileInfo.audio, Symbols.volume_up_rounded, [
                        for (final track in source?.audioTracks ?? <MediaAudioTrack>[]) track.label.joined,
                      ]),
                    ),
                    SizedBox(width: 12 * scale),
                    Expanded(
                      child: group('subtitle', t.fileInfo.subtitles, Symbols.subtitles_rounded, [
                        for (final track in source?.subtitleTracks ?? <MediaSubtitleTrack>[]) track.label.joined,
                      ]),
                    ),
                  ],
                ),
                SizedBox(height: 14 * scale),
                FocusableWrapper(
                  disableScale: true,
                  onSelect: () => unawaited(fullInfo()),
                  onNavigateUp: () => _tvDetailRailKey.currentState?.requestFocus(),
                  onBack: _popMediaDetailIfBackNotSuppressed,
                  child: TextButton.icon(
                    onPressed: fullInfo,
                    icon: const Icon(Icons.info_outline_rounded),
                    label: Text(t.detailComposition.fullFileInformation),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );

  Widget _buildLegacyTitleDetailsEntry(MediaItem metadata, TitlePageLayout layout) => Builder(
    builder: (sheetContext) => ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: layout.inset, vertical: 12 * layout.scale),
        child: FocusableWrapper(
          focusNode: _infoRowsFocusNode,
          disableScale: true,
          onSelect: () => _openTvDetailsSheet(
            sheetContext,
            metadata,
            hideSpoilers: SettingsService.instance.read(SettingsService.hideSpoilers),
          ),
          onFocusChange: (focused) {
            if (focused) {
              _clearTvDetailFocusedEpisode();
              _tvDetailRailKey.currentState?.suspendItemFocus();
            }
          },
          onNavigateUp: () {
            if (_tvDetailRailKey.currentState != null) {
              _tvDetailRailKey.currentState!.requestFocus();
            } else {
              _playButtonFocusNode.requestFocus();
            }
          },
          onNavigateDown: () {},
          onNavigateLeft: () {},
          onNavigateRight: () {},
          onBack: _popMediaDetailIfBackNotSuppressed,
          child: Padding(
            padding: EdgeInsets.all(12 * layout.scale),
            child: Row(
              children: [
                Text(
                  t.lurokaCatalog.details,
                  style: TextStyle(fontSize: 20 * layout.scale, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                AppIcon(Symbols.chevron_right_rounded, size: 24 * layout.scale),
              ],
            ),
          ),
        ),
      ),
    ),
  );

  Widget _buildTitlePageBackdrop(MediaItem item, TitlePageLayout layout) {
    final size = MediaQuery.sizeOf(context);
    final bg = Theme.of(context).scaffoldBackgroundColor;
    final artworkHeight = _cinematicTitleHeight(layout);
    final aspect = size.width / artworkHeight;
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      height: artworkHeight + 80 * layout.scale,
      child: IgnorePointer(
        child: RepaintBoundary(
          child: Stack(
            fit: StackFit.expand,
            children: [
              blurArtwork(
                CyclingMediaBackdrop(
                  imageType: ImageType.featureArt,
                  mediaKey: item.globalKey,
                  imagePaths: item.heroRotationPaths(containerAspectRatio: aspect),
                  fallbackImagePaths: item.heroArtCandidates(containerAspectRatio: aspect),
                  client: _getArtworkMediaClient(context),
                  allowNetwork: !widget.isOffline,
                  localArtworkPathResolver: widget.isOffline
                      ? (path) => _offlineArtworkCandidatePath(context, path)
                      : null,
                  width: size.width,
                  height: artworkHeight,
                  fallbackColor: bg,
                ),
              ),
              RasterizedGradient(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [bg, bg.withValues(alpha: 0.96), bg.withValues(alpha: 0.65), bg.withValues(alpha: 0.04)],
                  stops: const [0, 0.28, 0.58, 1],
                ),
              ),
              RasterizedGradient(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [bg.withValues(alpha: 0.12), bg.withValues(alpha: 0.05), bg],
                  stops: const [0, 0.6, 1],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleResumeStatus(MediaItem metadata, double scale) {
    final item = metadata.isShow ? (_onDeckEpisode ?? _episodes.firstOrNull) : metadata;
    if (item == null) return const SizedBox.shrink();
    final offset = item.viewOffsetMs ?? 0;
    final duration = item.durationMs ?? 0;
    final text = offset > 0 && duration > offset
        ? t.titlePage.remaining(time: formatDurationTextual(duration - offset))
        : metadata.isShow
        ? (item.title ?? '')
        : '';
    return Align(
      alignment: Alignment.bottomLeft,
      child: Row(
        children: [
          if (offset > 0 && duration > offset) ...[
            SizedBox(
              width: 90 * scale,
              child: LinearProgressIndicator(
                value: offset / duration,
                minHeight: 3 * scale,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            SizedBox(width: 12 * scale),
          ],
          if (text.isNotEmpty)
            Expanded(
              child: Text(
                text,
                key: const ValueKey('title_resume_status'),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 13 * scale, color: Theme.of(context).colorScheme.onSurfaceVariant),
              ),
            ),
          if (_tvDetailFocusedEpisode.value == null)
            Expanded(
              child: _buildPlaybackTracksStatus(context, metadata, isTv: true, tvScale: scale, maxWidth: 1040 * scale),
            ),
        ],
      ),
    );
  }

  void _focusAboveTitleShelf() {
    if (_hasTitleSeasonBrowser) {
      _focusTitleSeasons();
      return;
    }
    _focusTvDetailActionRow();
  }

  bool get _hasTitleSeasonBrowser =>
      _metadata.isSeason ||
      (_metadata.isShow && _seasons.isNotEmpty && (!_showEpisodesDirectly || _seasons.length == 1));

  List<MediaItem> get _titleSeasonOptions => _metadata.isSeason ? [_fresh(_metadata)] : _seasons.map(_fresh).toList();

  void _onTitleSeasonFocus() {
    _titleSeasonEnterId = null;
    _tvDetailRailKey.currentState?.revealPageSection(_tvDetailInitialHubId(_metadata));
  }

  void _focusTitleSeasons() {
    _onTitleSeasonFocus();
    if (_seriesSeasonsKey.currentState != null) {
      _seriesSeasonsKey.currentState!.requestFocus();
    } else {
      unawaited(() async {
        _tvDetailRailKey.currentState?.requestFocus();
        await WidgetsBinding.instance.endOfFrame;
        await _tvDetailRailKey.currentState?.revealPageSection(_tvDetailInitialHubId(_metadata));
        if (!_canUseDetail) return;
        _seriesSeasonsKey.currentState?.requestFocus();
      }());
    }
  }

  void _scheduleTitleSeasonEntry() {
    final id = _titleSeasonEnterId;
    if (id == null || !_canUseDetail || !PlatformDetector.isTV()) return;
    if (_metadata.isSeason || _showEpisodesDirectly) {
      _titleSeasonEnterId = null;
    } else {
      if (_seasons.isEmpty || _seasons[_selectedSeasonIndex].id != id) return;
      final state = _seasonEpisodePager.stateFor(id);
      if (state.isInitialLoading || !_seasonEpisodePager.hasState(id)) return;
      _titleSeasonEnterId = null;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_canUseDetail && (ModalRoute.of(context)?.isCurrent ?? true)) _tvDetailRailKey.currentState?.requestFocus();
    });
  }

  void _previewTitleSeason(MediaItem season) {
    if (!_canUseDetail || _metadata.isSeason || _showEpisodesDirectly) return;
    final index = _seasons.indexWhere((s) => s.id == season.id);
    if (index < 0) return;
    final current = _seasonEpisodePager.stateFor(season.id);
    if (index == _selectedSeasonIndex &&
        _seasonEpisodePager.hasState(season.id) &&
        !current.isInitialLoading &&
        !current.initialLoadFailed) {
      return;
    }
    _titleSeasonPreviewTimer?.cancel();
    _titleSeasonEnterId = null;
    setStateIfMounted(() {
      _selectedSeasonIndex = index;
      _clearTvDetailFocusedEpisode();
      final cached = _seasonEpisodePager.stateFor(season.id);
      _episodes = List.of(cached.items);
      if (!_seasonEpisodePager.hasState(season.id)) _seasonEpisodePager.markFirstPageLoading(season.id);
    });
    // Labels and cached episodes follow focus immediately. Only settled remote
    // highlights start a request, so holding RIGHT does not fetch every season.
    _titleSeasonPreviewTimer = Timer(const Duration(milliseconds: 180), () {
      if (_canUseDetail && _seasons[_selectedSeasonIndex].id == season.id) {
        unawaited(_fetchSeasonEpisodes(_selectedSeasonIndex));
      }
    });
  }

  Future<void> _activateTitleSeason(MediaItem season) async {
    _titleSeasonPreviewTimer?.cancel();
    if (!_canUseDetail) return;
    if (_metadata.isSeason || _showEpisodesDirectly) {
      _tvDetailRailKey.currentState?.requestFocus();
      return;
    }
    final index = _seasons.indexWhere((s) => s.id == season.id);
    if (index < 0) return;
    _titleSeasonEnterId = season.id;
    setStateIfMounted(() {
      _selectedSeasonIndex = index;
      _episodes = const [];
      _clearTvDetailFocusedEpisode();
    });
    await _fetchSeasonEpisodes(index);
    if (_canUseDetail && _selectedSeasonIndex == index) {
      _pruneDistantSeasonPages(index);
      _scheduleTitleSeasonEntry();
    }
  }

  double _titleSectionHeadingHeight(MediaHub hub, double scale) => _isTvDetailEpisodeHub(hub) && _hasTitleSeasonBrowser
      ? SeriesSeasonBrowser.heightFor(context, scale)
      : (TvBrowseRailLayout.hubStripHeightForScale(scale) + (hub.id == _tvDetailActorsHubId ? 24 * scale : 0)) *
            SeriesSeasonBrowser.textFactor(context);

  Widget _titleSeasonPoster(MediaItem season, Size size) {
    final paths = [season.thumbPath, _metadata.thumbPath];
    return _buildOfflineArtworkIfAvailable(
          context,
          artworkPaths: paths,
          width: size.width,
          height: size.height,
          fit: BoxFit.cover,
          imageType: ImageType.poster,
        ) ??
        OptimizedMediaImage.poster(
          client: _getArtworkMediaClient(context),
          imagePath: paths.whereType<String>().firstOrNull,
          width: size.width,
          height: size.height,
          fit: BoxFit.cover,
        );
  }

  Widget _buildTitleSectionHeading(MediaHub hub, double scale) {
    if (_isTvDetailEpisodeHub(hub) && _hasTitleSeasonBrowser) {
      final seasons = _titleSeasonOptions;
      return SeriesSeasonBrowser(
        key: _seriesSeasonsKey,
        seasons: seasons,
        selectedId: _metadata.isSeason ? _metadata.id : _seasons[_selectedSeasonIndex].id,
        scale: scale,
        loading: !_metadata.isSeason && !_showEpisodesDirectly && _isLoadingSeasonEpisodes,
        onActivate: (season) => unawaited(_openSeasonDestination(season)),
        onBrowseEpisodes: (season) => unawaited(_activateTitleSeason(season)),
        onHighlighted: _previewTitleSeason,
        onNavigateUp: _focusTvDetailActionRow,
        onFocus: _onTitleSeasonFocus,
        posterBuilder: _titleSeasonPoster,
        episodeCount: (season) =>
            season.leafCount ??
            (_metadata.isSeason || _showEpisodesDirectly
                ? math.max(_allEpisodesTotal, _episodes.length)
                : _seasonEpisodePager.hasState(season.id) &&
                      !_seasonEpisodePager.stateFor(season.id).isInitialLoading &&
                      !_seasonEpisodePager.stateFor(season.id).initialLoadFailed
                ? _seasonEpisodePager.stateFor(season.id).totalCount
                : null),
        decorateSeason: (season, child) {
          final index = _seasons.indexWhere((s) => s.id == season.id);
          if (index < 0) return child;
          return MediaContextMenu(
            key: _seasonContextMenuKeys.putIfAbsent(index, () => GlobalKey<MediaContextMenuState>()),
            item: season,
            isOffline: widget.isOffline,
            onRefresh: (source) => unawaited(_refreshItemInPlace(source)),
            child: child,
          );
        },
        onSeasonMenu: (season) {
          _titleSeasonEnterId = null;
          final index = _seasons.indexWhere((s) => s.id == season.id);
          if (index >= 0) _showSeasonTabContextMenu(index);
        },
      );
    }
    return SizedBox(
      height: _titleSectionHeadingHeight(hub, scale),
      child: Padding(
        padding: EdgeInsets.only(bottom: hub.id == _tvDetailActorsHubId ? 24 * scale : 0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                _isTvDetailEpisodeHub(hub) ? t.libraries.groupings.episodes : hub.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 23 * scale, fontWeight: FontWeight.w600, letterSpacing: -0.5),
              ),
            ),
            SizedBox(width: 12 * scale),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8 * scale, vertical: 3 * scale),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainer,
                borderRadius: BorderRadius.circular(5 * scale),
              ),
              child: Text(
                '${hub.size}',
                style: TextStyle(fontSize: 12 * scale, color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleEpisodePreview(MediaItem show, {required bool hideSpoilers, required double scale}) {
    return ListenableBuilder(
      listenable: _tvDetailForegroundListenable,
      builder: (context, _) {
        final focused = _tvDetailFocusedEpisode.value;
        final season = _seasons.isEmpty ? null : _seasons[_selectedSeasonIndex];
        final onDeckMatches =
            season == null || _onDeckEpisode?.parentId == season.id || _onDeckEpisode?.parentIndex == season.index;
        final episode = focused ?? (onDeckMatches ? _onDeckEpisode : null) ?? _episodes.firstOrNull;
        if (episode == null) return const SizedBox.shrink();
        final summary = _tvDetailItemDescription(episode, hideSpoilers: hideSpoilers);
        return Semantics(
          key: const ValueKey('title_episode_preview'),
          excludeSemantics: true,
          label: [
            episode.title,
            formatSeasonEpisodeLabel(episode.parentIndex, episode.index),
            ratingsSemanticLabel(mediaRatingsFor(_withProbedRatings(episode))),
            summary,
          ].whereType<String>().where((value) => value.isNotEmpty).join(', '),
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 10 * scale, 32 * scale, 10 * scale),
            padding: EdgeInsets.symmetric(horizontal: 16 * scale, vertical: 10 * scale),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(14 * scale),
              border: Border.all(color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.08)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MediaSelectorThumbnail(
                  width: 132 * scale,
                  height: 74 * scale,
                  thumbnail: _titleEpisodeArtwork(episode, Size(132 * scale, 74 * scale)),
                  isCurrent: false,
                  borderColor: Colors.transparent,
                  radius: 6 * scale,
                  blurThumbnail: hideSpoilers && episode.shouldHideSpoiler,
                ),
                SizedBox(width: 20 * scale),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        episode.title ?? '',
                        key: const ValueKey('tv_detail_episode_title'),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 19 * scale, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 4 * scale),
                      Row(
                        children: [
                          Expanded(
                            child: FittedMetadataLine(
                              key: const ValueKey('title_episode_metadata'),
                              textStyle: TextStyle(
                                fontSize: 13 * scale,
                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                              ),
                              parts: [
                                if (formatSeasonEpisodeLabel(episode.parentIndex, episode.index) case final label?)
                                  MetadataLineText(label, dropPriority: 0),
                                if (episode.durationMs != null)
                                  MetadataLineText(formatDurationTextual(episode.durationMs!), dropPriority: 1),
                                if (mediaRatingsFor(_withProbedRatings(episode)).isNotEmpty)
                                  MetadataLineRatings(mediaRatingsFor(_withProbedRatings(episode)), dropPriority: 2),
                              ],
                            ),
                          ),
                          if (focused != null)
                            Expanded(
                              child: _buildPlaybackTracksStatus(
                                context,
                                show,
                                isTv: true,
                                tvScale: scale,
                                maxWidth: 1040 * scale,
                              ),
                            ),
                        ],
                      ),
                      if (summary != null) ...[
                        SizedBox(height: 5 * scale),
                        Flexible(
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              final lineHeight = MediaQuery.textScalerOf(context).scale(15 * scale) * 1.35;
                              final lines = (constraints.maxHeight / lineHeight).floor().clamp(0, 4);
                              if (lines == 0) return const SizedBox.shrink();
                              return Text(
                                summary,
                                maxLines: lines,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 15 * scale,
                                  height: 1.35,
                                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget? _titleEpisodeArtwork(MediaItem episode, Size size) {
    if (episode.thumbPath == null) return null;
    return _buildOfflineArtworkIfAvailable(
          context,
          artworkPaths: [episode.thumbPath],
          width: size.width,
          height: size.height,
          fit: BoxFit.cover,
          imageType: ImageType.thumb,
        ) ??
        OptimizedMediaImage.thumb(
          client: _getArtworkMediaClient(context),
          imagePath: episode.thumbPath,
          width: size.width,
          height: size.height,
          fit: BoxFit.cover,
        );
  }
}
