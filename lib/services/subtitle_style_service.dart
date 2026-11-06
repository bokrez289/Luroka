import '../mpv/mpv.dart';
import 'settings_service.dart';

/// Apply the stored subtitle appearance to the currently playing renderer.
Future<void> applyPlaybackSubtitleStyle(Player player, SettingsService settings) async {
  final size = settings.read(SettingsService.subtitleFontSize);
  if (player.playerType == 'exoplayer') {
    await player.setSubtitleStyle(
      fontSize: size.toDouble(),
      textColor: settings.read(SettingsService.subtitleTextColor),
      borderSize: settings.read(SettingsService.subtitleBorderSize).toDouble(),
      borderColor: settings.read(SettingsService.subtitleBorderColor),
      bgColor: settings.read(SettingsService.subtitleBackgroundColor),
      bgOpacity: settings.read(SettingsService.subtitleBackgroundOpacity),
      subtitlePosition: settings.read(SettingsService.subtitlePosition),
      bold: settings.read(SettingsService.subtitleBold),
      italic: settings.read(SettingsService.subtitleItalic),
      anchorToScreen: settings.read(SettingsService.subtitleAnchorToScreen),
    );
    return;
  }
  String color(String value, String fallback) => RegExp(r'^#[0-9a-fA-F]{6}$').hasMatch(value) ? value : fallback;
  final background = color(settings.read(SettingsService.subtitleBackgroundColor), '#000000').substring(1);
  final opacity = (settings.read(SettingsService.subtitleBackgroundOpacity).clamp(0, 100) * 255 / 100).round();
  final properties = <String, String>{
    'sub-font-size': '38',
    'sub-scale': (size / 38).toString(),
    'sub-color': color(settings.read(SettingsService.subtitleTextColor), '#FFFFFF'),
    'sub-border-size': settings.read(SettingsService.subtitleBorderSize).toString(),
    'sub-border-color': color(settings.read(SettingsService.subtitleBorderColor), '#000000'),
    'sub-back-color': '#${opacity.toRadixString(16).padLeft(2, '0')}$background',
    'sub-border-style': opacity > 0 ? 'background-box' : 'outline-and-shadow',
    'sub-bold': settings.read(SettingsService.subtitleBold) ? 'yes' : 'no',
    'sub-italic': settings.read(SettingsService.subtitleItalic) ? 'yes' : 'no',
    'sub-ass-override': settings.read(SettingsService.subAssOverride).name,
    'sub-pos': settings.read(SettingsService.subtitlePosition).toString(),
    'sub-use-margins': settings.read(SettingsService.subtitleUseMargins) ? 'yes' : 'no',
  };
  for (final entry in properties.entries) {
    try {
      await player.setProperty(entry.key, entry.value);
    } catch (_) {
      // A renderer may not support every optional style property.
    }
  }
}
