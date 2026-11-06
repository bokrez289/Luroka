import 'package:flutter/material.dart';

import '../focus/focusable_wrapper.dart';

class LibraryChoice {
  const LibraryChoice({
    required this.id,
    required this.title,
    required this.icon,
    required this.onSelected,
    this.subtitle,
    this.detail,
    this.selected = false,
    this.artwork,
    this.groupLabel,
    this.accent,
  });
  final String id, title;
  final String? subtitle, detail;
  final IconData icon;
  final VoidCallback onSelected;
  final bool selected;
  final Widget? artwork;
  final String? groupLabel;
  final Color? accent;
}

/// Compact destination cards shared by browsing and playback-source choices.
/// Every tile is one focus stop, with a visible selection independent of focus.
class LibraryChoiceGrid extends StatelessWidget {
  const LibraryChoiceGrid({super.key, required this.choices, this.columns = 3, this.compact = false});
  final List<LibraryChoice> choices;
  final int columns;
  final bool compact;
  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, bounds) {
      final count = bounds.maxWidth < 480
          ? 2
          : compact && bounds.maxWidth < 600
          ? 3
          : columns;
      final textScale = MediaQuery.textScalerOf(context).scale(14) / 14;
      return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(4, 4, 4, 16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: count,
          mainAxisExtent: (compact ? 108 : 142) * textScale.clamp(1, 1.5),
          crossAxisSpacing: 14,
          mainAxisSpacing: 14,
        ),
        itemCount: choices.length,
        itemBuilder: (context, index) => _ChoiceTile(
          key: ValueKey(choices[index].id),
          choice: choices[index],
          compact: compact,
          autofocus: choices.any((choice) => choice.selected) ? choices[index].selected : index == 0,
        ),
      );
    },
  );
}

class _ChoiceTile extends StatefulWidget {
  const _ChoiceTile({super.key, required this.choice, required this.autofocus, this.compact = false});
  final LibraryChoice choice;
  final bool autofocus;
  final bool compact;
  @override
  State<_ChoiceTile> createState() => _ChoiceTileState();
}

class _ChoiceTileState extends State<_ChoiceTile> {
  bool _focused = false;
  @override
  Widget build(BuildContext context) {
    final choice = widget.choice;
    final colors = Theme.of(context).colorScheme;
    return FocusableWrapper(
      semanticLabel: [choice.title, ?choice.subtitle, ?choice.detail].join(', '),
      checked: choice.selected,
      autofocus: widget.autofocus,
      borderRadius: 12,
      disableScale: true,
      onSelect: choice.onSelected,
      onFocusChange: (value) => setState(() => _focused = value),
      child: GestureDetector(
        onTap: choice.onSelected,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.alphaBlend(colors.primary.withValues(alpha: _focused ? .28 : .12), colors.surfaceContainerHigh),
                  colors.surfaceContainer,
                ],
              ),
              border: Border.all(
                color: _focused
                    ? colors.primary
                    : choice.selected
                    ? colors.primary.withValues(alpha: .6)
                    : colors.onSurface.withValues(alpha: .12),
                width: _focused ? 2 : 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                if (choice.artwork != null)
                  Positioned.fill(
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Opacity(opacity: .7, child: choice.artwork!),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [colors.surface.withValues(alpha: .12), colors.surface.withValues(alpha: .95)],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (choice.artwork == null)
                  Positioned(
                    right: -10,
                    top: -10,
                    child: Icon(choice.icon, size: 108, color: colors.primary.withValues(alpha: .12)),
                  ),
                Padding(
                  padding: EdgeInsets.all(widget.compact ? 12 : 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(choice.icon, color: colors.primary, size: widget.compact ? 20 : 25),
                          const Spacer(),
                          if (choice.selected) Icon(Icons.check_circle_rounded, size: 20, color: colors.primary),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        choice.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: widget.compact ? 16 : 18,
                          fontWeight: FontWeight.w700,
                          color: colors.onSurface,
                        ),
                      ),
                      if (choice.subtitle?.isNotEmpty == true)
                        Text(
                          choice.subtitle!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, color: colors.onSurfaceVariant),
                        ),
                      if (choice.detail?.isNotEmpty == true)
                        Text(
                          choice.detail!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 11, color: colors.onSurfaceVariant),
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
  }
}
