import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../focus/input_mode_tracker.dart';
import '../../i18n/strings.g.dart';
import '../../providers/theme_provider.dart';
import '../../services/settings_mutation_service.dart';
import '../../services/settings_service.dart' as settings;
import '../../services/supporter/supporter_mode.dart';
import '../../services/supporter/supporter_service.dart';
import '../../theme/mono_theme.dart';
import '../../theme/mono_tokens.dart';
import '../../utils/error_dialog.dart';
import '../../utils/platform_detector.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/focusable_list_tile.dart';
import '../../widgets/overlay_sheet.dart';
import '../../widgets/mobile_settings_preview.dart';
import '../../widgets/palette_swatch.dart';
import '../../widgets/settings_page.dart';
import '../../widgets/settings_section.dart';
import '../../widgets/supporter_sheet.dart';
import 'custom_theme_editor_screen.dart';
import 'settings_utils.dart';

/// Whether this build carries the perk UI at all. Release builds without a
/// Supporter mode compile the presets' tiles and the editor out. Debug and
/// profile builds keep the code so tests can drive it; runtime availability
/// still hides it there.
const _perksCompiled = supporterBuildMode != SupporterMode.off || !kReleaseMode;

/// Appearance → Theme: the Luroka dark/light collection, then Supporter presets and the
/// Custom theme wherever this install offers the perks.
///
/// A pick applies at once, so the screen itself previews it. A locked perk
/// opens the Supporter sheet first and applies only if that unlocked it.
class ThemeSettingsScreen extends StatelessWidget {
  const ThemeSettingsScreen({super.key, this.openSupporterSheet = showSupporterSheet, this.showMore = false});

  /// Offers the Supporter purchase for a locked perk and completes when the
  /// sheet closes.
  final Future<void> Function(BuildContext context) openSupporterSheet;
  final bool showMore;

  @override
  Widget build(BuildContext context) {
    // Hosts the Supporter sheet a locked perk opens; content builds below the
    // host so the sheet finds it instead of falling back to a modal route.
    return OverlaySheetHost(canPop: true, child: Builder(builder: _buildContent));
  }

  Widget _buildContent(BuildContext context) {
    final theme = context.watch<ThemeProvider>();
    final supporter = context.watch<SupporterService>();
    final showPerks = _perksCompiled && supporter.isAvailable;
    final locked = !supporter.isUnlocked;
    final current = theme.themeMode;
    final lockedStored = theme.lockedStoredThemeMode;
    final customPalette = theme.customPalette;
    // D-pad/keyboard users land on the theme in use, like the selection
    // dialogs; autofocus only acts when the tile first builds.
    final focusSelected = InputModeTracker.isKeyboardMode(context, listen: false);
    final featured = {...settings.ThemeMode.featuredDark, ...settings.ThemeMode.featuredLight};
    final darkModes = showMore
        ? settings.ThemeMode.cinemaDark.where((mode) => !featured.contains(mode)).toList()
        : settings.ThemeMode.featuredDark;
    final lightModes = showMore
        ? settings.ThemeMode.cinemaLight.where((mode) => !featured.contains(mode)).toList()
        : settings.ThemeMode.featuredLight;
    final focusMode = showMore
        ? (darkModes.contains(current) ||
                  lightModes.contains(current) ||
                  (showPerks && current == settings.ThemeMode.custom)
              ? current
              : darkModes.first)
        : (featured.contains(current) ? current : null);
    final mobile = PlatformDetector.isMobile(context);

    _ThemeOptionTile option(settings.ThemeMode mode) => _ThemeOptionTile(
      mode: mode,
      palette: ThemeProvider.paletteFor(mode, customPalette: customPalette),
      selected: current == mode,
      autofocus: focusSelected && focusMode == mode,
      locked: locked && mode.isSupporterPerk,
      // The radio follows what paints; the saved-but-locked choice says it
      // is kept, so losing the entitlement doesn't read as losing the theme.
      subtitle: mode == lockedStored
          ? t.themeEditor.savedLocked
          : mode == settings.ThemeMode.custom && customPalette == null
          ? t.themeEditor.customEmpty
          : null,
      onTap: () => _choose(context, mode),
    );

    final children = <Widget>[
      if (mobile)
        _MobileThemeGrid(
          title: t.lurokaThemes.darkThemes,
          modes: darkModes,
          current: current,
          onChoose: (mode) => unawaited(_choose(context, mode)),
        )
      else
        SettingsGroup(title: t.lurokaThemes.darkThemes, children: [for (final mode in darkModes) option(mode)]),
      if (mobile)
        _MobileThemeGrid(
          title: t.lurokaThemes.lightThemes,
          modes: lightModes,
          current: current,
          onChoose: (mode) => unawaited(_choose(context, mode)),
        )
      else
        SettingsGroup(title: t.lurokaThemes.lightThemes, children: [for (final mode in lightModes) option(mode)]),
      if (!showMore)
        SettingsGroup(
          children: [
            FocusableListTile(
              key: const ValueKey('more-themes'),
              leading: const AppIcon(Symbols.palette_rounded, fill: 1),
              title: Text(t.lurokaThemes.moreThemes),
              subtitle: Text(
                featured.contains(current) ? t.lurokaThemes.moreThemesDescription : themeModeLabel(current),
              ),
              trailing: const AppIcon(Symbols.chevron_right_rounded, fill: 1),
              autofocus: focusSelected && focusMode == null,
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => ThemeSettingsScreen(showMore: true, openSupporterSheet: openSupporterSheet),
                ),
              ),
            ),
          ],
        ),
      if (showMore && showPerks) ...[
        SettingsGroup(
          title: t.themeEditor.custom,
          children: [
            option(settings.ThemeMode.custom),
            FocusableListTile(
              key: const ValueKey('theme_edit_custom'),
              leading: const AppIcon(Symbols.edit_rounded, fill: 1),
              title: Text(t.themeEditor.editCustom),
              subtitle: Text(t.themeEditor.editCustomDescription),
              trailing: AppIcon(locked ? Symbols.lock_rounded : Symbols.chevron_right_rounded, fill: 1),
              onTap: () => _editCustom(context),
            ),
          ],
        ),
      ],
      const SizedBox(height: 24),
    ];
    if (mobile) {
      return Scaffold(
        appBar: AppBar(title: Text(showMore ? t.lurokaThemes.moreThemes : t.settings.theme)),
        body: SafeArea(
          top: false,
          child: Column(
            children: [
              if (MediaQuery.sizeOf(context).height >= 500) const MobileSettingsPreviewFrame(categoryId: 'appearance'),
              Expanded(
                child: ListView(key: const ValueKey('mobile-theme-choices'), children: children),
              ),
            ],
          ),
        ),
      );
    }
    return SettingsPage(title: Text(showMore ? t.lurokaThemes.moreThemes : t.settings.theme), children: children);
  }

  /// Applies [mode]. A locked perk first offers the Supporter sheet; Custom
  /// with no saved palette opens the editor instead, which applies it on Save.
  Future<void> _choose(BuildContext context, settings.ThemeMode mode) async {
    if (!await _ensureUnlocked(context, mode) || !context.mounted) return;
    if (mode == settings.ThemeMode.custom && context.read<ThemeProvider>().customPalette == null) {
      await _openEditor(context);
      return;
    }
    final failure = await const SettingsMutationService().write(context, settings.SettingsService.themeMode, mode);
    if (failure != null && context.mounted) unawaited(showErrorDialog(context, failure.display));
  }

  Future<void> _editCustom(BuildContext context) async {
    if (!await _ensureUnlocked(context, settings.ThemeMode.custom) || !context.mounted) return;
    await _openEditor(context);
  }

  /// Whether [mode] is usable now. A locked perk opens the Supporter sheet and
  /// answers from the entitlement once the sheet closes.
  Future<bool> _ensureUnlocked(BuildContext context, settings.ThemeMode mode) async {
    if (!mode.isSupporterPerk) return true;
    final supporter = context.read<SupporterService>();
    if (supporter.isUnlocked) return true;
    await openSupporterSheet(context);
    return supporter.isUnlocked;
  }
}

class _MobileThemeGrid extends StatelessWidget {
  const _MobileThemeGrid({required this.title, required this.modes, required this.current, required this.onChoose});
  final String title;
  final List<settings.ThemeMode> modes;
  final settings.ThemeMode current;
  final ValueChanged<settings.ThemeMode> onChoose;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final scale = (MediaQuery.textScalerOf(context).scale(14) / 14).clamp(1.0, 2.0);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 18, 16, 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),
          const SizedBox(height: 12),
          LayoutBuilder(
            builder: (context, bounds) {
              final columns = bounds.maxWidth >= 620 ? 3 : 2;
              return GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: modes.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 118 + 38 * scale,
                ),
                itemBuilder: (context, index) {
                  final mode = modes[index];
                  final palette = ThemeProvider.paletteFor(mode)!;
                  final selected = mode == current;
                  return Semantics(
                    key: ValueKey(mode),
                    label: themeModeLabel(mode),
                    selected: selected,
                    button: true,
                    child: Material(
                      color: colors.surfaceContainerLow,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(
                          color: selected ? colors.primary : colors.outlineVariant,
                          width: selected ? 2 : 1,
                        ),
                      ),
                      child: InkWell(
                        onTap: () => onChoose(mode),
                        child: Padding(
                          padding: const EdgeInsets.all(9),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(9),
                                  child: ColoredBox(
                                    color: palette.bg,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.play_circle_filled_rounded, color: palette.accent, size: 15),
                                              const SizedBox(width: 5),
                                              Container(
                                                width: 36,
                                                height: 4,
                                                decoration: BoxDecoration(
                                                  color: palette.text,
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                              ),
                                              const Spacer(),
                                              if (selected)
                                                Icon(Icons.check_circle_rounded, color: palette.accent, size: 18),
                                            ],
                                          ),
                                          const SizedBox(height: 8),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                for (var n = 0; n < 3; n++) ...[
                                                  if (n > 0) const SizedBox(width: 5),
                                                  Expanded(
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: n == 0
                                                            ? palette.accent.withValues(alpha: .45)
                                                            : palette.surface,
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 7),
                              Text(
                                themeModeLabel(mode),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

/// The editor starts from the saved Custom palette, or the first time from a
/// copy of the theme on screen.
Future<void> _openEditor(BuildContext context) async {
  if (_perksCompiled) {
    final theme = context.read<ThemeProvider>();
    final initial = theme.customPalette ?? theme.activePalette;
    await Navigator.push(
      context,
      MaterialPageRoute<void>(builder: (_) => CustomThemeEditorScreen(initialPalette: initial)),
    );
  }
}

class _ThemeOptionTile extends StatelessWidget {
  const _ThemeOptionTile({
    required this.mode,
    required this.palette,
    required this.selected,
    required this.autofocus,
    required this.locked,
    required this.onTap,
    this.subtitle,
  });

  final settings.ThemeMode mode;

  /// Null draws System's Light/Dark split, or an empty slot for a Custom
  /// theme that has no palette yet.
  final MonoPalette? palette;
  final bool selected;
  final bool autofocus;
  final bool locked;
  final String? subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    return FocusableListTile(
      key: ValueKey(mode),
      leading: palette == null && mode == settings.ThemeMode.custom
          ? const _EmptySwatch()
          : PaletteSwatch(palette: palette),
      title: Text(themeModeLabel(mode)),
      subtitle: subtitle == null ? null : Text(subtitle!),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (locked)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Semantics(
                label: t.themeEditor.locked,
                child: const AppIcon(Symbols.lock_rounded, fill: 1, size: 20),
              ),
            ),
          AppIcon(
            selected ? Symbols.radio_button_checked_rounded : Symbols.radio_button_unchecked_rounded,
            fill: 1,
            color: selected ? primary : null,
          ),
        ],
      ),
      autofocus: autofocus,
      onTap: onTap,
    );
  }
}

class _EmptySwatch extends StatelessWidget {
  const _EmptySwatch();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        border: Border.all(color: tokens(context).outline),
      ),
      child: const AppIcon(Symbols.add_rounded, fill: 1, size: 20),
    );
  }
}
