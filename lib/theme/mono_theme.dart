import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'gapped_track_shape.dart';
import 'mono_tokens.dart';
import 'luroka_colors.dart';

/// One of the six colours a [MonoPalette] holds. [id] is the key the custom
/// theme persists the colour under.
enum MonoPaletteSlot {
  bg('bg'),
  surface('surface'),
  outline('outline'),
  text('text'),
  textMuted('textMuted'),
  accent('accent');

  const MonoPaletteSlot(this.id);

  final String id;
}

/// [color] as `#AARRGGBB`, upper case.
String colorToArgbHex(Color color) => '#${color.toARGB32().toRadixString(16).padLeft(8, '0').toUpperCase()}';

final _hexColorPattern = RegExp(r'^#?([0-9a-fA-F]{6}|[0-9a-fA-F]{8})$');

/// Parses `#RRGGBB` (opaque) or `#AARRGGBB`, with or without the `#`. Null
/// for anything else.
Color? tryParseHexColor(String input) {
  final match = _hexColorPattern.firstMatch(input.trim());
  if (match == null) return null;
  final digits = match.group(1)!;
  final value = int.parse(digits, radix: 16);
  return Color(digits.length == 6 ? 0xFF000000 | value : value);
}

/// The six colours a theme is built from.
///
/// [accent] carries interactive and selected state; body text stays [text].
/// Brightness follows [bg] and the colour drawn on [accent] is derived, so a
/// palette states nothing else.
@immutable
class MonoPalette {
  const MonoPalette({
    required this.bg,
    required this.surface,
    required this.outline,
    required this.text,
    required this.textMuted,
    required this.accent,
  });

  final Color bg;
  final Color surface;
  final Color outline;
  final Color text;
  final Color textMuted;

  /// Primary, filled buttons, switches, sliders, progress, selection and the
  /// focus ring.
  final Color accent;

  // Neutral TV surfaces with a restrained blue selection accent.
  static const light = MonoPalette(
    bg: Color(0xFFF5F6F8),
    surface: Color(0xFFFFFFFF),
    outline: Color(0x22000000),
    text: Color(0xFF17191D),
    textMuted: Color(0xFF656A73),
    accent: Color(0xFF265B9D),
  );
  static const dark = MonoPalette(
    bg: Color(0xFF101114),
    surface: Color(0xFF1B1D22),
    outline: Color(0x30FFFFFF),
    text: LurokaColors.ivory,
    textMuted: Color(0xFFADB2BC),
    accent: LurokaColors.accent,
  );
  static const oled = MonoPalette(
    bg: Color(0xFF000000), // Pure black for OLED
    surface: Color(0xFF15171B),
    outline: Color(0x30FFFFFF),
    text: LurokaColors.ivory,
    textMuted: Color(0xFFADB2BC),
    accent: LurokaColors.accent,
  );

  static const lurokaCoral = MonoPalette(
    bg: Color(0xff101629),
    surface: Color(0xff1b2440),
    outline: Color(0x35d5def5),
    text: Color(0xfff4f5fc),
    textMuted: Color(0xffb7c1d9),
    accent: Color(0xffff967e),
  );
  static const lurokaOcean = MonoPalette(
    bg: Color(0xff091b26),
    surface: Color(0xff142c3b),
    outline: Color(0x35d5eff5),
    text: Color(0xffeffaff),
    textMuted: Color(0xffaecbd7),
    accent: Color(0xff77d9f5),
  );

  /// Profile-only kids palette; never overwrites the adult's saved choice.
  static const lurokaAurora = MonoPalette(
    bg: Color(0xff071a1b),
    surface: Color(0xff123337),
    outline: Color(0xff35595b),
    text: Color(0xfff0fff7),
    textMuted: Color(0xffb0d4ca),
    accent: Color(0xffa9f36d),
  );
  static const lurokaMarquee = MonoPalette(
    bg: Color(0xff1a0b10),
    surface: Color(0xff35131d),
    outline: Color(0xff69404b),
    text: Color(0xfffff3df),
    textMuted: Color(0xffdcbcaf),
    accent: Color(0xffffcf70),
  );
  static const lurokaElectric = MonoPalette(
    bg: Color(0xff0c1029),
    surface: Color(0xff1b2452),
    outline: Color(0xff465b8b),
    text: Color(0xfff1f6ff),
    textMuted: Color(0xffbecae8),
    accent: Color(0xff80eeed),
  );
  static const lurokaMidnight = MonoPalette(
    bg: Color(0xff090d12),
    surface: Color(0xff19222d),
    outline: Color(0xff42515d),
    text: Color(0xfffff5e9),
    textMuted: Color(0xffc9c3b8),
    accent: Color(0xffffad65),
  );

  /// Near-neutral plum charcoal, smoked graphite and warm champagne accents.
  static const lurokaNocturne = MonoPalette(
    bg: Color(0xff141115),
    surface: Color(0xff242126),
    outline: Color(0xff585056),
    text: Color(0xfff5efe7),
    textMuted: Color(0xffc5bdc2),
    accent: Color(0xffe2c388),
  );

  static const lurokaKids = MonoPalette(
    bg: Color(0xff071529),
    surface: Color(0xff14263f),
    outline: Color(0xff526784),
    text: Color(0xfffffbf0),
    textMuted: Color(0xffc0cee3),
    accent: Color(0xffffdc55),
  );
  static const lurokaKidsOlder = MonoPalette(
    bg: Color(0xff101e2d),
    surface: Color(0xff1c3143),
    outline: Color(0x5589ecd3),
    text: Color(0xfff4fafb),
    textMuted: Color(0xffb5cbd9),
    accent: Color(0xff89ecd3),
  );
  static const lurokaJade = MonoPalette(
    bg: Color(0xff0e1c1a),
    surface: Color(0xff1b302a),
    outline: Color(0x35d9eee5),
    text: Color(0xfff2f9f3),
    textMuted: Color(0xffb5cfc3),
    accent: Color(0xff9be1ba),
  );
  static const lurokaAmethyst = MonoPalette(
    bg: Color(0xff191426),
    surface: Color(0xff2a223b),
    outline: Color(0x35e7dcf5),
    text: Color(0xfff8f3ff),
    textMuted: Color(0xffc9bddc),
    accent: Color(0xffc6a5ff),
  );

  /// Ink-black cinema canvas with champagne highlights.
  static const lurokaObsidian = MonoPalette(
    bg: Color(0xff000000),
    surface: Color(0xff121416),
    outline: Color(0x35eee6d3),
    text: Color(0xfff4f2eb),
    textMuted: Color(0xffbbb7ae),
    accent: Color(0xffe8c77b),
  );
  static const lurokaBurgundy = MonoPalette(
    bg: Color(0xff21131c),
    surface: Color(0xff35202e),
    outline: Color(0x35f3d6e2),
    text: Color(0xfffff3f7),
    textMuted: Color(0xffd6b9c7),
    accent: Color(0xfff3a6c0),
  );
  static const lurokaSlate = MonoPalette(
    bg: Color(0xff151b24),
    surface: Color(0xff242d3b),
    outline: Color(0x35dce5f5),
    text: Color(0xfff1f5fc),
    textMuted: Color(0xffb7c3d5),
    accent: Color(0xffa9befa),
  );
  static const lurokaEspresso = MonoPalette(
    bg: Color(0xff211914),
    surface: Color(0xff33271f),
    outline: Color(0x35f2dfc8),
    text: Color(0xfffff6eb),
    textMuted: Color(0xffd3c0ad),
    accent: Color(0xffe7b887),
  );

  // Light palettes use deep accents: primary also paints links, labels and
  // focus rings, so a pastel accent would disappear on these pale surfaces.
  /// Peach-tinted ivory with a rich coral accent.
  static const lurokaSunrise = MonoPalette(
    bg: Color(0xfffff2ed),
    surface: Color(0xfffffaf7),
    outline: Color(0x406d433b),
    text: Color(0xff352521),
    textMuted: Color(0xff70514a),
    accent: Color(0xffa13e33),
  );

  /// Airy blue-grey with a deep ocean teal accent.
  static const lurokaCoastal = MonoPalette(
    bg: Color(0xffeaf2f3),
    surface: Color(0xfff7fbfb),
    outline: Color(0x403a5c60),
    text: Color(0xff1b3338),
    textMuted: Color(0xff49676b),
    accent: Color(0xff00636c),
  );

  /// Soft cream and sand with a deep caramel accent.
  static const lurokaLatte = MonoPalette(
    bg: Color(0xfff4ebdf),
    surface: Color(0xfffff8ed),
    outline: Color(0x406e503b),
    text: Color(0xff38291f),
    textMuted: Color(0xff715a48),
    accent: Color(0xff88501e),
  );

  static const lurokaPearl = MonoPalette(
    bg: Color(0xfff2f5fa),
    surface: Color(0xffffffff),
    outline: Color(0x303d5372),
    text: Color(0xff17263c),
    textMuted: Color(0xff53637a),
    accent: Color(0xff2454a4),
  );
  static const lurokaLinen = MonoPalette(
    bg: Color(0xfff5efe5),
    surface: Color(0xfffffaf2),
    outline: Color(0x304f3928),
    text: Color(0xff34271e),
    textMuted: Color(0xff76604c),
    accent: Color(0xff96462c),
  );
  static const lurokaSage = MonoPalette(
    bg: Color(0xffedf3ed),
    surface: Color(0xfff8fcf7),
    outline: Color(0x30354f3d),
    text: Color(0xff20382c),
    textMuted: Color(0xff526b5a),
    accent: Color(0xff286441),
  );
  static const lurokaLavender = MonoPalette(
    bg: Color(0xfff2eff8),
    surface: Color(0xfffcfaff),
    outline: Color(0x304c3b60),
    text: Color(0xff322841),
    textMuted: Color(0xff6c5d7a),
    accent: Color(0xff7048a4),
  );

  // Presets keep bg/surface low-chroma so artwork stays the loudest thing on
  // screen; the character is in the tint and the accent. Every accent clears
  // 4.5:1 against bg and surface, because primary is also used as text.

  // Retired presets remain available to resolve saved selections and custom
  // palette snapshots created by older releases.
  static const ember = MonoPalette(
    bg: Color(0xFF14110F),
    surface: Color(0xFF1D1916),
    outline: Color(0x1FF2EBE6),
    text: Color(0xFFF2EBE6),
    textMuted: Color(0xA3F2EBE6),
    accent: Color(0xFFFF7E57),
  );
  static const glacier = MonoPalette(
    bg: Color(0xFF0E1319),
    surface: Color(0xFF151C25),
    outline: Color(0x1FE6EDF5),
    text: Color(0xFFE6EDF5),
    textMuted: Color(0xA3E6EDF5),
    accent: Color(0xFF7CC4FF),
  );
  static const forest = MonoPalette(
    bg: Color(0xFF0E1411),
    surface: Color(0xFF151D18),
    outline: Color(0x1FE5EFE8),
    text: Color(0xFFE5EFE8),
    textMuted: Color(0xA3E5EFE8),
    accent: Color(0xFF6BD6A0),
  );
  static const plum = MonoPalette(
    bg: Color(0xFF151118),
    surface: Color(0xFF1E1823),
    outline: Color(0x1FF0E9F4),
    text: Color(0xFFF0E9F4),
    textMuted: Color(0xA3F0E9F4),
    accent: Color(0xFFE29BF0),
  );
  static const paper = MonoPalette(
    bg: Color(0xFFF3F0E9),
    surface: Color(0xFFFBF9F4),
    outline: Color(0x1F1F1C17),
    text: Color(0xFF1F1C17),
    textMuted: Color(0xAD1F1C17),
    accent: Color(0xFF1F6B6B),
  );

  /// Velvet Hour — warm plum-black with antique rose-gold.
  /// Every neutral leans warm (plum-black bg, candlelight text) so the app
  /// reads as a private cinema, not a software dark mode.
  static const velvetHour = MonoPalette(
    bg: Color(0xFF0F0A12),
    surface: Color(0xFF1C1420),
    outline: Color(0xFF2A2030),
    text: Color(0xFFF5EFE6),
    textMuted: Color(0xFFB0A898),
    accent: Color(0xFFD4926A),
  );

  Brightness get brightness => ThemeData.estimateBrightnessForColor(bg);

  /// [bg] or white, whichever contrasts more with [accent]. The pair is never
  /// worse than [accent] against [bg], so an accent that reads on the page
  /// keeps a readable label.
  Color get onAccent {
    const white = Color(0xFFFFFFFF);
    final accentLuminance = accent.computeLuminance();
    return _contrastRatio(accentLuminance, bg.computeLuminance()) >=
            _contrastRatio(accentLuminance, white.computeLuminance())
        ? bg
        : white;
  }

  static double _contrastRatio(double a, double b) => (math.max(a, b) + 0.05) / (math.min(a, b) + 0.05);

  /// WCAG 2 contrast ratio between two colours, ignoring alpha: composite a
  /// translucent colour over its background first.
  static double contrastRatio(Color a, Color b) => _contrastRatio(a.computeLuminance(), b.computeLuminance());

  Color operator [](MonoPaletteSlot slot) => switch (slot) {
    MonoPaletteSlot.bg => bg,
    MonoPaletteSlot.surface => surface,
    MonoPaletteSlot.outline => outline,
    MonoPaletteSlot.text => text,
    MonoPaletteSlot.textMuted => textMuted,
    MonoPaletteSlot.accent => accent,
  };

  /// This palette with [slot] replaced by [color].
  MonoPalette withColor(MonoPaletteSlot slot, Color color) => MonoPalette(
    bg: slot == MonoPaletteSlot.bg ? color : bg,
    surface: slot == MonoPaletteSlot.surface ? color : surface,
    outline: slot == MonoPaletteSlot.outline ? color : outline,
    text: slot == MonoPaletteSlot.text ? color : text,
    textMuted: slot == MonoPaletteSlot.textMuted ? color : textMuted,
    accent: slot == MonoPaletteSlot.accent ? color : accent,
  );

  /// `{"bg": "#AARRGGBB", …}`, keyed by [MonoPaletteSlot.id].
  Map<String, String> toJson() => {for (final slot in MonoPaletteSlot.values) slot.id: colorToArgbHex(this[slot])};

  /// Reads the [toJson] shape. Throws [FormatException] unless every slot
  /// holds a hex colour, so a partial or corrupt value never yields a palette
  /// mixing stored and made-up colours. Unknown keys are ignored.
  factory MonoPalette.fromJson(Object? json) {
    if (json is! Map) throw const FormatException('Expected a palette object');
    Color read(MonoPaletteSlot slot) {
      final value = json[slot.id];
      final color = value is String ? tryParseHexColor(value) : null;
      if (color == null) throw FormatException('Missing or invalid "${slot.id}" colour');
      return color;
    }

    return MonoPalette(
      bg: read(MonoPaletteSlot.bg),
      surface: read(MonoPaletteSlot.surface),
      outline: read(MonoPaletteSlot.outline),
      text: read(MonoPaletteSlot.text),
      textMuted: read(MonoPaletteSlot.textMuted),
      accent: read(MonoPaletteSlot.accent),
    );
  }

  @override
  bool operator ==(Object other) =>
      other is MonoPalette &&
      other.bg == bg &&
      other.surface == surface &&
      other.outline == outline &&
      other.text == text &&
      other.textMuted == textMuted &&
      other.accent == accent;

  @override
  int get hashCode => Object.hash(bg, surface, outline, text, textMuted, accent);
}

final Map<({MonoPalette palette, TargetPlatform platform}), ThemeData> _monoThemeCache = {};

ThemeData monoTheme(MonoPalette palette) {
  // ThemeData derives several defaults from defaultTargetPlatform.
  final key = (palette: palette, platform: defaultTargetPlatform);
  final cached = _monoThemeCache[key];
  if (cached != null) return cached;

  final theme = _buildMonoTheme(palette, platform: key.platform);
  _monoThemeCache[key] = theme;
  return theme;
}

/// [monoTheme] without the cache, for a palette that changes every frame: the
/// custom theme editor's live preview would otherwise keep every intermediate
/// palette's theme alive.
ThemeData monoThemeUncached(MonoPalette palette) => _buildMonoTheme(palette, platform: defaultTargetPlatform);

ThemeData _buildMonoTheme(MonoPalette c, {required TargetPlatform platform}) {
  final brightness = c.brightness;
  final onAccent = c.onAccent;
  final clickableCursor = WidgetStateProperty.resolveWith<MouseCursor>(
    (states) => states.contains(WidgetState.disabled) ? MouseCursor.defer : SystemMouseCursors.click,
  );

  // Disabled buttons use the Material disabled opacities over the text colour;
  // a flat colour for every state made them look pressable.
  final buttonStyle = ButtonStyle(
    mouseCursor: clickableCursor,
    padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 18, vertical: 14)),
    elevation: const WidgetStatePropertyAll(0),
    backgroundColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.disabled) ? c.text.withValues(alpha: 0.12) : c.accent,
    ),
    foregroundColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.disabled) ? c.text.withValues(alpha: 0.38) : onAccent,
    ),
    shape: const WidgetStatePropertyAll(StadiumBorder()),
  );

  final base = ThemeData(
    fontFamily: 'Inter',
    platform: platform,
    useMaterial3: true,
    brightness: brightness,
    // Linux resolves UI text through fontconfig, which on a minimal desktop
    // may have no CJK font at all; the bundled subtitle fonts (pubspec
    // `fonts:`) cover it. Other platforms keep their native CJK fonts.
    fontFamilyFallback: platform == TargetPlatform.linux ? const ['Go Noto Current', 'Go Noto Current Hangul'] : null,
    colorScheme: ColorScheme(
      brightness: brightness,
      // Accent: everything Material derives from primary (switches, sliders,
      // progress, checkboxes, text selection, text buttons, selected list
      // tiles) plus the widgets that read primary for selection and focus.
      primary: c.accent,
      onPrimary: onAccent,
      // Elevation tint stays on the neutral text colour so dialogs and menus
      // keep the palette's surfaces rather than picking up the accent hue.
      surfaceTint: c.text,
      secondary: Color.lerp(c.accent, c.text, 0.4)!,
      onSecondary: c.bg,
      surface: c.surface,
      onSurface: c.text,
      error: brightness == Brightness.dark ? const Color(0xFFFF9494) : const Color(0xFFB3261E),
      onError: Colors.white,
      tertiary: c.text,
      onTertiary: c.bg,
      primaryContainer: c.surface,
      onPrimaryContainer: c.text,
      primaryFixed: c.accent,
      primaryFixedDim: Color.lerp(c.accent, c.bg, .15)!,
      onPrimaryFixed: onAccent,
      onPrimaryFixedVariant: onAccent,
      secondaryContainer: c.surface,
      onSecondaryContainer: c.text,
      secondaryFixed: c.surface,
      secondaryFixedDim: Color.lerp(c.surface, c.bg, .15)!,
      onSecondaryFixed: c.text,
      onSecondaryFixedVariant: c.textMuted,
      tertiaryContainer: c.surface,
      onTertiaryContainer: c.text,
      tertiaryFixed: c.surface,
      tertiaryFixedDim: Color.lerp(c.surface, c.bg, .15)!,
      onTertiaryFixed: c.text,
      onTertiaryFixedVariant: c.textMuted,
      errorContainer: Color.lerp(
        c.bg,
        brightness == Brightness.dark ? const Color(0xFFFF9494) : const Color(0xFFB3261E),
        .12,
      )!,
      onErrorContainer: c.text,
      surfaceContainerHighest: c.surface,
      surfaceContainer: c.surface,
      surfaceContainerHigh: Color.lerp(c.surface, c.text, 0.035)!,
      surfaceContainerLowest: c.bg,
      surfaceContainerLow: c.bg,
      onSurfaceVariant: c.textMuted,
      outlineVariant: c.outline,
      surfaceDim: c.bg,
      surfaceBright: c.surface,
      outline: c.outline,
      shadow: Colors.transparent,
      scrim: Colors.black,
      inverseSurface: c.text,
      onInverseSurface: c.bg,
      inversePrimary: c.bg,
    ),
    // remove "Material feel"
    splashFactory: NoSplash.splashFactory,
    highlightColor: Colors.transparent,
    // Explicit mono-derived tile highlights: ListTile's native focus/hover
    // fill is the dpad focus visual inside M3E grouped-list cards.
    focusColor: c.accent.withValues(alpha: 0.22),
    hoverColor: c.accent.withValues(alpha: 0.07),
    dividerColor: c.outline,
    scaffoldBackgroundColor: c.bg,
    appBarTheme: AppBarTheme(
      backgroundColor: c.bg,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
      foregroundColor: c.text,
      titleTextStyle: TextStyle(
        fontFamily: 'Inter',
        color: c.text,
        fontSize: 18,
        fontWeight: .w700,
        letterSpacing: -0.2,
      ),
    ),
    textTheme: Typography.englishLike2021
        .apply(bodyColor: c.text, displayColor: c.text)
        .copyWith(
          displayLarge: const TextStyle(fontWeight: .w700, letterSpacing: -0.5),
          titleMedium: const TextStyle(fontWeight: .w600),
          bodyMedium: TextStyle(color: c.text),
          bodySmall: TextStyle(color: c.textMuted),
        )
        .apply(fontFamily: 'Inter'),
    cardTheme: CardThemeData(
      color: c.surface,
      elevation: 0,
      margin: .zero,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
    ),
    inputDecorationTheme: _inputDecorationTheme(c.text, c.textMuted),
    elevatedButtonTheme: ElevatedButtonThemeData(style: buttonStyle),
    filledButtonTheme: FilledButtonThemeData(style: buttonStyle),
    textButtonTheme: TextButtonThemeData(style: ButtonStyle(mouseCursor: clickableCursor)),
    outlinedButtonTheme: OutlinedButtonThemeData(style: ButtonStyle(mouseCursor: clickableCursor)),
    iconButtonTheme: IconButtonThemeData(style: ButtonStyle(mouseCursor: clickableCursor)),
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected) ? c.accent : Colors.transparent,
        ),
        foregroundColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected) ? onAccent : c.text,
        ),
        side: WidgetStateProperty.resolveWith(
          (states) => BorderSide(color: states.contains(WidgetState.selected) ? c.accent : c.outline),
        ),
      ),
    ),
    sliderTheme: SliderThemeData(
      // The mono scheme maps surfaceContainerHighest (the M3 default inactive
      // track) to the same color as surface cards, which makes the inactive
      // track invisible inside grouped-list items.
      inactiveTrackColor: c.text.withValues(alpha: 0.12),
      trackHeight: 16,
      trackGap: 6,
      thumbSize: const WidgetStatePropertyAll(Size(4, 20)),
      thumbShape: const HandleThumbShape(),
      trackShape: const GappedTrackShape(),
      tickMarkShape: const RoundSliderTickMarkShape(tickMarkRadius: 2),
      // ignore: deprecated_member_use — opting into the 2024 slider appearance until the default flips
      year2023: false,
    ),
    dividerTheme: DividerThemeData(space: 0, thickness: 1, color: c.outline),
    listTileTheme: ListTileThemeData(
      dense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      iconColor: c.text,
      textColor: c.text,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: c.bg,
      elevation: 0,
      indicatorColor: Colors.transparent,
      labelTextStyle: WidgetStatePropertyAll(TextStyle(color: c.textMuted, fontSize: 11)),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        final active = states.contains(WidgetState.selected);
        return IconThemeData(opacity: active ? 1 : 0.6, size: 22, color: active ? c.accent : c.text);
      }),
    ),
    // Floating snackbars auto-offset above the Scaffold's bottom NavigationBar,
    // so they don't cover it on mobile. Background color tracks the theme to
    // avoid jarring brightness on HDR playback / dark mode.
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      backgroundColor: c.surface,
      contentTextStyle: TextStyle(color: c.text),
      actionTextColor: c.text,
      elevation: 6,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
      insetPadding: const EdgeInsets.all(16),
    ),
  );

  return base.copyWith(
    extensions: [
      MonoTokens(
        radiusSm: 8,
        radiusMd: 12,
        radiusLg: 20,
        radiusXs: 5,
        groupGap: 2,
        space: 12,
        fast: const Duration(milliseconds: 120),
        normal: const Duration(milliseconds: 200),
        slow: const Duration(milliseconds: 300),
        expressive: const Duration(milliseconds: 350),
        bg: c.bg,
        surface: c.surface,
        outline: c.outline,
        text: c.text,
        textMuted: c.textMuted,
        accent: c.accent,
      ),
    ],
  );
}

/// Brighter fill on focus so input focus is visible inside TV overscan.
InputDecorationTheme _inputDecorationTheme(Color text, Color textMuted) {
  final unfocusedFill = text.withValues(alpha: 0.08);
  final focusedFill = text.withValues(alpha: 0.18);
  const border = OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)), borderSide: BorderSide.none);
  return InputDecorationTheme(
    filled: true,
    fillColor: WidgetStateColor.resolveWith(
      (states) => states.contains(WidgetState.focused) ? focusedFill : unfocusedFill,
    ),
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
    border: border,
    enabledBorder: border,
    focusedBorder: border,
    hintStyle: TextStyle(color: textMuted),
  );
}
