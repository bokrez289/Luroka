import 'dart:async';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/home_layout.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/providers/home_layout_provider.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:shared_preferences_platform_interface/in_memory_shared_preferences_async.dart';
import 'package:shared_preferences_platform_interface/shared_preferences_async_platform_interface.dart';
import 'package:shared_preferences_platform_interface/types.dart';

import '../test_helpers/prefs.dart';

final class _GatedPrefs extends InMemorySharedPreferencesAsync {
  _GatedPrefs(super.data) : super.withData();

  final started = Completer<void>();
  final release = Completer<void>();
  bool gateNextHomeWrite = true;

  @override
  Future<bool> setString(String key, String value, SharedPreferencesOptions options) async {
    if (gateNextHomeWrite && key.endsWith('_custom_home_layout')) {
      gateNextHomeWrite = false;
      started.complete();
      await release.future;
    }
    return super.setString(key, value, options);
  }
}

final class _FailOncePrefs extends InMemorySharedPreferencesAsync {
  _FailOncePrefs() : super.empty();
  bool fail = true;

  @override
  Future<bool> setString(String key, String value, SharedPreferencesOptions options) async {
    if (fail && key.endsWith('_custom_home_layout')) {
      fail = false;
      throw StateError('temporary write failure');
    }
    return super.setString(key, value, options);
  }
}

String homeKey(StorageService storage, String id) => 'user_${storage.userScopeForProfileId(id)}_custom_home_layout';

void main() {
  setUp(resetSharedPreferencesForTest);

  test('known local and cached Plex profiles get durable Trending without losing layout data', () async {
    final storage = await StorageService.getInstance();
    final plex = plexHomeProfileId(accountConnectionId: 'account', homeUserUuid: '0123456789abcdef');
    final old = {
      'version': 1,
      'order': ['b', 'a'],
      'hidden': ['a'],
      'shown': ['b'],
      'pins': <Object>[],
      'splitContinueWatching': true,
      'futureField': {'keep': 7},
    };
    await storage.prefs.setString(homeKey(storage, 'legacy'), jsonEncode(old));
    await storage.migrateKnownHomeSpotlights(['legacy', plex, 'never-customized']);
    final migrated = jsonDecode(storage.prefs.getString(homeKey(storage, 'legacy'))!) as Map<String, dynamic>;
    expect(migrated, {...old, 'version': 2, 'spotlightSource': 'trending'});
    expect(storage.getHomeLayout('legacy').hidden, {'a'});
    expect(storage.getHomeLayout('legacy').splitContinueWatching, isTrue);
    for (final id in [plex, 'never-customized']) {
      final raw = jsonDecode(storage.prefs.getString(homeKey(storage, id))!) as Map<String, dynamic>;
      expect(raw['version'], 2);
      expect(raw['spotlightSource'], 'trending');
    }
    final before = storage.prefs.getString(homeKey(storage, 'legacy'));
    await storage.migrateKnownHomeSpotlights(['legacy', plex]);
    expect(storage.prefs.getString(homeKey(storage, 'legacy')), before);
  });

  test('new choices, unknown sources, newer versions and malformed data are never overwritten', () async {
    final storage = await StorageService.getInstance();
    expect(await storage.initializeNewProfileHome('new'), isTrue);
    final newKey = homeKey(storage, 'new');
    final before = storage.prefs.getString(newKey);
    const unknown = '{"version":2,"spotlightSource":"future-mode","other":3}';
    const newer = '{"version":99,"other":3}';
    const malformed = '{not-json';
    await storage.prefs.setString(homeKey(storage, 'unknown'), unknown);
    await storage.prefs.setString(homeKey(storage, 'newer'), newer);
    await storage.prefs.setString(homeKey(storage, 'malformed'), malformed);
    await storage.migrateKnownHomeSpotlights(['new', 'unknown', 'newer', 'malformed']);
    expect(storage.prefs.getString(newKey), before);
    expect(storage.getHomeLayout('new').spotlightSource, HomeSpotlightSource.forYou);
    expect(storage.prefs.getString(homeKey(storage, 'unknown')), unknown);
    expect(storage.prefs.getString(homeKey(storage, 'newer')), newer);
    expect(storage.prefs.getString(homeKey(storage, 'malformed')), malformed);
  });

  test('migration and an immediate profile edit serialize without losing either choice or rows', () async {
    final backend = _GatedPrefs({
      'user_p_custom_home_layout': jsonEncode({
        'version': 1,
        'hidden': ['old'],
      }),
    });
    SharedPreferencesAsyncPlatform.instance = backend;
    final storage = await StorageService.getInstance();
    final migration = storage.migrateLegacyHomeSpotlight('p');
    await backend.started.future;
    final provider = HomeLayoutProvider(storage: storage, profileId: 'p');
    addTearDown(provider.dispose);
    final edit = provider.setSpotlightSource(HomeSpotlightSource.forYou);
    backend.release.complete();
    await Future.wait([migration, edit]);
    expect(storage.getHomeLayout('p').spotlightSource, HomeSpotlightSource.forYou);
    expect(storage.getHomeLayout('p').hidden, {'old'});
  });

  test('an existing user choice wins when its write was queued before migration', () async {
    final backend = _GatedPrefs({});
    SharedPreferencesAsyncPlatform.instance = backend;
    final storage = await StorageService.getInstance();
    final edit = storage.saveHomeLayout('p', HomeLayout(spotlightSource: HomeSpotlightSource.forYou, hidden: ['row']));
    await backend.started.future;
    final migration = storage.migrateLegacyHomeSpotlight('p');
    backend.release.complete();
    await Future.wait([edit, migration]);
    expect(storage.getHomeLayout('p').spotlightSource, HomeSpotlightSource.forYou);
    expect(storage.getHomeLayout('p').hidden, {'row'});
  });

  test('two profile sessions merge edits against the latest stored layout', () async {
    final storage = await StorageService.getInstance();
    final first = HomeLayoutProvider(storage: storage, profileId: 'p');
    final second = HomeLayoutProvider(storage: storage, profileId: 'p');
    addTearDown(first.dispose);
    addTearDown(second.dispose);
    await Future.wait([first.setHidden('row', true), second.setSpotlightSource(HomeSpotlightSource.continueWatching)]);
    expect(storage.getHomeLayout('p').hidden, {'row'});
    expect(storage.getHomeLayout('p').spotlightSource, HomeSpotlightSource.continueWatching);
  });

  test('Plex Home ids sharing a user scope serialize edits instead of losing them', () async {
    final storage = await StorageService.getInstance();
    final a = plexHomeProfileId(accountConnectionId: 'account-a', homeUserUuid: '0123456789abcdef');
    final b = plexHomeProfileId(accountConnectionId: 'account-b', homeUserUuid: '0123456789abcdef');
    expect(storage.userScopeForProfileId(a), storage.userScopeForProfileId(b));
    final first = HomeLayoutProvider(storage: storage, profileId: a);
    final second = HomeLayoutProvider(storage: storage, profileId: b);
    addTearDown(first.dispose);
    addTearDown(second.dispose);
    await Future.wait([first.setHidden('row', true), second.setSpotlightSource(HomeSpotlightSource.forYou)]);
    expect(storage.getHomeLayout(a).hidden, {'row'});
    expect(storage.getHomeLayout(b).spotlightSource, HomeSpotlightSource.forYou);
  });

  test('profile deletion waits for its own in-flight migration', () async {
    final backend = _GatedPrefs({});
    SharedPreferencesAsyncPlatform.instance = backend;
    final storage = await StorageService.getInstance();
    final migration = storage.migrateLegacyHomeSpotlight('p');
    await backend.started.future;
    final clear = storage.clearUserScopedPreferencesForProfile('p');
    backend.release.complete();
    await Future.wait([migration, clear]);
    expect(storage.prefs.containsKey(homeKey(storage, 'p')), isFalse);
  });

  test('a failed migration does not prevent the person from saving their choice', () async {
    SharedPreferencesAsyncPlatform.instance = _FailOncePrefs();
    final storage = await StorageService.getInstance();
    final provider = HomeLayoutProvider(storage: storage, profileId: 'p');
    addTearDown(provider.dispose);
    await provider.setSpotlightSource(HomeSpotlightSource.forYou);
    expect(storage.getHomeLayout('p').spotlightSource, HomeSpotlightSource.forYou);
  });

  test('deleting an unprocessed profile during boot migration cannot recreate its preference', () async {
    final backend = _GatedPrefs({});
    SharedPreferencesAsyncPlatform.instance = backend;
    final storage = await StorageService.getInstance();
    final migration = storage.migrateKnownHomeSpotlights(['first', 'removed']);
    await backend.started.future;
    await storage.clearUserScopedPreferencesForProfile('removed');
    backend.release.complete();
    await migration;
    expect(storage.prefs.containsKey(homeKey(storage, 'first')), isTrue);
    expect(storage.prefs.containsKey(homeKey(storage, 'removed')), isFalse);
  });

  test('device logout waits for in-flight migration and prevents later batch writes', () async {
    final backend = _GatedPrefs({});
    SharedPreferencesAsyncPlatform.instance = backend;
    final storage = await StorageService.getInstance();
    final migration = storage.migrateKnownHomeSpotlights(['first', 'second']);
    await backend.started.future;
    final clear = storage.clearAllUserScopedPreferences();
    backend.release.complete();
    await Future.wait([migration, clear]);
    expect(storage.prefs.containsKey(homeKey(storage, 'first')), isFalse);
    expect(storage.prefs.containsKey(homeKey(storage, 'second')), isFalse);
  });
}
