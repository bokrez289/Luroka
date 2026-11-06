import 'package:flutter/material.dart';

import '../i18n/strings.g.dart';
import 'app_icon.dart';
import 'luroka_mark.dart';
import '../focus/focusable_wrapper.dart';
import '../theme/luroka_motion.dart';
import '../theme/mono_tokens.dart';
import '../navigation/navigation_tabs.dart';
import '../services/kids_profile_service.dart';

/// TV-only horizontal destination dock. Focus movement is independent from
/// activation: browse the dock, SELECT or DOWN enters the chosen destination.
///
/// The chrome is a floating stadium: a translucent surface with a hairline
/// border, and a selection pill that glides between destinations behind the
/// tabs — the remote user reads "where am I" from the pill and "what will I
/// land on" from the focus fill.
class TvNavigationDock extends StatefulWidget {
  const TvNavigationDock({
    super.key,
    required this.tabs,
    required this.selected,
    required this.onSelected,
    required this.onContent,
    this.onLibraryPicker,
    this.onFocusWithin,
    this.trailing,
    this.onNavigateToTrailing,
  });
  final List<NavigationTab> tabs;
  final NavigationTabId selected;
  final ValueChanged<NavigationTabId> onSelected;
  final VoidCallback onContent;
  final VoidCallback? onLibraryPicker;
  final ValueChanged<bool>? onFocusWithin;
  final Widget? trailing;
  final VoidCallback? onNavigateToTrailing;
  @override
  State<TvNavigationDock> createState() => TvNavigationDockState();
}

class TvNavigationDockState extends State<TvNavigationDock> {
  final Map<NavigationTabId, FocusNode> _nodes = {};
  final Map<NavigationTabId, GlobalKey> _itemKeys = {};
  final GlobalKey _rowKey = GlobalKey(debugLabel: 'tv_dock_row');
  NavigationTabId? _focused;

  /// Measured geometry of the selection pill in the row's coordinate space.
  /// Null until the first post-frame measurement; the pill stays hidden so a
  /// cold start never flashes an indicator at a guessed position.
  ({double start, double width})? _pill;

  FocusNode _node(NavigationTabId id) => _nodes.putIfAbsent(id, () => FocusNode(debugLabel: 'tv_dock_${id.name}'));

  GlobalKey _itemKey(NavigationTabId id) =>
      _itemKeys.putIfAbsent(id, () => GlobalKey(debugLabel: 'tv_dock_item_${id.name}'));

  void focusActiveItem({bool home = false}) {
    if (widget.tabs.isEmpty) return;
    final id = home
        ? widget.tabs.first.id
        : widget.tabs.any((tab) => tab.id == widget.selected)
        ? widget.selected
        : widget.tabs.first.id;
    _node(id).requestFocus();
  }

  void _activate(NavigationTabId id) {
    if (id == widget.selected) {
      widget.onContent();
    } else {
      widget.onSelected(id);
    }
  }

  void focusLastItem() {
    if (widget.tabs.isNotEmpty) _node(widget.tabs.last.id).requestFocus();
  }

  Rect? libraryAnchorRect() {
    final box = _itemKeys[NavigationTabId.libraries]?.currentContext?.findRenderObject();
    if (box is! RenderBox || !box.hasSize) return null;
    return box.localToGlobal(Offset.zero) & box.size;
  }

  void focusLibraries() => _node(NavigationTabId.libraries).requestFocus();

  /// Measures the selected tab's box relative to the tab row.
  ///
  /// The row lives inside the horizontal scroll view, so the difference of
  /// the two global positions is scroll-independent and survives scrolling.
  /// RTL mirrors the row, so the distance from the leading edge is measured
  /// against the edge [PositionedDirectional] measures from.
  void _measurePill() {
    if (!mounted) return;
    final rowBox = _rowKey.currentContext?.findRenderObject() as RenderBox?;
    final tabBox = _itemKeys[widget.selected]?.currentContext?.findRenderObject() as RenderBox?;
    if (rowBox == null || tabBox == null || !rowBox.hasSize || !tabBox.hasSize) {
      if (_pill != null) setState(() => _pill = null);
      return;
    }
    final rowLeft = rowBox.localToGlobal(Offset.zero).dx;
    final tabLeft = tabBox.localToGlobal(Offset.zero).dx;
    final fromVisualLeft = tabLeft - rowLeft;
    final start = Directionality.of(context) == TextDirection.rtl
        ? rowBox.size.width - fromVisualLeft - tabBox.size.width
        : fromVisualLeft;
    final next = (start: start, width: tabBox.size.width);
    final previous = _pill;
    if (previous == null || (previous.start - next.start).abs() > 0.5 || (previous.width - next.width).abs() > 0.5) {
      setState(() => _pill = next);
    }
  }

  @override
  void didUpdateWidget(TvNavigationDock oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selected != widget.selected || oldWidget.tabs != widget.tabs) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _measurePill());
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _measurePill());
  }

  @override
  void dispose() {
    for (final node in _nodes.values) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final kids = KidsProfileService.instance.isActiveKids;
    final focusedColor = colors.primary.withValues(alpha: 0.20);
    final pill = _pill;
    return Focus(
      canRequestFocus: false,
      onFocusChange: widget.onFocusWithin,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: DecoratedBox(
          decoration: const BoxDecoration(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
            child: LayoutBuilder(
              builder: (context, constraints) => Row(
                children: [
                  if (constraints.maxWidth >= 800) ...[
                    if (!kids) ...[const ExcludeSemantics(child: LurokaMark(size: 24)), const SizedBox(width: 10)],
                    Text(
                      kids ? t.kids.title : 'LUROKA',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        letterSpacing: 2.8,
                        fontSize: 17,
                        color: colors.onSurface,
                      ),
                    ),
                    const SizedBox(width: 22),
                  ],
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          // The selection pill sits behind the tabs and glides
                          // between them; it is inside the scroll content, so
                          // it moves with the row when the destinations scroll.
                          if (pill != null)
                            AnimatedPositionedDirectional(
                              start: kids ? pill.start : pill.start + pill.width * .25,
                              width: kids ? pill.width : pill.width * .5,
                              bottom: 0,
                              height: kids ? 40 : 3,
                              duration: LurokaMotion.of(context, LurokaMotion.base),
                              curve: LurokaMotion.curve,
                              child: Container(
                                key: const Key('tv_dock_selection_pill'),
                                decoration: BoxDecoration(
                                  color: kids ? colors.primary.withValues(alpha: .22) : colors.primary,
                                  borderRadius: BorderRadius.circular(MonoTokens.radiusFull),
                                ),
                              ),
                            )
                          else
                            const SizedBox.shrink(),
                          Row(
                            key: _rowKey,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              for (final (index, tab) in widget.tabs.indexed)
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 3),
                                  child: FocusableWrapper(
                                    focusNode: _node(tab.id),
                                    semanticLabel: tab.getLabel(),
                                    checked: tab.id == widget.selected,
                                    borderRadius: MonoTokens.radiusFull,
                                    disableScale: true,
                                    autoScroll: true,
                                    scrollAlignment: 0.5,
                                    descendantsAreFocusable: false,
                                    onSelect: tab.id == NavigationTabId.libraries && widget.onLibraryPicker != null
                                        ? widget.onLibraryPicker
                                        : () => _activate(tab.id),
                                    enableLongPress:
                                        tab.id == NavigationTabId.libraries && widget.onLibraryPicker != null,
                                    onLongPress: tab.id == NavigationTabId.libraries ? widget.onLibraryPicker : null,
                                    onNavigateDown: () => _activate(tab.id),
                                    onNavigateUp: () {},
                                    onNavigateLeft: index > 0 ? _node(widget.tabs[index - 1].id).requestFocus : () {},
                                    onNavigateRight: index < widget.tabs.length - 1
                                        ? _node(widget.tabs[index + 1].id).requestFocus
                                        : widget.onNavigateToTrailing ?? () {},
                                    onFocusChange: (focus) => setState(
                                      () => _focused = focus
                                          ? tab.id
                                          : _focused == tab.id
                                          ? null
                                          : _focused,
                                    ),
                                    child: AnimatedContainer(
                                      key: _itemKey(tab.id),
                                      duration: LurokaMotion.of(context, LurokaMotion.fast),
                                      curve: LurokaMotion.curve,
                                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                      decoration: BoxDecoration(
                                        color: _focused == tab.id ? focusedColor : Colors.transparent,
                                        borderRadius: BorderRadius.circular(MonoTokens.radiusFull),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          if (tab.id == NavigationTabId.search)
                                            AppIcon(
                                              tab.icon,
                                              size: 18,
                                              fill: tab.id == widget.selected ? 1 : 0,
                                              color: colors.onSurface.withValues(
                                                alpha: tab.id == widget.selected ? 1 : 0.62,
                                              ),
                                            ),
                                          if (tab.id != NavigationTabId.search)
                                            Text(
                                              tab.getLabel(),
                                              maxLines: 1,
                                              style: TextStyle(
                                                fontSize: 14,
                                                height: 1.35,
                                                fontWeight: FontWeight.w600,
                                                color: colors.onSurface.withValues(
                                                  alpha: tab.id == widget.selected ? 1 : 0.62,
                                                ),
                                              ),
                                            ),
                                          if (tab.id == NavigationTabId.libraries &&
                                              widget.onLibraryPicker != null) ...[
                                            const SizedBox(width: 5),
                                            Icon(Icons.expand_more_rounded, size: 18, color: colors.onSurface),
                                          ],
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (widget.trailing != null) ...[const SizedBox(width: 8), widget.trailing!],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
