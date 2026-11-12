import 'package:flutter/material.dart';

import '../../focus/focusable_wrapper.dart';

/// An overlay rather than a replacement for the library, so dismissing it
/// leaves the underlying grid, its scroll position and its focus nodes intact.
class CompactLibraryMenuEntry {
  const CompactLibraryMenuEntry({required this.id, required this.label, required this.icon, this.selected = false});

  final String id;
  final String label;
  final IconData icon;
  final bool selected;
}

Future<String?> showCompactLibraryMenu(
  BuildContext context, {
  required String title,
  required List<CompactLibraryMenuEntry> entries,
}) => showGeneralDialog<String>(
  context: context,
  barrierDismissible: true,
  barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
  barrierColor: Colors.black54,
  transitionDuration: const Duration(milliseconds: 180),
  pageBuilder: (dialogContext, _, _) => _CompactLibraryMenu(title: title, entries: entries),
  transitionBuilder: (context, animation, _, child) => SlideTransition(
    position: Tween(
      begin: const Offset(-1, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut)),
    child: child,
  ),
);

class _CompactLibraryMenu extends StatelessWidget {
  const _CompactLibraryMenu({required this.title, required this.entries});

  final String title;
  final List<CompactLibraryMenuEntry> entries;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final selectedIndex = entries.indexWhere((entry) => entry.selected);
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Material(
        color: colors.surface,
        elevation: 12,
        child: SafeArea(
          child: SizedBox(
            width: 340,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
                  child: Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(12, 0, 12, 16),
                    children: [
                      for (final (index, entry) in entries.indexed)
                        FocusableWrapper(
                          key: ValueKey('compact-library-${entry.id}'),
                          autofocus: index == (selectedIndex < 0 ? 0 : selectedIndex),
                          onSelect: () => Navigator.of(context).pop(entry.id),
                          onNavigateRight: () => Navigator.of(context).pop(),
                          onBack: () => Navigator.of(context).pop(),
                          useBackgroundFocus: true,
                          disableScale: true,
                          descendantsAreFocusable: false,
                          child: ListTile(
                            leading: Icon(entry.icon),
                            title: Text(entry.label),
                            selected: entry.selected,
                            onTap: () => Navigator.of(context).pop(entry.id),
                          ),
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
