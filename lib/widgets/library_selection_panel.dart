import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../focus/focusable_wrapper.dart';
import '../focus/key_event_utils.dart';
import '../i18n/strings.g.dart';
import '../utils/platform_detector.dart';
import 'library_choice_grid.dart';

/// Shared library/source selector: a non-interactive preview and one clear
/// vertical selection path. Preview focus never activates a destination.
class LibrarySelectionPanel extends StatefulWidget {
  const LibrarySelectionPanel({
    super.key,
    required this.title,
    required this.choices,
    required this.previewBuilder,
    required this.onClose,
    this.subtitle,
    this.loading = false,
    this.emptyMessage,
    this.rowKeyPrefix = 'library_choice_',
  });

  final String title;
  final String? subtitle;
  final List<LibraryChoice> choices;
  final Widget Function(BuildContext, LibraryChoice) previewBuilder;
  final VoidCallback onClose;
  final bool loading;
  final String? emptyMessage;
  final String rowKeyPrefix;

  @override
  State<LibrarySelectionPanel> createState() => _LibrarySelectionPanelState();
}

class _LibrarySelectionPanelState extends State<LibrarySelectionPanel> {
  final _scroll = ScrollController();
  final _nodes = <String, FocusNode>{};
  String? _focusedId;
  int _focusGeneration = 0;
  List<double> _offsets = const [];

  FocusNode _node(String id) => _nodes.putIfAbsent(id, () => FocusNode(debugLabel: 'library_choice_$id'));

  @override
  void initState() {
    super.initState();
    _focusedId = widget.choices.where((choice) => choice.selected).firstOrNull?.id ?? widget.choices.firstOrNull?.id;
    final initialId = _focusedId;
    // Hosted sheets claim their focus scope across two frames. Request the
    // initial/current library after that hand-off, once its row is laid out.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted || _focusGeneration != 0) return;
        final index = widget.choices.indexWhere((choice) => choice.id == initialId);
        if (index >= 0) _focus(index);
      });
    });
  }

  @override
  void didUpdateWidget(LibrarySelectionPanel oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!widget.choices.any((choice) => choice.id == _focusedId)) {
      final restore = oldWidget.choices.isEmpty || _nodes.values.any((node) => node.hasFocus);
      _focusedId = widget.choices.where((choice) => choice.selected).firstOrNull?.id ?? widget.choices.firstOrNull?.id;
      if (restore && _focusedId != null) {
        final generation = ++_focusGeneration;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted || generation != _focusGeneration) return;
          final index = widget.choices.indexWhere((choice) => choice.id == _focusedId);
          if (index >= 0) _focus(index);
        });
      }
    }
  }

  void _focus(int index) {
    if (index < 0 || index >= widget.choices.length) return;
    final generation = ++_focusGeneration;
    final node = _node(widget.choices[index].id);
    if (node.context?.mounted == true && node.context?.findRenderObject()?.attached == true) {
      node.requestFocus();
      _reveal(node);
      return;
    }
    if (_scroll.hasClients && index < _offsets.length) {
      _scroll.jumpTo(_offsets[index].clamp(0.0, _scroll.position.maxScrollExtent));
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || generation != _focusGeneration) return;
      node.requestFocus();
      _reveal(node);
    });
  }

  void _reveal(FocusNode node) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = node.context;
      if (!mounted || context == null || !context.mounted || !node.hasFocus) return;
      Scrollable.ensureVisible(context, duration: const Duration(milliseconds: 120), alignment: 0.5);
    });
  }

  @override
  void dispose() {
    _focusGeneration++;
    _scroll.dispose();
    for (final node in _nodes.values) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final textScale = MediaQuery.textScalerOf(context).scale(14) / 14;
    final tv = PlatformDetector.isTV();
    final preview = widget.choices.where((choice) => choice.id == _focusedId).firstOrNull ?? widget.choices.firstOrNull;
    return Focus(
      canRequestFocus: false,
      onKeyEvent: (_, event) => handleBackKeyAction(event, widget.onClose),
      child: LayoutBuilder(
        builder: (context, bounds) {
          final maxHeight = bounds.maxHeight.isFinite ? bounds.maxHeight : MediaQuery.sizeOf(context).height * 0.78;
          final width = bounds.maxWidth.isFinite ? bounds.maxWidth : MediaQuery.sizeOf(context).width;
          final horizontal = width >= 620 && maxHeight >= 280 && textScale <= 1.8;
          final padding = width < 420 ? 16.0 : 20.0;
          final entries = <({LibraryChoice? choice, String? header, double height, int index})>[];
          final offsets = <double>[];
          var totalHeight = 0.0;
          String? group;
          for (final (index, choice) in widget.choices.indexed) {
            if (choice.groupLabel != null && choice.groupLabel != group) {
              group = choice.groupLabel;
              final height = 30.0 * textScale;
              entries.add((choice: null, header: group, height: height, index: -1));
              totalHeight += height;
            }
            offsets.add(totalHeight);
            final lines = (choice.subtitle?.isNotEmpty == true ? 1 : 0) + (choice.detail?.isNotEmpty == true ? 1 : 0);
            final height =
                (lines == 0
                    ? 52.0
                    : lines == 1
                    ? 68.0
                    : 84.0) *
                textScale;
            entries.add((choice: choice, header: null, height: height, index: index));
            totalHeight += height;
          }
          _offsets = offsets;
          final entryIndices = <String, int>{
            for (final (index, entry) in entries.indexed)
              entry.choice == null ? 'header:$index:${entry.header}' : 'choice:${entry.choice!.id}': index,
          };
          double textHeight(String text, TextStyle? style, double available) {
            final painter = TextPainter(
              text: TextSpan(text: text, style: style),
              maxLines: 2,
              textDirection: Directionality.of(context),
              textScaler: MediaQuery.textScalerOf(context),
            )..layout(maxWidth: math.max(1.0, available));
            return painter.height;
          }

          final titleStyle = theme.textTheme.titleLarge?.copyWith(fontSize: tv ? 21 : 20, fontWeight: FontWeight.w700);
          final headerHeight =
              math.max(48.0, textHeight(widget.title, titleStyle, width - padding * 2 - 48)) +
              (widget.subtitle?.isNotEmpty == true
                  ? textHeight(widget.subtitle!, theme.textTheme.bodySmall, width - padding * 2)
                  : 0);
          final availableBody = math.max(48.0, maxHeight - padding * 2 - headerHeight - 12);
          final previewWidth = math.max(1.0, (width - padding * 2 - 20) * 0.35);
          final previewHeight = previewWidth / 1.6 + 74 * textScale;
          final bodyHeight = math.min(availableBody, math.max(horizontal ? previewHeight : 0.0, totalHeight + 8));
          final mobilePreviewHeight = horizontal || preview == null || availableBody < 270
              ? 0.0
              : math.min(180.0, availableBody * 0.40);
          final listHeight = horizontal
              ? bodyHeight
              : math.min(
                  math.max(48.0, availableBody - mobilePreviewHeight - (mobilePreviewHeight > 0 ? 12 : 0)),
                  totalHeight + 8,
                );
          final list = Scrollbar(
            controller: _scroll,
            thumbVisibility: totalHeight > listHeight,
            child: ListView.builder(
              key: const ValueKey('library_selection_list'),
              controller: _scroll,
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              itemExtentBuilder: (index, _) => entries[index].height,
              itemCount: entries.length,
              findChildIndexCallback: (key) => key is ValueKey<String> ? entryIndices[key.value] : null,
              itemBuilder: (context, index) {
                final entry = entries[index];
                final choice = entry.choice;
                if (choice == null) {
                  return Padding(
                    key: ValueKey('header:$index:${entry.header}'),
                    padding: const EdgeInsets.fromLTRB(10, 8, 10, 2),
                    child: Text(
                      entry.header!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: colors.onSurfaceVariant,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                }
                final focused = _nodes[choice.id]?.hasFocus == true;
                final accent = choice.accent ?? colors.primary;
                return Padding(
                  key: ValueKey('choice:${choice.id}'),
                  padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 2),
                  child: FocusableWrapper(
                    key: ValueKey('${widget.rowKeyPrefix}${choice.id}'),
                    focusNode: _node(choice.id),
                    autofocus: entry.index == 0,
                    semanticLabel: [choice.title, ?choice.subtitle, ?choice.detail].join(', '),
                    checked: choice.selected,
                    borderRadius: 12,
                    disableScale: true,
                    autoScroll: false,
                    delegateFocusBorder: true,
                    onSelect: choice.onSelected,
                    onBack: widget.onClose,
                    onNavigateUp: () => _focus(entry.index - 1),
                    onNavigateDown: () => _focus(entry.index + 1),
                    onNavigateLeft: () {},
                    onNavigateRight: () {},
                    onFocusChange: (hasFocus) {
                      if (!mounted) return;
                      setState(() {
                        if (hasFocus) _focusedId = choice.id;
                      });
                      if (hasFocus) _reveal(_node(choice.id));
                    },
                    child: Material(
                      color: focused
                          ? colors.primary.withValues(alpha: 0.12)
                          : colors.onSurface.withValues(alpha: choice.selected ? 0.05 : 0.025),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(
                          color: focused ? colors.primary : colors.onSurface.withValues(alpha: 0.07),
                          width: focused ? 2 : 1,
                        ),
                      ),
                      child: InkWell(
                        onTap: choice.onSelected,
                        borderRadius: BorderRadius.circular(12),
                        canRequestFocus: false,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: accent.withValues(alpha: 0.12),
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: Icon(choice.icon, size: 19, color: accent),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      choice.title,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.titleMedium?.copyWith(
                                        fontSize: tv ? 17 : 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    if (choice.subtitle?.isNotEmpty == true)
                                      Text(
                                        choice.subtitle!,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodySmall?.copyWith(
                                          fontSize: 12,
                                          color: colors.onSurfaceVariant,
                                        ),
                                      ),
                                    if (choice.detail?.isNotEmpty == true)
                                      Text(
                                        choice.detail!,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodySmall?.copyWith(
                                          fontSize: 11,
                                          color: colors.onSurfaceVariant,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              if (choice.selected) ...[
                                const SizedBox(width: 10),
                                Icon(Icons.check_circle_rounded, size: 19, color: colors.primary),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
          final close = IconButton(
            onPressed: widget.onClose,
            tooltip: t.common.close,
            icon: const Icon(Icons.close_rounded, size: 22),
          );
          return Padding(
            padding: EdgeInsets.all(padding),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontSize: tv ? 21 : 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    tv ? ExcludeFocus(child: close) : close,
                  ],
                ),
                if (widget.subtitle?.isNotEmpty == true)
                  Text(
                    widget.subtitle!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall?.copyWith(color: colors.onSurfaceVariant),
                  ),
                const SizedBox(height: 12),
                if (widget.loading && widget.choices.isEmpty)
                  const Padding(
                    padding: EdgeInsets.all(24),
                    child: Center(child: CircularProgressIndicator()),
                  )
                else if (preview == null)
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(widget.emptyMessage ?? t.messages.noItemsAvailable),
                  )
                else if (horizontal)
                  SizedBox(
                    height: bodyHeight,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 35,
                          child: KeyedSubtree(
                            key: ValueKey('library_preview_${preview.id}'),
                            child: widget.previewBuilder(context, preview),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(flex: 65, child: list),
                      ],
                    ),
                  )
                else ...[
                  if (mobilePreviewHeight > 0) ...[
                    SizedBox(height: mobilePreviewHeight, child: widget.previewBuilder(context, preview)),
                    const SizedBox(height: 12),
                  ],
                  SizedBox(height: math.max(48.0, listHeight), child: list),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}

/// Shared landscape cover and caption treatment for libraries and title copies.
class LibrarySelectionPreview extends StatelessWidget {
  const LibrarySelectionPreview({super.key, required this.title, required this.artwork, this.subtitle});
  final String title;
  final String? subtitle;
  final Widget artwork;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, bounds) {
      final theme = Theme.of(context);
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: AspectRatio(aspectRatio: 1.6, child: artwork),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            maxLines: bounds.maxHeight < 150 ? 1 : 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleLarge?.copyWith(fontSize: 20, fontWeight: FontWeight.w700, height: 1.15),
          ),
          if (subtitle?.isNotEmpty == true) ...[
            const SizedBox(height: 4),
            Text(
              subtitle!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurfaceVariant),
            ),
          ],
        ],
      );
    },
  );
}
