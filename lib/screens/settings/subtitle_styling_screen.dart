import 'dart:io';

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../i18n/strings.g.dart';
import '../../services/settings_mutation_service.dart';
import '../../services/settings_service.dart';
import '../../utils/platform_detector.dart';
import '../../utils/error_dialog.dart';
import '../../widgets/setting_tile.dart';
import '../../widgets/settings_builder.dart';
import '../../widgets/settings_page.dart';
import '../../widgets/settings_section.dart';
import '../../widgets/overlay_sheet.dart';
import '../../widgets/video_controls/sheets/base_video_control_sheet.dart';
import 'settings_utils.dart';

class SubtitleStylingScreen extends StatelessWidget {
  const SubtitleStylingScreen({super.key, this.embedded = false, this.onChanged});
  final bool embedded;
  final Future<void> Function()? onChanged;

  String _assOverrideLabel(SubAssOverride value) {
    return switch (value) {
      SubAssOverride.no => t.common.no,
      SubAssOverride.yes => t.common.yes,
      SubAssOverride.scale => t.subtitlingStyling.overrideScale,
      SubAssOverride.force => t.subtitlingStyling.overrideForce,
      SubAssOverride.strip => t.subtitlingStyling.overrideStrip,
    };
  }

  String _formatPosition(int value) {
    if (value == 0) return t.subtitlingStyling.positionTop;
    if (value == 100) return t.subtitlingStyling.positionBottom;
    return '$value%';
  }

  String _renderResolutionLabel(SubtitleRenderResolution value) {
    return switch (value) {
      SubtitleRenderResolution.screen => t.subtitlingStyling.renderResolutionScreen,
      SubtitleRenderResolution.video => t.subtitlingStyling.renderResolutionVideo,
      SubtitleRenderResolution.threeQuarter => '¾',
      SubtitleRenderResolution.half => '½',
      SubtitleRenderResolution.third => '⅓',
      SubtitleRenderResolution.quarter => '¼',
    };
  }

  @override
  Widget build(BuildContext context) {
    // Each backend exposes its own text-subtitle placement preference.
    final exoActive = Platform.isAndroid && SettingsService.instance.read(SettingsService.useExoPlayer);
    final mobilePreview = !embedded && PlatformDetector.isMobile(context);
    final preview = SettingsBuilder(
      prefs: [
        SettingsService.subtitleFontSize,
        SettingsService.subtitleTextColor,
        SettingsService.subtitleBorderSize,
        SettingsService.subtitleBorderColor,
        SettingsService.subtitleBackgroundColor,
        SettingsService.subtitleBackgroundOpacity,
        SettingsService.subtitlePosition,
        SettingsService.subtitleBold,
        SettingsService.subtitleItalic,
      ],
      builder: (context) => buildPreview(context, embedded: embedded),
    );
    final children = <Widget>[
      if (!mobilePreview) ...[preview, const SizedBox(height: 16)],
      SettingsGroup(
        title: t.subtitlingStyling.text,
        compact: embedded,
        children: [
          SettingSelectionTile<SubAssOverride>(
            pref: SettingsService.subAssOverride,
            icon: Symbols.subtitles_rounded,
            title: t.subtitlingStyling.assOverride,
            subtitleBuilder: _assOverrideLabel,
            options: SubAssOverride.values.map((v) => DialogOption(value: v, title: _assOverrideLabel(v))).toList(),
            onAfterWrite: (_) => onChanged?.call(),
          ),
          // Apple avfoundation VO: screen vs video-resolution basis.
          if (Platform.isIOS || Platform.isMacOS)
            SettingSelectionTile<SubtitleRenderResolution>(
              pref: SettingsService.subtitleRenderResolution,
              icon: Symbols.aspect_ratio_rounded,
              title: t.subtitlingStyling.renderResolution,
              subtitleBuilder: _renderResolutionLabel,
              options: const [
                SubtitleRenderResolution.screen,
                SubtitleRenderResolution.video,
              ].map((v) => DialogOption(value: v, title: _renderResolutionLabel(v))).toList(),
            ),
          // Android libass overlay: full or a fractional render scale (perf knob for
          // render-bound low-end TVs; heavy/animated signs raster faster at < 1).
          if (Platform.isAndroid)
            SettingSelectionTile<SubtitleRenderResolution>(
              pref: SettingsService.subtitleRenderResolution,
              icon: Symbols.aspect_ratio_rounded,
              title: t.subtitlingStyling.renderResolution,
              subtitleBuilder: _renderResolutionLabel,
              options: const [
                SubtitleRenderResolution.screen,
                SubtitleRenderResolution.threeQuarter,
                SubtitleRenderResolution.half,
                SubtitleRenderResolution.third,
                SubtitleRenderResolution.quarter,
              ].map((v) => DialogOption(value: v, title: _renderResolutionLabel(v))).toList(),
            ),
          SettingNumberTile(
            pref: SettingsService.subtitleFontSize,
            onTap: PlatformDetector.isMobile(context) ? () => _showMobileFontSizeEditor(context) : null,
            onAfterWrite: (_) => onChanged?.call(),
            icon: Symbols.format_size_rounded,
            title: t.subtitlingStyling.fontSize,
            subtitleBuilder: (v) => '$v',
            labelText: t.subtitlingStyling.fontSize,
            suffixText: '',
          ),
          SettingColorTile(
            pref: SettingsService.subtitleTextColor,
            onAfterWrite: (_) => onChanged?.call(),
            icon: Symbols.format_color_text_rounded,
            title: t.subtitlingStyling.textColor,
          ),
          SettingNumberTile(
            pref: SettingsService.subtitlePosition,
            onAfterWrite: (_) => onChanged?.call(),
            icon: Symbols.vertical_align_bottom_rounded,
            title: t.subtitlingStyling.position,
            subtitleBuilder: _formatPosition,
            labelText: t.subtitlingStyling.position,
            suffixText: '%',
          ),
          if (!exoActive)
            SettingSwitchTile(
              pref: SettingsService.subtitleUseMargins,
              onAfterWrite: (_) => onChanged?.call(),
              icon: Symbols.fit_screen_rounded,
              title: t.subtitlingStyling.useMargins,
              subtitle: t.subtitlingStyling.useMarginsDescription,
            ),
          if (exoActive)
            SettingSwitchTile(
              pref: SettingsService.subtitleAnchorToScreen,
              onAfterWrite: (_) => onChanged?.call(),
              icon: Symbols.fit_screen_rounded,
              title: t.subtitlingStyling.anchorToScreen,
              subtitle: t.subtitlingStyling.anchorToScreenDescription,
            ),
          SettingSwitchTile(
            pref: SettingsService.subtitleBold,
            onAfterWrite: (_) => onChanged?.call(),
            icon: Symbols.format_bold_rounded,
            title: t.subtitlingStyling.bold,
          ),
          SettingSwitchTile(
            pref: SettingsService.subtitleItalic,
            onAfterWrite: (_) => onChanged?.call(),
            icon: Symbols.format_italic_rounded,
            title: t.subtitlingStyling.italic,
          ),
        ],
      ),

      SettingsGroup(
        title: t.subtitlingStyling.border,
        compact: embedded,
        children: [
          SettingNumberTile(
            pref: SettingsService.subtitleBorderSize,
            onAfterWrite: (_) => onChanged?.call(),
            icon: Symbols.border_style_rounded,
            title: t.subtitlingStyling.borderSize,
            subtitleBuilder: (v) => '$v',
            labelText: t.subtitlingStyling.borderSize,
            suffixText: '',
          ),
          SettingColorTile(
            pref: SettingsService.subtitleBorderColor,
            onAfterWrite: (_) => onChanged?.call(),
            icon: Symbols.border_color_rounded,
            title: t.subtitlingStyling.borderColor,
          ),
        ],
      ),

      SettingsGroup(
        title: t.subtitlingStyling.background,
        compact: embedded,
        children: [
          SettingNumberTile(
            pref: SettingsService.subtitleBackgroundOpacity,
            onAfterWrite: (_) => onChanged?.call(),
            icon: Symbols.opacity_rounded,
            title: t.subtitlingStyling.backgroundOpacity,
            subtitleBuilder: (v) => '$v%',
            labelText: t.subtitlingStyling.backgroundOpacity,
            suffixText: '%',
          ),
          SettingColorTile(
            pref: SettingsService.subtitleBackgroundColor,
            onAfterWrite: (_) => onChanged?.call(),
            icon: Symbols.format_color_fill_rounded,
            title: t.subtitlingStyling.backgroundColor,
          ),
        ],
      ),
      const SizedBox(height: 24),
    ];
    if (embedded) {
      return BaseVideoControlSheet(
        title: t.screens.subtitleStyling,
        icon: Symbols.tune_rounded,
        compactPlayerSurface: true,
        onBack: () => OverlaySheetController.of(context).pop(),
        child: ListView(padding: const EdgeInsets.symmetric(horizontal: 16), children: children),
      );
    }
    if (mobilePreview) {
      return Scaffold(
        appBar: AppBar(title: Text(t.screens.subtitleStyling)),
        body: SafeArea(
          top: false,
          child: Column(children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: MediaQuery.sizeOf(context).height * .28),
              child: SingleChildScrollView(child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                child: preview,
              )),
            ),
            Expanded(child: ListView(children: children)),
          ]),
        ),
      );
    }
    return SettingsPage(title: Text(t.screens.subtitleStyling), children: children);
  }

  /// Shared sample used by the full editor and the TV contextual panel.
  static Widget buildPreview(BuildContext context, {bool embedded = false}) {
    final settings = SettingsService.instance;
    final fontSize = settings.read(SettingsService.subtitleFontSize).toDouble();
    final borderSize = settings.read(SettingsService.subtitleBorderSize).toDouble();
    final position = settings.read(SettingsService.subtitlePosition);
    final textColor = hexToColor(settings.read(SettingsService.subtitleTextColor));
    final borderColor = hexToColor(settings.read(SettingsService.subtitleBorderColor));
    final backgroundColor = hexToColor(
      settings.read(SettingsService.subtitleBackgroundColor),
    ).withValues(alpha: settings.read(SettingsService.subtitleBackgroundOpacity) / 100);
    final borderOffset = (borderSize * 0.45).clamp(0.0, 2.5);
    final compactPhoneLandscape =
        !embedded && PlatformDetector.isPhone(context) && MediaQuery.orientationOf(context) == Orientation.landscape;
    final shadows = borderSize == 0
        ? const <Shadow>[]
        : [
            for (final offset in [
              Offset(-borderOffset, 0),
              Offset(borderOffset, 0),
              Offset(0, -borderOffset),
              Offset(0, borderOffset),
            ])
              Shadow(color: borderColor, offset: offset, blurRadius: borderOffset),
          ];

    return Semantics(
      label: t.settings.subtitleStylingDescription,
      child: ClipRRect(
        key: const ValueKey('subtitle-live-preview'),
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          height: embedded
              ? 100
              : compactPhoneLandscape
              ? 80
              : 180,
          child: Stack(
            fit: StackFit.expand,
            children: [
              const ColoredBox(color: Color(0xFF18202B)),
              const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF33485A), Color(0xFF11151C), Color(0xFF291F28)],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                child: Align(
                  alignment: Alignment(0, position / 50 - 1),
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      child: Text(
                        t.settings.subtitleStyling,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: textColor,
                          fontSize: (fontSize * 0.65).clamp(14, 34),
                          fontWeight: settings.read(SettingsService.subtitleBold) ? FontWeight.bold : FontWeight.normal,
                          fontStyle: settings.read(SettingsService.subtitleItalic)
                              ? FontStyle.italic
                              : FontStyle.normal,
                          shadows: shadows,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showMobileFontSizeEditor(BuildContext context) async {
    final bounds = SettingsService.numericBounds(SettingsService.subtitleFontSize)!;
    final selected = await showDialog<int>(
      context: context,
      builder: (_) => _MobileSubtitleFontSizeDialog(
        initialValue: SettingsService.instance.read(SettingsService.subtitleFontSize),
        min: bounds.$1.toInt(),
        max: bounds.$2.toInt(),
      ),
    );
    if (selected == null || !context.mounted) return;
    final failure = await const SettingsMutationService().write(context, SettingsService.subtitleFontSize, selected);
    if (failure != null && context.mounted) await showErrorDialog(context, failure.display);
    await onChanged?.call();
  }
}

/// Phone editor that keeps a visible sample and numeric value beside a slider,
/// rather than placing a small text field behind the landscape keyboard.
class _MobileSubtitleFontSizeDialog extends StatefulWidget {
  const _MobileSubtitleFontSizeDialog({required this.initialValue, required this.min, required this.max});

  final int initialValue;
  final int min;
  final int max;

  @override
  State<_MobileSubtitleFontSizeDialog> createState() => _MobileSubtitleFontSizeDialogState();
}

class _MobileSubtitleFontSizeDialogState extends State<_MobileSubtitleFontSizeDialog> {
  late int _value = widget.initialValue.clamp(widget.min, widget.max).toInt();

  void _setValue(int value) => setState(() => _value = value.clamp(widget.min, widget.max).toInt());

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      scrollable: true,
      title: Text(t.subtitlingStyling.fontSize),
      content: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              height: 52,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: colors.outlineVariant.withValues(alpha: .5)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  t.settings.subtitleStyling,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: (_value * .65).clamp(14.0, 34.0),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text('$_value', style: Theme.of(context).textTheme.headlineSmall),
            Row(
              children: [
                IconButton(
                  tooltip: t.accessibility.decrease,
                  onPressed: _value > widget.min ? () => _setValue(_value - 1) : null,
                  icon: const Icon(Icons.remove_circle_outline_rounded),
                ),
                Expanded(
                  child: Slider(
                    value: _value.toDouble(),
                    min: widget.min.toDouble(),
                    max: widget.max.toDouble(),
                    divisions: widget.max - widget.min,
                    label: '$_value',
                    onChanged: (value) => _setValue(value.round()),
                  ),
                ),
                IconButton(
                  tooltip: t.accessibility.increase,
                  onPressed: _value < widget.max ? () => _setValue(_value + 1) : null,
                  icon: const Icon(Icons.add_circle_outline_rounded),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text(t.common.cancel)),
        FilledButton(onPressed: () => Navigator.pop(context, _value), child: Text(t.common.save)),
      ],
    );
  }
}
