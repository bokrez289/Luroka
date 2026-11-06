part of '../media_detail_screen.dart';

/// What the download action button shows for one download state.
class _DownloadButtonSpec {
  final Widget icon;
  final String? tooltip;
  final Color? foregroundColor;

  /// False while the download pipeline owns the item (queueing, queued,
  /// downloading): the button renders disabled.
  final bool interactive;

  const _DownloadButtonSpec({required this.icon, this.tooltip, this.foregroundColor, this.interactive = true});
}

extension _MediaDetailActionButtons on _MediaDetailScreenState {
  Widget _buildActionButtons(MediaItem metadata) {
    // Tie asynchronous playback prompts to the actionable subtree, not the
    // route's State: a deleted first-route detail intentionally stays mounted.
    return Builder(builder: (context) => _buildAvailableActionButtons(context, metadata));
  }

  Widget _buildAvailableActionButtons(BuildContext context, MediaItem metadata) {
    final isTv = PlatformDetector.isTV();
    if (widget.catalogPreviewOnly) {
      return FocusableActionBar(
        key: _detailTracksActionBarKey,
        onNavigateUp: _focusAboveActionRow,
        onNavigateDown: _focusBelowActionRow,
        actions: [
          FocusableAction(
            debugLabel: 'detail_catalog_libraries',
            focusNode: _playButtonFocusNode,
            onPressed: () => unawaited(_chooseCatalogCopy(metadata)),
            child: FilledButton.icon(
              onPressed: () => unawaited(_chooseCatalogCopy(metadata)),
              icon: const Icon(Symbols.video_library_rounded),
              label: Text(t.explore.inTheseLibraries),
            ),
          ),
        ],
      );
    }
    final tvScale = isTv ? TitlePageLayout(MediaQuery.sizeOf(context)).scale : TvLayoutConstants.scaleOf(context);
    final actionSize = isTv ? _tvDetailActionSize * tvScale : 48.0;
    final playButtonLabel = isTv
        ? (metadata.isShow
              ? switch (_showEpisodeState.intent) {
                  ShowPlayIntent.resume => t.common.resume,
                  ShowPlayIntent.next => t.showSchedule.playNext,
                  ShowPlayIntent.replay => t.showSchedule.replay,
                  ShowPlayIntent.play => t.common.play,
                }
              : _getPlayButtonIcon(metadata) == Symbols.resume_rounded
              ? t.common.resume
              : t.common.play)
        : _getPlayButtonLabel(metadata);
    final playIcon = _getPlayButtonIcon(metadata);
    final playActionLabel = playIcon == Symbols.resume_rounded ? t.common.resume : t.common.play;
    final playSemanticsLabel = playButtonLabel.isEmpty ? playActionLabel : playButtonLabel;
    final playIconSize = isTv ? 22 * tvScale : 20.0;
    final family = Theme.of(context).textTheme.labelLarge?.fontFamily;
    final playTextStyle = TextStyle(fontFamily: family, fontSize: isTv ? 14 * tvScale : 16, fontWeight: .w600);
    final trailerTextStyle = TextStyle(fontFamily: family, fontSize: isTv ? 13 * tvScale : 15, fontWeight: .w600);
    final playButtonIcon = AppIcon(playIcon, fill: 1, size: playIconSize);

    // Split "Play Version" segment: a visible second Play segment
    // that surfaces multiple versions without opening the ⋮ menu. Only when
    // the item itself carries a real choice — a movie/episode with more than
    // one inline version — and its server is reachable (offline playback and
    // unreachable servers have at most one playable version, so the picker
    // would offer versions that can't play; see). Transcode-only
    // quality picking deliberately stays in the ⋮ menu: a chevron on every
    // item would stop signaling "multiple versions exist".
    final itemServerId = serverIdOrNull(metadata.serverId);
    final target = _playbackTargetItem(metadata);
    final episodeLabel = isTv && target?.isEpisode == true
        ? formatSeasonEpisodeLabel(target!.parentIndex, target.index)
        : null;
    final versionMetadata = target == null ? metadata : _playbackSources[target.globalKey]?.item ?? target;
    final showVersionSplit =
        !widget.isOffline &&
        (versionMetadata.isMovie || versionMetadata.isEpisode) &&
        (versionMetadata.mediaVersions?.where((version) => version.isPlayable).length ?? 0) > 1 &&
        itemServerId != null &&
        context.read<MultiServerProvider>().serverManager.isClientOnline(itemServerId);
    // M3E split-button geometry: stadium outer corners, small joined inner
    // corners, a hairline gap between the two segments, and a trailing
    // segment narrower than a full action so it reads as Play's appendix.
    final splitGap = isTv ? 2.0 * tvScale : 2.0;
    final versionSegmentWidth = actionSize * 0.75;
    final splitInnerRadius = Radius.circular(isTv ? 8.0 * tvScale : 8.0);
    final splitOuterRadius = Radius.circular(isTv ? 8 * tvScale : actionSize / 2);
    final playShape = showVersionSplit
        ? RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.horizontal(start: splitOuterRadius, end: splitInnerRadius),
          )
        : null;

    Future<void> onPlayPressed() async {
      if (!_canUseDetail) return;
      // For TV shows, play the episode the hero describes (focused on TV,
      // otherwise on-deck); with neither, the first episode of the first season.
      if (metadata.isShow) {
        final episode = _showPlayEpisode();
        if (episode != null) {
          appLogger.d('Playing episode: ${episode.title}');
          if (_showEpisodeState.intent == ShowPlayIntent.replay && _tvDetailFocusedEpisode.value == null) {
            await navigateToVideoPlayer(
              context,
              metadata: episode.copyWith(viewOffsetMs: 0),
              initialPosition: Duration.zero,
              explicitStartPolicy: true,
              resolveWatchState: false,
              preferredAudioTrack: _detailAudioChoices[episode.globalKey],
              preferredSubtitleTrack: _detailSubtitleChoices[episode.globalKey],
              isOffline: widget.isOffline,
              isLaunchCurrent: () => _canUseDetail,
            );
            if (_canUseDetail) await _refreshWatchState();
            return;
          }
          await navigateToVideoPlayerWithRefresh(
            context,
            metadata: episode,
            preferredAudioTrack: _detailAudioChoices[episode.globalKey],
            preferredSubtitleTrack: _detailSubtitleChoices[episode.globalKey],
            isOffline: widget.isOffline,
            onRefresh: _refreshWatchState,
            isLaunchCurrent: () => _canUseDetail,
          );
        } else {
          await _playFirstEpisode();
        }
      } else if (metadata.isSeason) {
        // For seasons, play the first episode
        if (_episodes.isNotEmpty) {
          await navigateToVideoPlayerWithRefresh(
            context,
            metadata: _episodes.first,
            preferredAudioTrack: _detailAudioChoices[_episodes.first.globalKey],
            preferredSubtitleTrack: _detailSubtitleChoices[_episodes.first.globalKey],
            isOffline: widget.isOffline,
            onRefresh: _refreshWatchState,
            isLaunchCurrent: () => _canUseDetail,
          );
        } else {
          await _playFirstEpisode();
        }
      } else {
        appLogger.d('Playing: ${metadata.title}');
        // For movies or episodes, play directly
        await navigateToVideoPlayerWithRefresh(
          context,
          metadata: metadata,
          preferredAudioTrack: _detailAudioChoices[metadata.globalKey],
          preferredSubtitleTrack: _detailSubtitleChoices[metadata.globalKey],
          isOffline: widget.isOffline,
          onRefresh: _refreshWatchState,
          isLaunchCurrent: () => _canUseDetail,
        );
      }
    }

    Future<void> onPlayVersionPressed() async {
      if (!_canUseDetail) return;
      final didNavigate = await promptAndPlayVersion(context, versionMetadata);
      // Same post-playback refresh plain Play gets from
      // navigateToVideoPlayerWithRefresh; the split segment is online-only.
      if (didNavigate && mounted) unawaited(_refreshWatchState());
    }

    final primaryTrailer = _getPrimaryTrailer();

    final isKeyboardMode = InputModeTracker.isKeyboardMode(context);
    final colorScheme = Theme.of(context).colorScheme;

    // In keyboard/d-pad mode, focused buttons get a prominent style.
    // overlayColor is set to transparent to prevent the Material focus
    // overlay from dimming the background color we set.
    final focusBg = colorScheme.inverseSurface;
    final focusFg = colorScheme.onInverseSurface;
    final tonalBg = colorScheme.secondaryContainer;
    final idleBg = isTv ? Colors.transparent : tonalBg;
    final tonalFg = colorScheme.onSecondaryContainer;
    final noOverlay = WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.focused)) return Colors.transparent;
      return null; // default for other states
    });

    ButtonStyle actionButtonStyle({
      Color? foregroundColor,
      EdgeInsetsGeometry? padding,
      bool showFocus = false,
      OutlinedBorder? shape,
    }) {
      if (!isKeyboardMode && !isTv) {
        if (padding != null) {
          return FilledButton.styleFrom(padding: padding, shape: shape);
        }
        return IconButton.styleFrom(
          minimumSize: const Size(48, 48),
          maximumSize: const Size(48, 48),
          foregroundColor: foregroundColor,
        );
      }

      return ButtonStyle(
        padding: padding != null ? WidgetStatePropertyAll(padding) : null,
        minimumSize: WidgetStatePropertyAll(padding == null ? Size.square(actionSize) : Size(0, actionSize)),
        maximumSize: padding == null ? WidgetStatePropertyAll(Size.square(actionSize)) : null,
        fixedSize: padding == null ? WidgetStatePropertyAll(Size.square(actionSize)) : null,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        overlayColor: noOverlay,
        backgroundColor: WidgetStatePropertyAll(showFocus ? focusBg : idleBg),
        foregroundColor: WidgetStatePropertyAll(showFocus ? focusFg : foregroundColor ?? tonalFg),
        shape: shape != null
            ? WidgetStatePropertyAll(shape)
            : isTv
            ? WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8 * tvScale)))
            : null,
      );
    }

    // Plays the resolved trailer. Shared by the row's trailer button and the
    // ⋮ menu item so the trailer stays reachable when the row hides its button.
    final VoidCallback? onPlayTrailer = primaryTrailer != null
        ? () =>
              unawaited(navigateToVideoPlayer(context, metadata: primaryTrailer, isLaunchCurrent: () => _canUseDetail))
        : _remoteTrailerUrl == null
        ? null
        : () => unawaited(_openOnlinePreview(_remoteTrailerUrl!, t.detailComposition.trailer));

    final subtitleServerId = serverIdOrNull(metadata.serverId);
    final canSearchSubtitles =
        !widget.isOffline &&
        (metadata.isMovie || metadata.isEpisode) &&
        subtitleServerId != null &&
        context.tryGetMediaClientForServer(ServerId(subtitleServerId)) is OnlineSubtitleTransport;
    final VoidCallback? onSearchSubtitles = canSearchSubtitles
        ? () => unawaited(_showSubtitleSearch(metadata, subtitleServerId))
        : null;

    final gap = isTv ? 8.0 * tvScale : 12.0;

    Widget playButton(FocusableActionBuildState state) {
      return Semantics(
        label: '$playSemanticsLabel${episodeLabel == null ? '' : ' · $episodeLabel'}',
        button: true,
        onTap: onPlayPressed,
        excludeSemantics: true,
        child: SizedBox(
          height: actionSize,
          child: FilledButton(
            onPressed: onPlayPressed,
            style:
                actionButtonStyle(
                  showFocus: state.showFocus,
                  padding: .symmetric(horizontal: isTv ? 17 * tvScale : 16, vertical: isTv ? 9 * tvScale : 0),
                  shape: playShape,
                ).copyWith(
                  backgroundColor: WidgetStatePropertyAll(focusBg),
                  foregroundColor: WidgetStatePropertyAll(focusFg),
                ),
            child: playButtonLabel.isNotEmpty
                ? Row(
                    mainAxisSize: .min,
                    children: [
                      playButtonIcon,
                      SizedBox(width: isTv ? 7 * tvScale : 8),
                      if (episodeLabel == null)
                        Text(playButtonLabel, style: playTextStyle)
                      else
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(playButtonLabel, style: playTextStyle.copyWith(fontSize: 12 * tvScale, height: 1.1)),
                            Text(episodeLabel, style: playTextStyle.copyWith(fontSize: 10 * tvScale, height: 1.1)),
                          ],
                        ),
                    ],
                  )
                : playButtonIcon,
          ),
        ),
      );
    }

    // The trailing segment of the split Play button. A plain FilledButton
    // (not IconButton) so both segments share color roles and focus styling.
    Widget versionButton(FocusableActionBuildState state) {
      return Semantics(
        label: t.mediaMenu.playVersion,
        button: true,
        onTap: onPlayVersionPressed,
        excludeSemantics: true,
        child: Tooltip(
          message: t.mediaMenu.playVersion,
          child: SizedBox(
            width: versionSegmentWidth,
            height: actionSize,
            child: FilledButton(
              onPressed: onPlayVersionPressed,
              style: actionButtonStyle(
                showFocus: state.showFocus,
                padding: .zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.horizontal(start: splitInnerRadius, end: splitOuterRadius),
                ),
              ),
              child: AppIcon(
                isTv ? Symbols.video_file_rounded : Symbols.keyboard_arrow_down_rounded,
                fill: 1,
                size: playIconSize,
              ),
            ),
          ),
        ),
      );
    }

    Widget iconActionButton(
      FocusableActionBuildState state, {
      required Widget icon,
      required VoidCallback? onPressed,
      String? tooltip,
      Color? foregroundColor,
      String? label,
    }) {
      if (isTv && label != null) {
        return FilledButton.tonalIcon(
          onPressed: onPressed,
          icon: icon,
          label: Text(label, style: trailerTextStyle),
          style: actionButtonStyle(
            showFocus: state.showFocus,
            foregroundColor: foregroundColor,
            padding: EdgeInsets.symmetric(horizontal: 14 * tvScale),
          ),
        );
      }
      return IconButton.filledTonal(
        onPressed: onPressed,
        icon: icon,
        tooltip: tooltip,
        iconSize: isTv ? 21 * tvScale : 20,
        style: actionButtonStyle(foregroundColor: foregroundColor, showFocus: state.showFocus),
      );
    }

    Widget trailerButton(FocusableActionBuildState state) {
      return Semantics(
        label: t.tooltips.playTrailer,
        button: true,
        onTap: onPlayTrailer,
        excludeSemantics: true,
        child: SizedBox(
          height: actionSize,
          child: FilledButton.tonalIcon(
            onPressed: onPlayTrailer,
            style: actionButtonStyle(
              showFocus: state.showFocus,
              padding: .symmetric(horizontal: isTv ? 16 * tvScale : 14),
            ),
            icon: AppIcon(Symbols.theaters_rounded, fill: 1, size: playIconSize),
            label: Text(isTv ? t.detailComposition.trailer : t.tooltips.playTrailer, style: trailerTextStyle),
          ),
        ),
      );
    }

    final playAction = FocusableAction(
      debugLabel: 'detail_play',
      focusNode: _playButtonFocusNode,
      autofocus: isKeyboardMode,
      onPressed: onPlayPressed,
      builder: (context, state) => playButton(state),
    );

    final versionAction = showVersionSplit
        ? FocusableAction(
            debugLabel: 'detail_play_version',
            spacingBefore: splitGap,
            onPressed: onPlayVersionPressed,
            builder: (context, state) => versionButton(state),
          )
        : null;

    final libraryCopiesAction = isTv && widget.catalogCopies.length > 1
        ? FocusableAction(
            debugLabel: 'detail_catalog_libraries',
            onPressed: () => unawaited(_chooseCatalogCopy(metadata)),
            builder: (context, state) => iconActionButton(
              state,
              icon: const AppIcon(Symbols.video_library_rounded),
              label: t.explore.inTheseLibraries,
              onPressed: () => unawaited(_chooseCatalogCopy(metadata)),
            ),
          )
        : null;

    Future<void> restart() async {
      if (!_canUseDetail || target == null) return;
      await navigateToVideoPlayer(
        context,
        metadata: target.copyWith(viewOffsetMs: 0),
        initialPosition: Duration.zero,
        resolveWatchState: false,
        explicitStartPolicy: true,
        isOffline: widget.isOffline,
        isLaunchCurrent: () => _canUseDetail,
        preferredAudioTrack: _detailAudioChoices[target.globalKey],
        preferredSubtitleTrack: _detailSubtitleChoices[target.globalKey],
      );
      if (_canUseDetail) await _refreshWatchState();
    }

    final restartAction = isTv && target?.hasActiveProgress == true
        ? FocusableAction(
            debugLabel: 'detail_restart',
            onPressed: restart,
            builder: (context, state) => iconActionButton(
              state,
              icon: AppIcon(Symbols.replay_rounded, size: playIconSize),
              label: t.detailComposition.startOver,
              tooltip: t.mediaMenu.playFromBeginning,
              onPressed: restart,
            ),
          )
        : null;
    final targetClient = target?.serverId == null
        ? null
        : context.tryGetMediaClientForServer(ServerId(target!.serverId!));
    final canChooseQuality =
        (isTv || PlatformDetector.isMobile(context)) &&
        !widget.isOffline &&
        target != null &&
        targetClient?.capabilities.videoTranscoding == true &&
        context.read<MultiServerProvider>().serverManager.isClientOnline(ServerId(target.serverId!));
    Future<void> quality() async {
      if (!_canUseDetail || target == null) return;
      final didPlay = await promptAndPlayVersion(context, versionMetadata);
      if (_canUseDetail && didPlay) await _refreshWatchState();
    }

    final qualityAction = canChooseQuality
        ? FocusableAction(
            debugLabel: 'detail_quality',
            onPressed: quality,
            builder: (context, state) => iconActionButton(
              state,
              icon: AppIcon(Symbols.high_quality_rounded, size: playIconSize),
              tooltip: t.detailComposition.streamingQuality,
              onPressed: quality,
            ),
          )
        : null;

    final trailerAction = onPlayTrailer == null
        ? null
        : FocusableAction(
            debugLabel: 'detail_trailer',
            onPressed: onPlayTrailer,
            builder: (context, state) => trailerButton(state),
          );

    final subtitleAction = onSearchSubtitles == null
        ? null
        : FocusableAction(
            debugLabel: 'detail_subtitles',
            onPressed: onSearchSubtitles,
            builder: (context, state) => iconActionButton(
              state,
              onPressed: onSearchSubtitles,
              icon: const AppIcon(Symbols.subtitles_rounded, fill: 1),
              tooltip: t.videoControls.searchSubtitles,
            ),
          );

    final shuffleAction = (metadata.isShow || metadata.isSeason)
        ? FocusableAction(
            debugLabel: 'detail_shuffle',
            onPressed: () async {
              await _handleShufflePlayWithQueue(context, metadata);
            },
            builder: (context, state) => iconActionButton(
              state,
              onPressed: () async {
                await _handleShufflePlayWithQueue(context, metadata);
              },
              icon: const AppIcon(Symbols.shuffle_rounded, fill: 1),
              tooltip: t.tooltips.shufflePlay,
              label: isTv ? t.common.shuffle : null,
            ),
          )
        : null;

    final downloadAction = !widget.isOffline && !PlatformDetector.isAppleTV()
        ? FocusableAction(
            debugLabel: 'detail_download',
            onPressed: () => unawaited(_handleDownloadButtonPressed(context, metadata)),
            builder: (context, state) =>
                _buildDownloadButton(metadata, actionButtonStyle, tvScale, showFocus: state.showFocus),
          )
        : null;

    final watchedAction = FocusableAction(
      debugLabel: 'detail_watched',
      onPressed: () => unawaited(_handleWatchedTogglePressed(metadata)),
      builder: (context, state) => isTv
          ? iconActionButton(
              state,
              icon: AppIcon(metadata.isWatched ? Symbols.check_circle_rounded : Symbols.check_rounded),
              label: metadata.isWatched ? t.detailComposition.watched : t.detailComposition.unwatched,
              tooltip: metadata.isWatched ? t.tooltips.markAsUnwatched : t.tooltips.markAsWatched,
              onPressed: () => unawaited(_handleWatchedTogglePressed(metadata)),
            )
          : _buildWatchedToggleButton(metadata, actionButtonStyle, tvScale, showFocus: state.showFocus),
    );

    final favoriteClient = itemServerId == null ? null : context.tryGetMediaClientForServer(ServerId(itemServerId));
    Future<void> toggleFavorite() async {
      if (!_canUseDetail || favoriteClient == null) return;
      try {
        await favoriteClient.setFavorite(metadata, metadata.isFavorite != true);
        if (_canUseDetail) await _refreshItemInPlace(metadata);
      } catch (error) {
        if (context.mounted) showErrorDialog(context, t.errors.connectionFailed);
      }
    }

    final favoriteAction = isTv && !widget.isOffline && favoriteClient?.capabilities.userFavorites == true
        ? FocusableAction(
            debugLabel: 'detail_favorite',
            onPressed: toggleFavorite,
            builder: (context, state) => iconActionButton(
              state,
              icon: AppIcon(Symbols.favorite_rounded, fill: metadata.isFavorite == true ? 1 : 0),
              label: t.rateSheet.favorite,
              onPressed: toggleFavorite,
            ),
          )
        : null;
    final playAllAction = isTv && metadata.isShow
        ? FocusableAction(
            debugLabel: 'detail_play_all',
            onPressed: () => unawaited(_playFirstEpisode(fromBeginning: true)),
            builder: (context, state) => iconActionButton(
              state,
              icon: const AppIcon(Symbols.playlist_play_rounded),
              label: t.showSchedule.watchBeginning,
              onPressed: () => unawaited(_playFirstEpisode(fromBeginning: true)),
            ),
          )
        : null;

    // Watchlist toggle for the connected catalog sources (Trakt, MAL).
    // Membership reads each source's session snapshot — no per-open API
    // call. Filled when the item is on ANY source's watchlist; with several
    // candidates the press opens a source chooser.
    // Not in the compact tiers: on narrow screens it drops away first and
    // stays reachable through the ⋮ menu's watchlist entry.
    final watchlistStates = [
      for (final candidate in _watchlistCandidates) candidate.source.isOnWatchlist(metadata.kind, candidate.ids),
    ];
    final bool? onWatchlist = watchlistStates.contains(true)
        ? true
        : watchlistStates.contains(false)
        ? false
        : null;
    final watchlistAction = _watchlistCandidates.isEmpty
        ? null
        : FocusableAction(
            debugLabel: 'detail_watchlist',
            onPressed: () => unawaited(_handleWatchlistTogglePressed(metadata)),
            builder: (context, state) => KeyedSubtree(
              key: _watchlistButtonKey,
              child: iconActionButton(
                state,
                onPressed: onWatchlist == null ? null : () => unawaited(_handleWatchlistTogglePressed(metadata)),
                icon: AppIcon(
                  (onWatchlist ?? false) ? Symbols.bookmark_added_rounded : Symbols.bookmark_add_rounded,
                  fill: 1,
                ),
                tooltip: (onWatchlist ?? false) ? t.explore.removeFromWatchlist : t.explore.addToWatchlist,
                label: t.titlePage.watchlist,
              ),
            ),
          );

    void showMoreActions() => _contextMenuKey.currentState?.showContextMenu(context);

    final moreActionsAction = widget.isOffline
        ? null
        : FocusableAction(
            debugLabel: 'detail_more',
            onPressed: showMoreActions,
            builder: (context, state) => _buildMoreActionsButton(
              metadata,
              actionButtonStyle,
              tvScale,
              onPlayTrailer: onPlayTrailer,
              onSearchSubtitles: onSearchSubtitles,
              showFocus: state.showFocus,
            ),
          );

    if (PlatformDetector.isMobile(context)) {
      Widget secondary({required Widget icon, required String label}) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(color: colorScheme.onSurfaceVariant),
          ),
        ],
      );
      return Column(
        key: const ValueKey('mobile_title_actions'),
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MobilePlaybackActions(
            label: playActionLabel,
            contextLabel: metadata.isShow ? playButtonLabel : null,
            icon: playButtonIcon,
            onPlay: () => unawaited(onPlayPressed()),
            onRestart: target?.hasActiveProgress == true ? () => unawaited(restart()) : null,
            playFocus: _playButtonFocusNode,
            onNavigateDown: _focusBelowActionRow,
          ),
          if (target?.hasActiveProgress == true && (target?.durationMs ?? 0) > 0) ...[
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                key: const ValueKey('mobile_title_progress'),
                value: (target!.viewOffsetMs! / target.durationMs!).clamp(0.0, 1.0),
                minHeight: 3,
              ),
            ),
          ],
          const SizedBox(height: 12),
          LayoutBuilder(
            builder: (context, constraints) => Wrap(
              spacing: 4,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: <Widget>[
                if (downloadAction != null)
                  Consumer<DownloadProvider>(
                    builder: (context, downloads, _) {
                      final spec = _downloadButtonSpec(context, downloads, metadata, iconSize: 20);
                      return secondary(
                        icon: IconButton.filledTonal(
                          onPressed: spec.interactive
                              ? () => unawaited(_handleDownloadButtonPressed(context, metadata))
                              : null,
                          icon: spec.icon,
                          tooltip: spec.tooltip,
                          style: actionButtonStyle(foregroundColor: spec.foregroundColor, showFocus: false),
                        ),
                        label: t.downloads.downloadNow,
                      );
                    },
                  ),
                if (onPlayTrailer != null)
                  secondary(
                    icon: IconButton.filledTonal(
                      onPressed: onPlayTrailer,
                      tooltip: t.tooltips.playTrailer,
                      icon: const AppIcon(Symbols.theaters_rounded),
                    ),
                    label: t.detailComposition.trailer,
                  ),
                if ((showVersionSplit || canChooseQuality) && !metadata.isShow && !metadata.isSeason)
                  secondary(
                    icon: IconButton.filledTonal(
                      onPressed: () async {
                        final choice = await showAdaptiveAppMenu<String>(
                          context,
                          title: t.mobileUi.qualityAndVersions,
                          position: Offset(MediaQuery.sizeOf(context).width / 2, 100),
                          entries: [
                            if (showVersionSplit)
                              AppMenuItem(
                                value: 'versions',
                                label: t.mobileUi.fileVersions,
                                icon: Symbols.video_file_rounded,
                              ),
                            if (canChooseQuality)
                              AppMenuItem(
                                value: 'quality',
                                label: t.mobileUi.streamingQuality,
                                icon: Symbols.high_quality_rounded,
                              ),
                          ],
                        );
                        if (!_canUseDetail || !context.mounted) return;
                        if (choice == 'quality') {
                          await quality();
                        } else if (choice == 'versions') {
                          final versions = versionMetadata.mediaVersions!;
                          final selected = await showVersionPickerDialog(context, versions, t.mobileUi.fileVersions);
                          if (selected == null || !_canUseDetail) return;
                          await saveMediaVersionPreferenceFor(versionMetadata, index: selected, versions: versions);
                        }
                      },
                      tooltip: t.mobileUi.qualityAndVersions,
                      icon: const AppIcon(Symbols.high_quality_rounded),
                    ),
                    label: t.settings.quality,
                  ),
                if (!widget.isOffline &&
                    target != null &&
                    !metadata.isShow &&
                    !metadata.isSeason &&
                    !metadata.isEpisode)
                  secondary(
                    icon: IconButton.filledTonal(
                      key: const ValueKey('mobile_title_tracks'),
                      onPressed: () => unawaited(_openDetailTracks(context, metadata)),
                      tooltip: t.videoControls.tracksButton,
                      icon: const AppIcon(Symbols.subtitles_rounded),
                    ),
                    label: t.videoControls.tracksButton,
                  ),
                if (moreActionsAction != null)
                  secondary(
                    icon: _buildMoreActionsButton(
                      metadata,
                      actionButtonStyle,
                      tvScale,
                      onPlayTrailer: onPlayTrailer,
                      onSearchSubtitles: onSearchSubtitles,
                    ),
                    label: t.titlePage.more,
                  ),
              ].map((action) => SizedBox(width: (constraints.maxWidth - 16) / 5, child: action)).toList(),
            ),
          ),
          if (metadata.isEpisode && !widget.isOffline) ...[
            const SizedBox(height: 16),
            _buildMobileEpisodeTracks(context, metadata),
          ] else if (target != null && !metadata.isShow && !metadata.isSeason) ...[
            const SizedBox(height: 8),
            _buildPlaybackTracksStatus(context, metadata, isTv: false, tvScale: tvScale, maxWidth: double.infinity),
          ],
        ],
      );
    }

    final allActions = <FocusableAction>[
      playAction,
      ?libraryCopiesAction,
      ?versionAction,
      ?trailerAction,
      ?subtitleAction,
      ?shuffleAction,
      ?downloadAction,
      watchedAction,
      ?watchlistAction,
      ?moreActionsAction,
    ];
    final tracksAction = !widget.isOffline && _playbackTargetItem(metadata) != null
        ? FocusableAction(
            debugLabel: 'detail_tracks',
            onPressed: () =>
                unawaited(_openDetailTracks(_detailTracksActionBarKey.currentContext ?? context, metadata)),
            builder: (context, state) => FilledButton.tonalIcon(
              onPressed: () => unawaited(_openDetailTracks(context, metadata)),
              style: actionButtonStyle(
                showFocus: state.showFocus,
                padding: EdgeInsets.symmetric(horizontal: 14 * tvScale),
              ),
              icon: AppIcon(Symbols.subtitles_rounded, size: playIconSize),
              label: Text(t.videoControls.tracksButton, style: trailerTextStyle),
            ),
          )
        : null;
    final episodesAction = isTv && (metadata.isShow || metadata.isSeason)
        ? FocusableAction(
            debugLabel: 'detail_episodes',
            onPressed: _focusBelowActionRow,
            builder: (context, state) => FilledButton.tonalIcon(
              onPressed: _focusBelowActionRow,
              style: actionButtonStyle(
                showFocus: state.showFocus,
                padding: EdgeInsets.symmetric(horizontal: 14 * tvScale),
              ),
              icon: AppIcon(Symbols.video_library_rounded, size: playIconSize),
              label: Text(t.libraries.groupings.episodes, style: trailerTextStyle),
            ),
          )
        : null;

    double playButtonWidthEstimate() {
      if (playButtonLabel.isEmpty) return 64.0;
      final textPainter = TextPainter(
        text: TextSpan(text: playButtonLabel, style: playTextStyle),
        textScaler: MediaQuery.textScalerOf(context),
        maxLines: 1,
        textDirection: Directionality.of(context),
      )..layout();
      final textWidth = textPainter.width;
      textPainter.dispose();
      final horizontalPadding = isTv ? 34.0 * tvScale : 32.0;
      final iconGap = isTv ? 7.0 * tvScale : 8.0;
      return (horizontalPadding + playIconSize + iconGap + textWidth).clamp(64.0, double.infinity).toDouble();
    }

    final estimatedPlayWidth = playButtonWidthEstimate();
    double trailerButtonWidthEstimate() {
      final textPainter = TextPainter(
        text: TextSpan(text: isTv ? t.detailComposition.trailer : t.tooltips.playTrailer, style: trailerTextStyle),
        textScaler: MediaQuery.textScalerOf(context),
        maxLines: 1,
        textDirection: Directionality.of(context),
      )..layout();
      final width = textPainter.width;
      textPainter.dispose();
      return (width + playIconSize + (isTv ? 40 * tvScale : 36)).clamp(actionSize, double.infinity).toDouble();
    }

    final estimatedTrailerWidth = trailerButtonWidthEstimate();
    double labeledWidth(String label) {
      final painter = TextPainter(
        text: TextSpan(text: label, style: trailerTextStyle),
        textScaler: MediaQuery.textScalerOf(context),
        maxLines: 1,
        textDirection: Directionality.of(context),
      )..layout();
      final width = painter.width + playIconSize + 38 * tvScale;
      painter.dispose();
      return width;
    }

    double estimatedRowWidth(List<FocusableAction> actions) {
      if (actions.isEmpty) return 0;
      var width = estimatedPlayWidth;
      for (var i = 1; i < actions.length; i++) {
        final actionWidth = identical(actions[i], versionAction)
            ? versionSegmentWidth
            : identical(actions[i], trailerAction)
            ? estimatedTrailerWidth
            : identical(actions[i], libraryCopiesAction)
            ? labeledWidth(t.explore.inTheseLibraries)
            : isTv && identical(actions[i], watchlistAction)
            ? labeledWidth(t.titlePage.watchlist)
            : isTv && identical(actions[i], episodesAction)
            ? labeledWidth(t.libraries.groupings.episodes)
            : isTv && identical(actions[i], moreActionsAction)
            ? labeledWidth(t.titlePage.more)
            : isTv && identical(actions[i], shuffleAction)
            ? labeledWidth(t.common.shuffle)
            : isTv && identical(actions[i], favoriteAction)
            ? labeledWidth(t.rateSheet.favorite)
            : isTv && identical(actions[i], playAllAction)
            ? labeledWidth(t.showSchedule.watchBeginning)
            : identical(actions[i], tracksAction)
            ? labeledWidth(t.videoControls.tracksButton)
            : isTv && identical(actions[i], watchedAction)
            ? labeledWidth(metadata.isWatched ? t.detailComposition.watched : t.detailComposition.unwatched)
            : isTv && identical(actions[i], restartAction)
            ? labeledWidth(t.detailComposition.startOver)
            : actionSize;
        width += (actions[i].spacingBefore ?? gap) + actionWidth;
      }
      return width;
    }

    List<FocusableAction> compactActionsFor(double maxWidth) {
      if (widget.isOffline) {
        final compact = <FocusableAction>[playAction, watchedAction];
        if (maxWidth.isFinite && estimatedRowWidth(compact) > maxWidth) return [playAction];
        return compact;
      }

      final medium = <FocusableAction>[
        playAction,
        ?versionAction,
        ?tracksAction,
        ?trailerAction,
        ?subtitleAction,
        ?downloadAction,
        watchedAction,
        ?moreActionsAction,
      ];
      if (!maxWidth.isFinite || estimatedRowWidth(medium) <= maxWidth) return medium;

      final compact = <FocusableAction>[playAction, ?versionAction, ?trailerAction, watchedAction, ?moreActionsAction];
      if (estimatedRowWidth(compact) <= maxWidth) return compact;

      final minimal = <FocusableAction>[playAction, ?versionAction, ?trailerAction, ?moreActionsAction];
      if (estimatedRowWidth(minimal) <= maxWidth) return minimal;

      final trailerAndMore = <FocusableAction>[playAction, ?trailerAction, ?moreActionsAction];
      if (estimatedRowWidth(trailerAndMore) <= maxWidth) return trailerAndMore;

      final trailerOnly = <FocusableAction>[playAction, ?trailerAction];
      if (estimatedRowWidth(trailerOnly) <= maxWidth) return trailerOnly;

      // At phone widths too narrow for the labeled trailer action, its menu
      // entry remains available rather than overflowing the action bar.
      return [playAction, ?moreActionsAction];
    }

    Widget actionBar(List<FocusableAction> actions) {
      return FocusableActionBar(
        key: _detailTracksActionBarKey,
        actions: actions,
        spacing: gap,
        onFocusChange: isTv ? _setTvDetailActionRowFocus : null,
        onNavigateUp: _focusAboveActionRow,
        onNavigateDown: _focusBelowActionRow,
      );
    }

    // Off TV the track status sits at the row's far end, right-aligned so it
    // reads as information about the row rather than a sixth button. It takes
    // only the leftover width and is the first thing to go, so the buttons
    // never compact because of it. On TV the hero is a 60% column, so the
    // status is placed at the screen edge by _buildTvDetailScreen instead.
    Widget? tracksStatusFor(List<FocusableAction> actions, double maxWidth) {
      if (isTv || !maxWidth.isFinite) return null;
      final remaining = maxWidth - estimatedRowWidth(actions) - gap;
      if (remaining < 160) return null;
      return _buildPlaybackTracksStatus(context, metadata, isTv: false, tvScale: tvScale, maxWidth: remaining);
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        // TV screens are wide and D-pad focus should see every direct action.
        // On smaller online screens, hidden actions remain available from ⋮.
        final List<FocusableAction> actions;
        if (isTv) {
          actions = widget.isOffline
              ? [playAction, ?restartAction, ?episodesAction, watchedAction]
              : [
                  playAction,
                  ?libraryCopiesAction,
                  ?restartAction,
                  ?versionAction,
                  ?qualityAction,
                  ?playAllAction,
                  ?shuffleAction,
                  ?trailerAction,
                  ?favoriteAction,
                  watchedAction,
                  ?watchlistAction,
                  ?moreActionsAction,
                ];
          for (final optional in [
            watchlistAction,
            shuffleAction,
            favoriteAction,
            playAllAction,
            trailerAction,
            qualityAction,
            versionAction,
          ]) {
            if (estimatedRowWidth(actions) > maxWidth && optional != null) actions.remove(optional);
          }
        } else {
          actions = !maxWidth.isFinite || estimatedRowWidth(allActions) <= maxWidth
              ? allActions
              : compactActionsFor(maxWidth);
        }
        final status = tracksStatusFor(actions, maxWidth);
        if (status == null) return actionBar(actions);
        return SizedBox(
          height: actionSize,
          child: Row(
            children: [
              actionBar(actions),
              Expanded(
                child: Align(alignment: .centerRight, child: status),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _chooseCatalogCopy(MediaItem metadata) async {
    if (!_canUseDetail) return;
    final selected = await chooseMovieCopy(context, widget.catalogCopies, includeUnselectedSources: true);
    if (!mounted || !_canUseDetail || selected == null) return;
    final sources = context.read<HiddenLibrariesProvider?>();
    if (!(sources?.allowsItem(selected) ?? true)) {
      final choice = await showAdaptiveAppMenu<String>(
        context,
        title: selected.libraryTitle ?? selected.serverName ?? selected.displayTitle,
        focusFirstItem: true,
        entries: [
          AppMenuItem(value: 'once', icon: Symbols.play_arrow_rounded, label: t.sourceLibraries.playOnce),
          if (selected.libraryGlobalKey != null)
            AppMenuItem(value: 'include', icon: Symbols.add_rounded, label: t.sourceLibraries.includeLibrary),
        ],
      );
      if (!mounted || !_canUseDetail || choice == null) return;
      if (choice == 'once') {
        await navigateToMediaItem(context, selected, playDirectly: true);
        return;
      }
      if (choice != 'include' || selected.libraryGlobalKey == null || sources == null) return;
      await sources.setSelectedSourceLibraries({...?sources.selectedSourceLibraries, selected.libraryGlobalKey!});
      await sources.unhideLibrary(selected.libraryGlobalKey!);
      if (!mounted || !_canUseDetail) return;
    } else if (selected.globalKey == metadata.globalKey && !widget.catalogPreviewOnly) {
      return;
    }
    unawaited(
      Navigator.of(context).pushReplacement(
        mediaDetailRoute(metadata: selected, showLibrarySource: true, catalogCopies: widget.catalogCopies),
      ),
    );
  }

  Future<void> _handleWatchlistTogglePressed(MediaItem metadata) async {
    if (!_canUseDetail) return;
    final candidates = _watchlistCandidates;
    if (candidates.isEmpty || _watchlistMutationInFlight) return;
    // Parity with the disabled pointer button: while every membership is
    // still unknown, a dpad press kicks the snapshot loads instead of
    // opening a chooser whose selection would silently no-op.
    if (candidates.every((c) => c.source.isOnWatchlist(metadata.kind, c.ids) == null)) {
      for (final candidate in candidates) {
        unawaited(candidate.source.ensureWatchlistLoaded());
      }
      return;
    }
    if (candidates.length == 1) {
      await _toggleWatchlistOn(metadata, candidates.single);
      return;
    }

    // Several providers can hold this item: choose per press. Each entry
    // shows that source's current membership.
    final renderBox = _watchlistButtonKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return;
    final choice = await showWatchlistSourceChooser(
      context,
      kind: metadata.kind,
      candidates: candidates,
      anchorRect: renderBox.localToGlobal(Offset.zero) & renderBox.size,
      focusFirstItem: true,
    );
    if (choice == null || !_canUseDetail) return;
    await _toggleWatchlistOn(metadata, choice);
  }

  Future<void> _toggleWatchlistOn(MediaItem metadata, WatchlistCandidate candidate) async {
    if (!_canUseDetail) return;
    final current = candidate.source.isOnWatchlist(metadata.kind, candidate.ids);
    if (current == null || _watchlistMutationInFlight) return;
    _watchlistMutationInFlight = true;
    try {
      // Optimistic inside the source; the row/screens listening to
      // watchlistChanges (including this one) rebuild immediately.
      await mutateWatchlistMembership(metadata.kind, candidate, add: !current);
    } catch (_) {
      if (mounted) showErrorDialog(context, t.explore.watchlistUpdateFailed);
    } finally {
      _watchlistMutationInFlight = false;
    }
  }

  Future<void> _handleWatchedTogglePressed(MediaItem metadata) async {
    if (!_canUseDetail) return;
    try {
      final isWatched = metadata.isWatched;
      final outcome = await WatchActions.setWatched(context, metadata, watched: !isWatched, offline: widget.isOffline);
      if (!mounted || !_canUseDetail) return;
      switch (outcome) {
        case WatchMarkOutcome.queuedOffline:
        case WatchMarkOutcome.marked:
          _watchStateChanged = true;
        case WatchMarkOutcome.skipped:
          break;
      }
    } catch (e) {
      if (mounted) {
        showErrorDialog(context, t.messages.errorLoading(error: localizedErrorReason(e)));
      }
    }
  }

  Widget _buildWatchedToggleButton(
    MediaItem metadata,
    ButtonStyle Function({Color? foregroundColor, EdgeInsetsGeometry? padding, required bool showFocus})
    actionButtonStyle,
    double tvScale, {
    bool showFocus = false,
  }) {
    return IconButton.filledTonal(
      onPressed: () => unawaited(_handleWatchedTogglePressed(metadata)),
      icon: AppIcon(metadata.isWatched ? Symbols.remove_done_rounded : Symbols.check_rounded, fill: 1),
      tooltip: metadata.isWatched ? t.tooltips.markAsUnwatched : t.tooltips.markAsWatched,
      iconSize: PlatformDetector.isTV() ? 21 * tvScale : 20,
      style: actionButtonStyle(showFocus: showFocus),
    );
  }

  Widget _buildMoreActionsButton(
    MediaItem metadata,
    ButtonStyle Function({Color? foregroundColor, EdgeInsetsGeometry? padding, required bool showFocus})
    actionButtonStyle,
    double tvScale, {
    VoidCallback? onPlayTrailer,
    VoidCallback? onSearchSubtitles,
    bool showFocus = false,
  }) {
    return MediaContextMenu(
      key: _contextMenuKey,
      compactDetailMenu: PlatformDetector.isTV(),
      item: metadata,
      onRefresh: (source) => unawaited(_refreshItemInPlace(source)),
      onPlayTrailer: PlatformDetector.isMobile(context) ? null : onPlayTrailer,
      hiddenActionValues: PlatformDetector.isMobile(context)
          ? {
              if (!widget.isOffline) 'download',
              if (_playbackTargetItem(metadata)?.hasActiveProgress == true) 'play_from_beginning',
              if (metadata.isMovie || metadata.isEpisode) 'play_version',
            }
          : const {},
      extraEntries: [
        if (metadata.isShow)
          MediaMenuExtraEntry(
            icon: Symbols.restart_alt_rounded,
            label: t.showSchedule.watchBeginning,
            onSelected: () => unawaited(_playFirstEpisode(fromBeginning: true)),
          ),
        if (onSearchSubtitles != null && !PlatformDetector.isMobile(context))
          MediaMenuExtraEntry(
            icon: Symbols.subtitles_rounded,
            label: t.videoControls.searchSubtitles,
            onSelected: onSearchSubtitles,
          ),
      ],
      child: Builder(
        builder: (buttonContext) {
          void open() {
            if (!_canUseDetail) return;
            final renderBox = buttonContext.findRenderObject() as RenderBox?;
            if (renderBox != null) {
              final position = renderBox.localToGlobal(renderBox.size.center(Offset.zero));
              _contextMenuKey.currentState?.showContextMenu(buttonContext, position: position);
            }
          }

          if (PlatformDetector.isTV()) {
            return FilledButton.tonalIcon(
              onPressed: open,
              icon: AppIcon(Symbols.more_horiz_rounded, size: 21 * tvScale),
              label: Text(
                t.titlePage.more,
                style: TextStyle(fontSize: 16 * tvScale, fontWeight: FontWeight.w700),
              ),
              style: actionButtonStyle(
                showFocus: showFocus,
                padding: EdgeInsets.symmetric(horizontal: 14 * tvScale),
              ),
            );
          }
          return IconButton.filledTonal(
            onPressed: open,
            icon: const AppIcon(Symbols.more_vert_rounded, fill: 1),
            iconSize: PlatformDetector.isTV() ? 21 * tvScale : 20,
            style: actionButtonStyle(showFocus: showFocus),
          );
        },
      ),
    );
  }

  Future<void> _showSubtitleSearch(MediaItem metadata, String serverId, {BuildContext? sheetContext}) async {
    final savedVersion = await resolveSavedMediaVersionFor(metadata);
    if (!mounted) return;
    final downloads = context.read<DownloadProvider?>();
    final downloaded = await downloads?.getCompletedDownload(metadata.globalKey);
    if (!mounted) return;
    final versions = metadata.mediaVersions;
    final mediaSourceId =
        downloaded?.mediaSourceId ??
        savedVersion?.sourceId ??
        (versions != null && versions.isNotEmpty && versions.first.id.isNotEmpty ? versions.first.id : null);
    final previous = _playbackSources[metadata.globalKey];
    await OverlaySheetController.of(sheetContext ?? _detailTracksActionBarKey.currentContext ?? context).show<void>(
      showDragHandle: true,
      builder: (_) => SubtitleSearchSheet(
        ratingKey: metadata.id,
        serverId: serverId,
        mediaSourceId: mediaSourceId,
        mediaTitle: metadata.displayTitle,
        onSubtitleDownloadedWithBaseline: ({required serverId, required ratingKey, required previousSourceIds}) async {
          if (!_canUseDetail || ratingKey != metadata.id || serverId != metadata.serverId) {
            return SubtitleDownloadApplyOutcome.unavailable;
          }
          final client = context.tryGetMediaClientForServer(ServerId(serverId));
          if (client == null || client is! OnlineSubtitleTransport) {
            return SubtitleDownloadApplyOutcome.unavailable;
          }
          final deadline = DateTime.now().add(const Duration(seconds: 15));
          while (_canUseDetail && DateTime.now().isBefore(deadline)) {
            final source = await (client as OnlineSubtitleTransport).fetchFreshOnlineSubtitleSource(
              ratingKey,
              mediaSourceId: mediaSourceId,
            );
            if (!_canUseDetail) return SubtitleDownloadApplyOutcome.superseded;
            final added = source?.subtitleTracks
                .where((track) => track.isExternal && !previousSourceIds.contains(track.id))
                .firstOrNull;
            if (source != null && added != null) {
              final saved = await downloads?.refreshDownloadedSubtitle(metadata, client, trackId: added.id);
              if (!_canUseDetail) return SubtitleDownloadApplyOutcome.superseded;
              if (saved == false || (downloaded != null && saved != true)) return SubtitleDownloadApplyOutcome.failed;
              _playbackSources[metadata.globalKey] = (
                item: metadata,
                source: source,
                mediaIndex: source.mediaIndex ?? previous?.mediaIndex ?? 0,
              );
              _detailSubtitleChoices[metadata.globalKey] = PlaybackSubtitleResolver.subtitleTrackForSource(added);
              _playbackStatusRevision.value++;
              return SubtitleDownloadApplyOutcome.applied;
            }
            await Future<void>.delayed(const Duration(seconds: 1));
          }
          return _canUseDetail ? SubtitleDownloadApplyOutcome.timedOut : SubtitleDownloadApplyOutcome.superseded;
        },
      ),
    );
  }

  /// Shared retry pipeline for failed/cancelled downloads: confirm download
  /// restrictions, re-resolve the version, then replace the existing download
  /// with a fresh queue entry.
  Future<void> _retryDownload(DownloadProvider downloadProvider, MediaItem metadata, String globalKey) async {
    if (!_canUseDetail) return;
    if (!await confirmBackgroundDownloadRestrictions(context) || !mounted || !_canUseDetail) return;

    final client = _getMediaClientForMetadata(context);
    if (client == null) return;

    final versionConfig = await _resolveDownloadVersion(context, metadata, client);
    if (versionConfig == null || !_canUseDetail) return;

    await downloadProvider.deleteDownload(globalKey);
    if (!_canUseDetail) return;
    try {
      await downloadProvider.queueDownload(metadata, client, versionConfig: versionConfig);
    } on CellularDownloadBlockedException {
      if (mounted) showErrorDialog(context, t.settings.cellularDownloadBlocked);
    }
  }

  Future<void> _handleDownloadButtonPressed(BuildContext context, MediaItem metadata) async {
    if (!_canUseDetail || !context.mounted) return;
    final downloadProvider = context.read<DownloadProvider>();
    final globalKey = metadata.globalKey;
    final ruleKey = _syncRuleKeyForMetadata(context, downloadProvider, metadata);
    final progress = downloadProvider.getProgress(globalKey);

    if (downloadProvider.isQueueing(globalKey) ||
        progress?.status == DownloadStatus.queued ||
        progress?.status == DownloadStatus.downloading) {
      return;
    }

    if (progress?.status == DownloadStatus.paused) {
      final client = _getMediaClientForMetadata(context);
      if (client == null) return;
      await downloadProvider.resumeDownload(globalKey, client);
      return;
    }

    if (progress?.status == DownloadStatus.failed) {
      // A failed download is the likeliest moment for the restriction to be
      // the actual cause, so check before spending another attempt on it.
      await _retryDownload(downloadProvider, metadata, globalKey);
      return;
    }

    if (progress?.status == DownloadStatus.cancelled) {
      final retry = await showConfirmDialog(
        context,
        title: t.downloads.cancelledDownloadTitle,
        message: t.downloads.cancelledDownloadMessage,
        cancelText: t.common.delete,
        confirmText: t.common.retry,
      );
      if (!_canUseDetail || !context.mounted) return;

      if (!retry) {
        await downloadProvider.deleteDownload(globalKey);
      } else {
        await _retryDownload(downloadProvider, metadata, globalKey);
      }
      return;
    }

    if (progress?.status == DownloadStatus.partial) {
      if (downloadProvider.hasSyncRule(ruleKey)) {
        await _showSyncRuleActions(context, downloadProvider, metadata, ruleKey: ruleKey, downloadGlobalKey: globalKey);
        return;
      }
      if (!await confirmBackgroundDownloadRestrictions(context) || !_canUseDetail || !context.mounted) return;

      final client = _getMediaClientForMetadata(context);
      if (client == null) return;

      final versionConfig = await _resolveDownloadVersion(context, metadata, client);
      if (versionConfig == null || !_canUseDetail || !context.mounted) return;

      final count = await downloadProvider.queueMissingEpisodes(metadata, client, versionConfig: versionConfig);
      if (_canUseDetail && context.mounted) {
        final message = count > 0 ? t.downloads.episodesQueued(count: count) : t.downloads.allEpisodesAlreadyDownloaded;
      }
      return;
    }

    if (downloadProvider.isDownloaded(globalKey)) {
      if (downloadProvider.hasSyncRule(ruleKey)) {
        await _showSyncRuleActions(context, downloadProvider, metadata, ruleKey: ruleKey, downloadGlobalKey: globalKey);
        return;
      }

      final canDownloadMore = metadata.isShow || metadata.isSeason;
      Future<void> confirmAndDelete() async {
        final confirmed = await showDeleteConfirmation(
          context,
          title: t.downloads.deleteDownload,
          message: t.downloads.deleteConfirm(title: metadata.displayTitle),
        );
        if (confirmed && _canUseDetail && context.mounted) {
          await downloadProvider.deleteDownload(globalKey);
        }
      }

      if (!canDownloadMore) {
        await confirmAndDelete();
        return;
      }

      final client = _getMediaClientForMetadata(context);
      if (client == null) return;
      await queueDownloadWithFeedback(
        context,
        metadata: metadata,
        client: client,
        downloadProvider: downloadProvider,
        onDelete: confirmAndDelete,
      );
      return;
    }

    final client = _getMediaClientForMetadata(context);
    if (client == null) return;

    await queueDownloadWithFeedback(context, metadata: metadata, client: client, downloadProvider: downloadProvider);
  }

  Widget _buildDownloadButton(
    MediaItem metadata,
    ButtonStyle Function({Color? foregroundColor, EdgeInsetsGeometry? padding, required bool showFocus})
    actionButtonStyle,
    double tvScale, {
    bool showFocus = false,
  }) {
    return Consumer<DownloadProvider>(
      builder: (context, downloadProvider, _) {
        final iconSize = PlatformDetector.isTV() ? 21.0 * tvScale : 20.0;
        final spec = _downloadButtonSpec(context, downloadProvider, metadata, iconSize: iconSize);
        return IconButton.filledTonal(
          onPressed: spec.interactive ? () => unawaited(_handleDownloadButtonPressed(context, metadata)) : null,
          icon: spec.icon,
          tooltip: spec.tooltip,
          iconSize: iconSize,
          style: actionButtonStyle(foregroundColor: spec.foregroundColor, showFocus: showFocus),
        );
      },
    );
  }

  /// Presentation of the download button for the item's current download
  /// state, in precedence order: queueing → queued → downloading → paused →
  /// failed → cancelled → partial → downloaded → not downloaded. The first
  /// three are non-interactive; [_handleDownloadButtonPressed] handles the rest.
  _DownloadButtonSpec _downloadButtonSpec(
    BuildContext context,
    DownloadProvider downloadProvider,
    MediaItem metadata, {
    required double iconSize,
  }) {
    final globalKey = metadata.globalKey;
    final ruleKey = _syncRuleKeyForMetadata(context, downloadProvider, metadata);
    final progress = downloadProvider.getProgress(globalKey);
    final currentFile = progress?.currentFile;

    if (debugLoggingEnabled && progress != null) {
      appLogger.d('UI rebuilding for $globalKey: status=${progress.status}, progress=${progress.progress}%');
    }

    // Queueing (building download queue)
    if (downloadProvider.isQueueing(globalKey)) {
      return _DownloadButtonSpec(icon: LoadingIndicatorBox(size: iconSize), interactive: false);
    }

    // Queued (waiting to download)
    if (progress?.status == DownloadStatus.queued) {
      return _DownloadButtonSpec(
        icon: const AppIcon(Symbols.schedule_rounded, fill: 1),
        tooltip: currentFile != null && currentFile.contains('episodes')
            ? t.downloads.queuedFilesTooltip(files: currentFile)
            : t.downloads.queuedTooltip,
        interactive: false,
      );
    }

    // Downloading (active download); the tooltip carries the episode count
    // for shows/seasons.
    if (progress?.status == DownloadStatus.downloading) {
      return _DownloadButtonSpec(
        icon: _buildRadialProgress(progress?.progressPercent),
        tooltip: currentFile != null && currentFile.contains('episodes')
            ? t.downloads.downloadingFilesTooltip(files: currentFile)
            : t.downloads.downloadingTooltip,
        interactive: false,
      );
    }

    // Paused (can resume)
    if (progress?.status == DownloadStatus.paused) {
      return _DownloadButtonSpec(
        icon: const AppIcon(Symbols.pause_circle_outline_rounded, fill: 1),
        tooltip: t.downloads.resumeDownload,
        foregroundColor: Colors.amber,
      );
    }

    // Failed (can retry)
    if (progress?.status == DownloadStatus.failed) {
      return _DownloadButtonSpec(
        icon: const AppIcon(Symbols.error_outline_rounded, fill: 1),
        tooltip: t.downloads.retryDownload,
        foregroundColor: Colors.red,
      );
    }

    // Cancelled (can delete or retry)
    if (progress?.status == DownloadStatus.cancelled) {
      return _DownloadButtonSpec(
        icon: const AppIcon(Symbols.cancel_rounded, fill: 1),
        tooltip: t.downloads.cancelledDownload,
        foregroundColor: Colors.grey,
      );
    }

    // A sync rule shows the same icon whether the download is partial (its
    // normal state) or complete; only the tooltip differs.
    _DownloadButtonSpec syncRuleSpec({required bool complete}) {
      final syncRule = downloadProvider.getSyncRule(ruleKey);
      final isEnabled = syncRule?.enabled ?? true;
      final keepStatus = t.downloads.keepNUnwatched(count: syncRule?.episodeCount.toString() ?? '?');
      final String tooltip;
      if (complete) {
        tooltip = keepStatus;
      } else if (currentFile != null) {
        tooltip = t.downloads.syncingFile(file: currentFile, status: keepStatus);
      } else {
        tooltip = t.downloads.keepSynced;
      }
      return _DownloadButtonSpec(
        icon: AppIcon(isEnabled ? Symbols.sync_rounded : Symbols.sync_disabled_rounded, fill: 1),
        tooltip: tooltip,
        foregroundColor: isEnabled ? Colors.teal : Colors.grey,
      );
    }

    // Partial download (some episodes downloaded, not all)
    if (progress?.status == DownloadStatus.partial) {
      if (downloadProvider.hasSyncRule(ruleKey)) return syncRuleSpec(complete: false);
      return _DownloadButtonSpec(
        icon: const AppIcon(Symbols.downloading_rounded, fill: 1),
        tooltip: currentFile != null
            ? t.downloads.downloadedFileClickToComplete(file: currentFile)
            : t.downloads.partialDownloadClickToComplete,
        foregroundColor: Colors.orange,
      );
    }

    // Downloaded/complete (can delete)
    if (downloadProvider.isDownloaded(globalKey)) {
      if (downloadProvider.hasSyncRule(ruleKey)) return syncRuleSpec(complete: true);
      // Shows/seasons may have more episodes to fetch; movies/episodes don't.
      final canDownloadMore = metadata.isShow || metadata.isSeason;
      return _DownloadButtonSpec(
        icon: const AppIcon(Symbols.download_rounded, fill: 1),
        tooltip: canDownloadMore ? t.downloads.manage : t.downloads.deleteDownload,
        foregroundColor: Colors.orange,
      );
    }

    // Not downloaded (default - can download)
    return _DownloadButtonSpec(
      icon: const AppIcon(Symbols.download_rounded, fill: 1),
      tooltip: t.downloads.downloadNow,
    );
  }
}
