part of '../media_detail_screen.dart';

extension _DetailEnrichmentPresentation on _MediaDetailScreenState {
  Future<void> _loadDetailEnrichment() async {
    if (widget.isOffline || (!_metadata.isMovie && !_metadata.isShow)) return;
    final client = _getMediaClientForMetadata(context);
    if (client == null) return;
    final sources = context.read<CatalogSourcesProvider?>();
    final tmdb = sources?.tmdbSource;
    if (!KidsProfileService.instance.isActiveKids) {
      setStateIfMounted(() {
        _detailReviews = _serverReviews();
      });
    }
    final language = Localizations.localeOf(context).toLanguageTag();
    unawaited(_loadDirectorTitles(client));
    if (sources != null && !KidsProfileService.instance.isActiveKids) {
      unawaited(() async {
        try {
          final source = sources.connectedSources.whereType<CinemetaCatalogSource>().firstOrNull;
          if (source == null) return;
          final external = await client.fetchExternalIds(_metadata.id);
          if (external.imdb == null || !_canUseDetail) return;
          final videos = await source.fetchTitleVideos(_metadata.kind, external.imdb!);
          if (_canUseDetail) setStateIfMounted(() => _keyFreeVideos = videos);
        } catch (_) {
          /* A key-free trailer is optional. */
        }
      }());
    }
    if (tmdb != null && !KidsProfileService.instance.isActiveKids) {
      try {
        final external = await client.fetchExternalIds(_metadata.id);
        final data = await tmdb.fetchDetailEnrichment(
          _metadata.kind,
          CatalogItemIds.fromExternal(external),
          language: language,
        );
        if (!_canUseDetail) return;
        setStateIfMounted(() {
          _onlineVideos = data.videos;
          _detailReviews = [..._serverReviews(), ...data.reviews];
          _remoteTrailerUrl ??= data.videos.firstOrNull?.url;
        });
      } catch (_) {
        /* Enrichment is optional and never blocks local details. */
      }
    } else if (_canUseDetail) {
      setStateIfMounted(() => _detailReviews = _serverReviews());
    }
  }

  List<DetailReview> _serverReviews() {
    if (KidsProfileService.instance.isActiveKids) return const [];
    final reviews = _metadata.raw?['Review'];
    if (reviews is! List) return const [];
    return [
      for (final (index, entry) in reviews.whereType<Map>().indexed)
        if (entry['text'] is String && (entry['text'] as String).trim().isNotEmpty)
          DetailReview(
            id: 'server:$index',
            author: '${entry['tag'] ?? entry['author'] ?? ''}',
            content: '${entry['text']}',
            source: '${entry['source'] ?? _metadata.serverName ?? 'Plex'}',
            url: entry['link'] as String?,
          ),
    ];
  }

  Future<void> _loadDirectorTitles(MediaServerClient client) async {
    final director = detailDirectors(_metadata).where((person) => person.id?.isNotEmpty == true).firstOrNull;
    if (director == null) return;
    try {
      final page = await client.fetchPersonMediaPage(director.id!, size: 60);
      if (!mounted || !_canUseDetail) return;
      final hidden = context.read<HiddenLibrariesProvider?>()?.hiddenLibraryKeys ?? const <String>{};
      final possible = page.items
          .where(
            (item) =>
                item.kind == _metadata.kind &&
                item.id != _metadata.id &&
                (item.directors ?? const <String>[]).any((name) => name.toLowerCase() == director.tag.toLowerCase()),
          )
          .take(24)
          .toList();
      final candidates = <MediaItem>[];
      var next = 0;
      Future<void> worker() async {
        while (next < possible.length && _canUseDetail) {
          final item = possible[next++];
          try {
            final stamped = item.libraryId == null ? await client.stampLibrary(item) : item;
            if (stamped.libraryId != null &&
                !hidden.contains('${stamped.serverId}:${stamped.libraryId}') &&
                KidsProfileService.instance.allows(stamped)) {
              candidates.add(stamped);
            }
          } catch (_) {
            /* Unknown library visibility fails closed. */
          }
        }
      }

      await Future.wait(List.generate(possible.length.clamp(0, 3), (_) => worker()));
      if (!mounted || !_canUseDetail) return;
      if (candidates.isEmpty) return;
      final allGroups = MovieCopyGroups([_metadata, ...candidates]);
      final currentCopies = allGroups.copiesFor(_metadata).map((item) => item.globalKey).toSet();
      candidates.removeWhere((item) => currentCopies.contains(item.globalKey));
      final groups = MovieCopyGroups(candidates);
      if (groups.items.isEmpty) return;
      setStateIfMounted(
        () => _directorHub = MediaHub(
          id: 'detail_director_titles',
          title: t.detailExtras.directedBy(name: director.tag),
          type: _metadata.isMovie ? 'movie' : 'show',
          items: groups.items,
          size: groups.items.length,
        ),
      );
      _directorCopies = groups;
    } catch (_) {
      /* Missing filmographies do not create an empty shelf. */
    }
  }

  List<MediaItem> _onlineVideoItems() {
    final videos = [..._onlineVideos, ..._keyFreeVideos];
    final remoteTrailers = _metadata.raw?['RemoteTrailers'];
    if (remoteTrailers is List) {
      for (final trailer in remoteTrailers.whereType<Map>()) {
        final url = trailer['Url'];
        if (url is String && Uri.tryParse(url)?.scheme == 'https') {
          videos.add(DetailVideo(url: url, name: '${trailer['Name'] ?? t.detailComposition.trailer}', type: 'Trailer'));
        }
      }
    }
    final remote = _remoteTrailerUrl;
    if (remote != null && !videos.any((video) => video.url == remote)) {
      final uri = Uri.tryParse(remote);
      final key = uri?.host == 'youtu.be' ? uri?.pathSegments.firstOrNull : uri?.queryParameters['v'];
      videos.insert(
        0,
        DetailVideo(
          url: remote,
          name: t.detailComposition.trailer,
          type: 'Trailer',
          thumbnail: key == null ? null : 'https://img.youtube.com/vi/$key/hqdefault.jpg',
        ),
      );
    }
    final seen = <String>{};
    String identity(String url) {
      final uri = Uri.tryParse(url);
      final youtube =
          uri?.host == 'youtu.be' || uri?.host == 'youtube.com' || uri?.host.endsWith('.youtube.com') == true;
      return youtube
          ? 'youtube:${uri?.host == 'youtu.be' ? uri?.pathSegments.firstOrNull : uri?.queryParameters['v']}'
          : url;
    }

    return [
      for (final (index, video) in videos.indexed)
        if (seen.add(identity(video.url)))
          MediaItem(
            id: '${_metadata.id}:online:$index',
            backend: _metadata.backend,
            kind: MediaKind.clip,
            title: video.name,
            summary: '${video.type} · YouTube',
            thumbPath: video.thumbnail,
            serverId: _metadata.serverId,
            raw: {'onlineVideoUrl': video.url},
          ),
    ];
  }

  List<MediaHub> _enrichmentHubs() {
    final videos = _onlineVideoItems();
    return [
      if (videos.isNotEmpty)
        MediaHub(
          id: 'detail_online_videos',
          title: t.detailExtras.onlineVideos,
          type: 'clip',
          items: videos,
          size: videos.length,
        ),
      if (_detailReviews.isNotEmpty)
        MediaHub(
          id: 'detail_reviews',
          title: t.detailExtras.reviews,
          type: 'clip',
          size: _detailReviews.length,
          items: [
            for (final review in _detailReviews)
              MediaItem(
                id: '${_metadata.id}:review:${review.id}',
                backend: _metadata.backend,
                kind: MediaKind.clip,
                title: review.author,
                summary: review.content,
                serverId: _metadata.serverId,
                raw: {
                  'detailReview': true,
                  'reviewSource': review.source,
                  'reviewRating': review.rating,
                  if (review.date != null) 'reviewDate': review.date!.toLocal().toIso8601String().substring(0, 10),
                },
              ),
          ],
        ),
      ?_directorHub,
    ];
  }

  Future<void> _activateEnrichment(MediaHub hub, MediaItem item) async {
    if (item.raw?['onlineVideoUrl'] case final String url) {
      await _openOnlinePreview(url, item.displayTitle);
    } else if (item.raw?['detailReview'] == true) {
      await showDetailReview(context, item);
    } else {
      final selected = await chooseMovieCopy(context, _directorCopies?.copiesFor(item) ?? [item]);
      if (!mounted || !_canUseDetail || selected == null) return;
      await Navigator.of(context).push(mediaDetailRoute(metadata: selected));
    }
  }

  Future<void> _openOnlinePreview(String url, String title) async {
    if (!_canUseDetail) return;
    final route = MaterialPageRoute<void>(
      builder: (_) => TrailerPlayerScreen(url: url, title: title),
    );
    await Navigator.of(context).push(route);
    await route.completed;
  }

  Widget _buildDirectorCredits(MediaItem item) {
    final directors = detailDirectors(item);
    if (directors.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 8,
        children: [
          Text(t.discover.director, style: Theme.of(context).textTheme.labelLarge),
          for (final director in directors)
            if (director.id?.isNotEmpty == true && !widget.isOffline)
              TextButton(onPressed: () => _navigateToActorMedia(director), child: Text(director.tag))
            else
              Text(director.tag),
        ],
      ),
    );
  }
}
