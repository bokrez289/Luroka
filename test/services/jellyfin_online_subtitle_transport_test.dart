import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:luroka/exceptions/media_server_exceptions.dart';
import 'package:luroka/media/online_subtitle_transport.dart';

import '../test_helpers/backend_client_fixtures.dart';

void main() {
  group('Jellyfin online subtitle transport', () {
    test('uploads selected subtitles with the documented Jellyfin payload', () async {
      late http.Request captured;
      final client = testJellyfinClient(
        handler: (request) async {
          captured = request;
          return http.Response('', 204);
        },
      );
      addTearDown(client.close);
      await client.uploadSubtitle('item/id', language: 'en', format: 'srt', bytes: [49, 50]);
      expect(captured.url.path, '/Videos/item%2Fid/Subtitles');
      expect(jsonDecode(captured.body), {
        'Language': 'eng',
        'Format': 'srt',
        'IsForced': false,
        'IsHearingImpaired': false,
        'Data': 'MTI=',
      });
    });

    test('upload rejects invalid files before making a server request', () async {
      var requests = 0;
      final client = testJellyfinClient(handler: (_) async {
        requests++;
        return http.Response('', 204);
      });
      addTearDown(client.close);
      await expectLater(client.uploadSubtitle('item', language: 'en', format: 'exe', bytes: [1]), throwsArgumentError);
      await expectLater(client.uploadSubtitle('item', language: 'en', format: 'srt', bytes: []), throwsArgumentError);
      expect(requests, 0);
    });
    test('search uses the three-letter route and parses aliases', () async {
      late http.Request captured;
      final client = testJellyfinClient(
        handler: (request) async {
          captured = request;
          return http.Response(
            jsonEncode([
              {
                'Id': 'sub/id',
                'Name': 'Release name',
                'Format': 'srt',
                'ThreeLetterISOLanguageName': 'eng',
                'ProviderName': 'Provider',
                'CommunityRating': 4.5,
                'IsHashMatch': true,
                'IsForced': true,
                'IsHearingImpaired': true,
              },
            ]),
            200,
            headers: {'content-type': 'application/json'},
          );
        },
      );
      addTearDown(client.close);

      final results = await client.searchOnlineSubtitles('item/id', language: 'en', mediaSourceId: 'ignored');

      expect(captured.method, 'GET');
      expect(captured.url.path, '/Items/item%2Fid/RemoteSearch/Subtitles/eng');
      expect(captured.url.queryParameters, isEmpty);
      expect(
        results.single,
        const OnlineSubtitleSearchResult(
          id: 'sub/id',
          codec: 'srt',
          languageCode: 'eng',
          score: 4.5,
          providerTitle: 'Provider',
          title: 'Release name',
          displayTitle: 'Release name',
          hearingImpaired: true,
          perfectMatch: true,
          forced: true,
        ),
      );
    });

    test('download posts the encoded id and accepts 204', () async {
      late http.Request captured;
      final client = testJellyfinClient(
        handler: (request) async {
          captured = request;
          return http.Response('', 204);
        },
      );
      addTearDown(client.close);

      final result = await client.downloadOnlineSubtitle(
        'item/id',
        subtitle: const OnlineSubtitleSearchResult(id: 'subtitle/id'),
      );

      expect(result, isTrue);
      expect(captured.method, 'POST');
      expect(captured.url.path, '/Items/item%2Fid/RemoteSearch/Subtitles/subtitle%2Fid');
      expect(captured.url.queryParameters, isEmpty);
    });

    test('malformed successful search payload throws', () async {
      final client = testJellyfinClient(
        handler: (_) async => http.Response('{}', 200, headers: {'content-type': 'application/json'}),
      );
      addTearDown(client.close);

      await expectLater(client.searchOnlineSubtitles('item-1', language: 'en'), throwsFormatException);
    });

    test('download rejects non-2xx responses', () async {
      final client = testJellyfinClient(handler: (_) async => http.Response('', 302));
      addTearDown(client.close);

      await expectLater(
        client.downloadOnlineSubtitle('item-1', subtitle: const OnlineSubtitleSearchResult(id: 'sub-1')),
        throwsA(isA<MediaServerHttpException>().having((error) => error.statusCode, 'statusCode', 302)),
      );
    });
  });

  group('Emby online subtitle transport', () {
    test('search and download require and send MediaSourceId', () async {
      final requests = <http.Request>[];
      final client = testEmbyClient(
        handler: (request) async {
          requests.add(request);
          if (request.method == 'GET') {
            return http.Response('[]', 200, headers: {'content-type': 'application/json'});
          }
          return http.Response('', 200);
        },
      );
      addTearDown(client.close);

      await expectLater(client.searchOnlineSubtitles('item-1', language: 'en'), throwsArgumentError);
      await expectLater(
        client.downloadOnlineSubtitle('item-1', subtitle: const OnlineSubtitleSearchResult(id: 'sub-1')),
        throwsArgumentError,
      );
      expect(requests, isEmpty);

      await client.searchOnlineSubtitles('item-1', language: 'en', mediaSourceId: 'source-1');
      await client.downloadOnlineSubtitle(
        'item-1',
        mediaSourceId: 'source-1',
        subtitle: const OnlineSubtitleSearchResult(id: 'sub-1'),
      );

      expect(requests.map((request) => request.method), ['GET', 'POST']);
      expect(requests.every((request) => request.url.queryParameters['MediaSourceId'] == 'source-1'), isTrue);
    });
  });

  test('fresh source fetches item metadata and selects the requested source id', () async {
    var requests = 0;
    final client = testJellyfinClient(
      handler: (request) async {
        requests++;
        return http.Response(
          jsonEncode({
            'Id': 'item-1',
            'Name': 'Movie',
            'Type': 'Movie',
            'MediaSources': [
              {'Id': 'source-1', 'MediaStreams': <Object?>[]},
              {
                'Id': 'source-2',
                'MediaStreams': [
                  {'Type': 'Subtitle', 'Index': 4, 'Codec': 'srt'},
                ],
              },
            ],
          }),
          200,
          headers: {'content-type': 'application/json'},
        );
      },
    );
    addTearDown(client.close);

    final source = await client.fetchFreshOnlineSubtitleSource('item-1', mediaSourceId: 'source-2');

    expect(requests, 1);
    expect(source?.mediaSourceId, 'source-2');
    expect(source?.subtitleTracks.single.index, 4);
    expect(await client.fetchFreshOnlineSubtitleSource('item-1', mediaSourceId: 'missing'), isNull);
    expect(requests, 2, reason: 'fresh source must perform a network-first fetchItem each time');
  });

  test('capabilities are enabled only with the complete transport', () {
    final jellyfin = testJellyfinClient();
    final emby = testEmbyClient();
    addTearDown(jellyfin.close);
    addTearDown(emby.close);

    expect(jellyfin.capabilities.externalSubtitleSearch, isTrue);
    expect(emby.capabilities.externalSubtitleSearch, isTrue);
    expect(jellyfin, isA<OnlineSubtitleTransport>());
    expect(emby, isA<OnlineSubtitleTransport>());
  });
}
