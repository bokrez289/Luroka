import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

import '../media/media_item.dart';
import '../media/media_kind.dart';
import '../media/media_rating.dart';
import '../media/media_server_client.dart';
import '../connection/connection_registry.dart';
import '../mixins/disposable_change_notifier_mixin.dart';
import '../models/catalog/catalog_item.dart';
import '../profiles/active_plex_token.dart';
import '../profiles/active_profile_provider.dart';
import '../profiles/profile_connection_registry.dart';
import '../profiles/profile.dart';
import '../services/base_shared_preferences_service.dart';
import '../services/kids_profile_service.dart';
import '../services/catalog/library_watchlist_candidates.dart';
import '../services/catalog/catalog_source.dart';
import '../services/catalog/community_ratings.dart';
import '../services/catalog/anilist_catalog_source.dart';
import '../services/catalog/mdblist_catalog_source.dart';
import '../services/catalog/mal_catalog_source.dart';
import '../services/catalog/plex_catalog_source.dart';
import '../services/catalog/seerr_catalog_source.dart';
import '../services/catalog/simkl_catalog_source.dart';
import '../services/catalog/trakt_catalog_source.dart';
import '../services/catalog/tmdb_catalog_source.dart';
import '../services/catalog/cinemeta_catalog_source.dart';
import '../services/catalog/discovery_shelves.dart';
import '../utils/log_redaction_manager.dart';
import '../services/trackers/future_coalescer.dart';
import '../services/plex_discover_client.dart';
import '../services/seerr/seerr_client.dart';
import '../services/trackers/anilist/anilist_client.dart';
import '../services/trackers/mal/mal_client.dart';
import '../services/trackers/mdblist/mdblist_client.dart';
import '../services/trackers/simkl/simkl_client.dart';
import '../services/trackers/trakt/trakt_client.dart';
import 'seerr_account_provider.dart';
import 'trackers_provider.dart';
import '../utils/platform_detector.dart';
import '../utils/app_logger.dart';

typedef PlexDiscoverSessionSupplier = Future<PlexDiscoverSession?> Function();

/// Resolve the active Plex/Home profile credentials used by the cloud
/// Discover provider. Home-user tokens take precedence over the account token
/// so each profile sees and mutates its own universal watchlist.
Future<PlexDiscoverSession?> resolvePlexDiscoverSession({
  required ActiveProfileProvider activeProfile,
  required ConnectionRegistry connections,
  required ProfileConnectionRegistry profileConnections,
}) async {
  final resolved = await resolveActivePlexToken(
    activeProfile: activeProfile,
    connections: connections,
    profileConnections: profileConnections,
    allowAccountTokenForHomeUser: true,
  );
  if (resolved == null) return null;

  final session = PlexDiscoverSession(
    accessToken: resolved.token,
    clientIdentifier: resolved.identity.account.clientIdentifier,
  );
  return session.isUsable ? session : null;
}

/// Owns one client/source pair and applies the shared rebind/dispose contract.
class _CatalogSourceBinding<Client extends Object, Source extends CatalogSource> {
  _CatalogSourceBinding(this._create, {bool Function(Client? previous, Client? next)? equals})
    : _equals = equals ?? ((previous, next) => identical(previous, next));

  final Source Function(Client client) _create;
  final bool Function(Client? previous, Client? next) _equals;
  Client? _client;
  Source? source;

  bool update(Client? next) {
    if (_equals(_client, next)) return false;
    final replacement = next == null ? null : _create(next);
    source?.dispose();
    _client = next;
    source = replacement;
    return true;
  }

  void dispose() {
    source?.dispose();
    source = null;
    _client = null;
  }
}

/// Enumerates the connected [CatalogSource]s for the active profile and owns
/// which one the Explore tab shows.
///
/// Profile-scoped. Plex Discover credentials hydrate with the active profile;
/// tracker/Seerr sources are rebuilt through the proxy-provider update hook so
/// every source appears and disappears with its owning account connection
/// (which also drives the Explore tab's visibility).
class CatalogSourcesProvider extends ChangeNotifier with DisposableChangeNotifierMixin {
  CatalogSourcesProvider({
    this.plexSessionSupplier,
    bool enablePublicCatalog = false,
    @visibleForTesting String? defaultTmdbCredential,
  })
    : _cinemeta = enablePublicCatalog ? CinemetaCatalogSource() : null,
      _enablePublicCatalog = enablePublicCatalog,
      _defaultTmdbCredential = defaultTmdbCredential ?? kDefaultTmdbCredential;

  /// Gates the built-in TMDb credential fallback the same way the Cinemeta
  /// public source is gated: without public catalogs there is no shared-key
  /// discovery at all.
  final bool _enablePublicCatalog;
  final String _defaultTmdbCredential;

  final PlexDiscoverSessionSupplier? plexSessionSupplier;
  static const tmdbCredentialKey = 'luroka_tmdb_credential';
  TmdbCatalogSource? _tmdb;
  TmdbCatalogSource? get tmdbSource => _tmdb;

  /// Whether the active TMDb source runs on a user-supplied credential (as
  /// opposed to the built-in shared key). Drives the settings screen copy.
  bool get tmdbHasCustomCredential => _userTmdbKey?.isNotEmpty == true;
  String? _userTmdbKey;
  final CinemetaCatalogSource? _cinemeta;
  CatalogSource? get discoverySource => KidsProfileService.instance.isActiveKids ? null : _tmdb ?? _cinemeta;

  Future<void> connectTmdb(String credential) async {
    final generation = _profileBindingGeneration;
    final scope = _activeUserUuid;
    final trimmed = credential.trim();
    if (trimmed.isEmpty) throw ArgumentError('Empty TMDb credential');
    LogRedactionManager.registerToken(trimmed);
    final source = TmdbCatalogSource(trimmed);
    try {
      await source.validate();
      final prefs = await BaseSharedPreferencesService.sharedCache();
      if (isDisposed || generation != _profileBindingGeneration) {
        source.dispose();
        return;
      }
      await prefs.setString(profileScopedPrefsKey(scope, tmdbCredentialKey), trimmed);
      await prefs.setString(profileScopedPrefsKey(scope, _activeSourceBaseKey), CatalogSourceId.tmdb.name);
      if (isDisposed || generation != _profileBindingGeneration) {
        source.dispose();
        return;
      }
      _tmdb?.dispose();
      _tmdb = source;
      _userTmdbKey = trimmed;
      _preferredSourceId = CatalogSourceId.tmdb;
      _invalidateWatchlistCandidates();
      safeNotifyListeners();
    } catch (_) {
      source.dispose();
      rethrow;
    }
  }

  Future<void> disconnectTmdb() async {
    final generation = _profileBindingGeneration;
    final scope = _activeUserUuid;
    final prefs = await BaseSharedPreferencesService.sharedCache();
    await prefs.remove(profileScopedPrefsKey(scope, tmdbCredentialKey));
    if (isDisposed || generation != _profileBindingGeneration) return;
    _userTmdbKey = null;
    _tmdb?.dispose();
    // "Disconnect" drops the user's own credential; with public catalogs the
    // built-in shared key keeps discovery working.
    final defaultKey = _defaultTmdbCredential.trim();
    _tmdb = _enablePublicCatalog && defaultKey.isNotEmpty ? TmdbCatalogSource(defaultKey) : null;
    if (defaultKey.isNotEmpty) LogRedactionManager.registerToken(defaultKey);
    _invalidateWatchlistCandidates();
    safeNotifyListeners();
  }

  final _CatalogSourceBinding<PlexDiscoverSession, PlexCatalogSource> _plex = _CatalogSourceBinding(
    // Widened hub artwork (`excludeElements=Media` instead of `Media,Image`)
    // costs +104.95% — 27,287 to 55,925 bytes for 26 items, uncached, with up
    // to six hubs hydrated concurrently. Its only consumer is the TV
    // spotlight's logo/banner treatment, so only TV pays for it.
    (session) => PlexCatalogSource(PlexDiscoverClient(session), includeImageVariants: PlatformDetector.isTV()),
    equals: (previous, next) => previous == next,
  );
  final _CatalogSourceBinding<TraktClient, TraktCatalogSource> _trakt = _CatalogSourceBinding(TraktCatalogSource.new);
  final _CatalogSourceBinding<MalClient, MalCatalogSource> _mal = _CatalogSourceBinding(MalCatalogSource.new);
  final _CatalogSourceBinding<AnilistClient, AnilistCatalogSource> _anilist = _CatalogSourceBinding(
    AnilistCatalogSource.new,
  );
  final _CatalogSourceBinding<SimklClient, SimklCatalogSource> _simkl = _CatalogSourceBinding(SimklCatalogSource.new);
  final _CatalogSourceBinding<MdblistClient, MdblistCatalogSource> _mdblist = _CatalogSourceBinding(
    MdblistCatalogSource.new,
  );
  final _CatalogSourceBinding<SeerrClient, SeerrCatalogSource> _seerr = _CatalogSourceBinding(SeerrCatalogSource.new);
  int _profileBindingGeneration = 0;
  int _plexSessionGeneration = 0;
  bool? _lastProfileBindingState;
  static const String _activeSourceBaseKey = 'catalog_active_source';
  CatalogSourceId? _preferredSourceId;
  String _activeUserUuid = '';
  static const _discoveryShelvesKey = 'luroka_discovery_shelves_v1';
  Set<String> _discoveryShelfIds = {...defaultDiscoveryShelves};
  Set<String> get discoveryShelfIds => Set.unmodifiable(_discoveryShelfIds);
  int discoveryShelvesRevision = 0;

  Future<void> setDiscoveryShelves(Set<String> ids) async {
    final generation = _profileBindingGeneration;
    final key = profileScopedPrefsKey(_activeUserUuid, _discoveryShelvesKey);
    final selected = ids.intersection(validDiscoveryShelfIds);
    final prefs = await BaseSharedPreferencesService.sharedCache();
    if (isDisposed || generation != _profileBindingGeneration) return;
    await prefs.setStringList(key, selected.toList()..sort());
    if (isDisposed || generation != _profileBindingGeneration) return;
    _discoveryShelfIds = selected;
    discoveryShelvesRevision++;
    safeNotifyListeners();
  }

  // Per-item watchlist candidates (see [watchlistCandidatesFor]): the
  // coalescer keeps one load in flight per item, the results map gives menu
  // surfaces synchronous access for labeling, and the generation guard keeps
  // a load that outlives a source rebind from repopulating disposed sources.
  final KeyedFutureCoalescer<String, List<WatchlistCandidate>> _watchlistCandidateLoads = KeyedFutureCoalescer();
  final Map<String, List<WatchlistCandidate>> _watchlistCandidateResults = {};
  int _watchlistCandidateGeneration = 0;

  // Community scores for the detail screens (see [communityRatingsForLibraryItem]).
  // Not invalidated on rebind: the scores are public, and only connected
  // providers are ever asked.
  final CommunityRatingsLoader _communityRatings = CommunityRatingsLoader();

  List<CatalogSource> get connectedSources => KidsProfileService.instance.isActiveKids
      ? []
      : [
          ?_tmdb,
          ?_cinemeta,
          ?_trakt.source,
          ?_mal.source,
          ?_anilist.source,
          ?_simkl.source,
          ?_mdblist.source,
          ?_plex.source,
          ?_seerr.source,
        ];

  bool get hasAnySource => connectedSources.isNotEmpty;

  /// The connected Seerr source, for the request surfaces (detail-screen
  /// Request action and sheet) that need Seerr's client beyond the
  /// [CatalogSource] interface.
  SeerrCatalogSource? get seerrSource => KidsProfileService.instance.isActiveKids ? null : _seerr.source;

  /// The source whose rows the Explore tab shows: the user's persisted pick
  /// when it is still connected, otherwise Cinemeta when available.
  CatalogSource? get activeSource {
    final sources = connectedSources;
    return sources.firstWhereOrNull((s) => s.id == _preferredSourceId) ??
        sources.firstWhereOrNull((s) => s.id == CatalogSourceId.cinemeta) ??
        sources.firstOrNull;
  }

  /// The source backing watchlist membership/mutation surfaces (media-detail
  /// action). Independent of [activeSource] so switching the Explore tab to a
  /// watchlist-less source (e.g. a future Seerr) keeps the action alive.
  CatalogSource? get watchlistCapableSource => connectedSources.firstWhereOrNull((s) => s.supportsWatchlist);

  /// All connected sources whose watchlist can be read and mutated, for
  /// surfaces that offer a choice (media-detail bookmark with several
  /// providers connected).
  List<CatalogSource> get watchlistCapableSources => [...connectedSources.where((source) => source.supportsWatchlist)];

  /// The watchlist source catalog-item surfaces (detail screen, card menu)
  /// must bind to: the item's OWN source — a MAL card toggles the MAL Plan to
  /// Watch, never another provider's list. An item whose source is connected
  /// but has no watchlist (Seerr) gets none at all — no falling back to
  /// another provider's list. The fallback exists only for items whose
  /// source got disconnected mid-session.
  CatalogSource? watchlistSourceFor(CatalogItem item) {
    final own = connectedSources.firstWhereOrNull((s) => s.id == item.source);
    if (own != null) return own.supportsWatchlist ? own : null;
    return watchlistCapableSource;
  }

  static String _watchlistItemKey(MediaItem item) => '${item.serverId ?? ''}/${item.id}';

  /// Session-cached [resolveWatchlistCandidates] for a library item: every
  /// watchlist-capable source the item exists in, with its per-source ids.
  /// Shared by the detail screen and card context menus so an item resolves
  /// its external ids at most once per session. Failures are not cached (the
  /// next call retries) — nor is an answer missing a source that failed to
  /// resolve, which would otherwise hide that source's action for the rest of
  /// the session; a null [client] (server offline) resolves to nothing without
  /// caching the miss. Invalidated when sources rebind.
  Future<List<WatchlistCandidate>> watchlistCandidatesFor(MediaItem item, {required MediaServerClient? client}) {
    final key = _watchlistItemKey(item);
    final cached = _watchlistCandidateResults[key];
    if (cached != null) return Future.value(cached);
    if (client == null) return Future.value(const []);
    final generation = _watchlistCandidateGeneration;
    return _watchlistCandidateLoads.run(key, () async {
      var complete = true;
      final candidates = await resolveWatchlistCandidates(
        client: client,
        item: item,
        sources: watchlistCapableSources,
        onSourceFailed: (_) => complete = false,
      );
      if (complete && !isDisposed && generation == _watchlistCandidateGeneration) {
        _watchlistCandidateResults[key] = candidates;
      }
      return candidates;
    });
  }

  /// The already-resolved candidates for [item], or null when never resolved
  /// this session. Menu surfaces label from this without awaiting; an empty
  /// list means no connected source can hold the item.
  List<WatchlistCandidate>? cachedWatchlistCandidatesFor(MediaItem item) =>
      _watchlistCandidateResults[_watchlistItemKey(item)];

  void _invalidateWatchlistCandidates() {
    _watchlistCandidateGeneration++;
    _watchlistCandidateLoads.clear();
    _watchlistCandidateResults.clear();
  }

  /// The connected trackers' community scores for a library [item], growing
  /// as each answers (see [CommunityRatingsLoader.load]). Each tracker's ids
  /// come from [watchlistCandidatesFor] — every tracker with scores also has
  /// a watchlist — so the item's external ids are fetched once for both, and
  /// only when a tracker is connected. Movies and shows only: the trackers
  /// score whole titles.
  Stream<List<MediaRatingSource>> communityRatingsForLibraryItem(MediaItem item, {required MediaServerClient? client}) {
    if (item.kind != MediaKind.movie && item.kind != MediaKind.show) return const Stream.empty();
    Future<List<WatchlistCandidate>>? candidates;
    Future<CatalogItemIds>? externalIds;
    return _communityRatings.load(item.kind, connectedSources, (source) async {
      if ((source is TmdbCatalogSource || source is CinemetaCatalogSource) && client != null) {
        return externalIds ??= client.fetchExternalIds(item.id).then(CatalogItemIds.fromExternal);
      }
      final resolved = await (candidates ??= watchlistCandidatesFor(item, client: client));
      return resolved.firstWhereOrNull((candidate) => candidate.source.id == source.id)?.ids;
    });
  }

  /// The connected trackers' community scores for a catalog [item]. A tracker
  /// with a score of its own is not asked about its own items — their detail
  /// already carries that score as the headline — and another tracker's copy
  /// of it (MDBList's Trakt score on a Trakt item) is dropped; MDBList, which
  /// has none, is asked about its own items too.
  Stream<List<MediaRatingSource>> communityRatingsForCatalogItem(CatalogItem item) {
    if (item.kind != MediaKind.movie && item.kind != MediaKind.show) return const Stream.empty();
    final ownKey = communityRatingKeyFor(item.source);
    return _communityRatings
        .load(
          item.kind,
          [
            for (final source in connectedSources)
              if (ownKey == null || source.id != item.source) source,
          ],
          // A source that cannot place the item still gets its native ids
          // (an AniList item's MAL id), which are all a fetcher reads.
          (source) async => item.ids.mergedWith(
            await source.resolveItemIds(item.kind, item.ids.toExternalIds()) ?? const CatalogItemIds(),
          ),
        )
        .map(
          (ratings) => [
            for (final rating in ratings)
              if (rating.source != ownKey) rating,
          ],
        );
  }

  /// Hydrate the per-profile active-source preference and Plex session.
  Future<void> onActiveProfileChanged(String? userUuid) async {
    final generation = ++_profileBindingGeneration;
    _activeUserUuid = userUuid ?? '';
    final prefs = await BaseSharedPreferencesService.sharedCache();
    final raw = prefs.getString(profileScopedPrefsKey(_activeUserUuid, _activeSourceBaseKey));
    if (isDisposed || generation != _profileBindingGeneration) return;

    _preferredSourceId = CatalogSourceId.values.asNameMap()[raw];
    final savedShelves = prefs.getStringList(profileScopedPrefsKey(_activeUserUuid, _discoveryShelvesKey));
    _discoveryShelfIds = savedShelves == null
        ? {...defaultDiscoveryShelves}
        : savedShelves.toSet().intersection(validDiscoveryShelfIds);
    discoveryShelvesRevision++;
    final scopedTmdbKey = profileScopedPrefsKey(_activeUserUuid, tmdbCredentialKey);
    var tmdbKey = prefs.getString(scopedTmdbKey);
    // Migrate the pre-profile credential once, to the first active profile.
    if (_activeUserUuid.isNotEmpty && tmdbKey == null) {
      final legacy = prefs.getString(tmdbCredentialKey);
      if (legacy != null) {
        await prefs.setString(scopedTmdbKey, legacy);
        if (isDisposed || generation != _profileBindingGeneration) return;
        await prefs.remove(tmdbCredentialKey);
        tmdbKey = legacy;
      }
    }
    _userTmdbKey = tmdbKey;
    _tmdb?.dispose();
    _tmdb = null;
    final defaultKey = _defaultTmdbCredential.trim();
    final credential = tmdbKey?.isNotEmpty == true ? tmdbKey! : (_enablePublicCatalog ? defaultKey : '');
    if (credential.isNotEmpty) {
      LogRedactionManager.registerToken(credential);
      _tmdb = TmdbCatalogSource(credential);
    }
    safeNotifyListeners();
    await _refreshPlexSession(profileGeneration: generation, clearOnFailure: true);
  }

  /// Refresh Plex Discover credentials after a same-profile server rebind.
  /// The active-profile binder announces start/finish even when the profile id
  /// stays unchanged, which is the connection-add/remove seam.
  Future<void> onProfileBindingStateChanged(bool isBinding) async {
    final previous = _lastProfileBindingState;
    _lastProfileBindingState = isBinding;
    if (isBinding && previous != true) _plexSessionGeneration++;
    if (previous == true && !isBinding) await _refreshPlexSession();
  }

  Future<void> _refreshPlexSession({int? profileGeneration, bool clearOnFailure = false}) async {
    final expectedProfileGeneration = profileGeneration ?? _profileBindingGeneration;
    final sessionGeneration = ++_plexSessionGeneration;
    PlexDiscoverSession? session;
    try {
      session = await plexSessionSupplier?.call();
    } catch (error, stackTrace) {
      appLogger.w('Plex Discover session hydrate failed', error: error, stackTrace: stackTrace);
      if (clearOnFailure &&
          !isDisposed &&
          expectedProfileGeneration == _profileBindingGeneration &&
          sessionGeneration == _plexSessionGeneration &&
          _plex.update(null)) {
        _invalidateWatchlistCandidates();
        safeNotifyListeners();
      }
      return;
    }
    if (isDisposed ||
        expectedProfileGeneration != _profileBindingGeneration ||
        sessionGeneration != _plexSessionGeneration) {
      return;
    }
    if (_plex.update(session)) {
      _invalidateWatchlistCandidates();
      safeNotifyListeners();
    }
  }

  CatalogSourceId? get preferredSourceId => _preferredSourceId;

  /// Null clears the override and restores the first connected source.
  Future<void> setActiveSource(CatalogSourceId? id, {void Function()? checkCurrent}) async {
    if (id != null && _preferredSourceId == id) return;
    final userScope = _activeUserUuid;
    final generation = _profileBindingGeneration;
    final prefs = await BaseSharedPreferencesService.sharedCache();
    if (isDisposed || generation != _profileBindingGeneration) return;
    checkCurrent?.call();
    final key = profileScopedPrefsKey(userScope, _activeSourceBaseKey);
    if (id == null) {
      await prefs.remove(key);
    } else {
      await prefs.setString(key, id.name);
    }
    if (isDisposed || generation != _profileBindingGeneration) return;
    checkCurrent?.call();
    _preferredSourceId = id;
    safeNotifyListeners();
  }

  /// Proxy-provider update hook: rebuild a source when its catalog client
  /// was rebound (connect/disconnect/profile switch).
  void update(TrackersProvider trackers, SeerrAccountProvider seerr) {
    var changed = false;
    changed = _trakt.update(trackers.traktCatalogClient) || changed;
    changed = _mal.update(trackers.malCatalogClient) || changed;
    changed = _anilist.update(trackers.anilistCatalogClient) || changed;
    changed = _simkl.update(trackers.simklCatalogClient) || changed;
    changed = _mdblist.update(trackers.mdblistCatalogClient) || changed;
    changed = _seerr.update(seerr.catalogClient) || changed;
    if (changed) {
      _invalidateWatchlistCandidates();
      safeNotifyListeners();
    }
  }

  @override
  void dispose() {
    _cinemeta?.dispose();
    _tmdb?.dispose();
    _plex.dispose();
    _trakt.dispose();
    _mal.dispose();
    _anilist.dispose();
    _mdblist.dispose();
    _simkl.dispose();
    _seerr.dispose();
    super.dispose();
  }
}
