import 'package:flutter/material.dart';

import '../../../widgets/bottom_sheet_page_scaffold.dart';
import '../../../widgets/settings_surface.dart';
import '../../../utils/platform_detector.dart';

/// Base class for video control bottom sheets providing common UI structure
class BaseVideoControlSheet extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget child;
  final Color? iconColor;
  final VoidCallback? onBack;
  final bool compactPlayerSurface;

  const BaseVideoControlSheet({
    super.key,
    required this.title,
    required this.icon,
    required this.child,
    this.iconColor,
    this.onBack,
    this.compactPlayerSurface = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget page = BottomSheetPageScaffold(
      title: title,
      icon: icon,
      iconColor: iconColor ?? Theme.of(context).colorScheme.primary,
      onBack: onBack,
      titleStyle: const TextStyle(fontSize: 18, fontWeight: .bold),
      showHeaderBorder: false,
      showHeaderDivider: true,
      child: child,
    );
    if (!compactPlayerSurface) return SettingsSurface(child: page);
    final source = Theme.of(context);
    final scheme = source.colorScheme;
    page = Theme(
      data: source.copyWith(
        colorScheme: scheme,
        textTheme: source.textTheme.apply(bodyColor: scheme.onSurface, displayColor: scheme.onSurface),
        listTileTheme: source.listTileTheme.copyWith(
          dense: true,
          minTileHeight: 48,
          contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 0),
          titleTextStyle: TextStyle(color: scheme.onSurface, fontSize: 15, fontWeight: FontWeight.w600),
          subtitleTextStyle: TextStyle(color: scheme.onSurfaceVariant, fontSize: 12),
        ),
      ),
      child: SettingsSurfaceScope(
        largeTargets: false,
        focusOutline: PlatformDetector.isTV(),
        child: Material(
          color: scheme.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          clipBehavior: Clip.antiAlias,
          child: page,
        ),
      ),
    );
    return page;
  }
}
