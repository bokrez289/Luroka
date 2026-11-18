import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../media/icon_style.dart';
import '../services/settings_service.dart';

/// Unmapped actions keep their Material icon, preserving meaning and state.
final _lucideIcons = <IconData, IconData>{
  Symbols.home_rounded: LucideIcons.home,
  Symbols.search_rounded: LucideIcons.search,
  Symbols.settings_rounded: LucideIcons.settings,
  Symbols.favorite_rounded: LucideIcons.heart,
  Symbols.play_arrow_rounded: LucideIcons.play,
  Symbols.pause_rounded: LucideIcons.pause,
  Symbols.skip_next_rounded: LucideIcons.skipForward,
  Symbols.skip_previous_rounded: LucideIcons.skipBack,
  Symbols.arrow_back_rounded: LucideIcons.arrowLeft,
  Symbols.arrow_forward_rounded: LucideIcons.arrowRight,
  Symbols.chevron_left_rounded: LucideIcons.chevronLeft,
  Symbols.chevron_right_rounded: LucideIcons.chevronRight,
  Symbols.expand_more_rounded: LucideIcons.chevronDown,
  Symbols.expand_less_rounded: LucideIcons.chevronUp,
  Symbols.close_rounded: LucideIcons.x,
  Symbols.check_rounded: LucideIcons.check,
  Symbols.download_rounded: LucideIcons.download,
  Symbols.upload_rounded: LucideIcons.upload,
  Symbols.delete_rounded: LucideIcons.trash2,
  Symbols.info_rounded: LucideIcons.info,
  Symbols.movie_rounded: LucideIcons.film,
  Symbols.live_tv_rounded: LucideIcons.tv,
  Symbols.group_rounded: LucideIcons.users,
  Symbols.schedule_rounded: LucideIcons.clock,
  Symbols.star_rounded: LucideIcons.star,
  Symbols.refresh_rounded: LucideIcons.refreshCw,
  Symbols.shuffle_rounded: LucideIcons.shuffle,
  Symbols.more_horiz_rounded: LucideIcons.moreHorizontal,
  Symbols.more_vert_rounded: LucideIcons.moreVertical,
  Symbols.menu_rounded: LucideIcons.menu,
  Symbols.filter_list_rounded: LucideIcons.filter,
};

/// Wrapper around [Icon] that centralizes our Material Symbols defaults.
/// Defaults: fill=1 (filled) and weight=700 (bold). Update [AppIconDefaults]
/// to tweak app-wide icon appearance from one place.
class AppIcon extends StatelessWidget {
  const AppIcon(
    this.icon, {
    super.key,
    this.size,
    this.color,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
    this.styleOverride,
  });

  final IconData? icon;
  final double? size;
  final Color? color;
  final double? fill;
  final double? weight;
  final double? grade;
  final double? opticalSize;
  final List<Shadow>? shadows;
  final String? semanticLabel;
  final TextDirection? textDirection;
  final AppIconStyle? styleOverride;

  @override
  Widget build(BuildContext context) {
    if (icon == null) return const SizedBox.shrink();
    // Hearts and stars use their fill as selected-state feedback; keep that
    // feedback when it was explicitly specified by the caller.
    final statefulFill = fill != null && (icon == Symbols.favorite_rounded || icon == Symbols.star_rounded);
    Widget buildIcon(AppIconStyle style) => Icon(
      style == AppIconStyle.lucide && !statefulFill ? (_lucideIcons[icon] ?? icon) : icon,
      size: size,
      color: color,
      fill: style == AppIconStyle.materialOutline && !statefulFill ? 0 : fill ?? AppIconDefaults.fill,
      weight: style == AppIconStyle.materialOutline ? 400 : weight ?? AppIconDefaults.weight,
      grade: grade ?? AppIconDefaults.grade,
      opticalSize: opticalSize ?? AppIconDefaults.opticalSize,
      shadows: shadows ?? AppIconDefaults.shadows,
      semanticLabel: semanticLabel,
      textDirection: textDirection,
    );
    if (styleOverride != null) return buildIcon(styleOverride!);
    final settings = SettingsService.instanceOrNull;
    if (settings == null) return buildIcon(AppIconStyle.current);
    return ValueListenableBuilder<AppIconStyle>(
      valueListenable: settings.listenable(SettingsService.iconStyle),
      builder: (_, style, _) => buildIcon(style),
    );
  }
}

/// Central place to adjust default Material Symbol variations.
class AppIconDefaults {
  static double fill = 1;
  static double weight = 700;
  static double? grade;
  static double? opticalSize;
  static Color? color;
  static List<Shadow>? shadows;

  static void update({
    double? fill,
    double? weight,
    double? grade,
    double? opticalSize,
    Color? color,
    List<Shadow>? shadows,
  }) {
    if (fill != null) AppIconDefaults.fill = fill;
    if (weight != null) AppIconDefaults.weight = weight;
    if (grade != null) AppIconDefaults.grade = grade;
    if (opticalSize != null) AppIconDefaults.opticalSize = opticalSize;
    if (color != null) AppIconDefaults.color = color;
    if (shadows != null) AppIconDefaults.shadows = shadows;
  }
}
