import 'dart:async';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:drift/native.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/services/plex_api_cache.dart';
import 'package:luroka/services/jellyfin_api_cache.dart';
import 'package:luroka/utils/media_server_http_client.dart';

import '../test_helpers/backend_client_fixtures.dart';

void main() {
  setUp(() {
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    PlexApiCache.initialize(db);
    JellyfinApiCache.initialize(db);
    addTearDown(db.close);
  });
  test('Emby previews request lightweight fields and full details still fetch separately', () async {
    final requests = <Uri>[];
    final client = testEmbyClient(handler: (request) async {
      requests.add(request.url);
      return http.Response(jsonEncode({'Id': '1', 'Name': 'Movie', 'Type': 'Movie', 'Overview': 'Summary'}), 200,
          headers: {'content-type': 'application/json'});
    });
    addTearDown(client.close);
    final preview = await client.fetchPreviewItem('1', abort: AbortController());
    expect(preview?.summary, 'Summary');
    expect(requests.single.queryParameters['Fields'], isNot(contains('MediaSources')));
    expect(requests.single.queryParameters['Fields'], isNot(contains('Trickplay')));
    await client.fetchItem('1');
    expect(requests, hasLength(2));
    expect(requests.last.queryParameters['Fields'], contains('MediaSources'));
  });

  test('Plex previews disable extras and preserve server and library identity', () async {
    final requests = <Uri>[];
    final client = testPlexClient(handler: (request) async {
      requests.add(request.url);
      return http.Response(jsonEncode({'MediaContainer': {'librarySectionID': 7, 'Metadata': [
        {'ratingKey': '1', 'type': 'movie', 'title': 'Movie', 'summary': 'Summary'}
      ]}}), 200, headers: {'content-type': 'application/json'});
    });
    addTearDown(client.close);
    final preview = await client.fetchPreviewItem('1', abort: AbortController());
    expect(preview?.summary, 'Summary');
    expect(preview?.libraryId, '7');
    expect(preview?.serverId, 'server-1');
    expect(requests.single.queryParameters['includeExtras'], '0');
    expect(requests.single.queryParameters['includeOnDeck'], '0');
  });

  test('concurrent Emby Live TV probes share one request but later probes refresh', () async {
    var calls = 0;
    final gate = Completer<void>();
    final client = testEmbyClient(handler: (request) async {
      calls++;
      await gate.future;
      return http.Response('{"Items":[],"TotalRecordCount":0}', 200);
    });
    addTearDown(client.close);
    final first = client.hasLiveTv();
    final second = client.hasLiveTv();
    gate.complete();
    await Future.wait([first, second]);
    expect(calls, 1);
    await client.hasLiveTv();
    expect(calls, 2);
  });
}
