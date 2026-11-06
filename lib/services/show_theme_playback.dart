import '../media/show_theme_music.dart';
import '../mpv/mpv.dart';
import 'package:flutter/foundation.dart' show visibleForTesting;
import '../utils/app_logger.dart';

/// Owns an optional detail-screen audio player. A newer visibility decision
/// invalidates every pending lookup/open, including a late server response.
class ShowThemePlayback {
  ShowThemePlayback({required this.resolve, Player Function()? playerFactory})
    : _playerFactory = playerFactory ?? debugPlayerFactory ?? Player.audio;

  @visibleForTesting
  static Player Function()? debugPlayerFactory;

  final Future<ShowThemeSource?> Function() resolve;
  final Player Function() _playerFactory;
  Player? _player;
  Future<void> _released = Future.value();
  int _generation = 0;
  bool _disposed = false;

  Future<void> setActive(bool active) async {
    final generation = ++_generation;
    final previous = _player;
    _player = null;
    if (previous != null) {
      _released = _released
          .then((_) async {
            try {
              await previous.abandonAudioFocus();
            } catch (_) {
              // A backend may not expose audio focus.
            }
            await previous.dispose();
          })
          .catchError((_) {});
    }
    await _released;
    if (!active || _disposed || generation != _generation) return;
    try {
      final source = await resolve();
      if (source == null || _disposed || generation != _generation) return;
      final player = _playerFactory();
      _player = player;
      await player.setVolume(35);
      if (_disposed || generation != _generation) return;
      try {
        await player.requestAudioFocus();
      } catch (_) {
        // Focus is optional on platforms without an audio-focus manager.
      }
      if (_disposed || generation != _generation) return;
      await player.open(Media(source.url, headers: source.headers));
    } catch (error) {
      appLogger.d('Unable to play the server theme (${error.runtimeType})');
    }
  }

  Future<void> dispose() async {
    _disposed = true;
    await setActive(false);
  }
}
