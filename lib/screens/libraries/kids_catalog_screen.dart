import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../i18n/strings.g.dart';
import '../../media/kids_grouped_library_pager.dart';
import '../../media/library_query.dart';
import '../../media/media_item.dart';
import '../../media/media_kind.dart';
import '../../media/media_library.dart';
import '../../media/studio_titles.dart';
import '../../mixins/refreshable.dart';
import '../../navigation/main_screen_scope.dart';
import '../../providers/hidden_libraries_provider.dart';
import '../../providers/libraries_provider.dart';
import '../../services/kids_profile_service.dart';
import '../../utils/formatters.dart';
import '../../utils/media_navigation_helper.dart';
import '../../utils/media_server_http_client.dart';
import '../../utils/platform_detector.dart';
import '../../utils/provider_extensions.dart';
import '../../widgets/app_menu.dart';
import '../../widgets/focusable_media_card.dart';

/// Child-facing catalogue: page through permitted libraries as a single list.
/// Keep one small buffer per library so sorting does not require downloading
/// the entire household collection or moving a poster while it has focus.
class KidsCatalogScreen extends StatefulWidget {
  const KidsCatalogScreen({super.key, required this.kind});
  final MediaKind kind;
  @override
  State<KidsCatalogScreen> createState() => _KidsCatalogState();
}

class _Cursor {
  _Cursor(this.library);
  final MediaLibrary library;
  final buffer = Queue<MediaItem>();
  int offset = 0;
  bool done = false;
}

class _KidsCatalogState extends State<KidsCatalogScreen> with FocusableTab, FullRefreshable, ManualRefreshable {
  final _options = FocusNode();
  final _scroll = ScrollController();
  final _nodes = <String, FocusNode>{};
  List<MediaLibrary> _libraries = [];
  List<_Cursor> _cursors = [];
  StudioTitles _titles = StudioTitles();
  AbortController _token = AbortController();
  String? _owner;
  bool _descending = false, _busy = false, _error = false;
  bool _animatedOnly = false;
  MediaItem? _focused;
  final _kids = KidsProfileService.instance;

  @override
  void initState() {
    super.initState();
    _kids.addListener(_policyChanged);
  }

  void _policyChanged() {
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    _kids.removeListener(_policyChanged);
    _token.abort();
    _options.dispose();
    _scroll.dispose();
    for (final node in _nodes.values) {
      node.dispose();
    }
    super.dispose();
  }

  void _reset(List<MediaLibrary> libraries) {
    _token.abort();
    _token = AbortController();
    _owner = _kids.activeId;
    _libraries = libraries;
    _cursors = libraries.map(_Cursor.new).toList();
    _titles = StudioTitles();
    _focused = null;
    _busy = false;
    _error = false;
    final token = _token;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || token.isAborted) return;
      if (_scroll.hasClients) _scroll.jumpTo(0);
      _more();
    });
  }

  @override
  void fullRefresh() => setState(() => _reset(_libraries));
  @override
  void manualRefresh() => fullRefresh();
  @override
  void focusActiveTabIfReady() {
    final node = _nodes[_focused?.globalKey] ?? _nodes[_titles.items.firstOrNull?.globalKey];
    (node?.context != null ? node! : _options).requestFocus();
  }

  Future<void> _fill(_Cursor cursor, AbortController token) async {
    final lib = cursor.library;
    try {
      final client = context.getMediaClientForLibrary(lib);
      while (cursor.buffer.isEmpty && !cursor.done && !token.isAborted && _kids.activeId == _owner) {
        final query = LibraryQuery(
          kind: widget.kind,
          offset: cursor.offset,
          limit: 48,
          sort: LibrarySort(
            field: 'title',
            direction: _descending ? LibrarySortDirection.descending : LibrarySortDirection.ascending,
          ),
        );
        int? raw;
        final page = client is KidsRawLibraryClient
            ? await (client as KidsRawLibraryClient).fetchKidsLibraryPage(
                lib.id,
                query: query,
                libraryKind: lib.kind,
                abort: token,
                onRawCount: (n) => raw = n,
              )
            : await client.fetchLibraryPagedContent(lib.id, query: query, libraryKind: lib.kind, abort: token);
        if (!mounted || token.isAborted || _kids.activeId != _owner || !_kids.allowsLibrary(lib)) return;
        final count = raw ?? page.items.length;
        cursor.offset += count;
        cursor.done = count == 0 || cursor.offset >= page.totalCount;
        cursor.buffer.addAll(
          page.items
              .where((item) => item.kind == widget.kind)
              .map((item) => _kids.withContext(item.copyWith(serverId: lib.serverId), libraryId: lib.id))
              .where(_kids.allows)
              .where(
                (item) => !_animatedOnly || (item.genres?.any((g) => g.trim().toLowerCase() == 'animation') ?? false),
              ),
        );
      }
    } catch (_) {
      if (!token.isAborted) {
        cursor.done = true;
        _error = true;
      }
    }
  }

  Future<void> _more() async {
    if (_busy || !_kids.isActiveKids || _kids.activeId != _owner || _cursors.every((c) => c.done && c.buffer.isEmpty))
      return;
    setState(() => _busy = true);
    final token = _token;
    try {
      final goal = _titles.items.length + 48;
      while (mounted && !token.isAborted && _kids.activeId == _owner && _titles.items.length < goal) {
        await Future.wait([
          for (final c in _cursors)
            if (c.buffer.isEmpty && !c.done) _fill(c, token),
        ]);
        if (!mounted || token.isAborted || _kids.activeId != _owner) return;
        final ready = _cursors.where((c) => c.buffer.isNotEmpty).toList();
        if (ready.isEmpty) break;
        String order(_Cursor c) => (c.buffer.first.titleSort ?? c.buffer.first.displayTitle).toLowerCase();
        final next = ready.reduce((a, b) => order(a).compareTo(order(b)) * (_descending ? -1 : 1) <= 0 ? a : b);
        _titles.addAll([next.buffer.removeFirst()]);
      }
    } finally {
      if (mounted && !token.isAborted) setState(() => _busy = false);
    }
  }

  Future<void> _menu() async {
    final box = _options.context?.findRenderObject();
    final choice = await showAdaptiveAppMenu<String>(
      context,
      title: t.libraries.libraryOptions,
      position: box is RenderBox ? box.localToGlobal(Offset(0, box.size.height)) : Offset.zero,
      focusFirstItem: true,
      entries: [
        AppMenuItem(value: 'asc', label: t.mobileLibrary.ascending, icon: Icons.sort_by_alpha),
        AppMenuItem(value: 'desc', label: t.mobileLibrary.descending, icon: Icons.sort_by_alpha),
        if (!_kids.animationOnly)
          AppMenuItem(
            value: 'animation',
            label: _animatedOnly ? t.lurokaDiscovery.allTitles : t.kids.animationOnly,
            icon: Icons.animation,
          ),
        AppMenuItem(value: 'refresh', label: t.common.refresh, icon: Icons.refresh),
      ],
    );
    if (!mounted || choice == null) return;
    if (choice == 'asc' || choice == 'desc') _descending = choice == 'desc';
    if (choice == 'animation') _animatedOnly = !_animatedOnly;
    fullRefresh();
  }

  @override
  Widget build(BuildContext context) {
    final inventory = context.watch<LibrariesProvider>();
    final hidden = context.watch<HiddenLibrariesProvider>();
    final libs = [
      for (final lib in inventory.libraries)
        if (_kids.isActiveKids &&
            hidden.isInitialized &&
            lib.kind == widget.kind &&
            _kids.allowsLibrary(lib) &&
            !hidden.hiddenLibraryKeys.contains(lib.globalKey))
          lib,
    ];
    if (_owner != _kids.activeId ||
        libs.length != _libraries.length ||
        libs.indexed.any((e) => e.$2.globalKey != _libraries[e.$1].globalKey)) {
      _reset(libs);
    }
    final items = _titles.items.where(_kids.allows).toList();
    final focused = _focused;
    final info = focused != null && _kids.allows(focused) ? focused : items.firstOrNull;
    final tv = PlatformDetector.isTV();
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: tv ? 30 : 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.kind == MediaKind.movie ? t.kids.movies : t.kids.shows,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  TextButton.icon(
                    focusNode: _options,
                    onPressed: _menu,
                    icon: const Icon(Icons.tune),
                    label: Text(t.libraries.libraryOptions),
                  ),
                ],
              ),
              if (tv && info != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    [
                      info.displayTitle,
                      if (info.durationMs case final int ms when ms > 0) formatDurationTextual(ms),
                    ].join(' · '),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              if (_error)
                TextButton.icon(
                  onPressed: fullRefresh,
                  icon: const Icon(Icons.cloud_off),
                  label: Text('${t.errors.connectionFailed} · ${t.common.retry}'),
                ),
              if (_busy || inventory.isLoading || !hidden.isInitialized) const LinearProgressIndicator(),
              if (items.isEmpty && !_busy && !_error && !inventory.isLoading && hidden.isInitialized)
                Expanded(child: Center(child: Text(t.kids.emptyHint))),
              if (items.isNotEmpty)
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, bounds) {
                      final cols = (bounds.maxWidth / (tv ? 162 : 128)).floor().clamp(2, 8);
                      return GridView.builder(
                        controller: _scroll,
                        itemCount: items.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: cols,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 10,
                          childAspectRatio: .62,
                        ),
                        itemBuilder: (_, index) {
                          if (index >= items.length - cols * 2 && !_busy) {
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              if (mounted) _more();
                            });
                          }
                          final item = items[index];
                          return FocusableMediaCard(
                            key: ValueKey(item.globalKey),
                            item: item,
                            focusNode: _nodes.putIfAbsent(item.globalKey, FocusNode.new),
                            onNavigateUp: index < cols ? _options.requestFocus : null,
                            onNavigateLeft: index == 0 ? () => MainScreenFocusScope.focusSidebarOf(context) : null,
                            onFocusChange: (v) {
                              if (v && _focused != item) setState(() => _focused = item);
                            },
                            onTap: () {
                              if (!_kids.isActiveKids ||
                                  _owner != _kids.activeId ||
                                  !_kids.allows(item) ||
                                  !hidden.allowsItem(item)) {
                                return;
                              }
                              navigateToMediaItemDetails(context, item);
                            },
                          );
                        },
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
