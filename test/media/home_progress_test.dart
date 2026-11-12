import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/home_layout.dart';
import 'package:luroka/media/home_progress.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';

void main() {
  MediaItem item(String id, {HomeProgressRole? role}) {
    final value = MediaItem(id: id, backend: MediaBackend.jellyfin, kind: MediaKind.episode, serverId: 'server');
    return role == null ? value : withHomeProgressRole(value, role);
  }

  test('default stays combined; split moves only known Next Up rows and keeps unknown server rows', () {
    final resume = item('resume', role: HomeProgressRole.resume);
    final next = item('next', role: HomeProgressRole.nextUp);
    final unknown = item('plex');
    List<dynamic> rows(bool split) => buildHomeRows(
      hubs: const [],
      onDeck: [next, unknown, resume],
      pins: const [],
      continueWatchingTitle: 'Continue Watching',
      pinnedTitle: 'Pinned',
      nextUpTitle: 'Next Up',
      splitContinueWatching: split,
    );
    expect(rows(false), hasLength(1));
    expect(rows(false).single.items.map((item) => item.id), ['next', 'plex', 'resume']);
    expect(rows(true), hasLength(2));
    expect(rows(true).first.items.map((item) => item.id), ['plex', 'resume']);
    expect(rows(true).last.items.map((item) => item.id), ['next']);
    expect(rows(true).last.usesContinueWatchingAction, isTrue);
    expect(rows(true).last.isContinueWatchingHub, isFalse);
  });

  test('split limits each shelf independently even when recent resume items dominate', () {
    final rows = [
      for (var i = 0; i < 8; i++) item('resume-$i', role: HomeProgressRole.resume),
      for (var i = 0; i < 4; i++) item('next-$i', role: HomeProgressRole.nextUp),
    ];
    final combined = limitHomeProgressRows(rows, 3, split: false);
    final split = limitHomeProgressRows(rows, 3, split: true);
    expect(combined.map((item) => item.id), ['resume-0', 'resume-1', 'resume-2']);
    expect(split.map((item) => item.id), ['resume-0', 'resume-1', 'resume-2', 'next-0', 'next-1', 'next-2']);
  });

  test('a Next Up item patched with playback progress moves to Continue Watching', () {
    final next = item('next', role: HomeProgressRole.nextUp);
    expect(isHomeNextUp(next), isTrue);
    expect(isHomeNextUp(next.copyWith(viewOffsetMs: 5000)), isFalse);
  });
}
