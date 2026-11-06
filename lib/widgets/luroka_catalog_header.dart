import 'package:flutter/material.dart';

import '../focus/focusable_button.dart';
import '../i18n/strings.g.dart';
import 'options_chips_bar.dart';

class LurokaCatalogHeader extends StatelessWidget {
  const LurokaCatalogHeader({
    super.key,
    required this.options,
    required this.count,
    required this.loading,
    this.countIsLowerBound = false,
    this.activeFilters = const [],
    this.onClearFilters,
    this.trailing,
  });
  final List<OptionsChipDescriptor> options;
  final int count;
  final bool loading;
  final bool countIsLowerBound;
  final List<({String label, VoidCallback remove})> activeFilters;
  final VoidCallback? onClearFilters;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 4, 18, 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  t.mobileUi.collection,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              if (!loading || count > 0)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: colors.primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '${t.discover.titleCount(n: count)}${countIsLowerBound ? '+' : ''}',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(color: colors.primary),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 7),
          Row(
            children: [
              for (final (index, option) in options.indexed)
                Expanded(
                  flex: options.length == 2 && index == 1 ? 2 : 1,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 8),
                    child: FocusableButton(
                      key: option.anchorKey,
                      focusNode: option.focusNode,
                      onPressed: option.onPressed,
                      onNavigateDown: option.onNavigateDown,
                      onNavigateUp: option.onNavigateUp,
                      onBack: option.onBack,
                      child: OutlinedButton.icon(
                        onPressed: option.onPressed,
                        style: OutlinedButton.styleFrom(
                          backgroundColor: colors.surface,
                          foregroundColor: colors.onSurface,
                          side: BorderSide(color: colors.onSurface.withValues(alpha: 0.12)),
                          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                        ),
                        icon: Icon(option.icon, size: 17),
                        label: Text(
                          option.label,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ),
              ?trailing,
            ],
          ),
          if (activeFilters.isNotEmpty)
            SizedBox(
              height: 38 * (MediaQuery.textScalerOf(context).scale(12) / 12).clamp(1, 2),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (final filter in activeFilters)
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: 6),
                      child: InputChip(
                        label: Text(filter.label, maxLines: 1, overflow: TextOverflow.ellipsis),
                        onDeleted: filter.remove,
                        visualDensity: VisualDensity.compact,
                        labelStyle: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                  if (onClearFilters != null) TextButton(onPressed: onClearFilters, child: Text(t.common.clear)),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
