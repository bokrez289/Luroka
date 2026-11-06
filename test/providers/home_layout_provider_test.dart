import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/home_layout.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_hub.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/providers/home_layout_provider.dart';
import 'package:luroka/services/storage_service.dart';

import '../test_helpers/prefs.dart';

MediaHub row(String id, {String server = 'server', String? library}) => MediaHub(
  id: id,
  identifier: 'recent.$id',
  serverId: server,
  libraryId: library,
  title: id,
  type: 'movie',
  items: const [],
);

MediaItem collection(String server, {String id = 'collection'}) => MediaItem(
  id: id,
  backend: MediaBackend.jellyfin,
  kind: MediaKind.collection,
  title: 'Cinema',
  serverId: server,
  libraryId: 'movies',
  raw: const {'privateToken': 'must-not-persist'},
);

void main() {
  setUp(resetSharedPreferencesForTest);

  test('default order is stable; custom order hides exact server/library rows and appends new ones', () {
    final a = row('latest', library: 'a');
    final b = row('latest', library: 'b');
    final c = row('latest', server: 'another', library: 'a');
    final newRow = row('new');
    expect(HomeLayout().arrange([a, b, c]), [a, b, c]);
    final layout = HomeLayout(order: [homeRowKey(c), homeRowKey(b)], hidden: [homeRowKey(a)]);
    expect(layout.arrange([a, b, c, newRow]), [c, b, newRow]);
    expect(layout.arrange([a, b, c], includeHidden: true), [c, b, a]);
  });

  test('holiday shelves default hidden and can be enabled and persisted', () async {
    final storage = await StorageService.getInstance();
    final provider = HomeLayoutProvider(storage: storage, profileId: 'p');
    addTearDown(provider.dispose);
    final holiday = row('Christmas movies');
    final regular = row('Recently added');
    expect(provider.layout.arrange([holiday, regular]), [regular]);
    await provider.setHidden(homeRowKey(holiday), false);
    expect(storage.getHomeLayout('p').arrange([holiday, regular]), [holiday, regular]);
    await provider.resetRows();
    expect(provider.layout.arrange([holiday, regular]), [regular]);
  });

  test('Plex seasonal horror promotion is hidden without hiding ordinary horror libraries', () {
    final layout = HomeLayout();
    expect(layout.isHidden(row('Oh, the Horror!')), isTrue);
    expect(layout.isHidden(row('Recently Added in Horror')), isFalse);
  });

  test('rapid edits serialize without dropping pins, visibility, or row order', () async {
    final storage = await StorageService.getInstance();
    final provider = HomeLayoutProvider(storage: storage, profileId: 'p1');
    addTearDown(provider.dispose);
    final a = row('a');
    final b = row('b');
    await Future.wait([
      provider.setHidden(homeRowKey(a), true),
      provider.moveRow([a, b], homeRowKey(b), -1),
      provider.setPinned(collection('server'), true),
    ]);
    final restored = HomeLayoutProvider(storage: storage, profileId: 'p1');
    addTearDown(restored.dispose);
    expect(restored.layout.hidden, {homeRowKey(a)});
    expect(restored.layout.order, [homeRowKey(b), homeRowKey(a)]);
    expect(restored.layout.pins.single.id, 'collection');
    expect(jsonEncode(storage.getHomeLayout('p1').toJson()), isNot(contains('must-not-persist')));
  });

  test('writes stay with the captured profile after an active-profile switch', () async {
    final storage = await StorageService.getInstance();
    await storage.setActiveProfileId('p1');
    final first = HomeLayoutProvider(storage: storage, profileId: 'p1');
    final second = HomeLayoutProvider(storage: storage, profileId: 'p2');
    addTearDown(first.dispose);
    addTearDown(second.dispose);
    final write = first.setHidden('a', true);
    await storage.setActiveProfileId('p2');
    await write;
    await second.setPinned(collection('server'), true);
    expect(storage.getHomeLayout('p1').hidden, {'a'});
    expect(storage.getHomeLayout('p1').pins, isEmpty);
    expect(storage.getHomeLayout('p2').hidden, isEmpty);
    expect(storage.getHomeLayout('p2').pins, hasLength(1));
  });

  test('pins with the same item id on different servers are independent; reset keeps pins', () async {
    final storage = await StorageService.getInstance();
    final provider = HomeLayoutProvider(storage: storage, profileId: 'p1');
    addTearDown(provider.dispose);
    final a = collection('a');
    final b = collection('b');
    await provider.setPinned(a, true);
    await provider.setPinned(b, true);
    await provider.setPinned(a, true);
    expect(provider.layout.pins.map((pin) => pin.globalKey).toSet(), {a.globalKey, b.globalKey});
    await provider.setHidden('row', true);
    await provider.resetRows();
    expect(provider.layout.hidden, isEmpty);
    expect(provider.layout.order, isEmpty);
    expect(provider.layout.pins, hasLength(2));
    await provider.setPinned(a, false);
    expect(provider.layout.pins.single.globalKey, b.globalKey);
  });

  test('disconnected row positions survive edits and return in the chosen order', () async {
    final storage = await StorageService.getInstance();
    final a = row('a');
    final b = row('b');
    final c = row('c');
    await storage.saveHomeLayout('p', HomeLayout(order: [homeRowKey(c), homeRowKey(a), homeRowKey(b)]));
    final provider = HomeLayoutProvider(storage: storage, profileId: 'p');
    addTearDown(provider.dispose);
    await provider.moveRow([a, b], homeRowKey(b), -1);
    expect(provider.layout.arrange([a, b, c]), [b, a, c]);
    expect(provider.layout.order, contains(homeRowKey(c)));
  });

  test('bad pin data is skipped while valid rows and pins survive', () {
    final pin = collection('server');
    final layout = HomeLayout.fromJson({
      'order': ['first', 7, 'first'],
      'hidden': ['hidden', null],
      'pins': [
        null,
        {'backend': 'unknown'},
        pin.toJson(),
        pin.toJson(),
      ],
    });
    expect(layout.order, ['first']);
    expect(layout.hidden, {'hidden'});
    expect(layout.pins, hasLength(1));
    expect(layout.pins.single.raw, isNull);
  });

  test('profile cleanup removes custom layout and anonymous sessions cannot write', () async {
    final storage = await StorageService.getInstance();
    final provider = HomeLayoutProvider(storage: storage, profileId: 'p');
    final anonymous = HomeLayoutProvider(storage: storage, profileId: null);
    addTearDown(provider.dispose);
    addTearDown(anonymous.dispose);
    await anonymous.setHidden('anonymous', true);
    expect(anonymous.layout.hidden, isEmpty);
    await provider.setHidden('row', true);
    await storage.clearUserScopedPreferencesForProfile('p');
    expect(storage.getHomeLayout('p').hidden, isEmpty);
  });
}
