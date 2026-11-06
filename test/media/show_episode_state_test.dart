import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/show_episode_state.dart';
import '../test_helpers/media_items.dart';

void main() {
  final now = DateTime(2026, 10, 30);
  final first = testMediaItem(id: 'first', kind: MediaKind.episode, parentIndex: 1, index: 1, durationMs: 2400000);
  final second = first.copyWith(id: 'second', index: 2);
  final finale = first.copyWith(id: 'finale', parentIndex: 3, index: 10);
  test('new viewers start at first regular episode, not specials', () {
    final result = ShowEpisodeState.resolve([
      finale,
      first.copyWith(id: 'special', parentIndex: 0),
      second,
      first,
    ], now: now);
    expect(result.episode!.id, first.id);
    expect(result.intent, ShowPlayIntent.play);
  });
  test('an interrupted rewatch resumes even after later episodes were watched', () {
    final result = ShowEpisodeState.resolve(
      [
        first.copyWith(viewOffsetMs: 100000, lastViewedAt: 500),
        second.copyWith(viewCount: 1),
        finale.copyWith(viewCount: 1),
      ],
      complete: true,
      now: now,
    );
    expect(result.intent, ShowPlayIntent.resume);
    expect(result.episode!.id, first.id);
    expect(result.caughtUp, isFalse);
  });
  test('next episode becomes primary when a new unwatched file is added', () {
    final result = ShowEpisodeState.resolve([first.copyWith(viewCount: 1), second], complete: true, now: now);
    expect(result.intent, ShowPlayIntent.next);
    expect(result.episode!.id, second.id);
  });
  test('caught up replays most recently watched, not necessarily highest episode number', () {
    final result = ShowEpisodeState.resolve(
      [
        first.copyWith(viewCount: 1, lastViewedAt: 300),
        second.copyWith(viewCount: 1, lastViewedAt: 100),
        finale.copyWith(viewCount: 1, lastViewedAt: 200),
      ],
      complete: true,
      now: now,
    );
    expect(result.intent, ShowPlayIntent.replay);
    expect(result.episode!.id, first.id);
    expect(result.caughtUp, isTrue);
  });
  test('missing history timestamps fall back to the last episode, incomplete pages never claim caught up', () {
    final result = ShowEpisodeState.resolve([first.copyWith(viewCount: 1), finale.copyWith(viewCount: 1)], now: now);
    expect(result.episode!.id, finale.id);
    expect(result.caughtUp, isFalse);
  });
  test('future episodes are never selected for playback', () {
    final future = second.copyWith(originallyAvailableAt: '2026-11-01');
    final result = ShowEpisodeState.resolve(
      [first.copyWith(viewCount: 1), future],
      onDeck: future,
      complete: true,
      now: now,
    );
    expect(result.intent, ShowPlayIntent.replay);
    expect(result.episode!.id, first.id);
  });
  test('schedule begins with latest aired then next four chronologically, excluding specials', () {
    final entries = [
      for (var i = 1; i <= 9; i++) ScheduledEpisode(season: 1, number: i, released: DateTime(2026, 10, 26 + i)),
      ScheduledEpisode(season: 0, number: 1, released: now),
    ];
    final result = ShowSchedule(episodes: entries.reversed.toList()).latestAndUpcoming(now);
    expect(result.map((e) => e.number), [4, 5, 6, 7, 8]);
  });
}
