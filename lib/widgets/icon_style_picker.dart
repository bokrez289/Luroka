import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../i18n/strings.g.dart';
import '../media/icon_style.dart';
import 'app_icon.dart';
import 'focusable_list_tile.dart';

String iconStyleLabel(AppIconStyle style) => switch (style) {
  AppIconStyle.current => t.iconStyles.current,
  AppIconStyle.materialOutline => t.iconStyles.outline,
  AppIconStyle.lucide => t.iconStyles.lucide,
};

/// Same focusable, state-aware preview for settings and profile setup.
class IconStylePicker extends StatelessWidget {
  const IconStylePicker({super.key, required this.value, required this.onChanged, this.autofocus = false});
  final AppIconStyle value;
  final ValueChanged<AppIconStyle>? onChanged;
  final bool autofocus;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(t.iconStyles.title, style: Theme.of(context).textTheme.titleMedium),
      Text(t.iconStyles.description, style: Theme.of(context).textTheme.bodySmall),
      for (final style in AppIconStyle.values)
        FocusableListTile(
          key: ValueKey('icon-style-${style.name}'),
          autofocus: autofocus && value == style,
          selected: value == style,
          title: Text(iconStyleLabel(style)),
          subtitle: style == AppIconStyle.lucide ? Text(t.iconStyles.lucideDescription) : null,
          leading: AppIcon(value == style ? Symbols.radio_button_checked_rounded : Symbols.radio_button_unchecked_rounded,
            color: value == style ? Theme.of(context).colorScheme.primary : Theme.of(context).disabledColor),
          trailing: Row(mainAxisSize: MainAxisSize.min, children: [
            for (final icon in [Symbols.home_rounded, Symbols.search_rounded, Symbols.settings_rounded]) ...[
              AppIcon(icon, styleOverride: style, size: 21),
              const SizedBox(width: 8),
            ],
          ]),
          onTap: onChanged == null ? null : () => onChanged!(style),
        ),
    ],
  );
}
