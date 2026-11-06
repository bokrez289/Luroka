import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/show_theme_music.dart';
import 'package:luroka/mpv/mpv.dart';
import 'package:luroka/services/show_theme_playback.dart';

class _Player extends Fake implements Player {
  final opened = <Media>[];
  double? volume;
  bool closed = false;
  bool focused = false;
  bool abandoned = false;
  @override
  Future<void> setVolume(double value) async => volume = value;
  @override
  Future<bool> requestAudioFocus() async => focused = true;
  @override
  Future<void> abandonAudioFocus() async => abandoned = true;
  @override
  Future<void> open(
    Media media, {
    bool play = true,
    bool isLive = false,
    List<SubtitleTrack>? externalSubtitles,
    Duration? timelineDuration,
    Duration timelineOffset = Duration.zero,
  }) async => opened.add(media);
  @override
  Future<void> dispose({bool preserveDisplayMode = false}) async => closed = true;
}

void main() {
  test('starts quietly with authenticated media and stops when covered', () async {
    final player = _Player();
    final theme = ShowThemePlayback(
      resolve: () async => (url: 'https://server/theme', headers: {'X-Plex-Token': 'token'}),
      playerFactory: () => player,
    );
    await theme.setActive(true);
    expect(player.volume, 35);
    expect(player.focused, isTrue);
    expect(player.opened.single.uri, 'https://server/theme');
    expect(player.opened.single.headers, {'X-Plex-Token': 'token'});
    await theme.setActive(false);
    expect(player.closed, isTrue);
    expect(player.abandoned, isTrue);
    await theme.dispose();
  });

  test('late theme lookups never start after the page is hidden', () async {
    final pending = Completer<ShowThemeSource?>();
    var created = false;
    final theme = ShowThemePlayback(
      resolve: () => pending.future,
      playerFactory: () {
        created = true;
        return _Player();
      },
    );
    final load = theme.setActive(true);
    await Future<void>.delayed(Duration.zero);
    await theme.setActive(false);
    pending.complete((url: 'https://server/theme', headers: <String, String>{}));
    await load;
    expect(created, isFalse);
    await theme.dispose();
  });
}
