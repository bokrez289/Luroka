part of '../media_detail_screen.dart';

extension _ShowSchedulePresentation on _MediaDetailScreenState {
  bool get _showEnded {
    final status = '${_metadata.raw?['Status'] ?? _metadata.raw?['status'] ?? ''}'.toLowerCase();
    return ['ended', 'canceled', 'cancelled'].contains(status) || _showSchedule.ended == true;
  }

  ShowEpisodeState get _showEpisodeState {
    final offline = widget.isOffline
        ? context.read<DownloadProvider>().getDownloadedEpisodesForShow(_metadata.globalKey)
        : const <MediaItem>[];
    final items = <String, MediaItem>{
      for (final item in [...offline, ..._showLibraryEpisodes, ..._episodes]) item.globalKey: _fresh(item),
    }.values.toList();
    return ShowEpisodeState.resolve(
      items,
      onDeck: _onDeckEpisode == null ? null : _fresh(_onDeckEpisode!),
      complete: _showLibraryComplete,
    );
  }

  Future<void> _loadShowContext({bool refresh = false}) async {
    if (!_canUseDetail || !_metadata.isShow) return;
    final generation = ++_showContextGeneration;
    _showContextAbort?.abort();
    final abort = _showContextAbort = AbortController();
    final client = _getMediaClientForMetadata(context);
    if (widget.isOffline || client == null) return;
    // A background paginated read provides exact availability and last-played
    // history across seasons; it never replaces the currently browsed shelf.
    unawaited(() async {
      try {
        final items = <MediaItem>[];
        var offset = 0;
        while (_canUseDetail && generation == _showContextGeneration) {
          final page = await client.fetchPlayableDescendantsPage(_metadata.id, start: offset, size: 200, abort: abort);
          if (!_canUseDetail || generation != _showContextGeneration) return;
          items.addAll(
            page.items
                .where((e) => e.isEpisode)
                .map((e) => e.copyWith(serverId: _metadata.serverId, serverName: _metadata.serverName)),
          );
          offset += page.items.length;
          if (page.items.isEmpty || offset >= page.totalCount) break;
        }
        if (_canUseDetail && generation == _showContextGeneration) {
          setStateIfMounted(() {
            _showLibraryEpisodes = items;
            _showLibraryComplete = true;
          });
        }
      } catch (_) {
        /* Keep the existing on-deck and cached season fallback. */
      }
    }());
    if (refresh && _showSchedule.episodes.isNotEmpty) return;
    final sources = context.read<CatalogSourcesProvider?>();
    final source = sources?.connectedSources.whereType<CinemetaCatalogSource>().firstOrNull;
    if (source == null) return;
    try {
      final ids = await client.fetchExternalIds(_metadata.id);
      if (!_canUseDetail || generation != _showContextGeneration || ids.imdb == null) return;
      final schedule = await source.fetchShowSchedule(ids.imdb!);
      if (_canUseDetail && generation == _showContextGeneration) setStateIfMounted(() => _showSchedule = schedule);
    } catch (_) {
      /* Unknown schedules are omitted, never extrapolated. */
    }
  }

  List<MediaItem> _scheduleItems() {
    if (!_metadata.isShow || _showEnded || !_showLibraryComplete || widget.isOffline) return const [];
    final now = DateTime.now();
    final library = <String, MediaItem>{
      for (final e in [..._showLibraryEpisodes, ..._episodes]) '${e.parentIndex}:${e.index}': _fresh(e),
    };
    final hidden = SettingsService.instance.read(SettingsService.hideSpoilers);
    return [
      for (final entry in _showSchedule.latestAndUpcoming(now))
        MediaItem(
          id: 'schedule:${_metadata.id}:${entry.key}',
          backend: _metadata.backend,
          kind: MediaKind.episode,
          title: hidden && (entry.released.isAfter(now) || library[entry.key]?.isWatched != true)
              ? t.showSchedule.episode(number: entry.number)
              : entry.title ?? t.showSchedule.episode(number: entry.number),
          index: entry.number,
          thumbPath: hidden ? null : entry.thumbnail,
          summary: hidden ? null : entry.summary,
          raw: {
            'showSchedule': true,
            'scheduleFuture': entry.released.isAfter(now),
            'scheduleAvailable': library.containsKey(entry.key) && !entry.released.isAfter(now),
            if (library.containsKey(entry.key)) 'scheduleLibraryItem': library[entry.key],
          },
        ).copyWith(parentIndex: entry.season, originallyAvailableAt: entry.released.toLocal().toIso8601String()),
    ];
  }

  Future<void> _openScheduleEntry(MediaItem item) async {
    final available = item.raw?['scheduleLibraryItem'];
    if (item.raw?['scheduleAvailable'] == true && available is MediaItem) {
      await _openEpisodeDestination(available);
      return;
    }
    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('${formatSeasonEpisodeLabel(item.parentIndex, item.index)} · ${item.title}'),
        content: SizedBox(
          width: 480,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(formatAbbreviatedDate(item.originallyAvailableAt!)),
                const SizedBox(height: 10),
                Text(item.raw?['scheduleFuture'] == true ? t.showSchedule.notYetAired : t.showSchedule.notInLibrary),
                if (item.summary?.isNotEmpty == true) ...[const SizedBox(height: 16), Text(item.summary!)],
              ],
            ),
          ),
        ),
        actions: [TextButton(autofocus: true, onPressed: () => Navigator.pop(context), child: Text(t.common.close))],
      ),
    );
  }

  String? _showCompletionText() {
    if (!_metadata.isShow || !_showEpisodeState.caughtUp) return null;
    if (_showEnded) return t.showSchedule.finished;
    final next = _showSchedule
        .latestAndUpcoming(DateTime.now())
        .where((e) => e.released.isAfter(DateTime.now()))
        .firstOrNull;
    return next == null
        ? t.showSchedule.caughtUp
        : '${t.showSchedule.caughtUp} · ${t.showSchedule.nextAirs(date: formatAbbreviatedDate(next.released.toLocal().toIso8601String()))}';
  }
}
