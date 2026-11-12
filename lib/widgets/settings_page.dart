import 'package:flutter/material.dart';

import 'focused_scroll_scaffold.dart';
import '../utils/platform_detector.dart';
import 'settings_surface.dart';
import 'settings_workspace_scope.dart';
import 'system_bottom_inset.dart';

/// Standard scaffold for settings pages made of ordinary list rows.
class SettingsPage extends StatelessWidget {
  final Widget title;
  final List<Widget>? children;
  final List<Widget>? slivers;
  final List<Widget>? actions;
  final EdgeInsetsGeometry? padding;
  final bool pinned;
  final bool automaticallyImplyLeading;
  final VoidCallback? onBackPressed;
  final Widget? previewHeader;

  const SettingsPage({
    super.key,
    required this.title,
    required List<Widget> this.children,
    this.actions,
    this.padding,
    this.pinned = true,
    this.automaticallyImplyLeading = true,
    this.onBackPressed,
    this.previewHeader,
  }) : slivers = null;

  const SettingsPage.slivers({
    super.key,
    required this.title,
    required List<Widget> this.slivers,
    this.actions,
    this.pinned = true,
    this.automaticallyImplyLeading = true,
    this.onBackPressed,
    this.previewHeader,
  }) : children = null,
       padding = null;

  @override
  Widget build(BuildContext context) {
    final pageSlivers = slivers ?? [_buildListSliver(context)];
    final workspace = SettingsWorkspaceScope.maybeOf(context);
    if (workspace != null) {
      final scroll = CustomScrollView(
        key: PageStorageKey('workspace-${workspace.categoryId}'),
        slivers: [...pageSlivers, const SliverSystemBottomInset()],
      );
      return previewHeader == null
          ? scroll
          : Column(
              children: [
                previewHeader!,
                Expanded(child: scroll),
              ],
            );
    }
    if (PlatformDetector.isTV() && previewHeader != null && MediaQuery.sizeOf(context).width >= 800) {
      return SettingsSurface(
        child: Scaffold(
          body: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 3,
                  child: FocusedScrollScaffold(
                    allowDirectionalExit: true,
                    title: title,
                    actions: actions,
                    pinned: pinned,
                    automaticallyImplyLeading: automaticallyImplyLeading,
                    onBackPressed: onBackPressed,
                    slivers: pageSlivers,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 80, 32, 24),
                    child: Align(alignment: Alignment.topCenter, child: previewHeader!),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return SettingsSurface(
      child: FocusedScrollScaffold(
        title: title,
        actions: actions,
        pinned: pinned,
        automaticallyImplyLeading: automaticallyImplyLeading,
        onBackPressed: onBackPressed,
        slivers: [
          if (previewHeader != null)
            SliverPersistentHeader(pinned: true, delegate: _PreviewHeaderDelegate(previewHeader!)),
          ...pageSlivers,
        ],
      ),
    );
  }

  Widget _buildListSliver(BuildContext context) {
    // Finite settings forms mount every section so a saved choice can request
    // focus even below the viewport (for example the Custom theme). Long,
    // data-backed pages continue to supply their own lazy slivers.
    final list = SliverToBoxAdapter(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: children!),
    );
    final width = MediaQuery.sizeOf(context).width;
    final pagePadding =
        padding ??
        (SettingsWorkspaceScope.maybeOf(context) != null
            ? const EdgeInsets.symmetric(vertical: 4)
            : EdgeInsets.symmetric(
                vertical: 8,
                horizontal: PlatformDetector.isTV()
                    ? previewHeader != null
                          ? 24
                          : ((width - 1040) / 2).clamp(24.0, double.infinity)
                    : 0,
              ));
    return SliverPadding(padding: pagePadding, sliver: list);
  }
}

class _PreviewHeaderDelegate extends SliverPersistentHeaderDelegate {
  _PreviewHeaderDelegate(this.child);
  final Widget child;
  @override
  double get minExtent => 160;
  @override
  double get maxExtent => 160;
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) => SizedBox.expand(
    child: ColoredBox(color: Theme.of(context).scaffoldBackgroundColor, child: child),
  );
  @override
  bool shouldRebuild(covariant _PreviewHeaderDelegate oldDelegate) => oldDelegate.child != child;
}
