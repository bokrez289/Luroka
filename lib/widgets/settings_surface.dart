import 'package:flutter/material.dart';
import '../utils/platform_detector.dart';
import 'settings_workspace_scope.dart';

/// Shared settings typography and generous ten-foot targets, without changing
/// the compact tiles used by media pickers elsewhere in the application.
class SettingsSurface extends StatelessWidget {
  const SettingsSurface({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tv = PlatformDetector.isTV();
    final compact = tv && SettingsWorkspaceScope.maybeOf(context) != null;
    final smallTv = compact && MediaQuery.sizeOf(context).width < 1200;
    return SettingsSurfaceScope(
      largeTargets: tv,
      child: Theme(
        data: theme.copyWith(
          listTileTheme: theme.listTileTheme.copyWith(
            dense: false,
            minTileHeight: compact
                ? (smallTv ? 64 : 72)
                : tv
                ? 72
                : 60,
            contentPadding: EdgeInsets.symmetric(
              horizontal: compact
                  ? 12
                  : tv
                  ? 22
                  : 16,
              vertical: compact
                  ? 3
                  : tv
                  ? 8
                  : 4,
            ),
            titleTextStyle: theme.textTheme.titleMedium?.copyWith(
              fontSize: compact
                  ? (smallTv ? 16 : 18)
                  : tv
                  ? 18
                  : 14,
              fontWeight: FontWeight.w500,
            ),
            subtitleTextStyle: theme.textTheme.bodyMedium?.copyWith(
              fontSize: compact
                  ? 14
                  : tv
                  ? 14
                  : 12,
              color: theme.colorScheme.onSurfaceVariant,
              height: 1.4,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        child: child,
      ),
    );
  }
}

class SettingsSurfaceScope extends InheritedWidget {
  const SettingsSurfaceScope({super.key, required this.largeTargets, this.focusOutline = false, required super.child});
  final bool largeTargets;
  final bool focusOutline;
  static bool largeTargetsOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<SettingsSurfaceScope>()?.largeTargets ?? false;
  static bool isSettings(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<SettingsSurfaceScope>() != null;
  static bool showFocusOutline(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<SettingsSurfaceScope>();
    return scope != null && (scope.largeTargets || scope.focusOutline);
  }

  @override
  bool updateShouldNotify(SettingsSurfaceScope oldWidget) =>
      largeTargets != oldWidget.largeTargets || focusOutline != oldWidget.focusOutline;
}

/// A visible remote outline, with no extra focus stop or layout inset.
class SettingsFocusOutline extends StatelessWidget {
  const SettingsFocusOutline({super.key, required this.focusNode, required this.child});
  final FocusNode focusNode;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    if (!SettingsSurfaceScope.showFocusOutline(context)) return child;
    return ListenableBuilder(
      listenable: focusNode,
      child: child,
      builder: (context, child) => DecoratedBox(
        position: DecorationPosition.foreground,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 2,
            color: focusNode.hasFocus ? Theme.of(context).colorScheme.onSurface : Colors.transparent,
          ),
        ),
        child: child,
      ),
    );
  }
}
