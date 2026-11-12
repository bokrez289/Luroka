import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/services/profile_settings_store.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../test_helpers/prefs.dart';

class _FailingPreferences implements SharedPreferencesWithCache {
  _FailingPreferences(this.delegate);
  final SharedPreferencesWithCache delegate;
  final List<bool> _failNextDocument = [true];

  @override
  Object? get(String key) => delegate.get(key);
  @override
  bool? getBool(String key) => delegate.getBool(key);
  @override
  bool containsKey(String key) => delegate.containsKey(key);
  @override
  Set<String> get keys => delegate.keys;
  @override
  Future<void> setBool(String key, bool value) => delegate.setBool(key, value);
  @override
  Future<void> setString(String key, String value) async {
    await delegate.setString(key, value);
    if (_failNextDocument.single && key == ProfileSettingsStore.keyForProfile('one')) {
      _failNextDocument[0] = false;
      throw StateError('injected failure after cache update');
    }
  }

  @override
  Future<void> remove(String key) => delegate.remove(key);
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  setUp(resetSharedPreferencesForTest);

  test('existing profiles retain independent copies while new profiles use defaults', () async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    final store = ProfileSettingsStore(prefs);
    final legacy = <String, Object?>{'theme': 'dark', 'music': false};

    await store.initialize('one', initialValues: legacy);
    await store.initialize('two', initialValues: legacy);
    await store.initialize('new');
    legacy['theme'] = 'changed';
    await store.update('one', {'theme': 'light'});
    await store.initialize('one', initialValues: {'theme': 'old'});

    expect(store.read('one'), {'theme': 'light', 'music': false});
    expect(store.read('two'), {'theme': 'dark', 'music': false});
    expect(store.read('new'), isEmpty);
    expect(ProfileSettingsStore(prefs).read('one'), {'theme': 'light', 'music': false});
  });

  test('concurrent changes and deletion are ordered per profile', () async {
    final store = ProfileSettingsStore(await BaseSharedPreferencesService.sharedCache());
    await store.initialize('one');
    await store.initialize('two');

    await Future.wait([
      store.update('one', {'theme': 'light'}),
      store.update('one', {'music': false}),
      store.update('two', {'theme': 'dark'}),
    ]);
    expect(store.read('one'), {'theme': 'light', 'music': false});
    expect(store.read('two'), {'theme': 'dark'});

    await Future.wait([
      store.update('one', {'theme': 'other'}),
      store.delete('one'),
    ]);
    expect(store.read('one'), isNull);
    expect(store.read('two'), {'theme': 'dark'});
    await expectLater(store.update('one', {'theme': 'light'}), throwsStateError);
  });

  test('unsupported documents are preserved and cannot be overwritten', () async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    final key = ProfileSettingsStore.keyForProfile('one');
    final raw = jsonEncode({
      'version': 2,
      'values': {'theme': 'dark'},
    });
    await prefs.setString(key, raw);
    final store = ProfileSettingsStore(prefs);

    expect(() => store.read('one'), throwsFormatException);
    await expectLater(store.initialize('one'), throwsFormatException);
    await expectLater(store.update('one', {'theme': 'light'}), throwsFormatException);
    expect(prefs.getString(key), raw);
  });

  test('legacy migration preserves old choices once and does not seed later profiles', () async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    await prefs.setString('theme', 'dark');
    await prefs.setBool('music', false);
    await prefs.setString('credential', 'not a setting');
    final store = ProfileSettingsStore(prefs);

    await store.migrateLegacy(profileIds: ['one', 'two'], preferenceKeys: ['theme', 'music']);
    await store.update('one', {'theme': 'light'});
    await prefs.setString('theme', 'different');
    await store.migrateLegacy(profileIds: ['one', 'two', 'new'], preferenceKeys: ['theme', 'music']);
    await store.initialize('new');

    expect(store.read('one'), {'theme': 'light', 'music': false});
    expect(store.read('two'), {'theme': 'dark', 'music': false});
    expect(store.read('new'), isEmpty);
  });

  test('failed migration can retry without replacing a profile already migrated', () async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    await prefs.setString('theme', 'dark');
    final key = ProfileSettingsStore.keyForProfile('two');
    await prefs.setString(key, '{invalid');
    final store = ProfileSettingsStore(prefs);

    await expectLater(
      store.migrateLegacy(profileIds: ['one', 'two'], preferenceKeys: ['theme']),
      throwsFormatException,
    );
    await store.update('one', {'theme': 'light'});
    await prefs.remove(key);
    await store.migrateLegacy(profileIds: ['one', 'two'], preferenceKeys: ['theme']);
    expect(store.read('one'), {'theme': 'light'});
    expect(store.read('two'), {'theme': 'dark'});
  });

  test('a failed document write cannot make a retry skip migration', () async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    await prefs.setString('theme', 'dark');
    final store = ProfileSettingsStore(_FailingPreferences(prefs));

    await expectLater(store.migrateLegacy(profileIds: ['one'], preferenceKeys: ['theme']), throwsStateError);
    expect(store.read('one'), isNull);
    await store.migrateLegacy(profileIds: ['one'], preferenceKeys: ['theme']);
    expect(store.read('one'), {'theme': 'dark'});
  });

  test('additional settings migrate once without replacing profile overrides', () async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    await prefs.setString('theme', 'dark');
    await prefs.setDouble('speed', 1.5);
    final store = ProfileSettingsStore(prefs);
    await store.migrateLegacy(profileIds: ['one', 'two'], preferenceKeys: ['theme']);
    await store.update('one', {'speed': 2.0});
    await store.migrateAdditionalLegacy(profileIds: ['one', 'two'], preferenceKeys: ['speed']);
    expect(store.read('one'), {'theme': 'dark', 'speed': 2.0});
    expect(store.read('two'), {'theme': 'dark', 'speed': 1.5});

    await prefs.setDouble('speed', 1.25);
    await store.migrateAdditionalLegacy(profileIds: ['one', 'two', 'new'], preferenceKeys: ['speed']);
    expect(store.read('new'), isNull);
    expect(store.read('two')?['speed'], 1.5);
  });
}
