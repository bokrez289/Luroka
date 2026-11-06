import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../focus/dpad_navigator.dart';
import '../focus/key_event_utils.dart';
import 'app_icon.dart';
import 'focusable_list_tile.dart';
import 'settings_surface.dart';

class SettingsWorkbenchSection {
  const SettingsWorkbenchSection({
    required this.id,
    required this.title,
    required this.icon,
    required this.description,
    required this.children,
  });
  final String id;
  final String title;
  final IconData icon;
  final String description;
  final List<Widget> children;
}

/// A conventional menu and one section at a time. Inactive pages keep pending
/// writes/streams alive, but cannot take remote focus or intercept input.
class SettingsWorkbench extends StatefulWidget {
  const SettingsWorkbench({
    super.key,
    required this.sections,
    this.quickActions = const [],
    this.initialSection,
    this.onSectionChanged,
  });
  final List<SettingsWorkbenchSection> sections;
  final List<Widget> quickActions;
  final String? initialSection;
  final ValueChanged<String?>? onSectionChanged;
  @override
  State<SettingsWorkbench> createState() => SettingsWorkbenchState();
}

class SettingsWorkbenchState extends State<SettingsWorkbench> {
  final Map<String, FocusNode> _entries = {};
  final Map<String, FocusScopeNode> _scopes = {};
  String? _selected;
  List<SettingsWorkbenchSection> get _sections => widget.sections.where((s) => s.children.isNotEmpty).toList();
  FocusNode _entry(String id) => _entries.putIfAbsent(id, () => FocusNode(debugLabel: 'SettingsEntry:$id'));
  FocusScopeNode _scope(String id) => _scopes.putIfAbsent(id, () => FocusScopeNode(debugLabel: 'SettingsPage:$id'));

  @override
  void initState() {
    super.initState();
    _selected = widget.initialSection;
  }

  @override
  void dispose() {
    for (final node in _entries.values) {
      node.dispose();
    }
    for (final scope in _scopes.values) {
      scope.dispose();
    }
    super.dispose();
  }

  void _open(String id) {
    setState(() => _selected = id);
    widget.onSectionChanged?.call(id);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || _selected != id) return;
      final candidates = _scope(id).traversalDescendants.where((n) => n.canRequestFocus && !n.skipTraversal);
      if (candidates.isNotEmpty) candidates.first.requestFocus();
    });
  }

  void showRoot() {
    final previous = _selected;
    if (previous == null) return;
    setState(() => _selected = null);
    widget.onSectionChanged?.call(null);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && _selected == null) _entry(previous).requestFocus();
    });
  }

  @override
  Widget build(BuildContext context) {
    final sections = _sections;
    final selectedIndex = sections.indexWhere((s) => s.id == _selected);
    return SettingsSurface(
      child: Focus(
        canRequestFocus: false,
        skipTraversal: true,
        onKeyEvent: (_, event) {
          if (_selected != null && event.logicalKey.isBackKey) return handleBackKeyAction(event, showRoot);
          if (_selected != null && event.isActionable && event.logicalKey == LogicalKeyboardKey.arrowLeft) {
            showRoot();
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        },
        child: IndexedStack(
          index: selectedIndex + 1,
          children: [
            ExcludeFocus(
              excluding: selectedIndex >= 0,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  children: [
                    ...widget.quickActions,
                    if (widget.quickActions.isNotEmpty && sections.isNotEmpty)
                      const Divider(height: 20, indent: 20, endIndent: 20),
                    for (final section in sections)
                      FocusableListTile(
                        focusNode: _entry(section.id),
                        leading: AppIcon(section.icon, size: 24),
                        title: Text(section.title),
                        subtitle: section.description.isEmpty ? null : Text(section.description),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () => _open(section.id),
                      ),
                  ],
                ),
              ),
            ),
            for (var index = 0; index < sections.length; index++)
              ExcludeFocus(
                excluding: index != selectedIndex,
                child: FocusScope(
                  node: _scope(sections[index].id),
                  child: SingleChildScrollView(
                    key: PageStorageKey('player-settings-${sections[index].id}'),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: sections[index].children),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
