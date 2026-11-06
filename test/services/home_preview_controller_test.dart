import 'dart:async';

import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_rating.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/services/home_preview_controller.dart';
import 'package:luroka/services/kids_profile_service.dart';
import '../test_helpers/prefs.dart';

class _Client extends Fake implements MediaServerClient {
  _Client(this.id);
  final String id;
  final requests = <String>[];
  final replies = <Completer<MediaItem?>>[];
  @override
  ServerId get serverId => ServerId(id);
  @override
  Future<MediaItem?> fetchItem(String id) {
    requests.add(id);
    final reply = Completer<MediaItem?>();
    replies.add(reply);
    return reply.future;
  }
}

MediaItem item(String id, {String server = 'server', String? summary}) => MediaItem(
  id: id,
  backend: MediaBackend.plex,
  kind: MediaKind.movie,
  title: id,
  serverId: server,
  summary: summary,
  durationMs: 7200000,
);

void main() {
  test('kids previews remove a stale safe hero when fresh metadata is mature', () async {
    resetSharedPreferencesForTest();
    final kids = KidsProfileService.instance;
    kids.resetForTesting();
    addTearDown(kids.resetForTesting);
    await kids.initialize();
    await kids.setParentPin('1234');
    await kids.setChild('child', parentId: 'adult', maxAge: 7);
    kids.selectProfile('child');
    fakeAsync((clock) {
      final client = _Client('server');
      final controller = HomePreviewController(resolveClient: (_) => client);
      final stale = item('movie').copyWith(contentRating: 'G');
      controller.select(stale, rowTitle: 'Movies');
      clock.elapse(const Duration(milliseconds: 220));
      client.replies.single.complete(stale.copyWith(contentRating: 'R'));
      clock.flushMicrotasks();
      expect(controller.value, isNull);
      controller.select(stale, rowTitle: 'Movies');
      expect(controller.value, isNull);
      controller.dispose();
    });
  });
  test(
    'studio previews hydrate attributed ratings even with an existing synopsis and runtime',
    () => fakeAsync((clock) {
      final client = _Client('server');
      final controller = HomePreviewController(resolveClient: (_) => client, includeRatings: true);
      final source = item('studio', summary: 'Already present').copyWith(viewOffsetMs: 1234);
      controller.select(source, rowTitle: 'Studio');
      clock.elapse(const Duration(milliseconds: 220));
      expect(client.requests, ['studio']);
      client.replies.single.complete(
        source.copyWith(
          year: 2025,
          rating: 8.3,
          viewOffsetMs: 0,
          ratings: const [MediaRatingSource(source: 'imdb', value: 8.3)],
        ),
      );
      clock.flushMicrotasks();
      expect(controller.value!.item.ratings!.single.source, 'imdb');
      expect(controller.value!.item.ratings!.single.value, 8.3);
      expect(controller.value!.item.year, 2025);
      expect(controller.value!.item.viewOffsetMs, 1234);
      controller.select(source, rowTitle: 'Studio');
      clock.elapse(const Duration(seconds: 1));
      expect(client.requests, ['studio']);
      expect(controller.value!.item.ratings!.single.source, 'imdb');
      controller.dispose();
    }),
  );

  test(
    'an episode with a synopsis still hydrates missing season/episode identity',
    () => fakeAsync((clock) {
      final client = _Client('server');
      final controller = HomePreviewController(resolveClient: (_) => client);
      final episode = MediaItem(
        id: 'episode',
        backend: MediaBackend.plex,
        kind: MediaKind.episode,
        title: 'Episode title',
        summary: 'Already present',
        serverId: 'server',
      ).copyWith(viewOffsetMs: 90000);
      controller.select(episode, rowTitle: 'Continue Watching');
      clock.elapse(const Duration(milliseconds: 220));
      expect(client.requests, ['episode']);
      client.replies.single.complete(
        episode.copyWith(parentIndex: 2, index: 4, grandparentTitle: 'Series', durationMs: 2700000),
      );
      clock.flushMicrotasks();
      expect(controller.value!.item.parentIndex, 2);
      expect(controller.value!.item.index, 4);
      expect(controller.value!.item.grandparentTitle, 'Series');
      expect(controller.value!.item.viewOffsetMs, 90000);
      controller.dispose();
    }),
  );

  test(
    'text updates immediately; artwork and metadata wait for settled focus',
    () => fakeAsync((clock) {
      final client = _Client('server');
      final controller = HomePreviewController(resolveClient: (_) => client);
      controller.select(item('a'), rowTitle: 'Movies');
      controller.select(item('b'), rowTitle: 'Movies');
      controller.select(item('c'), rowTitle: 'Movies');
      expect(controller.value!.item.id, 'c');
      expect(controller.value!.artwork.id, 'a');
      clock.elapse(const Duration(milliseconds: 219));
      expect(client.requests, isEmpty);
      clock.elapse(const Duration(milliseconds: 1));
      expect(client.requests, ['c']);
      expect(controller.value!.artwork.id, 'c');
      client.replies.single.complete(item('c', summary: 'A full synopsis'));
      clock.flushMicrotasks();
      expect(controller.value!.item.summary, 'A full synopsis');
      controller.dispose();
    }),
  );

  test(
    'one outstanding fetch; an old reply never overwrites a newer episode/movie selection',
    () => fakeAsync((clock) {
      final client = _Client('server');
      final controller = HomePreviewController(resolveClient: (_) => client);
      controller.select(item('a'), rowTitle: 'Movies');
      clock.elapse(const Duration(milliseconds: 220));
      controller.select(item('b'), rowTitle: 'Continue Watching');
      clock.elapse(const Duration(milliseconds: 220));
      expect(client.requests, ['a']);
      client.replies[0].complete(item('a', summary: 'Old description'));
      clock.flushMicrotasks();
      expect(controller.value!.item.id, 'b');
      expect(controller.value!.item.summary, isNull);
      expect(client.requests, ['a', 'b']);
      client.replies[1].complete(item('b', summary: 'Current description'));
      clock.flushMicrotasks();
      expect(controller.value!.item.summary, 'Current description');
      controller.dispose();
    }),
  );

  test(
    'cached descriptive metadata cannot resurrect old progress, and cache is server qualified',
    () => fakeAsync((clock) {
      final a = _Client('a');
      final b = _Client('b');
      final controller = HomePreviewController(resolveClient: (item) => item.serverId == 'a' ? a : b);
      controller.select(item('same', server: 'a'), rowTitle: 'Movies');
      clock.elapse(const Duration(milliseconds: 220));
      a.replies.single.complete(item('same', server: 'a', summary: 'Server A').copyWith(viewOffsetMs: 0));
      clock.flushMicrotasks();
      controller.select(item('same', server: 'b'), rowTitle: 'Movies');
      clock.elapse(const Duration(milliseconds: 220));
      expect(controller.value!.item.summary, isNull);
      b.replies.single.complete(item('same', server: 'b', summary: 'Server B'));
      clock.flushMicrotasks();
      controller.select(item('same', server: 'a').copyWith(viewOffsetMs: 12345), rowTitle: 'Movies');
      expect(controller.value!.item.summary, 'Server A');
      expect(controller.value!.item.viewOffsetMs, 12345);
      clock.elapse(const Duration(milliseconds: 220));
      expect(a.requests, ['same']);
      controller.dispose();
    }),
  );

  test(
    'existing summaries require no request; hidden or disposed Home does no new work',
    () => fakeAsync((clock) {
      final client = _Client('server');
      final controller = HomePreviewController(resolveClient: (_) => client);
      controller.select(item('full', summary: 'Already present'), rowTitle: 'Movies');
      clock.elapse(const Duration(milliseconds: 220));
      expect(client.requests, isEmpty);
      controller.select(item('missing'), rowTitle: 'Movies');
      controller.setActive(false);
      clock.elapse(const Duration(seconds: 1));
      expect(client.requests, isEmpty);
      controller.setActive(true);
      clock.elapse(const Duration(milliseconds: 220));
      expect(client.requests, ['missing']);
      controller.dispose();
      client.replies.single.complete(item('missing', summary: 'Late reply'));
      clock.flushMicrotasks();
    }),
  );

  test(
    'a stalled request times out without blocking the newest selection',
    () => fakeAsync((clock) {
      final client = _Client('server');
      final controller = HomePreviewController(
        resolveClient: (_) => client,
        requestTimeout: const Duration(seconds: 1),
      );
      controller.select(item('a'), rowTitle: 'Movies');
      clock.elapse(const Duration(milliseconds: 220));
      controller.select(item('b'), rowTitle: 'Movies');
      clock.elapse(const Duration(milliseconds: 220));
      clock.elapse(const Duration(seconds: 1));
      expect(client.requests, ['a', 'b']);
      client.replies[0].complete(item('a', summary: 'Too late'));
      clock.flushMicrotasks();
      expect(controller.value!.item.id, 'b');
      client.replies[1].complete(item('b', summary: 'Current'));
      clock.flushMicrotasks();
      expect(controller.value!.item.summary, 'Current');
      controller.dispose();
    }),
  );

  test(
    'replies for the wrong server or item are ignored',
    () => fakeAsync((clock) {
      final client = _Client('server');
      final controller = HomePreviewController(resolveClient: (_) => client);
      controller.select(item('a'), rowTitle: 'Movies');
      clock.elapse(const Duration(milliseconds: 220));
      client.replies.single.complete(item('a', server: 'another', summary: 'Wrong server'));
      clock.flushMicrotasks();
      expect(controller.value!.item.summary, isNull);
      controller.dispose();
    }),
  );
}
