import 'package:drift/drift.dart' show Value;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:luroka/database/app_database.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/exceptions/media_server_exceptions.dart';
import 'package:luroka/services/jellyfin_api_cache.dart';
import 'package:luroka/services/jellyfin_client.dart';

import '../test_helpers/backend_client_fixtures.dart';
import '../test_helpers/http_fixtures.dart';

/// Details fetch current server state rather than racing a background cache
/// rewrite against watched/progress changes.
void main() {
  late AppDatabase db;

  setUp(() {
    db = AppDatabase.forTesting(NativeDatabase.memory());
    JellyfinApiCache.initialize(db);
  });

  tearDown(() async {
    await db.close();
  });

  Map<String, dynamic> movieRow({String name = 'Cached Movie'}) => {'Id': 'item-1', 'Name': name, 'Type': 'Movie'};

  JellyfinClient makeClient(
    List<Uri> captured, {
    required Map<String, dynamic> item,
    List<Map<String, dynamic>> nextUp = const [],
  }) {
    return testJellyfinClient(
      handler: (request) async {
        captured.add(request.url);
        final path = request.url.path;
        if (path == '/Users/user-1/Items/item-1' || path == '/Users/user-1/Items/show-1') return jsonResponse(item);
        if (path == '/Shows/NextUp') return jsonResponse({'Items': nextUp});
        if (path == '/Items/item-1/Ancestors' || path == '/Items/show-1/Ancestors') return jsonResponse([]);
        fail('Unexpected request: ${request.url}');
      },
    );
  }

  Future<void> seedFreshRow() async {
    await JellyfinApiCache.instance.put(ServerId('srv-1/user-1'), '/Users/user-1/Items/item-1', movieRow());
  }

  Future<void> ageSeededRow() async {
    // The shared ApiCache row: push its write stamp past the 5-minute
    // freshness window so the revalidate path must hit the network.
    await (db.update(db.apiCache)..where((t) => t.cacheKey.equals('srv-1/user-1:/Users/user-1/Items/item-1'))).write(
      ApiCacheCompanion(cachedAt: Value(DateTime.now().subtract(const Duration(minutes: 10)))),
    );
  }

  test('a fresh cached row does not mask current server detail', () async {
    await seedFreshRow();
    final captured = <Uri>[];
    final client = makeClient(captured, item: movieRow(name: 'Fresh from server'));
    addTearDown(client.close);

    final result = await client.fetchItemWithOnDeck('item-1', isShow: false);

    expect(result.item?.title, 'Fresh from server');
    expect(result.onDeckEpisode, isNull);
    expect(captured.where((u) => u.path == '/Users/user-1/Items/item-1'), hasLength(1));
    expect(captured.where((u) => u.path == '/Shows/NextUp'), isEmpty);
  });

  test('a fresh cached detail does not mask revoked server access', () async {
    await seedFreshRow();
    final client = testJellyfinClient(handler: (_) async => http.Response('forbidden', 403));
    addTearDown(client.close);
    await expectLater(
      client.fetchItemWithOnDeck('item-1', isShow: false),
      throwsA(isA<MediaServerHttpException>().having((e) => e.statusCode, 'status', 403)),
    );
  });

  test('a stale row falls through to the network and stamps ancestors', () async {
    await seedFreshRow();
    await ageSeededRow();
    final captured = <Uri>[];
    final client = makeClient(captured, item: movieRow(name: 'Fresh from server'));
    addTearDown(client.close);

    final result = await client.fetchItemWithOnDeck('item-1', isShow: false);

    expect(result.item?.title, 'Fresh from server');
    expect(captured.where((u) => u.path == '/Users/user-1/Items/item-1'), hasLength(1));
  });

  test('a show hint requests NextUp alongside the current item', () async {
    await JellyfinApiCache.instance.put(ServerId('srv-1/user-1'), '/Users/user-1/Items/show-1', {
      'Id': 'show-1',
      'Name': 'Cached Show',
      'Type': 'Series',
    });
    final captured = <Uri>[];
    final client = makeClient(captured, item: {'Id': 'show-1', 'Name': 'Cached Show', 'Type': 'Series'});
    addTearDown(client.close);

    final result = await client.fetchItemWithOnDeck('show-1', isShow: true);

    expect(result.item?.title, 'Cached Show');
    expect(result.onDeckEpisode, isNull);
    expect(captured.where((u) => u.path == '/Shows/NextUp'), hasLength(1));
    expect(captured.where((u) => u.path == '/Users/user-1/Items/show-1'), hasLength(1));
  });
}
