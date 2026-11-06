import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../focus/focusable_wrapper.dart';
import '../../i18n/strings.g.dart';
import '../../widgets/app_icon.dart';

/// The TV dock's active-room indicator and direct entry to its room screen.
class WatchTogetherDockAction extends StatelessWidget {
  const WatchTogetherDockAction({
    super.key,
    required this.focusNode,
    required this.color,
    required this.onPressed,
    required this.onNavigateLeft,
    required this.onNavigateRight,
  });

  final FocusNode focusNode;
  final Color color;
  final VoidCallback onPressed;
  final VoidCallback onNavigateLeft;
  final VoidCallback onNavigateRight;

  @override
  Widget build(BuildContext context) => FocusableWrapper(
    focusNode: focusNode,
    semanticLabel: t.watchTogether.title,
    borderRadius: 20,
    descendantsAreFocusable: false,
    onSelect: onPressed,
    onNavigateUp: () {},
    onNavigateDown: onPressed,
    onNavigateLeft: onNavigateLeft,
    onNavigateRight: onNavigateRight,
    child: IconButton(
      tooltip: t.watchTogether.title,
      onPressed: onPressed,
      icon: AppIcon(Symbols.group_rounded, size: 17, fill: 1, color: color),
    ),
  );
}
