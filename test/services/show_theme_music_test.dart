import 'dart:convert';

import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:luroka/database/app_database.dart';
import 'package:luroka/services/jellyfin_api_cache.dart';
import 'package:luroka/services/plex_api_cache.dart';

import '../test_helpers/backend_client_fixtures.dart';

http.Response json(Object value) =>
    http.Response(jsonEncode(value), 200, headers: {'content-type': 'application/json'});

void main() {
  late AppDatabase database;
  setUp(() {
    database = AppDatabase.forTesting(NativeDatabase.memory());
    PlexApiCache.initialize(database);
    JellyfinApiCache.initialize(database);
  });
  tearDown(() => database.close());

  test('Plex uses the server-provided theme path and stream authentication', () async {
    final client = testPlexClient(
      handler: (_) async => json({
        'MediaContainer': {
          'Metadata': [
            {'theme': '/library/metadata/42/theme/1'},
          ],
        },
      }),
    );
    addTearDown(client.close);
    final theme = await client.fetchShowTheme('42');
    expect(theme?.url, 'https://plex.example.com/library/metadata/42/theme/1');
    expect(theme?.headers['X-Plex-Token'], isNotEmpty);
  });

  for (final emby in [false, true]) {
    test('${emby ? 'Emby' : 'Jellyfin'} resolves a theme song through the audio stream route', () async {
      final client = testJellyfinClient(
        connection: emby ? testEmbyConnection() : null,
        handler: (request) async {
          expect(request.url.path, '/Items/show/ThemeSongs');
          return json({
            'Items': [
              {'Id': 'theme-id'},
            ],
          });
        },
      );
      addTearDown(client.close);
      final theme = await client.fetchShowTheme('show');
      final uri = Uri.parse(theme!.url);
      expect(uri.path, '/Audio/theme-id/stream');
      expect(uri.queryParameters.keys.map((key) => key.toLowerCase()), contains(emby ? 'api_key' : 'apikey'));
    });
  }
}
