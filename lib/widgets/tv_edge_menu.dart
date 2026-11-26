import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../i18n/strings.g.dart';

typedef TvEdgeEntry = ({String id, String label, IconData icon});

/// Associates a main shell with its navigator, including routed Studio pages.
class TvEdgeMenuHost {
  static final _hosts = Expando<bool Function(BuildContext, String?)>();
  static void attach(NavigatorState navigator, bool Function(BuildContext, String?) open) => _hosts[navigator] = open;
  static void detach(NavigatorState navigator, bool Function(BuildContext, String?) open) {
    if (_hosts[navigator] == open) _hosts[navigator] = null;
  }

  static bool open(BuildContext context, {String? current}) {
    final navigator = Navigator.maybeOf(context);
    return navigator != null && (_hosts[navigator]?.call(context, current) ?? false);
  }
}

class TvEdgeMenu extends StatefulWidget {
  const TvEdgeMenu({
    super.key,
    required this.entries,
    required this.libraryEntries,
    required this.current,
    required this.libraryLabel,
    required this.onChoose,
    required this.onClose,
    this.profileAvatar,
    this.autofocus = true,
  });

  final bool autofocus;
  final List<TvEdgeEntry> entries, libraryEntries;
  final String current, libraryLabel;
  final Widget? profileAvatar;
  final ValueChanged<String> onChoose;
  final VoidCallback onClose;

  @override
  State<TvEdgeMenu> createState() => _TvEdgeMenuState();
}

class _TvEdgeMenuState extends State<TvEdgeMenu> {
  late bool expanded = widget.current.startsWith('library:') || widget.libraryEntries.length <= 6;
  final _nodes = <String, FocusNode>{};
  final _scope = FocusScopeNode(debugLabel: 'tv_edge_scope');
  bool _focusRepairScheduled = false;
  final _rowKeys = <String, GlobalKey>{};
  FocusNode node(String id) => _nodes.putIfAbsent(id, () => FocusNode(debugLabel: 'tv_edge_$id'));
  GlobalKey rowKey(String id) => _rowKeys.putIfAbsent(id, GlobalKey.new);

  @override
  void initState() {
    super.initState();
    if (widget.autofocus) FocusManager.instance.addListener(_keepFocusInMenu);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !widget.autofocus || _nodes.isEmpty) return;
      final selected = _nodes[widget.current] ?? _nodes.values.first;
      selected.requestFocus();
      final row = selected.context;
      if (row != null) Scrollable.ensureVisible(row, alignment: 0.35);
    });
  }

  void _keepFocusInMenu() {
    if (!mounted || _focusRepairScheduled || _scope.hasFocus || ModalRoute.of(context)?.isCurrent != true) return;
    _focusRepairScheduled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusRepairScheduled = false;
      if (!mounted || _scope.hasFocus || ModalRoute.of(context)?.isCurrent != true || _nodes.isEmpty) return;
      (_nodes[widget.current] ?? _nodes.values.first).requestFocus();
    });
    WidgetsBinding.instance.ensureVisualUpdate();
  }

  @override
  void dispose() {
    if (widget.autofocus) FocusManager.instance.removeListener(_keepFocusInMenu);
    _scope.dispose();
    for (final focus in _nodes.values) {
      focus.dispose();
    }
    super.dispose();
  }

  Widget _heading(String title) => Padding(
    padding: const EdgeInsets.fromLTRB(18, 14, 18, 6),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title.toUpperCase(),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
          letterSpacing: 1.2,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );

  Widget _row(TvEdgeEntry entry, {bool libraryHeader = false, bool profile = false}) {
    final colors = Theme.of(context).colorScheme;
    final current = widget.current == entry.id;
    final focus = node(entry.id);
    return Padding(
      key: rowKey(entry.id),
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Focus(
        focusNode: focus,
        onKeyEvent: (_, event) {
          if (event is KeyDownEvent &&
              (event.logicalKey == LogicalKeyboardKey.select ||
                  event.logicalKey == LogicalKeyboardKey.enter ||
                  event.logicalKey == LogicalKeyboardKey.gameButtonA)) {
            if (libraryHeader) {
              setState(() => expanded = !expanded);
            } else {
              widget.onChoose(entry.id);
            }
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        },
        child: Builder(
          builder: (context) {
            final focused = Focus.of(context).hasFocus;
            return Semantics(
              button: true,
              selected: current,
              expanded: libraryHeader ? expanded : null,
              child: InkWell(
                canRequestFocus: false,
                onTap: () => libraryHeader ? setState(() => expanded = !expanded) : widget.onChoose(entry.id),
                borderRadius: BorderRadius.circular(14),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 140),
                  height: profile ? 64 : 46,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: focused
                        ? colors.primaryContainer
                        : current
                        ? colors.surfaceContainerHighest
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: focused ? colors.primary : Colors.transparent, width: 2),
                  ),
                  child: Row(
                    children: [
                      if (profile && widget.profileAvatar != null)
                        widget.profileAvatar!
                      else
                        Icon(
                          entry.icon,
                          size: profile ? 28 : 22,
                          color: focused ? colors.onPrimaryContainer : colors.onSurface,
                        ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Text(
                          entry.label,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: focused ? colors.onPrimaryContainer : colors.onSurface,
                            fontWeight: focused || current ? FontWeight.w700 : FontWeight.w500,
                          ),
                        ),
                      ),
                      if (libraryHeader) ...[
                        Text('${widget.libraryEntries.length}', style: Theme.of(context).textTheme.labelSmall),
                        const SizedBox(width: 6),
                        Icon(expanded ? Icons.expand_less_rounded : Icons.expand_more_rounded, size: 21),
                      ] else if (profile)
                        const Icon(Icons.chevron_right_rounded, size: 20)
                      else if (current && !focused)
                        Icon(Icons.circle, size: 7, color: colors.primary),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final profile = widget.entries.where((e) => e.id == 'profile').firstOrNull;
    final settings = widget.entries.where((e) => e.id == 'settings').firstOrNull;
    final browse = widget.entries.where(
      (e) => const {'discover', 'favorites', 'explore', 'studios', 'search', 'kidsMovies', 'kidsShows'}.contains(e.id),
    );
    final library = widget.entries.where((e) => e.id == 'libraries').firstOrNull;
    final more = widget.entries.where(
      (e) => !const {
        'profile',
        'settings',
        'discover',
        'favorites',
        'explore',
        'studios',
        'search',
        'kidsMovies',
        'kidsShows',
        'libraries',
      }.contains(e.id),
    );

    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: (MediaQuery.sizeOf(context).width * .26).clamp(250, 420).toDouble(),
        height: double.infinity,
        child: Material(
          color: colors.surface.withValues(alpha: .97),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(right: BorderSide(color: colors.outlineVariant.withValues(alpha: .5))),
            ),
            child: SafeArea(
              child: FocusScope(
                node: _scope,
                child: Focus(
                  canRequestFocus: false,
                  onKeyEvent: (_, event) {
                    if (event.logicalKey == LogicalKeyboardKey.arrowLeft) return KeyEventResult.handled;
                    if (event.logicalKey != LogicalKeyboardKey.arrowRight) return KeyEventResult.ignored;
                    if (event is KeyDownEvent) widget.onClose();
                    return KeyEventResult.handled;
                  },
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              if (profile != null) _row(profile, profile: true),
                              if (browse.isNotEmpty) ...[
                                _heading(t.tvEdgeMenu.browse),
                                for (final entry in browse) _row(entry),
                              ],
                              if (library != null && widget.libraryEntries.isNotEmpty) ...[
                                const SizedBox(height: 8),
                                _row((
                                  id: 'libraries',
                                  label: widget.libraryLabel,
                                  icon: library.icon,
                                ), libraryHeader: true),
                                if (expanded)
                                  for (final entry in widget.libraryEntries) _row(entry),
                              ],
                              if (more.isNotEmpty) ...[
                                _heading(t.tvEdgeMenu.more),
                                for (final entry in more) _row(entry),
                              ],
                            ],
                          ),
                        ),
                      ),
                      if (settings != null)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 0, 12, 4),
                          child: Column(
                            children: [
                              Divider(color: colors.outlineVariant.withValues(alpha: .4)),
                              _row(settings),
                            ],
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                        child: Text(
                          t.tvEdgeMenu.closeHint,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(color: colors.onSurfaceVariant),
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
