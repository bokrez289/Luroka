import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/home_layout.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/show_episode_state.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/services/catalog/cinemeta_catalog_source.dart';
import 'package:luroka/services/upcoming_episodes_loader.dart';
import 'package:luroka/utils/external_ids.dart';

class _Server extends Fake implements MediaServerClient {
  final ids = Completer<ExternalIds>();
  @override
  ServerId get serverId => ServerId('server');
  @override
  Future<ExternalIds> fetchExternalIds(String itemId) => ids.future;
}

class _ScheduleSource extends Fake implements CinemetaCatalogSource {
  int requests = 0;
  @override
  Future<ShowSchedule> fetchShowSchedule(String imdb) async {
    requests++;
    return const ShowSchedule();
  }
}

void main() {
  final show = MediaItem.plex(id: 'show', kind: MediaKind.show, title: 'Show', serverId: 'server');

  test('disabled never fetches and cancellation stops further requests', () async {
    var calls = 0;
    final gate = Completer<UpcomingShowSchedule?>();
    final loader = UpcomingEpisodesLoader(fetchSchedule: (_) { calls++; return gate.future; });
    expect(await loader.load(enabled: false, shows: [show]), isEmpty);
    expect(calls, 0);
    final result = loader.load(enabled: true, shows: [show, show.copyWith(id: 'second')]);
    expect(calls, 1);
    loader.cancel();
    gate.complete((imdb: 'tt1', schedule: const ShowSchedule()));
    expect(await result, isEmpty);
    expect(calls, 1);
  });

  test('cancelled ownership does not start the external schedule request', () async {
    final server = _Server();
    final source = _ScheduleSource();
    var current = true;
    final result = fetchUpcomingShowSchedule(show: show, client: server, source: source, isCurrent: () => current);
    current = false;
    server.ids.complete(const ExternalIds(imdb: 'tt1234567'));
    expect(await result, isNull);
    expect(source.requests, 0);
  });

  test('returns nearest dated episode per show and limits candidate requests', () async {
    var calls = 0;
    final loader = UpcomingEpisodesLoader(now: () => DateTime(2026, 1, 1), fetchSchedule: (_) async {
      calls++;
      return (imdb: 'tt$calls', schedule: ShowSchedule(episodes: [
        ScheduledEpisode(season: 1, number: 3, released: DateTime(2026, 1, 5)),
        ScheduledEpisode(season: 1, number: 2, released: DateTime(2026, 1, 2)),
      ]));
    });
    final shows = [for (var i = 0; i < 100; i++) show.copyWith(id: '$i')];
    final result = await loader.load(enabled: true, shows: shows);
    expect(calls, UpcomingEpisodesLoader.maxShows);
    expect(result, hasLength(UpcomingEpisodesLoader.maxResults));
    expect(result.every((item) => item.index == 2), isTrue);
  });

  test('previously watched episodes resolve and deduplicate by server and show', () {
    final episode = MediaItem.plex(id: 'ep', kind: MediaKind.episode, serverId: 'server',
      grandparentId: 'series', grandparentTitle: 'Series');
    final candidates = upcomingShowCandidates(source: UpcomingEpisodesSource.previouslyWatched,
      favorites: [show], watched: [episode, episode.copyWith(id: 'ep2'), episode.copyWith(serverId: 'other')]);
    expect(candidates.map((item) => item.globalKey), ['server:series', 'other:series']);
    expect(candidates.every((item) => item.kind == MediaKind.show), isTrue);
    expect(upcomingShowCandidates(source: UpcomingEpisodesSource.favorites, favorites: [show],
      watched: [episode]), [show]);
    final both = upcomingShowCandidates(source: UpcomingEpisodesSource.both,
      favorites: [show, show.copyWith(id: 'series', serverId: 'server')], watched: [episode]);
    expect(both.map((item) => item.globalKey), [show.globalKey, 'server:series']);
  });

  test('reuses a cached schedule without requesting it again', () async {
    var calls = 0;
    final loader = UpcomingEpisodesLoader(now: () => DateTime(2026, 1, 1), fetchSchedule: (_) async {
      calls++;
      return (imdb: 'tt1', schedule: ShowSchedule(episodes: [ScheduledEpisode(season: 1, number: 1, released: DateTime(2026, 1, 2))]));
    });
    expect(await loader.load(enabled: true, shows: [show]), hasLength(1));
    expect(await loader.load(enabled: true, shows: [show]), hasLength(1));
    expect(calls, 1);
    expect(await loader.load(enabled: false, shows: [show]), isEmpty);
    expect(calls, 1);
  });

  test('publishes available results before a later show completes and stops on cancellation', () async {
    final pending = Completer<UpcomingShowSchedule?>();
    final updates = <List<MediaItem>>[];
    final loader = UpcomingEpisodesLoader(now: () => DateTime(2026, 1, 1), fetchSchedule: (item) async {
      if (item.id == 'second') return pending.future;
      return (imdb: 'tt1', schedule: ShowSchedule(episodes: [ScheduledEpisode(season: 1, number: 1, released: DateTime(2026, 1, 3))]));
    });
    final result = loader.load(enabled: true, shows: [show, show.copyWith(id: 'second')], onProgress: updates.add);
    await Future<void>.delayed(Duration.zero);
    expect(updates.single.single.parentId, 'show');
    loader.cancel();
    pending.complete((imdb: 'tt2', schedule: ShowSchedule(episodes: [ScheduledEpisode(season: 1, number: 2, released: DateTime(2026, 1, 2))])));
    expect(await result, isEmpty);
    expect(updates, hasLength(1));
  });

  test('reading a cached schedule does not extend its expiry', () async {
    var now = DateTime(2026, 1, 1);
    var calls = 0;
    final loader = UpcomingEpisodesLoader(now: () => now, fetchSchedule: (_) async {
      calls++;
      return (imdb: 'tt1', schedule: ShowSchedule(episodes: [ScheduledEpisode(season: 1, number: 1, released: DateTime(2026, 1, 3))]));
    });
    await loader.load(enabled: true, shows: [show]);
    now = now.add(const Duration(hours: 11));
    await loader.load(enabled: true, shows: [show]);
    expect(calls, 1);
    now = now.add(const Duration(hours: 2));
    await loader.load(enabled: true, shows: [show]);
    expect(calls, 2);
  });

  test('deduplicates copies by IMDb and includes all distinct episodes on the next release day', () async {
    final schedule = ShowSchedule(episodes: [
      ScheduledEpisode(season: 3, number: 6, released: DateTime(2026, 1, 2, 12)),
      ScheduledEpisode(season: 3, number: 5, released: DateTime(2026, 1, 2, 12)),
      ScheduledEpisode(season: 3, number: 5, released: DateTime(2026, 1, 2, 12)),
      ScheduledEpisode(season: 3, number: 7, released: DateTime(2026, 1, 9)),
    ]);
    final loader = UpcomingEpisodesLoader(now: () => DateTime(2026, 1, 1), fetchSchedule: (item) async =>
      (imdb: item.id == 'different' ? 'tt2' : 'tt1', schedule: schedule));
    final updates = <List<MediaItem>>[];
    final result = await loader.load(enabled: true, shows: [show, show.copyWith(id: 'copy', serverId: 'other'),
      show.copyWith(id: 'different')], onProgress: updates.add);
    expect(result.map((item) => item.index), [5, 6, 5, 6]);
    expect(result.map((item) => item.parentId), ['show', 'show', 'different', 'different']);
    expect(updates.last, hasLength(4));
  });

  test('a release today does not hide episodes airing tomorrow', () async {
    final loader = UpcomingEpisodesLoader(now: () => DateTime(2026, 11, 17, 20), fetchSchedule: (_) async => (
      imdb: 'tt1',
      schedule: ShowSchedule(episodes: [
        ScheduledEpisode(season: 1, number: 1, released: DateTime(2026, 11, 17)),
        ScheduledEpisode(season: 1, number: 2, released: DateTime(2026, 11, 18)),
        ScheduledEpisode(season: 1, number: 3, released: DateTime(2026, 11, 19)),
      ]),
    ));
    expect((await loader.load(enabled: true, shows: [show])).map((item) => item.index), [1, 2]);
  });

  test('all-show candidates include each library before filling the bounded sample', () {
    final first = [for (var i = 0; i < 90; i++) show.copyWith(id: 'a$i')];
    final second = [for (var i = 0; i < 90; i++) show.copyWith(id: 'b$i')];
    final candidates = interleaveUpcomingLibraries([first, second]);
    expect(candidates, hasLength(UpcomingEpisodesLoader.maxShows));
    expect(candidates.take(4).map((item) => item.id), ['a0', 'b0', 'a1', 'b1']);
  });
}
