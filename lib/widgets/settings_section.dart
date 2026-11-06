import 'package:flutter/material.dart';
import '../theme/mono_tokens.dart';
import '../utils/platform_detector.dart';
import 'app_icon.dart';
import 'expressive_button_group.dart';
import 'settings_surface.dart';
import 'settings_workspace_scope.dart';

/// Standard settings-option title style, for group children that are not a
/// [ListTile] (segmented controls, sliders) and so don't inherit its
/// typography.
///
/// The app renders every row compactly — [ThemeData.listTileTheme] sets
/// `dense: true` and the `Focusable*ListTile`s default to it — and Flutter
/// draws a dense [ListTile] title at 13. Match that so a settings page reads
/// as one family instead of one size per row type.
TextStyle? settingsOptionTitleStyle(BuildContext context) => Theme.of(context).textTheme.bodyLarge?.copyWith(
  fontSize:
      PlatformDetector.isTV() &&
          !(SettingsWorkspaceScope.maybeOf(context) != null && MediaQuery.sizeOf(context).width < 1200)
      ? 16
      : 14,
);

class SettingsSectionHeader extends StatelessWidget {
  final String title;

  const SettingsSectionHeader(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(color: tokens(context).textMuted, fontWeight: .w600),
      ),
    );
  }
}

/// One calm, rounded settings surface with inset dividers. Each row keeps its
/// native ink focus/hover highlight and externally-owned focus node. Exclude
/// conditional rows at list-build time to avoid separators around empty rows.
///
/// Children inherit the compact row geometry the `Focusable*ListTile`s default
/// to, so a plain [ListTile] used as a non-interactive info row lines up with
/// its interactive siblings instead of standing 11px taller.
class SettingsGroup extends StatelessWidget {
  final String? title;
  final List<Widget> children;
  final EdgeInsetsGeometry margin;
  final bool compact;

  const SettingsGroup({
    super.key,
    this.title,
    required this.children,
    this.margin = const EdgeInsets.symmetric(horizontal: 16),
    this.compact = false,
  });

  @override
  Widget build(BuildContext context) {
    final t = tokens(context);
    final content = Column(
      crossAxisAlignment: .start,
      children: [
        if (title != null)
          if (compact)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 6),
              child: Text(
                title!,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          else
            SettingsSectionHeader(title!),
        Padding(
          padding: margin,
          child: Material(
            color: compact ? Theme.of(context).colorScheme.surfaceContainerHigh : t.surface,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: Theme.of(context).colorScheme.outlineVariant.withValues(alpha: .35)),
            ),
            child: ListTileTheme.merge(
              visualDensity: !compact && (PlatformDetector.isAutomotive() || PlatformDetector.isTV())
                  ? VisualDensity.standard
                  : const VisualDensity(vertical: -3),
              child: Column(
                children: [
                  for (var i = 0; i < children.length; i++) ...[
                    if (i > 0)
                      Divider(
                        height: 1,
                        indent: 64,
                        endIndent: 20,
                        color: Theme.of(context).colorScheme.outlineVariant.withValues(alpha: 0.5),
                      ),
                    Material(
                      color: Colors.transparent,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      child: children[i],
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ],
    );
    return compact ? content : SettingsSurface(child: content);
  }
}

/// A setting with a label + icon row and a full-width button group below.
/// Used for settings with 2-3 short options.
class SegmentedSetting<T> extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final List<ButtonSegment<T>> segments;
  final T selected;
  final ValueChanged<T> onChanged;

  const SegmentedSetting({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    required this.segments,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            children: [
              AppIcon(icon, fill: 1),
              const SizedBox(width: 16),
              Expanded(child: Text(title, style: settingsOptionTitleStyle(context))),
            ],
          ),
          if (subtitle != null) ...[
            const SizedBox(height: 4),
            Text(subtitle!, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: tokens(context).textMuted)),
          ],
          const SizedBox(height: 12),
          ExpressiveButtonGroup<T>(segments: segments, selected: selected, onChanged: onChanged),
        ],
      ),
    );
  }
}
