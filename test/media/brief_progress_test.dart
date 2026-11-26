import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/home_progress.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/show_episode_state.dart';

MediaItem episode(int? offset, {int? duration = 3600000, int index = 1}) => MediaItem(
  id: 'episode-$index',
  backend: MediaBackend.jellyfin,
  kind: MediaKind.episode,
  serverId: 'server',
).copyWith(viewOffsetMs: offset, durationMs: duration, parentIndex: 1, index: index);

void main() {
  test('a full-length episode becomes resumable at 30 seconds', () {
    expect(episode(0).hasMeaningfulProgress, isFalse);
    expect(episode(5000).hasMeaningfulProgress, isFalse);
    expect(episode(29999).hasMeaningfulProgress, isFalse);
    expect(episode(30000).hasMeaningfulProgress, isTrue);
    expect(episode(900000).hasMeaningfulProgress, isTrue);
  });

  test('short clips use ten percent, unknown durations use 30 seconds', () {
    expect(episode(5999, duration: 60000).hasMeaningfulProgress, isFalse);
    expect(episode(6000, duration: 60000).hasMeaningfulProgress, isTrue);
    expect(episode(29000, duration: null).hasMeaningfulProgress, isFalse);
    expect(episode(30000, duration: null).hasMeaningfulProgress, isTrue);
  });

  test('Home hides brief positive offsets, never zero or unknown Next Up', () {
    final next = withHomeProgressRole(episode(0), HomeProgressRole.nextUp);
    expect(showHomeProgress(next), isTrue);
    expect(showHomeProgress(episode(null)), isTrue);
    expect(showHomeProgress(episode(1000)), isFalse);
    expect(showHomeProgress(episode(30000)), isTrue);
  });

  test('briefly started show plays rather than resumes; significant seek resumes', () {
    final brief = episode(5000);
    expect(ShowEpisodeState.resolve([brief], onDeck: brief).intent, ShowPlayIntent.play);
    final meaningful = episode(120000);
    expect(ShowEpisodeState.resolve([meaningful], onDeck: meaningful).intent, ShowPlayIntent.resume);
  });
}
