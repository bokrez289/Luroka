import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Apple audio-player and icon plugin channels match the Dart clients', () {
    final audioSwift = File('shared/apple/MpvPlayer/MpvAudioPlayerPlugin.swift').readAsStringSync();
    final iconSwift = File('shared/apple/AppIcon/AppIconPlugin.swift').readAsStringSync();
    final playerDart = File('lib/mpv/player/player_native.dart').readAsStringSync();
    final iconDart = File('lib/services/app_icon/app_icon_service.dart').readAsStringSync();

    final swiftChannels = RegExp(r'name: "(com\.[^\"]+)"');
    final dartChannels = RegExp(r"(?:MethodChannel|EventChannel)\('([^']+)'\)");
    Set<String> channels(String source, RegExp pattern) =>
        pattern.allMatches(source).map((match) => match.group(1)!).toSet();

    final audio = channels(audioSwift, swiftChannels);
    expect(audio, hasLength(2));
    expect(channels(playerDart, dartChannels), containsAll(audio));
    final icon = channels(iconSwift, swiftChannels);
    expect(icon, hasLength(1));
    expect(channels(iconDart, dartChannels), containsAll(icon));
  });
}
