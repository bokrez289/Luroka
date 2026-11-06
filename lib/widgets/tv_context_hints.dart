import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../i18n/strings.g.dart';
import 'app_icon.dart';

/// The persistent remote hint bar for TV shells: keycap chips naming what the
/// remote's physical keys do right now.
///
/// A remote has no hovered affordances and no labels on its hardware, so this
/// bar is the 10-foot answer to "what is pressable": OK selects, the arrows
/// browse, Back leaves. One row, muted, always in the same place.
class TvContextHints extends StatelessWidget {
  const TvContextHints({super.key});

  @override
  Widget build(BuildContext context) {
    final onSurface = Theme.of(context).colorScheme.onSurface;
    final capStyle = TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.6,
      color: onSurface.withValues(alpha: 0.55),
    );
    final labelStyle = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: onSurface.withValues(alpha: 0.42));

    Widget keycap(Widget child) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: onSurface.withValues(alpha: 0.22)),
      ),
      child: child,
    );

    Widget hint({required Widget cap, required String label}) => Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        cap,
        const SizedBox(width: 6),
        Text(label, style: labelStyle),
      ],
    );

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 2, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          hint(
            cap: keycap(Text('OK', style: capStyle)),
            label: t.tvHints.select,
          ),
          const SizedBox(width: 22),
          hint(
            cap: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppIcon(Symbols.chevron_left, size: 13, color: onSurface.withValues(alpha: 0.55)),
                AppIcon(Symbols.chevron_right, size: 13, color: onSurface.withValues(alpha: 0.55)),
              ],
            ),
            label: t.tvHints.browse,
          ),
          const SizedBox(width: 22),
          hint(
            cap: AppIcon(Symbols.arrow_back_rounded, size: 13, color: onSurface.withValues(alpha: 0.55)),
            label: t.tvHints.back,
          ),
        ],
      ),
    );
  }
}
