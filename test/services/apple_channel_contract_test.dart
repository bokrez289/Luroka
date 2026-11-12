import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Apple app icon and audio channels match their Dart counterparts', () {
    final iconDart = File('lib/services/app_icon/app_icon_service.dart').readAsStringSync();
    final iconSwift = File('shared/apple/AppIcon/AppIconPlugin.swift').readAsStringSync();
    final audioDart = File('lib/mpv/player/player_native.dart').readAsStringSync();
    final audioSwift = File('shared/apple/MpvPlayer/MpvAudioPlayerPlugin.swift').readAsStringSync();

    for (final channel in ['com.luroka/app_icon']) {
      expect(iconDart, contains(channel));
      expect(iconSwift, contains('"$channel"'));
    }
    for (final channel in ['com.luroka/mpv_audio_player', 'com.luroka/mpv_audio_player/events']) {
      expect(audioDart, contains(channel));
      expect(audioSwift, contains('"$channel"'));
    }
  });

  test('Apple project branding names refer to the current app assets', () {
    final iosProject = File('ios/Runner.xcodeproj/project.pbxproj').readAsStringSync();
    final tvProject = File('tvos/Runner.xcodeproj/project.pbxproj').readAsStringSync();
    final icon = File('ios/luroka.icon/icon.json').readAsStringSync();
    expect(iosProject, contains('path = luroka.icon;'));
    expect(iosProject, contains('ASSETCATALOG_COMPILER_APPICON_NAME = luroka;'));
    expect(icon, contains('luroka-symbol.svg'));
    expect(File('ios/luroka.icon/Assets/luroka-symbol.svg').existsSync(), isTrue);
    expect(tvProject, isNot(contains('INFOPLIST_KEY_CFBundleDisplayName = Plezy;')));
    expect(tvProject, contains('INFOPLIST_KEY_CFBundleDisplayName = Luroka;'));
  });
}
