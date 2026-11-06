part of '../media_detail_screen.dart';

/// The action row's trailing status: what Play will do with this item's
/// picture, audio, and subtitles, computed by the player's own selection
/// ladder ([previewPlaybackTracks]). Read-only — it describes the episode the
/// hero shows, and on TV that changes with rail focus, so there is no per-
/// episode target for a control here to act on.
extension _MediaDetailPlaybackTracksStatus on _MediaDetailScreenState {
  Widget _buildMobileEpisodeTracks(BuildContext context, MediaItem episode) {
    _scheduleTargetProbe(context, episode);
    return ValueListenableBuilder<int>(
      valueListenable: _playbackStatusRevision,
      builder: (context, _, _) {
        final probed = _playbackSources[episode.globalKey];
        final source = probed?.source;
        final preview = source == null
            ? null
            : previewPlaybackTracks(
                probed!.item,
                source,
                profile: context.watch<AccountPreferencesController?>()?.activePreferences,
                preferredAudio: _detailAudioChoices[episode.globalKey],
                preferredSubtitle: _detailSubtitleChoices[episode.globalKey],
              );
        final scheme = Theme.of(context).colorScheme;
        Widget row(String section, String title, String value, IconData icon) => ListTile(
          key: ValueKey('mobile_episode_${section}_selector'),
          contentPadding: const EdgeInsets.symmetric(horizontal: 14),
          leading: AppIcon(icon, color: scheme.primary),
          title: Text(title, style: Theme.of(context).textTheme.labelMedium?.copyWith(color: scheme.onSurfaceVariant)),
          subtitle: Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: scheme.onSurface, fontWeight: FontWeight.w600),
          ),
          trailing: Icon(Icons.expand_more_rounded, color: scheme.onSurfaceVariant),
          onTap: () => unawaited(_openDetailTracks(context, episode, section: section)),
        );
        return Material(
          key: const ValueKey('mobile_episode_tracks'),
          color: scheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(18),
          clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              row(
                'audio',
                t.fileInfo.audio,
                preview?.audio?.label.joined ?? (source == null ? t.common.loading : t.common.unknown),
                Symbols.volume_up_rounded,
              ),
              Divider(height: 1, indent: 14, endIndent: 14, color: scheme.outlineVariant.withValues(alpha: .35)),
              row(
                'subtitle',
                t.fileInfo.subtitles,
                preview?.subtitle?.label.joined ?? (source == null ? t.common.loading : t.common.off),
                Symbols.subtitles_rounded,
              ),
            ],
          ),
        );
      },
    );
  }

  /// The item Play would start: the hero's episode for a show, the first
  /// episode for a season, the item itself otherwise. Null while a show has
  /// not resolved any episode yet.
  MediaItem? _playbackTargetItem(MediaItem metadata) {
    if (!_canUseDetail || widget.catalogPreviewOnly) return null;
    final MediaItem? target;
    if (metadata.isShow) {
      target = _showPlayEpisode();
    } else if (metadata.isSeason) {
      target = _episodes.isEmpty ? null : _episodes.first;
    } else {
      target = metadata;
    }
    return target;
  }

  Future<void> _listenForPlaybackVersionChanges() async {
    final settings = await SettingsService.getInstance();
    if (!_canUseDetail) return;
    bindListenable(settings.listenableOf(SettingsService.mediaVersionPreferences), _onPlaybackVersionChanged);
  }

  void _onPlaybackVersionChanged() {
    if (!_canUseDetail) return;
    _detailAudioChoices.clear();
    _detailSubtitleChoices.clear();
    _invalidatePlaybackProbes(refreshItems: false);
  }

  void _invalidatePlaybackProbes({required bool refreshItems}) {
    _playbackProbeGeneration++;
    _playbackProbeTimer?.cancel();
    _playbackProbeRequests.clear();
    _playbackSources.clear();
    _detailChapters.clear();
    if (refreshItems) _probedPlaybackItems.clear();
    _playbackStatusRevision.value++;
  }

  /// Fetch metadata once, then resolve the saved selection independently.
  /// Rendering never starts PlaybackInfo or a transcode. Offline only reads
  /// the completed download's identity, never a server or track probe.
  void _scheduleTargetProbe(BuildContext context, MediaItem target) {
    if (!_canUseDetail) return;
    final key = target.globalKey;
    if (_playbackSources.containsKey(key) || _playbackProbeRequests.containsKey(key)) return;
    final client = widget.isOffline ? null : _getMediaClientForMetadata(context);
    if (!widget.isOffline && client == null) return;
    final downloads = widget.isOffline ? context.read<DownloadProvider>() : null;
    _playbackProbeTimer?.cancel();
    final generation = _playbackProbeGeneration;
    _playbackProbeTimer = Timer(const Duration(milliseconds: 350), () {
      if (!mounted || generation != _playbackProbeGeneration || _playbackProbeRequests.containsKey(key)) return;
      unawaited(_probeTarget(client, downloads, target, generation));
    });
  }

  Future<void> _probeTarget(
    MediaServerClient? client,
    DownloadProvider? downloads,
    MediaItem target,
    int generation,
  ) async {
    final key = target.globalKey;
    final request = Object();
    _playbackProbeRequests[key] = request;
    bool current() => _canUseDetail && generation == _playbackProbeGeneration && _playbackProbeRequests[key] == request;
    try {
      MediaItem item;
      MediaSourceInfo? source;
      int? mediaIndex;
      if (downloads != null) {
        final downloaded = await downloads.getCompletedDownload(key);
        if (!current()) return;
        item = target;
        if (downloaded != null) {
          final versions = item.mediaVersions;
          final byId = downloaded.mediaSourceId == null
              ? -1
              : versions?.indexWhere((version) => version.id == downloaded.mediaSourceId) ?? -1;
          mediaIndex = byId >= 0 ? byId : downloaded.mediaIndex;
          if (versions == null || mediaIndex < 0 || mediaIndex >= versions.length) mediaIndex = null;
        }
      } else {
        final fetched = _probedPlaybackItems[key] ?? await client!.fetchItem(target.id);
        if (!current() || fetched == null) return;
        item = fetched.copyWith(
          serverId: target.serverId ?? fetched.serverId,
          serverName: target.serverName ?? fetched.serverName,
        );
        _probedPlaybackItems[key] = item;
        _recordProbedRatings(key, item.ratings);
        final selection = await resolveSavedMediaVersionFor(item);
        if (!current()) return;
        source = await client!.fetchCachedMediaSourceInfo(
          item.id,
          mediaIndex: selection?.index ?? 0,
          mediaSourceId: selection?.sourceId,
          preferredVersionSignature: selection?.signature,
        );
        if (!current() || source == null) return;
        mediaIndex = source.mediaIndex ?? selection?.index ?? 0;
      }
      if (!current()) return;
      _playbackSources[key] = (item: item, source: source, mediaIndex: mediaIndex);
      // Only the status repaints: do not rebuild the rail or replace its
      // focused item with a cached probe snapshot.
      _playbackStatusRevision.value++;
      if (!widget.isOffline &&
          client != null &&
          (target.isMovie || target.isEpisode) &&
          !_detailChapters.containsKey(key)) {
        var chapters = source?.chapters ?? <MediaChapter>[];
        try {
          if (chapters.isEmpty) chapters = (await client.fetchPlaybackExtras(target.id)).chapters;
        } catch (_) {
          /* Chapters are optional metadata. */
        }
        if (current()) {
          _detailChapters[key] = chapters;
          setStateIfMounted(() {});
        }
      }
    } catch (e, stackTrace) {
      appLogger.d('Playback track probe failed for ${target.id}', error: e, stackTrace: stackTrace);
    } finally {
      if (_playbackProbeRequests[key] == request) _playbackProbeRequests.remove(key);
    }
  }

  /// Repaints the TV hero only when the scores are new for the episode it
  /// shows; a re-probe after a refresh returns the same scores.
  void _recordProbedRatings(String key, List<MediaRatingSource>? ratings) {
    if (ratings == null || ratings.isEmpty) return;
    final isNew = !_probedRatings.containsKey(key);
    _probedRatings[key] = ratings;
    if (isNew && _tvDetailFocusedEpisode.value?.globalKey == key) _focusedEpisodeRatingsRevision.value++;
  }

  /// The listener stays mounted while a source is resolving, without adding
  /// a semantic or focus target when there is nothing to predict.
  Widget _buildPlaybackTracksStatus(
    BuildContext context,
    MediaItem metadata, {
    required bool isTv,
    required double tvScale,
    required double maxWidth,
  }) {
    final status = ValueListenableBuilder<int>(
      valueListenable: _playbackStatusRevision,
      builder: (context, _, _) =>
          _playbackTracksStatus(context, metadata, isTv: isTv, tvScale: tvScale, maxWidth: maxWidth) ??
          const SizedBox.shrink(),
    );
    // Keep the source probe warm for immediate track selection, without
    // displaying the technical footnote on the artwork-led TV title page.
    return isTv ? Offstage(child: status) : status;
  }

  Widget? _playbackTracksStatus(
    BuildContext context,
    MediaItem metadata, {
    required bool isTv,
    required double tvScale,
    required double maxWidth,
  }) {
    final target = _playbackTargetItem(metadata);
    if (target == null) return null;
    if (_playbackStatusTarget != target.globalKey) {
      _playbackStatusTarget = target.globalKey;
      final cached = _playbackSources[target.globalKey]?.source;
      if (!widget.isOffline && cached != null && !mediaSourceHasTrackRows(cached)) {
        _playbackSources.remove(target.globalKey);
      }
    }

    // Profile-scoped in the app; nullable so a bare detail screen (widget
    // tests) still previews with the ladder's non-profile tiers.
    final probed = _playbackSources[target.globalKey];
    final source = probed?.source;
    final preview = source == null
        ? null
        : previewPlaybackTracks(
            probed!.item,
            source,
            profile: context.watch<AccountPreferencesController?>()?.activePreferences,
            preferredAudio: _detailAudioChoices[target.globalKey],
            preferredSubtitle: _detailSubtitleChoices[target.globalKey],
          );
    final videoLabels = probed?.mediaIndex == null
        ? const <String>[]
        : buildMediaVideoLabels(probed!.item, versionIndex: probed.mediaIndex!, partIndex: source?.partIndex);
    if (probed == null) _scheduleTargetProbe(context, target);
    if (preview == null && videoLabels.isEmpty) return null;

    final audioLabel = preview?.audio?.label;
    final subtitleLabel = preview?.subtitle?.label;
    final parts = <MetadataLinePart>[
      // Shed order on a tight row: the long codec details first (subtitle's,
      // then audio's — the details sheet has them in full), then the short
      // picture labels, then the audio track; the subtitle decision always
      // stays.
      for (final label in (PlatformDetector.isMobile(context) ? videoLabels.take(1) : videoLabels))
        MetadataLineText(label, dropPriority: 2),
      if (audioLabel != null)
        MetadataLineIconText(
          Symbols.volume_up_rounded,
          audioLabel.primary,
          detail: PlatformDetector.isMobile(context) ? null : audioLabel.secondary,
          dropPriority: 1,
          detailDropPriority: 3,
        ),
      if (preview != null)
        MetadataLineIconText(
          Symbols.subtitles_rounded,
          subtitleLabel?.primary ?? t.common.off,
          detail: PlatformDetector.isMobile(context) ? null : subtitleLabel?.secondary,
          dropPriority: 0,
          detailDropPriority: 3,
        ),
    ];
    final semanticsLabel =
        '${t.videoControls.tracksButton}: ${[for (final part in parts) switch (part) {
            MetadataLineText(:final text) => text,
            MetadataLineIconText(:final text, :final detail) => detail == null ? text : '$text${MetadataLineIconText.detailSeparator}$detail',
            MetadataLineRatings() => '',
          }].join(', ')}';

    // Same ink as the hero's metadata line, one step lighter in weight and
    // size so it reads as a footnote to the buttons rather than a sixth one.
    final textStyle = TextStyle(
      color: isTv ? _tvDetailForegroundColor(context) : Theme.of(context).colorScheme.onSurfaceVariant,
      fontSize: isTv ? 15 * tvScale : 12.5,
      fontWeight: .w500,
      letterSpacing: 0.1,
      height: 1.2,
    );

    return Semantics(
      key: const ValueKey('detail_playback_tracks'),
      label: semanticsLabel,
      excludeSemantics: true,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: FittedMetadataLine(textStyle: textStyle, parts: parts, ratingIconSize: textStyle.fontSize! * 1.15),
      ),
    );
  }

  Widget _buildTitlePlaybackPanel(BuildContext context, MediaItem metadata, double scale) {
    final target = _playbackTargetItem(metadata)!;
    _scheduleTargetProbe(context, target);
    return ValueListenableBuilder<int>(
      valueListenable: _playbackStatusRevision,
      builder: (context, _, _) {
        final probed = _playbackSources[target.globalKey];
        final source = probed?.source;
        final preview = source == null
            ? null
            : previewPlaybackTracks(
                probed!.item,
                source,
                profile: context.watch<AccountPreferencesController?>()?.activePreferences,
                preferredAudio: _detailAudioChoices[target.globalKey],
                preferredSubtitle: _detailSubtitleChoices[target.globalKey],
              );
        final automatic = !_detailSubtitleChoices.containsKey(target.globalKey);
        final audio = preview?.audio?.label;
        final subtitle = preview?.subtitle?.label;
        final scheme = Theme.of(context).colorScheme;
        Widget row({
          required String label,
          required String value,
          required IconData icon,
          required FocusNode focus,
          required VoidCallback up,
          required VoidCallback down,
          required String section,
        }) => FocusableWrapper(
          key: ValueKey('detail_${section}_selector'),
          focusNode: focus,
          disableScale: true,
          autoScroll: false,
          borderRadius: 6 * scale,
          onNavigateUp: up,
          onNavigateDown: down,
          onBack: _popMediaDetailIfBackNotSuppressed,
          onFocusChange: (focused) {
            if (focused) _tvDetailRailKey.currentState?.showPageHeader();
          },
          onSelect: () => unawaited(_openDetailTracks(context, metadata, section: section)),
          child: GestureDetector(
            onTap: () => unawaited(_openDetailTracks(context, metadata, section: section)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12 * scale, vertical: 8 * scale),
              child: Row(
                children: [
                  Icon(icon, color: scheme.primary, size: 18 * scale),
                  SizedBox(width: 8 * scale),
                  SizedBox(
                    width: 74 * scale,
                    child: Text(
                      label,
                      style: TextStyle(fontSize: 13 * scale, color: scheme.onSurfaceVariant),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      value,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 13 * scale, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Icon(Icons.expand_more_rounded, size: 18 * scale, color: scheme.primary),
                ],
              ),
            ),
          ),
        );
        return Container(
          key: const ValueKey('detail_playback_panel'),
          padding: EdgeInsets.all(4 * scale),
          decoration: BoxDecoration(
            color: scheme.surface.withValues(alpha: .9),
            borderRadius: BorderRadius.circular(8 * scale),
            border: Border.all(color: scheme.onSurface.withValues(alpha: .16)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              row(
                label: t.fileInfo.audio,
                value: audio?.joined ?? (source == null ? t.common.loading : t.common.unknown),
                icon: Symbols.volume_up_rounded,
                focus: _detailAudioFocus,
                up: _tvDetailInfoFocusNode.requestFocus,
                down: _detailSubtitleFocus.requestFocus,
                section: 'audio',
              ),
              row(
                label: t.fileInfo.subtitles,
                value: automatic ? t.detailComposition.automatic : subtitle?.joined ?? t.common.off,
                icon: Symbols.subtitles_rounded,
                focus: _detailSubtitleFocus,
                up: _detailAudioFocus.requestFocus,
                down: _focusTvDetailActionRow,
                section: 'subtitle',
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _openDetailTracks(BuildContext sheetContext, MediaItem metadata, {String? section}) async {
    final target = _playbackTargetItem(metadata);
    if (target == null || !_canUseDetail || widget.isOffline) return;
    final client = _getMediaClientForMetadata(sheetContext);
    if (client == null) return;
    if (_playbackSources[target.globalKey]?.source == null) {
      await _probeTarget(client, null, target, _playbackProbeGeneration);
    }
    if (!sheetContext.mounted || !_canUseDetail) return;
    final probed = _playbackSources[target.globalKey];
    final source = probed?.source;
    final canDownload = client is OnlineSubtitleTransport && target.serverId != null;
    final preview = source == null
        ? null
        : previewPlaybackTracks(
            probed!.item,
            source,
            profile: sheetContext.read<AccountPreferencesController?>()?.activePreferences,
            preferredAudio: _detailAudioChoices[target.globalKey],
            preferredSubtitle: _detailSubtitleChoices[target.globalKey],
          );
    final selected = await showAdaptiveAppMenu<String>(
      sheetContext,
      title: section == 'audio'
          ? t.fileInfo.audio
          : section == 'subtitle'
          ? t.fileInfo.subtitles
          : t.videoControls.tracksButton,
      position: Offset(MediaQuery.sizeOf(sheetContext).width / 2, 100),
      focusFirstItem: true,
      entries: [
        AppMenuHeader(label: target.displayTitle),
        if (section != 'subtitle') AppMenuHeader(label: '${t.fileInfo.audio} · ${source?.audioTracks.length ?? 0}'),
        if (section != 'subtitle')
          AppMenuItem(
            value: 'audio:auto',
            label: t.detailComposition.automatic,
            selected: !_detailAudioChoices.containsKey(target.globalKey),
            icon: Symbols.settings_rounded,
          ),
        for (final track in section == 'subtitle' ? <MediaAudioTrack>[] : source?.audioTracks ?? <MediaAudioTrack>[])
          AppMenuItem(
            value: 'audio:${track.id}',
            label: track.label.primary,
            subtitle: track.label.secondary,
            icon: Symbols.volume_up_rounded,
            selected: preview?.audio?.id == track.id,
          ),
        if (section != 'audio') AppMenuHeader(label: '${t.fileInfo.subtitles} · ${source?.subtitleTracks.length ?? 0}'),
        if (section != 'audio')
          AppMenuItem(
            value: 'subtitle:auto',
            label: t.detailComposition.automatic,
            subtitle: t.detailComposition.usePreferences,
            selected: !_detailSubtitleChoices.containsKey(target.globalKey),
            icon: Symbols.settings_rounded,
          ),
        if (section != 'audio')
          AppMenuItem(
            value: 'off',
            label: t.common.off,
            icon: Symbols.subtitles_off_rounded,
            selected: _detailSubtitleChoices[target.globalKey]?.id == SubtitleTrack.off.id,
          ),
        for (final track
            in section == 'audio' ? <MediaSubtitleTrack>[] : source?.subtitleTracks ?? <MediaSubtitleTrack>[])
          AppMenuItem(
            value: 'subtitle:${track.id}',
            label: track.label.primary,
            subtitle: track.label.secondary,
            icon: Symbols.subtitles_rounded,
            selected: preview?.subtitle?.id == track.id,
          ),
        if (canDownload && section != 'audio')
          AppMenuItem(value: 'download', label: t.videoControls.searchSubtitles, icon: Symbols.download_rounded),
      ],
    );
    if (!sheetContext.mounted || !_canUseDetail || selected == null) return;
    if (selected == 'download') {
      await _showSubtitleSearch(probed?.item ?? target, target.serverId!, sheetContext: sheetContext);
      if (_canUseDetail) {
        _invalidatePlaybackProbes(refreshItems: true);
        setStateIfMounted(() {});
      }
      return;
    }
    if (selected == 'off') {
      _detailSubtitleChoices[target.globalKey] = SubtitleTrack.off;
    } else if (selected == 'audio:auto') {
      _detailAudioChoices.remove(target.globalKey);
    } else if (selected == 'subtitle:auto') {
      _detailSubtitleChoices.remove(target.globalKey);
    } else if (source != null && selected.startsWith('audio:')) {
      final id = int.tryParse(selected.substring(6));
      final track = PlaybackSubtitleResolver.audioTracksForSource(
        source,
      ).where((t) => t.id == 'source:$id').firstOrNull;
      if (track != null) _detailAudioChoices[target.globalKey] = track;
    } else if (source != null && selected.startsWith('subtitle:')) {
      final id = int.tryParse(selected.substring(9));
      final row = source.subtitleTracks.where((t) => t.id == id).firstOrNull;
      if (row != null) _detailSubtitleChoices[target.globalKey] = PlaybackSubtitleResolver.subtitleTrackForSource(row);
    }
    _playbackStatusRevision.value++;
  }
}
