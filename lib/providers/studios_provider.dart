import 'dart:async';

import 'package:flutter/foundation.dart';

import '../media/ids.dart';
import '../media/library_query.dart';
import '../media/media_item.dart';
import '../media/media_kind.dart';
import '../media/media_library.dart';
import '../media/media_server_client.dart';
import '../media/media_studio.dart';
import '../media/studio_brands.dart';
import '../media/studio_sort.dart';
import '../media/studio_titles.dart';
import '../mixins/disposable_change_notifier_mixin.dart';
import '../exceptions/media_server_exceptions.dart';
import '../utils/app_logger.dart';
import '../utils/media_server_http_client.dart';
import '../utils/media_server_retry.dart';
import 'hidden_libraries_provider.dart';
import 'libraries_provider.dart';
import 'multi_server_provider.dart';

class StudioSource {
  StudioSource({required this.library, required this.client, required this.kind, required this.studio});
  final MediaLibrary library;
  final MediaServerClient client;
  final MediaKind kind;
  final MediaStudio studio;
}

class StudioGroup {
  StudioGroup({required this.key, required this.name, required Iterable<StudioSource> sources})
    : sources = List.unmodifiable(sources);
  final String key;
  final String name;
  final List<StudioSource> sources;
  MediaItem get homeItem => MediaItem(
    id: key,
    backend: sources.first.library.backend,
    kind: MediaKind.collection,
    title: name,
    raw: {'customStudio': key},
    thumbPath: sources.where((source) => source.studio.imagePath != null).firstOrNull?.studio.imagePath,
    serverId:
        (sources.where((source) => source.studio.imagePath != null).firstOrNull ?? sources.first).library.serverId,
    serverName: sources.first.library.serverName,
    summary: null,
  );
}

/// A partial lookup is not evidence that the failed libraries have no copy.
class StudioCopyLookupException implements Exception {
  const StudioCopyLookupException(this.copies, this.failedLibraries);
  final List<MediaItem> copies;
  final int failedLibraries;
}

/// Profile-session owned. Discovery walks studio facets, never the movie
/// library. Every source remains scoped to its original visible library.
class StudiosProvider extends ChangeNotifier with DisposableChangeNotifierMixin {
  // Named parameters keep the profile-session wiring explicit.
  StudiosProvider({
    required LibrariesProvider libraries,
    required HiddenLibrariesProvider hidden,
    required MultiServerProvider servers,
    required bool Function() isBinding,
    this.bindingChanges,
  }) : _libraries = libraries, // ignore: prefer_initializing_formals
       _hidden = hidden, // ignore: prefer_initializing_formals
       _servers = servers, // ignore: prefer_initializing_formals
       // ignore: prefer_initializing_formals
       _isBinding = isBinding {
    _libraries.addListener(_changed);
    _hidden.addListener(_changed);
    _servers.addOnlineServersListener(_onlineChanged);
    bindingChanges?.addListener(_changed);
  }
  final LibrariesProvider _libraries;
  final HiddenLibrariesProvider _hidden;
  final MultiServerProvider _servers;
  final bool Function() _isBinding;
  final Listenable? bindingChanges;
  bool _started = false;
  bool _scheduled = false;
  int _generation = 0;
  Object? _signature;
  AbortController? _abort;
  final _pageCache = <(StudioSource, StudioSort), ({DateTime at, LibraryPage<MediaItem> page})>{};
  final _pageRequests = <(StudioSource, StudioSort), Future<LibraryPage<MediaItem>>>{};
  AbortController _pageAbort = AbortController();
  Timer? _warmTimer;
  Timer? _retryTimer;
  int _retryAttempts = 0;
  Object? _lastTargetSignature;
  final _completedTargets = <(String, MediaServerClient, MediaKind)>{};
  bool _warming = false;
  List<StudioGroup> _groups = [];
  List<StudioGroup> get groups => _groups;
  bool loading = false;
  bool failed = false;
  StudioGroup? group(String key) => _groups.where((group) => group.key == key).firstOrNull;

  StudioItemsCursor createCursor(List<StudioSource> sources, {StudioSort sort = StudioSort.titleAscending}) =>
      StudioItemsCursor(sources, isVisible: sourceIsVisible, sort: sort, fetchPage: _fetchPage);

  /// Resolve the selected title directly rather than waiting for every page of
  /// the studio's full catalog to download before opening its detail page.
  Future<List<MediaItem>> findTitleCopies(
    StudioGroup group,
    MediaItem selected,
    AbortController abort, {
    Iterable<MediaItem> known = const [],
    void Function(List<MediaItem>)? onPartial,
  }) async {
    final title = selected.title?.trim();
    if (title == null || title.isEmpty) return [selected];
    final sources = group.sources.where((source) => source.kind == selected.kind && sourceIsVisible(source)).toList();
    // With one source there cannot be another library copy to discover. Open
    // immediately instead of making an avoidable round trip for every title.
    if (sources.length <= 1) {
      final titles = StudioTitles()..addAll([selected, ...known]);
      return titles.copiesFor(selected);
    }
    final found = <MediaItem>[...known];
    var failedLibraries = 0;
    var next = 0;
    Future<void> worker() async {
      while (next < sources.length) {
        final source = sources[next++];
        try {
          var offset = 0;
          final seen = <String>{};
          while (true) {
            abort.throwIfAborted();
            final page = await retryTransientMediaServerCall<LibraryPage<MediaItem>>(
              operation: 'Studio copy lookup',
              deadline: const Duration(seconds: 15),
              call: (_, requestAbort) {
                unawaited(abort.trigger.then((_) => requestAbort.abort()));
                abort.throwIfAborted();
                return source.client.fetchLibraryPagedContent(
                  source.library.id,
                  libraryKind: source.kind,
                  abort: requestAbort,
                  query: LibraryQuery(
                    kind: source.kind,
                    search: title,
                    offset: offset,
                    limit: 40,
                    filters: [
                      LibraryFilter(field: 'studio', values: [source.studio.id]),
                    ],
                  ),
                );
              },
            );
            abort.throwIfAborted();
            if (!sourceIsVisible(source)) break;
            var added = 0;
            for (final item in page.items) {
              if (!seen.add(item.id)) continue;
              added++;
              if (item.kind != source.kind ||
                  (item.serverId != null && item.serverId != source.library.serverId) ||
                  (item.libraryId != null && item.libraryId != source.library.id)) {
                continue;
              }
              found.add(
                item.copyWith(
                  serverId: source.library.serverId,
                  serverName: source.library.serverName,
                  libraryId: source.library.id,
                  libraryTitle: source.library.title,
                ),
              );
            }
            if (onPartial != null) {
              final titles = StudioTitles()..addAll([selected, ...found]);
              onPartial(titles.copiesFor(selected));
            }
            offset += page.items.length;
            if (page.items.isEmpty || offset >= page.totalCount) break;
            if (added == 0) throw StateError('Studio copy lookup returned a repeated page');
          }
        } catch (error, stackTrace) {
          abort.throwIfAborted();
          if (error is MediaServerHttpException && error.isCancellation) rethrow;
          failedLibraries++;
          appLogger.w(
            'Studio copy lookup failed for ${source.library.globalKey}',
            error: error,
            stackTrace: stackTrace,
          );
        }
      }
    }

    // A title selection is user-initiated and should not wait through two
    // serial waves for a typical five-library setup. Catalog/background
    // workers retain their lower concurrency limit.
    await Future.wait(List.generate(sources.length.clamp(0, 5), (_) => worker()));
    final titles = StudioTitles()..addAll([selected, ...found]);
    final copies = titles.copiesFor(selected);
    if (failedLibraries > 0) throw StudioCopyLookupException(copies, failedLibraries);
    return copies;
  }

  /// First-page preview for an interactive studio. Each visible source can
  /// publish independently while the fully sorted cursor continues loading.
  Future<void> loadPreviewPages(
    List<StudioSource> sources,
    StudioSort sort,
    AbortController abort,
    void Function(List<MediaItem>) onPage,
  ) async {
    var next = 0;
    Future<void> worker() async {
      while (next < sources.length && !abort.isAborted) {
        final source = sources[next++];
        try {
          final page = await _fetchPage(source, sort, 0, abort);
          abort.throwIfAborted();
          if (!sourceIsVisible(source)) continue;
          onPage([
            for (final item in page.items)
              if (item.kind == source.kind &&
                  (item.serverId == null || item.serverId == source.library.serverId) &&
                  (item.libraryId == null || item.libraryId == source.library.id))
                item.copyWith(
                  serverId: source.library.serverId,
                  serverName: source.library.serverName,
                  libraryId: source.library.id,
                  libraryTitle: source.library.title,
                ),
          ]);
        } catch (error, stackTrace) {
          if (abort.isAborted) return;
          appLogger.w('Studio preview failed for ${source.library.globalKey}', error: error, stackTrace: stackTrace);
        }
      }
    }

    await Future.wait(List.generate(sources.length.clamp(0, 3), (_) => worker()));
  }

  /// A short dwell avoids fetching every tile during a fast remote sweep.
  /// Only the focused studio is warmed, using the same first pages as browsing.
  void warmStudio(String key) {
    _warmTimer?.cancel();
    if (isDisposed) return;
    _warmTimer = Timer(const Duration(milliseconds: 180), () async {
      final sources = group(key)?.sources.where(sourceIsVisible).toList();
      if (_warming || sources == null || sources.isEmpty || isDisposed) return;
      _warming = true;
      try {
        await createCursor(sources).next(_pageAbort, limit: 1);
      } catch (_) {
        // Speculation must never surface an error or poison an explicit retry.
      } finally {
        _warming = false;
      }
    });
  }

  void invalidatePages() {
    _warmTimer?.cancel();
    _pageAbort.abort();
    _pageAbort = AbortController();
    _pageCache.clear();
    _pageRequests.clear();
  }

  Future<LibraryPage<MediaItem>> _fetchPage(
    StudioSource source,
    StudioSort sort,
    int offset,
    AbortController abort,
  ) async {
    abort.throwIfAborted();
    if (!sourceIsVisible(source)) throw StateError('Studio source is no longer visible');
    // Cache only first pages: bounded memory, instant reopen/filter changes,
    // and no speculative walk of an entire large studio catalog.
    final key = (source, sort);
    final cached = offset == 0 ? _pageCache.remove(key) : null;
    if (offset == 0 && cached != null && DateTime.now().difference(cached.at) < const Duration(minutes: 2)) {
      _pageCache[key] = cached;
      return cached.page;
    }
    Future<LibraryPage<MediaItem>> request(AbortController transportAbort) => source.client
        .fetchLibraryPagedContent(
          source.library.id,
          libraryKind: source.kind,
          abort: transportAbort,
          query: LibraryQuery(
            kind: source.kind,
            offset: offset,
            limit: 40,
            sort: sort.forBackend(source.library.backend),
            filters: [
              LibraryFilter(field: 'studio', values: [source.studio.id]),
            ],
          ),
        )
        .timeout(const Duration(seconds: 15));
    if (offset != 0) return request(abort);
    final owner = _pageAbort;
    final future = _pageRequests.putIfAbsent(key, () async {
      final page = await request(owner);
      if (!owner.isAborted && sourceIsVisible(source)) {
        _pageCache[key] = (at: DateTime.now(), page: page);
        while (_pageCache.length > 36) {
          _pageCache.remove(_pageCache.keys.first);
        }
      }
      return page;
    });
    try {
      final page = await future;
      abort.throwIfAborted();
      owner.throwIfAborted();
      return page;
    } finally {
      _pageRequests.removeWhere((candidate, request) => candidate == key && identical(request, future));
    }
  }

  void ensureLoaded() {
    _started = true;
    _changed();
  }

  /// Stop background discovery when the profile hides the Studios Home row.
  void stopDiscovery() {
    if (!_started) return;
    _started = false;
    _generation++;
    _abort?.abort();
    _retryTimer?.cancel();
    _signature = null;
    _lastTargetSignature = null;
    _completedTargets.clear();
    invalidatePages();
    loading = false;
    failed = false;
    _groups = [];
    safeNotifyListeners();
  }

  void _onlineChanged(Set<String> _) => _changed();
  void refresh() {
    _retryTimer?.cancel();
    _retryAttempts = 0;
    _signature = null;
    _lastTargetSignature = null;
    ensureLoaded();
  }

  void _changed() {
    if (!_started || isDisposed || _scheduled) return;
    _scheduled = true;
    scheduleMicrotask(() {
      _scheduled = false;
      if (!isDisposed) unawaited(_load());
    });
  }

  List<(MediaLibrary, MediaServerClient, MediaKind)> _targets() {
    if (_isBinding() || !_hidden.isInitialized) return [];
    return [
      for (final library in _libraries.libraries)
        if (!library.hidden &&
            !library.isShared &&
            !_hidden.hiddenLibraryKeys.contains(library.globalKey) &&
            library.serverId != null &&
            _servers.isServerOnline(ServerId(library.serverId!)))
          for (final kind in [MediaKind.movie, MediaKind.show])
            if (library.kind == kind ||
                (library.kind == MediaKind.unknown &&
                    (library.defaultBrowseKinds.isEmpty || library.defaultBrowseKinds.contains(kind))))
              if (_servers.getClientForServer(ServerId(library.serverId!)) case final client?
                  when client is StudioBrowserClient)
                (library, client, kind),
    ];
  }

  bool sourceIsVisible(StudioSource source) =>
      !isDisposed &&
      !_isBinding() &&
      !_hidden.hiddenLibraryKeys.contains(source.library.globalKey) &&
      _libraries.libraries.any((library) => library.globalKey == source.library.globalKey && !library.hidden) &&
      source.library.serverId != null &&
      _servers.isServerOnline(ServerId(source.library.serverId!)) &&
      identical(_servers.getClientForServer(ServerId(source.library.serverId!)), source.client);

  Future<void> _load() async {
    await _hidden.ensureInitialized();
    if (isDisposed) return;
    final targets = _targets();
    final signature = Object.hashAll(targets.map((target) => (target.$1.globalKey, target.$2, target.$3)));
    if (_signature == signature) return;
    final retryingSameTargets = _lastTargetSignature == signature;
    if (!retryingSameTargets) {
      _retryAttempts = 0;
      _completedTargets.clear();
    }
    _lastTargetSignature = signature;
    _retryTimer?.cancel();
    _signature = signature;
    invalidatePages();
    final generation = ++_generation;
    _abort?.abort();
    final abort = _abort = AbortController();
    if (!retryingSameTargets) _groups = [];
    loading = targets.isNotEmpty;
    failed = false;
    safeNotifyListeners();
    final sources = <String, List<StudioSource>>{
      if (retryingSameTargets)
        for (final group in _groups) group.key: List.of(group.sources),
    };
    final names = <String, String>{
      if (retryingSameTargets)
        for (final group in _groups) group.key: group.name,
    };
    void publishGroups() {
      if (isDisposed || generation != _generation) return;
      final groups =
          [
            for (final entry in sources.entries)
              StudioGroup(key: entry.key, name: names[entry.key]!, sources: entry.value),
          ]..sort(
            (a, b) => studioBrands
                .indexWhere((brand) => brand.key == a.key)
                .compareTo(studioBrands.indexWhere((brand) => brand.key == b.key)),
          );
      _groups = List.unmodifiable(groups);
      safeNotifyListeners();
    }

    // At most three library facets in flight; one slow server cannot create
    // an unbounded fan-out on a small Fire Stick.
    var next = 0;
    var errors = 0;
    Future<void> worker() async {
      AbortController? activeRequest;
      unawaited(abort.trigger.then((_) => activeRequest?.abort()));
      while (next < targets.length && !abort.isAborted) {
        final (library, client, kind) = targets[next++];
        final targetKey = (library.globalKey, client, kind);
        if (_completedTargets.contains(targetKey)) continue;
        try {
          var offset = 0;
          final seen = <String>{};
          for (var pageIndex = 0; pageIndex < 50; pageIndex++) {
            abort.throwIfAborted();
            final requestAbort = activeRequest = AbortController();
            final page = await (client as StudioBrowserClient)
                .fetchStudios(library.id, kind: kind, offset: offset, limit: 500, abort: requestAbort)
                .timeout(
                  const Duration(seconds: 12),
                  onTimeout: () {
                    requestAbort.abort();
                    throw TimeoutException('Studio discovery timed out', const Duration(seconds: 12));
                  },
                );
            activeRequest = null;
            if (isDisposed || generation != _generation) return;
            var added = 0;
            var matched = false;
            for (final studio in page.items) {
              if (!seen.add(studio.id)) continue;
              added++;
              final brand = studioBrandForName(studio.name);
              if (brand == null) continue;
              final key = brand.key;
              matched = true;
              names.putIfAbsent(key, () => brand.name);
              final matches = sources.putIfAbsent(key, () => []);
              if (!matches.any(
                (source) =>
                    source.library.globalKey == library.globalKey &&
                    source.kind == kind &&
                    source.studio.id == studio.id,
              )) {
                matches.add(StudioSource(library: library, client: client, kind: kind, studio: studio));
              }
            }
            if (matched) publishGroups();
            if (page.items.isEmpty || added == 0) break;
            offset += page.items.length;
            if (offset >= page.totalCount) break;
          }
          _completedTargets.add(targetKey);
        } catch (error) {
          if (abort.isAborted) return;
          errors++;
          appLogger.d('Studio discovery failed for ${library.globalKey}', error: error);
        }
      }
    }

    await Future.wait(List.generate(targets.length.clamp(0, 3), (_) => worker()));
    if (isDisposed || generation != _generation) return;
    loading = false;
    failed = errors > 0;
    if (failed) {
      // A transient cold-start failure must not permanently memoize an empty
      // facet set. Retry a bounded number of times and permit later re-entry.
      if (_retryAttempts < 2) {
        final delay = Duration(seconds: ++_retryAttempts * 2);
        _retryTimer = Timer(delay, () {
          _signature = null;
          _changed();
        });
      }
    } else {
      _retryAttempts = 0;
      if (sources.isEmpty) _groups = [];
    }
    safeNotifyListeners();
  }

  @override
  void dispose() {
    _generation++;
    _warmTimer?.cancel();
    _retryTimer?.cancel();
    _pageAbort.abort();
    _pageCache.clear();
    _pageRequests.clear();
    _abort?.abort();
    _libraries.removeListener(_changed);
    _hidden.removeListener(_changed);
    _servers.removeOnlineServersListener(_onlineChanged);
    bindingChanges?.removeListener(_changed);
    super.dispose();
  }
}

/// Paged k-way merge across library/kind sources. Every source is server-sorted;
/// comparing their heads keeps the chosen order correct across libraries, not
/// merely within each downloaded page. A failed batch is fully retryable.
class StudioItemsCursor {
  StudioItemsCursor(this.sources, {required this.isVisible, this.sort = StudioSort.titleAscending, this.fetchPage});
  final List<StudioSource> sources;
  final bool Function(StudioSource) isVisible;
  final StudioSort sort;
  final Future<LibraryPage<MediaItem>> Function(StudioSource, StudioSort, int, AbortController)? fetchPage;
  final Map<int, List<MediaItem>> _buffers = {};
  final Map<int, int> _offsets = {};
  final Set<int> _exhausted = {};
  final Set<String> _seen = {};
  final Set<(int, String)> _sourceItems = {};
  final Map<(MediaServerClient, String), int?> _episodeDates = {};
  bool get hasMore => sources.indexed.any(
    (entry) => isVisible(entry.$2) && ((_buffers[entry.$1]?.isNotEmpty ?? false) || !_exhausted.contains(entry.$1)),
  );
  Future<List<MediaItem>> next(AbortController abort, {int limit = 40}) async {
    final buffers = {for (final entry in _buffers.entries) entry.key: List<MediaItem>.of(entry.value)};
    final offsets = Map<int, int>.of(_offsets);
    final exhausted = Set<int>.of(_exhausted);
    final seen = Set<String>.of(_seen);
    final sourceItems = Set<(int, String)>.of(_sourceItems);
    try {
      return await _next(abort, limit: limit);
    } catch (_) {
      // Retry the same page transaction: partial successes must not disappear
      // because a later library request failed before the batch was returned.
      _buffers
        ..clear()
        ..addAll(buffers);
      _offsets
        ..clear()
        ..addAll(offsets);
      _exhausted
        ..clear()
        ..addAll(exhausted);
      _seen
        ..clear()
        ..addAll(seen);
      _sourceItems
        ..clear()
        ..addAll(sourceItems);
      rethrow;
    }
  }

  Future<List<MediaItem>> _next(AbortController abort, {required int limit}) async {
    final result = <MediaItem>[];
    Future<void> fill(int index) async {
      final source = sources[index];
      if (!isVisible(source)) {
        _buffers[index] = [];
        _exhausted.add(index);
        return;
      }
      var pages = 0;
      while ((_buffers[index]?.isEmpty ?? true) && !_exhausted.contains(index)) {
        abort.throwIfAborted();
        if (pages++ >= 20) throw StateError('Studio source returned too many unusable pages');
        final offset = _offsets[index] ?? 0;
        final page = fetchPage != null
            ? await fetchPage!(source, sort, offset, abort)
            : await source.client
                  .fetchLibraryPagedContent(
                    source.library.id,
                    libraryKind: source.kind,
                    abort: abort,
                    query: LibraryQuery(
                      kind: source.kind,
                      offset: offset,
                      limit: 40,
                      sort: sort.forBackend(source.library.backend),
                      filters: [
                        LibraryFilter(field: 'studio', values: [source.studio.id]),
                      ],
                    ),
                  )
                  .timeout(const Duration(seconds: 15));
        abort.throwIfAborted();
        if (!isVisible(source)) {
          _buffers[index] = [];
          _exhausted.add(index);
          return;
        }
        final items = <MediaItem>[];
        var newSourceItems = 0;
        for (final item in page.items) {
          if (!_sourceItems.add((index, item.id))) continue;
          newSourceItems++;
          if (item.kind != source.kind ||
              (item.serverId != null && item.serverId != source.library.serverId) ||
              (item.libraryId != null && item.libraryId != source.library.id)) {
            continue;
          }
          items.add(
            item.copyWith(
              serverId: source.library.serverId,
              serverName: source.library.serverName,
              libraryId: source.library.id,
              libraryTitle: source.library.title,
            ),
          );
        }
        _buffers[index] = items;
        _offsets[index] = offset + page.items.length;
        if (page.items.isEmpty || _offsets[index]! >= page.totalCount || newSourceItems == 0) _exhausted.add(index);
      }
    }

    while (hasMore && result.length < limit) {
      abort.throwIfAborted();
      // Publish already merged results before waiting for a source's next
      // network page. The next call refills it before choosing another head,
      // so global sort order remains intact without holding visible posters.
      if (result.isNotEmpty &&
          sources.indexed.any(
            (entry) => isVisible(entry.$2) && (_buffers[entry.$1]?.isEmpty ?? true) && !_exhausted.contains(entry.$1),
          )) {
        break;
      }
      // Wait for all workers before rollback if a source fails; no worker may
      // mutate restored cursor state after the batch has been rejected.
      var nextSource = 0;
      Future<void> worker() async {
        while (nextSource < sources.length) {
          await fill(nextSource++);
        }
      }

      await Future.wait(List.generate(sources.length.clamp(0, 3), (_) => worker()));
      final heads = [
        for (var index = 0; index < sources.length; index++)
          if (isVisible(sources[index]) && (_buffers[index]?.isNotEmpty ?? false)) index,
      ];
      if (heads.isEmpty) break;
      if (sort == StudioSort.recentlyAddedEpisode && heads.length > 1) {
        // Server order is sufficient for a single source. Across sources the
        // show row may omit its latest episode date; resolve only merge heads,
        // with bounded concurrency, and reuse each lookup for later batches.
        var nextHead = 0;
        Future<void> hydrateHeads() async {
          while (nextHead < heads.length) {
            final index = heads[nextHead++];
            final item = _buffers[index]!.first;
            if (studioEpisodeAddedAt(item) != null) continue;
            final client = sources[index].client;
            if (client is! LatestEpisodeAddedClient) continue;
            final key = (client, item.id);
            if (!_episodeDates.containsKey(key)) {
              _episodeDates[key] = await (client as LatestEpisodeAddedClient)
                  .fetchLatestEpisodeAddedAt(item.id, abort: abort)
                  .timeout(const Duration(seconds: 15));
            }
            abort.throwIfAborted();
            final date = _episodeDates[key];
            if (date != null) {
              _buffers[index]![0] = item.copyWith(raw: {...?item.raw, studioEpisodeAddedAtKey: date});
            }
          }
        }

        await Future.wait(List.generate(heads.length.clamp(0, 3), (_) => hydrateHeads()));
        abort.throwIfAborted();
        heads.removeWhere((index) => !isVisible(sources[index]));
        if (heads.isEmpty) continue;
      }
      heads.sort((a, b) => sort.compare(_buffers[a]!.first, _buffers[b]!.first));
      final item = _buffers[heads.first]!.removeAt(0);
      if (_seen.add(item.globalKey)) result.add(item);
    }
    return result;
  }
}
