import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../focus/focusable_wrapper.dart';
import '../focus/key_event_utils.dart';
import '../focus/dpad_navigator.dart';
import '../i18n/strings.g.dart';
import '../media/ids.dart';
import '../media/media_library.dart';
import '../utils/content_utils.dart';
import '../utils/provider_extensions.dart';
import 'library_cover_artwork.dart';
import '../focus/focusable_button.dart';

/// Centered TV library gallery with server filters and explicit remote paths.
class TvLibraryDropdown extends StatefulWidget {
  const TvLibraryDropdown({
    super.key,
    required this.anchor,
    required this.libraries,
    required this.selectedKey,
    required this.loading,
    required this.emptyMessage,
    required this.onSelected,
    required this.onClose,
  });

  final Rect anchor;
  final List<MediaLibrary> libraries;
  final String? selectedKey;
  final bool loading;
  final String emptyMessage;
  final ValueChanged<String> onSelected;
  final VoidCallback onClose;

  @override
  State<TvLibraryDropdown> createState() => _TvLibraryDropdownState();
}

class _TvLibraryDropdownState extends State<TvLibraryDropdown> {
  final _scroll = ScrollController();
  int _columns = 3;
  double _rowExtent = 162;
  final _nodes = <String, FocusNode>{};
  String? _focused;
  bool _initialFocusRequested = false;
  String? _serverFilter;
  final _serverNodes = <String?, FocusNode>{};
  FocusNode _serverNode(String? server) =>
      _serverNodes.putIfAbsent(server, () => FocusNode(debugLabel: 'tv_library_server_$server'));
  List<MediaLibrary> get _visible =>
      widget.libraries.where((library) => _serverFilter == null || library.serverId == _serverFilter).toList();
  FocusNode _node(String key) => _nodes.putIfAbsent(key, () => FocusNode(debugLabel: 'tv_library_$key'));

  @override
  void dispose() {
    _scroll.dispose();
    for (final node in _nodes.values) {
      node.dispose();
    }
    for (final node in _serverNodes.values) {
      node.dispose();
    }
    super.dispose();
  }

  void _focus(int index) {
    final visible = _visible;
    if (index < 0 || index >= visible.length) return;
    final node = _node(visible[index].globalKey);
    if (node.context == null && _scroll.hasClients) {
      _scroll.jumpTo(((index ~/ _columns) * _rowExtent).clamp(0.0, _scroll.position.maxScrollExtent));
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) node.requestFocus();
      });
    } else {
      node.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final safe = MediaQuery.paddingOf(context);
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final availableWidth = math.max(0.0, size.width - safe.horizontal - 48);
    final width = math.min(680.0, availableWidth);
    final top = (widget.anchor.bottom - safe.top + 10.0)
        .clamp(0.0, math.max(0.0, size.height - safe.vertical - 120))
        .toDouble();
    final maxHeight = math.max(100.0, size.height - safe.vertical - top - 16);
    final columns = width >= 600
        ? 4
        : width >= 420
        ? 3
        : 2;
    final textFactor = (MediaQuery.textScalerOf(context).scale(14) / 14).clamp(1.0, 2.0);
    final extent = 108.0 + (textFactor - 1) * 40;
    _columns = columns;
    _rowExtent = extent + 12;
    final visible = _visible;
    final servers = <String, String>{
      for (final library in widget.libraries)
        if (library.serverId != null) library.serverId!: library.serverName ?? library.serverId!,
    };
    if (!_initialFocusRequested && widget.libraries.isNotEmpty) {
      _initialFocusRequested = true;
      final selected = widget.libraries.indexWhere((library) => library.globalKey == widget.selectedKey);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _focus(selected < 0 ? 0 : selected);
      });
    }
    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(top: top),
          child: SizedBox(
            width: width,
            child: Focus(
              canRequestFocus: false,
              onKeyEvent: (_, event) =>
                  event.logicalKey.isBackKey ? handleBackKeyAction(event, widget.onClose) : KeyEventResult.ignored,
              child: Material(
                key: const ValueKey('tv_library_dropdown'),
                color: colors.surfaceContainerLow,
                elevation: 12,
                shadowColor: Colors.black54,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(color: colors.onSurface.withValues(alpha: .16)),
                ),
                clipBehavior: Clip.antiAlias,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: maxHeight),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 12, 12, 8),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    t.libraries.selectLibrary,
                                    style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    t.explore.totalResults(n: widget.libraries.length),
                                    style: theme.textTheme.labelMedium?.copyWith(color: colors.onSurfaceVariant),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: widget.onClose,
                              tooltip: t.common.close,
                              icon: const Icon(Icons.close_rounded),
                            ),
                          ],
                        ),
                      ),
                      if (servers.length > 1)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                for (final server in <String?>[null, ...servers.keys])
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(end: 8),
                                    child: FocusableButton(
                                      focusNode: _serverNode(server),
                                      onNavigateDown: () => _focus(0),
                                      onBack: widget.onClose,
                                      onPressed: () => setState(() {
                                        _serverFilter = server;
                                        _focused = null;
                                      }),
                                      child: ChoiceChip(
                                        label: Text(server == null ? t.studios.all : servers[server]!),
                                        selected: server == _serverFilter,
                                        onSelected: (_) => setState(() {
                                          _serverFilter = server;
                                          _focused = null;
                                        }),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      const Divider(height: 1),
                      if (widget.loading && widget.libraries.isEmpty)
                        const Padding(
                          padding: EdgeInsets.all(32),
                          child: Center(child: CircularProgressIndicator()),
                        )
                      else if (widget.libraries.isEmpty)
                        Padding(padding: const EdgeInsets.all(24), child: Text(widget.emptyMessage))
                      else
                        Flexible(
                          child: GridView.builder(
                            controller: _scroll,
                            shrinkWrap: true,
                            padding: const EdgeInsets.all(14),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: columns,
                              mainAxisExtent: extent,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                            ),
                            itemCount: visible.length,
                            itemBuilder: (context, index) {
                              final library = visible[index];
                              final key = library.globalKey;
                              final selected = key == widget.selectedKey;
                              final focused = _focused == key;
                              final server = library.serverId;
                              return FocusableWrapper(
                                key: ValueKey('tv_library_card_$key'),
                                focusNode: _node(key),
                                borderRadius: 12,
                                disableScale: true,
                                semanticLabel: [
                                  library.title,
                                  if (servers.length > 1)
                                    ?library.serverName,
                                ].join(', '),
                                checked: selected,
                                onSelect: () => widget.onSelected(key),
                                onBack: widget.onClose,
                                onNavigateUp: () => index < columns
                                    ? (servers.length > 1
                                          ? _serverNode(_serverFilter).requestFocus()
                                          : widget.onClose())
                                    : _focus(index - columns),
                                onNavigateDown: () => _focus(math.min(index + columns, visible.length - 1)),
                                onNavigateLeft: () => _focus(index - 1),
                                onNavigateRight: () => _focus(index + 1),
                                onFocusChange: (value) {
                                  if (mounted) {
                                    setState(
                                      () => _focused = value
                                          ? key
                                          : _focused == key
                                          ? null
                                          : _focused,
                                    );
                                  }
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                      color: focused
                                          ? colors.primary
                                          : selected
                                          ? colors.primary.withValues(alpha: .55)
                                          : colors.outlineVariant.withValues(alpha: .3),
                                      width: focused ? 3 : 1,
                                    ),
                                  ),
                                  child: GestureDetector(
                                    onTap: () => widget.onSelected(key),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Stack(
                                        fit: StackFit.expand,
                                        children: [
                                          LibraryCoverArtwork(
                                            library: library,
                                            client: context.tryGetMediaClientForServer(
                                              server == null ? null : ServerId(server),
                                            ),
                                          ),
                                          const DecoratedBox(
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [Colors.transparent, Color(0x44000000), Color(0xf2080b13)],
                                                stops: [0, .45, 1],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 10,
                                            right: 10,
                                            bottom: 10,
                                            child: Row(
                                              children: [
                                                Icon(
                                                  ContentTypeHelper.getLibraryIcon(library.kind.id),
                                                  color: Colors.white,
                                                  size: 18,
                                                ),
                                                const SizedBox(width: 8),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        library.title,
                                                        maxLines: 2,
                                                        overflow: TextOverflow.ellipsis,
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 13,
                                                          height: 1.1,
                                                          fontWeight: FontWeight.w700,
                                                        ),
                                                      ),
                                                      if (servers.length > 1 && (library.serverName != null || server != null))
                                                        Text(
                                                          library.serverName ?? server ?? '',
                                                          maxLines: 1,
                                                          overflow: TextOverflow.ellipsis,
                                                          style: const TextStyle(color: Colors.white70, fontSize: 10),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                                if (selected)
                                                  Icon(
                                                    Icons.check_circle_rounded,
                                                    size: 18,
                                                    color: focused ? Colors.white : colors.primary,
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
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
            ),
          ),
        ),
      ),
    );
  }
}
