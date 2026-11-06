import 'package:flutter/material.dart';

class SettingsHelp {
  const SettingsHelp(this.title, this.description, [this.scope = '', this.settingId]);
  final String title, description;
  final String scope;
  final String? settingId;
}

/// Presentation-only context. It never reads or writes preference values.
class SettingsWorkspaceScope extends InheritedWidget {
  const SettingsWorkspaceScope({
    super.key,
    required this.help,
    required this.categoryId,
    required this.advanced,
    required this.settingKeys,
    required this.onRegistered,
    required super.child,
  });
  final ValueNotifier<SettingsHelp?> help;
  final String categoryId;
  final bool advanced;
  final Map<String, GlobalKey> settingKeys;
  final void Function(String id, String title, String description) onRegistered;
  static SettingsWorkspaceScope? maybeOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<SettingsWorkspaceScope>();
  @override
  bool updateShouldNotify(SettingsWorkspaceScope oldWidget) =>
      categoryId != oldWidget.categoryId || advanced != oldWidget.advanced;
}

class WorkspaceSettingRow extends StatelessWidget {
  const WorkspaceSettingRow({
    super.key,
    required this.title,
    required this.description,
    required this.child,
    this.settingId,
  });
  final String title, description;
  final String? settingId;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final scope = SettingsWorkspaceScope.maybeOf(context);
    if (scope == null) return child;
    final id = settingId ?? title;
    scope.onRegistered(id, title, description);
    return KeyedSubtree(
      key: scope.settingKeys.putIfAbsent('${scope.categoryId}:$id', GlobalKey.new),
      child: Focus(
        canRequestFocus: false,
        onFocusChange: (focused) {
          if (focused) scope.help.value = SettingsHelp(title, description, '', id);
        },
        child: child,
      ),
    );
  }
}
