import 'dart:async';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:luroka/models/trackers/tracker_context.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/providers/trackers_provider.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/trackers/anilist/anilist_tracker.dart';
import 'package:luroka/services/trackers/tracker_account_store.dart';
import 'package:luroka/services/trackers/tracker_constants.dart';
import 'package:luroka/services/trackers/tracker_coordinator.dart';
import 'package:luroka/services/trackers/tracker_session.dart';
import 'package:luroka/services/trackers/tracker_write_queue.dart';
import 'package:luroka/services/trackers/mal/mal_tracker.dart';
import 'package:luroka/services/trackers/mdblist/mdblist_tracker.dart';
import 'package:luroka/services/trackers/mdblist/mdblist_constants.dart';
import 'package:luroka/services/trackers/simkl/simkl_constants.dart';
import 'package:luroka/services/trackers/simkl/simkl_tracker.dart';
import 'package:luroka/services/trackers/trakt/trakt_tracker.dart';
import 'package:luroka/utils/external_ids.dart';

import '../test_helpers/io_fakes.dart';
import '../test_helpers/prefs.dart';

final _malStore = trackerAccountStore(TrackerService.mal);
final _anilistStore = trackerAccountStore(TrackerService.anilist);
final _simklStore = trackerAccountStore(TrackerService.simkl);
final _traktStore = trackerAccountStore(TrackerService.trakt);
final _mdblistStore = trackerAccountStore(TrackerService.mdblist);

TrackerSession _mal({String? username}) => TrackerSession(
  accessToken: 'mal-at',
  refreshToken: 'mal-rt',
  expiresAt: DateTime.now().millisecondsSinceEpoch ~/ 1000 + 3600,
  createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
  username: username,
);

TrackerSession _anilist({String? username}) => TrackerSession(
  accessToken: 'anilist-at',
  expiresAt: DateTime.now().millisecondsSinceEpoch ~/ 1000 + 3600,
  createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
  username: username,
);

TrackerSession _simkl({String? username}) => TrackerSession(
  accessToken: 'simkl_at_test',
  refreshToken: 'simkl_rt_test',
  expiresAt: 2000000000,
  clientId: SimklConstants.v2ClientId,
  createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
  username: username,
);

/// An AUTH V2 Simkl session, as every new sign-in now produces.
TrackerSession _simklV2({String token = 'simkl_at_new'}) =>
    TrackerSession(accessToken: token, refreshToken: 'simkl_rt_new', expiresAt: 2000000000, createdAt: 1900000000, clientId: SimklConstants.v2ClientId);

TrackerSession _trakt({String? username}) => TrackerSession(
  accessToken: 'trakt-at',
  refreshToken: 'trakt-rt',
  expiresAt: DateTime.now().millisecondsSinceEpoch ~/ 1000 + 3600,
  createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
  username: username,
);

Future<void> _bindProfile(TrackersProvider provider, String? userUuid) async {
  await provider.onActiveProfileChanged(userUuid);
  await TrackerCoordinator.instance.flushWriteQueue();
}

/// A queued watched write for [service], as a failed live write would leave it.
TrackerWriteQueueItem _queuedItem(TrackerService service) {
  final ctx = TrackerContext.movie(
    external: const ExternalIds(tmdb: 456),
    anime: null,
    ratingKey: 'movie-1',
    libraryGlobalKey: 'server-1:8',
  );
  return TrackerWriteQueueItem(
    service: service,
    watched: true,
    ctx: ctx,
    coalesceKey: trackerItemCoalesceKey(service, ctx, trackerExternalRowIdentity(ctx.external))!,
    progressClaim: null,
    watchedAtIso: '2026-05-12T00:00:00.000Z',
  );
}

void main() {
  setUp(() {
    resetSharedPreferencesForTest();
    _resetTrackerBindings();
  });
  tearDown(_resetTrackerBindings);

  group('TrackersProvider', () {
    test('rebinding applies the selected profile scrobble policy before its session', () async {
      final settings = await SettingsService.getInstance();
      await settings.prepareProfileSettings(['one', 'two']);
      await _malStore.save('one', _mal());
      await _malStore.save('two', _mal());
      settings.selectProfile('one');
      await settings.write(SettingsService.scrobblePref(TrackerService.mal), false);
      final provider = TrackersProvider();
      await _bindProfile(provider, 'one');
      expect(MalTracker.instance.canWriteWatched, isFalse);
      settings.selectProfile('two');
      await _bindProfile(provider, 'two');
      expect(MalTracker.instance.canWriteWatched, isTrue);
      settings.selectProfile('one');
      await _bindProfile(provider, 'one');
      expect(MalTracker.instance.canWriteWatched, isFalse);
      provider.dispose();
    });

    test('disabled Trakt preserves its session and queued writes without connecting', () async {
      const uuid = 'disabled-trakt';
      final session = _trakt(username: 'alice');
      await _traktStore.save(uuid, session);
      final queued = _queuedItem(TrackerService.trakt);
      final queue = TrackerWriteQueue();
      await queue.enqueue(
        uuid,
        TrackerWriteQueueItem(
          service: queued.service,
          watched: queued.watched,
          ctx: queued.ctx,
          coalesceKey: queued.coalesceKey,
          watchedAtIso: queued.watchedAtIso,
          attempts: TrackerWriteQueue.maxAttempts,
        ),
      );
      final prefs = await BaseSharedPreferencesService.sharedCache();
      final legacyKey = profileScopedPrefsKey(uuid, 'trakt_sync_queue');
      const legacyPayload = '[{"saved":"for a future migration"}]';
      await prefs.setString(legacyKey, legacyPayload);
      BaseSharedPreferencesService.resetForTesting();

      var requests = 0;
      http.Client client() => MockClient((request) async {
        requests++;
        return http.Response('', 500);
      });
      TraktTracker.instance.rebindSession(session, onSessionInvalidated: () {}, httpClient: client());
      final p = TrackersProvider(httpClientFactory: client);
      await _bindProfile(p, uuid);

      expect(p.isTraktConnected, isFalse);
      expect(p.traktCatalogClient, isNull);
      expect(TraktTracker.instance.client, isNull);
      expect(TraktTracker.instance.canReportPlayback, isFalse);
      expect(TraktTracker.instance.canWriteWatched, isFalse);
      var codeIssued = false;
      expect(await p.connectTrakt(onCodeReady: (_) => codeIssued = true), isFalse);
      await p.disconnectTrakt();
      await TrackerCoordinator.instance.flushWriteQueue();
      expect(codeIssued, isFalse);
      expect(requests, 0);
      expect((await _traktStore.load(uuid))?.accessToken, session.accessToken);
      expect((await BaseSharedPreferencesService.sharedCache()).getString(legacyKey), legacyPayload);
      // The independent queue reader normally migrates the legacy key; check it
      // only after confirming the disabled coordinator left it untouched.
      await prefs.remove(legacyKey);
      final retained = await queue.load(uuid);
      expect(retained, hasLength(1));
      expect(retained.single.toJson(), {...queued.toJson(), 'attempts': TrackerWriteQueue.maxAttempts});
      p.dispose();
    });

    test('starts with all trackers disconnected', () {
      final p = TrackersProvider();
      expect(p.mal, isNull);
      expect(p.anilist, isNull);
      expect(p.simkl, isNull);
      expect(p.trakt, isNull);
      expect(p.mdblist, isNull);
      expect(p.isMalConnected, isFalse);
      expect(p.isAnilistConnected, isFalse);
      expect(p.isSimklConnected, isFalse);
      expect(p.isTraktConnected, isFalse);
      expect(p.isMdblistConnected, isFalse);
      expect(p.mdblistCatalogClient, isNull);
      expect(p.malUsername, isNull);
      expect(p.anilistUsername, isNull);
      expect(p.simklUsername, isNull);
      expect(p.traktUsername, isNull);
      expect(p.mdblistUsername, isNull);
      expect(p.isConnecting(TrackerService.mal), isFalse);
      expect(p.isConnecting(TrackerService.anilist), isFalse);
      expect(p.isConnecting(TrackerService.simkl), isFalse);
      expect(p.isConnecting(TrackerService.trakt), isFalse);
      expect(p.isConnecting(TrackerService.mdblist), isFalse);
      p.dispose();
    });

    test('forTesting owns one fresh client per eager auth owner', () {
      final clients = <FakeHttpClient>[];
      final p = TrackersProvider.forTesting(
        connectPipeline: _ControlledConnectPipeline(_mal()).call,
        httpClientFactory: () {
          final client = FakeHttpClient(200, const <int>[]);
          clients.add(client);
          return client;
        },
      );

      expect(clients, hasLength(6));
      expect(clients.toSet(), hasLength(6));
      for (final client in clients) {
        expect(client.closeCount, 0);
      }

      p.dispose();

      for (final client in clients) {
        expect(client.closeCount, 1);
        expect(client.isClosed, isTrue);
      }
    });

    test('onActiveProfileChanged loads sessions from per-profile stores', () async {
      const uuid = 'profile-1';
      await _malStore.save(uuid, _mal(username: 'alice'));
      await _anilistStore.save(uuid, _anilist(username: 'bob'));
      await _simklStore.save(uuid, _simkl(username: 'carol'));
      await _traktStore.save(uuid, _trakt(username: 'dave'));

      await _mdblistStore.save(uuid, _session(TrackerService.mdblist, 'eve'));
      // Reset cached singletons so the provider reads fresh prefs state.
      BaseSharedPreferencesService.resetForTesting();

      final p = TrackersProvider(traktEnabled: true);
      var notified = 0;
      p.addListener(() => notified++);

      await _bindProfile(p, uuid);
      expect(p.isMalConnected, isTrue);
      expect(p.isAnilistConnected, isTrue);
      expect(p.isSimklConnected, isTrue);
      expect(p.isTraktConnected, isTrue);
      expect(p.isMdblistConnected, isTrue);
      expect(p.malUsername, 'alice');
      expect(p.anilistUsername, 'bob');
      expect(p.simklUsername, 'carol');
      expect(p.traktUsername, 'dave');
      expect(p.mdblistUsername, 'eve');
      expect(p.mdblistCatalogClient, same(MdblistTracker.instance.client));
      expect(notified, greaterThanOrEqualTo(1));

      p.dispose();
    });

    test('onActiveProfileChanged switching to empty profile clears all sessions', () async {
      const uuid = 'profile-1';
      await _malStore.save(uuid, _mal(username: 'alice'));
      await _anilistStore.save(uuid, _anilist(username: 'bob'));
      await _simklStore.save(uuid, _simkl(username: 'carol'));
      await _traktStore.save(uuid, _trakt(username: 'dave'));
      await _mdblistStore.save(uuid, _session(TrackerService.mdblist, 'eve'));
      BaseSharedPreferencesService.resetForTesting();

      final p = TrackersProvider();
      await _bindProfile(p, uuid);
      expect(p.isMalConnected, isTrue);

      await _bindProfile(p, 'other-profile');
      expect(p.isMalConnected, isFalse);
      expect(p.isAnilistConnected, isFalse);
      expect(p.isSimklConnected, isFalse);
      expect(p.isTraktConnected, isFalse);
      expect(p.isMdblistConnected, isFalse);
      expect(p.mdblistCatalogClient, isNull);

      p.dispose();
    });

    test('onActiveProfileChanged loads only the populated stores', () async {
      const uuid = 'profile-2';
      // Only AniList is set up — MAL, Simkl, and Trakt remain absent.
      await _anilistStore.save(uuid, _anilist(username: 'bob'));
      BaseSharedPreferencesService.resetForTesting();

      final p = TrackersProvider();
      await _bindProfile(p, uuid);
      expect(p.isAnilistConnected, isTrue);
      expect(p.anilistUsername, 'bob');
      expect(p.isMalConnected, isFalse);
      expect(p.isSimklConnected, isFalse);
      expect(p.isTraktConnected, isFalse);
      p.dispose();
    });

    test('disconnectMal clears stored session and notifies', () async {
      const uuid = 'profile-3';
      await _malStore.save(uuid, _mal(username: 'alice'));
      BaseSharedPreferencesService.resetForTesting();

      final p = TrackersProvider();
      await _bindProfile(p, uuid);
      expect(p.isMalConnected, isTrue);

      var notified = 0;
      p.addListener(() => notified++);

      await p.disconnectMal();
      expect(p.isMalConnected, isFalse);
      expect(p.mal, isNull);
      // _clearAndRebind notifies once.
      expect(notified, 1);

      // Persistence is cleared too.
      expect(await _malStore.load(uuid), isNull);

      p.dispose();
    });

    test('disconnectAnilist clears anilist while leaving MAL intact', () async {
      const uuid = 'profile-4';
      await _malStore.save(uuid, _mal(username: 'alice'));
      await _anilistStore.save(uuid, _anilist(username: 'bob'));
      BaseSharedPreferencesService.resetForTesting();

      final p = TrackersProvider();
      await _bindProfile(p, uuid);

      await p.disconnectAnilist();
      expect(p.isAnilistConnected, isFalse);
      expect(p.isMalConnected, isTrue);
      expect(p.malUsername, 'alice');

      p.dispose();
    });

    test('session invalidation purges the service queued writes so the next account cannot replay them', () async {
      const uuid = 'profile-invalidated';
      await _simklStore.save(uuid, _simkl(username: 'carol'));
      BaseSharedPreferencesService.resetForTesting();

      // Rows queued under the Simkl account about to be invalidated, plus a
      // Trakt control row that must survive the purge.
      final queue = TrackerWriteQueue();
      await queue.enqueue(uuid, _queuedItem(TrackerService.simkl));
      await queue.enqueue(uuid, _queuedItem(TrackerService.trakt));

      final p = TrackersProvider();
      await _bindProfile(p, uuid);
      expect(p.isSimklConnected, isTrue);

      // Fire the auth-failure teardown exactly as the client does on a 401.
      SimklTracker.instance.client!.onSessionInvalidated();
      expect(p.isSimklConnected, isFalse);
      await pumpEventQueue();

      // Account B connecting starts with a flush; nothing of A's may be waiting.
      await TrackerCoordinator.instance.flushWriteQueue();
      final survivors = await queue.load(uuid);
      expect(survivors.map((item) => item.service), [
        TrackerService.trakt,
      ], reason: 'the invalidated service rows must not wait for the next account');
      expect(await _simklStore.load(uuid), isNull);

      p.dispose();
    });

    test('disconnect during an in-flight profile load keeps the other trackers loaded', () async {
      const uuid = 'profile-race';
      await _malStore.save(uuid, _mal(username: 'alice'));
      await _anilistStore.save(uuid, _anilist(username: 'bob'));
      await _simklStore.save(uuid, _simkl(username: 'carol'));
      await _traktStore.save(uuid, _trakt(username: 'dave'));
      BaseSharedPreferencesService.resetForTesting();

      final p = TrackersProvider(traktEnabled: true);
      // Start the load, then disconnect MAL before it resolves.
      final load = _bindProfile(p, uuid);
      await p.disconnectMal();
      await load;

      // MAL stays disconnected (and cleared) — the racing load must not
      // resurrect it — but it also must not drop AniList/Simkl/Trakt.
      expect(p.isMalConnected, isFalse);
      expect(await _malStore.load(uuid), isNull);
      expect(p.isAnilistConnected, isTrue);
      expect(p.anilistUsername, 'bob');
      expect(p.isSimklConnected, isTrue);
      expect(p.simklUsername, 'carol');
      expect(p.isTraktConnected, isTrue);
      expect(p.traktUsername, 'dave');

      p.dispose();
    });

    test('disconnectSimkl on a profile with no session is safe', () async {
      final p = TrackersProvider();
      // No `onActiveProfileChanged` — uuid is empty (global slot).
      // disconnectSimkl just clears the (already absent) entry and rebinds.
      await p.disconnectSimkl();
      expect(p.isSimklConnected, isFalse);
      p.dispose();
    });

    test('cancelConnect is a no-op when not connecting', () {
      final p = TrackersProvider();
      expect(() => p.cancelConnect(), returnsNormally);
      expect(p.isConnecting(TrackerService.mal), isFalse);
      p.dispose();
    });

    test('safeNotifyListeners after dispose is a no-op', () async {
      final p = TrackersProvider();
      p.dispose();
      // Post-dispose rebind should not throw.
      await _bindProfile(p, 'any-uuid');
    });
    for (final service in [
      TrackerService.mal,
      TrackerService.anilist,
      TrackerService.simkl,
      TrackerService.trakt,
      TrackerService.mdblist,
    ]) {
      test('$service stale connect cannot save or replace a newer binding after dispose', () async {
        const oldUuid = 'profile-old';
        const newUuid = 'profile-new';
        final oldSession = _session(service, 'old');
        final newSession = _session(service, 'new');
        await _store(service).save(newUuid, newSession);
        BaseSharedPreferencesService.resetForTesting();

        final pipeline = _ControlledConnectPipeline(oldSession);
        final oldProvider = TrackersProvider.forTesting(connectPipeline: pipeline.call);
        await _bindProfile(oldProvider, oldUuid);
        final connect = _connect(oldProvider, service);
        await pipeline.beforeSave.future;

        oldProvider.dispose();
        final newProvider = TrackersProvider(traktEnabled: true);
        await _bindProfile(newProvider, newUuid);
        final newBinding = _boundClient(service);
        expect(newBinding, isNotNull);
        expect(_providerSession(newProvider, service)?.accessToken, newSession.accessToken);

        pipeline.releaseBeforeSave.complete();
        expect(await connect, isFalse);
        expect(await _store(service).load(oldUuid), isNull);
        expect((await _store(service).load(newUuid))?.accessToken, newSession.accessToken);
        expect(_boundClient(service), same(newBinding));
        expect(_boundSession(service)?.accessToken, newSession.accessToken);
        expect(_providerSession(oldProvider, service), isNull);

        newProvider.dispose();
      });
    }

    test('cancel invalidates a connect after authorization and before save', () async {
      const uuid = 'profile-cancel';
      final pipeline = _ControlledConnectPipeline(_session(TrackerService.mal, 'cancelled'));
      final p = TrackersProvider.forTesting(connectPipeline: pipeline.call);
      await _bindProfile(p, uuid);

      final connect = _connect(p, TrackerService.mal);
      await pipeline.beforeSave.future;
      p.cancelConnect();
      pipeline.releaseBeforeSave.complete();

      expect(await connect, isFalse);
      expect(p.isConnecting(TrackerService.mal), isFalse);
      expect(p.mal, isNull);
      expect(await _malStore.load(uuid), isNull);
      expect(MalTracker.instance.client, isNull);
      p.dispose();
    });

    test('profile change invalidates the old connect and preserves the new binding', () async {
      const oldUuid = 'profile-change-old';
      const newUuid = 'profile-change-new';
      final oldSession = _session(TrackerService.anilist, 'old');
      final newSession = _session(TrackerService.anilist, 'new');
      await _anilistStore.save(newUuid, newSession);
      BaseSharedPreferencesService.resetForTesting();

      final pipeline = _ControlledConnectPipeline(oldSession);
      final p = TrackersProvider.forTesting(connectPipeline: pipeline.call);
      await _bindProfile(p, oldUuid);
      final connect = _connect(p, TrackerService.anilist);
      await pipeline.beforeSave.future;

      await _bindProfile(p, newUuid);
      final newBinding = AnilistTracker.instance.client;
      pipeline.releaseBeforeSave.complete();

      expect(await connect, isFalse);
      expect(await _anilistStore.load(oldUuid), isNull);
      expect((await _anilistStore.load(newUuid))?.accessToken, newSession.accessToken);
      expect(p.anilist?.accessToken, newSession.accessToken);
      expect(AnilistTracker.instance.client, same(newBinding));
      expect(AnilistTracker.instance.client?.session.accessToken, newSession.accessToken);
      p.dispose();
    });

    test('same-service disconnect invalidates an in-flight connect', () async {
      const uuid = 'profile-same-disconnect';
      final pipeline = _ControlledConnectPipeline(_session(TrackerService.simkl, 'late'));
      final p = TrackersProvider.forTesting(connectPipeline: pipeline.call);
      await _bindProfile(p, uuid);
      final connect = _connect(p, TrackerService.simkl);
      await pipeline.beforeSave.future;

      await p.disconnectSimkl();
      pipeline.releaseBeforeSave.complete();

      expect(await connect, isFalse);
      expect(p.simkl, isNull);
      expect(await _simklStore.load(uuid), isNull);
      expect(SimklTracker.instance.client, isNull);
      p.dispose();
    });

    test('unrelated disconnect leaves an allowed connect current', () async {
      const uuid = 'profile-unrelated-disconnect';
      final linkedAnilist = _session(TrackerService.anilist, 'linked');
      final connectedMal = _session(TrackerService.mal, 'connected');
      await _anilistStore.save(uuid, linkedAnilist);
      BaseSharedPreferencesService.resetForTesting();

      final pipeline = _ControlledConnectPipeline(connectedMal);
      final p = TrackersProvider.forTesting(connectPipeline: pipeline.call);
      await _bindProfile(p, uuid);
      final connect = _connect(p, TrackerService.mal);
      await pipeline.beforeSave.future;

      await p.disconnectAnilist();
      pipeline.releaseBeforeSave.complete();

      expect(await connect, isTrue);
      await TrackerCoordinator.instance.flushWriteQueue();
      expect(p.anilist, isNull);
      expect(p.mal?.accessToken, connectedMal.accessToken);
      expect((await _malStore.load(uuid))?.accessToken, connectedMal.accessToken);
      expect(MalTracker.instance.client?.session.accessToken, connectedMal.accessToken);
      p.dispose();
    });

    test('dispose after save cannot assign or erase a newer same-profile binding', () async {
      const uuid = 'profile-save-race';
      final staleSession = _session(TrackerService.mal, 'stale');
      final freshSession = _session(TrackerService.mal, 'fresh');
      final pipeline = _ControlledConnectPipeline(staleSession, pauseAfterSave: true);
      final staleProvider = TrackersProvider.forTesting(connectPipeline: pipeline.call);
      await _bindProfile(staleProvider, uuid);
      final connect = _connect(staleProvider, TrackerService.mal);
      await pipeline.beforeSave.future;
      pipeline.releaseBeforeSave.complete();
      await pipeline.afterSave.future;

      staleProvider.dispose();
      await _malStore.save(uuid, freshSession);
      BaseSharedPreferencesService.resetForTesting();
      final freshProvider = TrackersProvider();
      await _bindProfile(freshProvider, uuid);
      final freshBinding = MalTracker.instance.client;
      pipeline.releaseAfterSave.complete();

      expect(await connect, isFalse);
      expect((await _malStore.load(uuid))?.accessToken, freshSession.accessToken);
      expect(MalTracker.instance.client, same(freshBinding));
      expect(MalTracker.instance.client?.session.accessToken, freshSession.accessToken);
      expect(staleProvider.mal, isNull);
      freshProvider.dispose();
    });

    test('new Simkl account clears old queued writes before binding', () async {
      const uuid = 'profile-simkl-registration-change';
      final queue = TrackerWriteQueue();
      await queue.enqueue(uuid, _queuedItem(TrackerService.simkl));
      await queue.enqueue(uuid, _queuedItem(TrackerService.trakt));
      await SimklTracker.instance.setEnabled(false);
      final simkl = _SimklAccounts({'simkl_at_new': 7});
      final p = TrackersProvider.forTesting(
        connectPipeline: _enrichingPipeline(_simklV2()),
        httpClientFactory: simkl.client,
      );
      await _bindProfile(p, uuid);
      expect(await p.connectSimkl(onCodeReady: (_) {}), isTrue);
      expect((await queue.load(uuid)).map((item) => item.service), [TrackerService.trakt]);
      p.dispose();
    });

    group('Simkl AUTH V2', () {
      test('a refreshed Simkl session is persisted and published', () async {
        const uuid = 'profile-simkl-refresh';
        await _simklStore.save(uuid, _simklV2(token: 'simkl_at_old'));
        BaseSharedPreferencesService.resetForTesting();

        final p = TrackersProvider();
        await _bindProfile(p, uuid);
        var notified = 0;
        p.addListener(() => notified++);

        // Fire the refresh publication exactly as the client does.
        SimklTracker.instance.client!.onSessionUpdated!(_simklV2());
        await pumpEventQueue();

        expect(p.simkl?.accessToken, 'simkl_at_new');
        expect((await _simklStore.load(uuid))?.accessToken, 'simkl_at_new');
        expect(notified, 1);
        p.dispose();
      });

      test('disconnect clears locally, then revokes an AUTH V2 grant', () async {
        const uuid = 'profile-simkl-revoke';
        await _simklStore.save(uuid, _simklV2());
        BaseSharedPreferencesService.resetForTesting();
        final simkl = _SimklAccounts(const {});

        final p = TrackersProvider.forTesting(
          connectPipeline: _ControlledConnectPipeline(_mal()).call,
          httpClientFactory: simkl.client,
        );
        await _bindProfile(p, uuid);

        await p.disconnectSimkl();

        expect(p.isSimklConnected, isFalse);
        expect(await _simklStore.load(uuid), isNull);
        final revoke = simkl.requests.single;
        expect(revoke.url.toString(), SimklConstants.revokeUrl);
        expect(revoke.bodyFields, {'client_id': SimklConstants.v2ClientId, 'token': 'simkl_rt_new'});
        p.dispose();
      });


    });
  });
}

void _resetTrackerBindings() {
  MalTracker.instance.rebindSession(null, onSessionInvalidated: () {});
  AnilistTracker.instance.rebindSession(null, onSessionInvalidated: () {});
  SimklTracker.instance.rebindSession(null, onSessionInvalidated: () {});
  TraktTracker.instance.rebindSession(null, onSessionInvalidated: () {});
  MdblistTracker.instance.rebindSession(null, onSessionInvalidated: () {});
}

TrackerAccountStore _store(TrackerService service) => switch (service) {
  TrackerService.mal => _malStore,
  TrackerService.anilist => _anilistStore,
  TrackerService.simkl => _simklStore,
  TrackerService.trakt => _traktStore,
  TrackerService.mdblist => _mdblistStore,
};

TrackerSession _session(TrackerService service, String owner) => switch (service) {
  TrackerService.mal => TrackerSession(
    accessToken: '$owner-mal-at',
    refreshToken: '$owner-mal-rt',
    expiresAt: 2000000000,
    createdAt: 1900000000,
    username: owner,
  ),
  TrackerService.anilist => TrackerSession(
    accessToken: '$owner-anilist-at',
    expiresAt: 2000000000,
    createdAt: 1900000000,
    username: owner,
  ),
  TrackerService.simkl => TrackerSession(accessToken: 'simkl_at_$owner', refreshToken: 'simkl_rt_$owner', expiresAt: 2000000000, createdAt: 1900000000, username: owner, clientId: SimklConstants.v2ClientId),
  TrackerService.trakt => TrackerSession(
    accessToken: '$owner-trakt-at',
    refreshToken: '$owner-trakt-rt',
    expiresAt: 2000000000,
    createdAt: 1900000000,
    username: owner,
  ),
  TrackerService.mdblist => TrackerSession(
    accessToken: '$owner-mdblist-at',
    clientId: MdblistConstants.clientId,
    refreshToken: '$owner-mdblist-rt',
    expiresAt: 2000000000,
    createdAt: 1900000000,
    username: owner,
  ),
};

Future<bool> _connect(TrackersProvider provider, TrackerService service) => switch (service) {
  TrackerService.mal => provider.connectMal(onCodeReady: (_) {}),
  TrackerService.anilist => provider.connectAnilist(onCodeReady: (_) {}),
  TrackerService.simkl => provider.connectSimkl(onCodeReady: (_) {}),
  TrackerService.trakt => provider.connectTrakt(onCodeReady: (_) {}),
  TrackerService.mdblist => provider.connectMdblist(onCodeReady: (_) {}),
};

TrackerSession? _providerSession(TrackersProvider provider, TrackerService service) => switch (service) {
  TrackerService.mal => provider.mal,
  TrackerService.anilist => provider.anilist,
  TrackerService.simkl => provider.simkl,
  TrackerService.trakt => provider.trakt,
  TrackerService.mdblist => provider.mdblist,
};

Object? _boundClient(TrackerService service) => switch (service) {
  TrackerService.mal => MalTracker.instance.client,
  TrackerService.anilist => AnilistTracker.instance.client,
  TrackerService.simkl => SimklTracker.instance.client,
  TrackerService.trakt => TraktTracker.instance.client,
  TrackerService.mdblist => MdblistTracker.instance.client,
};

TrackerSession? _boundSession(TrackerService service) => switch (service) {
  TrackerService.mal => MalTracker.instance.client?.session,
  TrackerService.anilist => AnilistTracker.instance.client?.session,
  TrackerService.simkl => SimklTracker.instance.client?.session,
  TrackerService.trakt => TraktTracker.instance.client?.session,
  TrackerService.mdblist => MdblistTracker.instance.client?.session,
};

class _ControlledConnectPipeline {
  _ControlledConnectPipeline(this.session, {this.pauseAfterSave = false});

  final TrackerSession session;
  final bool pauseAfterSave;
  final beforeSave = Completer<void>();
  final releaseBeforeSave = Completer<void>();
  final afterSave = Completer<void>();
  final releaseAfterSave = Completer<void>();

  Future<bool> call({
    required String logLabel,
    required Future<TrackerSession?> Function() authorize,
    required Future<TrackerSession> Function(TrackerSession raw) enrich,
    required Future<void> Function(TrackerSession enriched) save,
    required void Function(TrackerSession enriched) assign,
  }) async {
    beforeSave.complete();
    await releaseBeforeSave.future;
    await save(session);
    afterSave.complete();
    if (pauseAfterSave) await releaseAfterSave.future;
    assign(session);
    return true;
  }
}

/// The production pipeline's step order with a scripted authorization, so the
/// provider's own enrichment runs.
TrackerSessionConnectPipeline _enrichingPipeline(TrackerSession authorized) =>
    ({required logLabel, required authorize, required enrich, required save, required assign}) async {
      final enriched = await enrich(authorized);
      await save(enriched);
      assign(enriched);
      return true;
    };

/// Simkl's API as seen by the provider's short-lived clients: who each token
/// belongs to, plus every request made.
class _SimklAccounts {
  _SimklAccounts(this.accountIdsByToken);

  /// Tokens missing here answer 401. Only use legacy tokens for that: a V2
  /// 401 would try a real refresh.
  final Map<String, Object> accountIdsByToken;
  final requests = <http.Request>[];

  Iterable<String?> get settingsTokens => requests
      .where((request) => request.url.path == '/users/settings')
      .map((request) => request.headers['authorization']?.replaceFirst('Bearer ', ''));

  http.Client client() => MockClient((request) async {
    requests.add(request);
    if (request.url.path != '/users/settings') return http.Response('', 200);
    final token = request.headers['authorization']?.replaceFirst('Bearer ', '');
    final id = accountIdsByToken[token];
    if (id == null) return http.Response('', 401);
    return http.Response(
      json.encode({
        'user': {'name': 'user-$id'},
        'account': {'id': id},
      }),
      200,
    );
  });
}
