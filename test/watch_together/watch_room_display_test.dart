import 'package:openwatchparty/openwatchparty.dart' as owp;
import 'package:flutter/material.dart' show SizedBox;
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/watch_together/services/watch_deep_link.dart';

import '../test_helpers/media_items.dart';
import '../test_helpers/watch_room_harness.dart';

void main() {
  group('WatchTogetherDeepLink', () {
    test('parses raw, dashed and lower-case codes', () {
      for (final link in [
        'luroka://watch?code=K7MQ2X',
        'luroka://watch?code=k7m-q2x',
        'luroka://watch?code=K7M-Q2X',
      ]) {
        final parsed = WatchTogetherDeepLink.tryParse(link);
        expect(parsed, isNotNull, reason: link);
        expect(parsed!.code, 'K7MQ2X', reason: link);
        expect(parsed.uri(), 'luroka://watch?code=K7MQ2X');
      }
    });

    test('rejects wrong hosts, missing codes and malformed codes', () {
      expect(WatchTogetherDeepLink.tryParse('plezy://watch?code=K7MQ2X'), isNull);
      expect(WatchTogetherDeepLink.tryParse('luroka://live?channel=4.1'), isNull);
      expect(WatchTogetherDeepLink.tryParse('luroka://watch'), isNull);
      expect(WatchTogetherDeepLink.tryParse('luroka://watch?code='), isNull);
      expect(WatchTogetherDeepLink.tryParse('luroka://watch?code=K7MQ2'), isNull);
      expect(WatchTogetherDeepLink.tryParse('luroka://watch?code=K7MQ2X9'), isNull);
      // 0, 1, I, L and O never appear in room codes.
      expect(WatchTogetherDeepLink.tryParse('luroka://watch?code=K7MQ10'), isNull);
      expect(WatchTogetherDeepLink.tryParse('not a link'), isNull);
    });
  });

  group('room display state', () {
    _displayTest('the position estimate follows a playing room and stays within the media', (tester, world) async {
      final host = world.host();
      final guest = world.guest(copies: () => [_guestCopy]);
      await world.together(host, [guest]);
      final player = await world.hostPlays(host, _hostCopy);
      await world.until(() => host.roomPhase == owp.Phase.playing, 'the room plays');

      final duration = host.media!.durationMs;
      final position = host.roomPositionNow;
      expect(position, isNotNull);
      expect(position, inInclusiveRange(0, duration));

      await player.player.play();
      await world.until(() => guest.isConnected, 'the guest still follows');
      await tester.pump(const Duration(seconds: 5));
      final advanced = host.roomPositionNow!;
      expect(advanced, greaterThanOrEqualTo(position!));
      expect(advanced, lessThanOrEqualTo(duration));
    });

    _displayTest('artwork comes from the matched copy through its own server', (tester, world) async {
      final host = world.member('Anna', clientFor: (serverId) => serverId == watchHostServerId ? _ArtServer() : null);
      final guest = world.guest(copies: () => [_guestCopy]);
      await world.together(host, [guest]);
      await world.hostPlays(host, _hostCopy);
      await world.until(() => host.hasMedia, 'the room has media');

      final artwork = await host.resolveArtwork();
      expect(artwork, 'https://art.test/alien/thumb');
    });

    _displayTest('guests without a copy resolve artwork through the TMDb hook', (tester, world) async {
      final host = world.host();
      var lookups = 0;
      final guest = world.member(
        'Ben',
        tmdbPoster: (tmdbId, movie) async {
          lookups++;
          expect(tmdbId, '348');
          expect(movie, isTrue);
          return 'https://image.tmdb.org/t/p/w500/alien.jpg';
        },
      );
      await world.together(host, [guest]);
      await world.hostPlays(host, _hostCopy);
      await world.until(() => guest.hasMedia, 'the guest sees the media');

      // No match, no player: the guest has no copy of their own.
      expect(guest.roomCopy, isNull);
      final artwork = await guest.resolveArtwork();
      expect(lookups, 1, reason: 'one lookup per title');
      expect(artwork, 'https://image.tmdb.org/t/p/w500/alien.jpg');

      // The same title resolves from the cache without a second lookup.
      await guest.resolveArtwork();
      expect(lookups, 1);
    });

    _displayTest('without a TMDb hook a copy-less participant resolves nothing', (tester, world) async {
      final host = world.host();
      final guest = world.guest(copies: () => const []);
      await world.together(host, [guest]);
      await world.hostPlays(host, _hostCopy);
      await world.until(() => guest.hasMedia, 'the guest sees the media');

      expect(await guest.resolveArtwork(), isNull);
    });
  });
}

final _hostCopy = testMediaItem(
  id: 'alien',
  kind: MediaKind.movie,
  title: 'Alien',
  year: 1979,
  durationMs: 7020000,
  serverId: watchHostServerId,
  thumbPath: '/library/metadata/alien/thumb',
);

MediaItem get _guestCopy => watchMovie(id: 'guest-alien', serverId: watchGuestServerId);

/// The host's server, answering image URLs only.
final class _ArtServer implements MediaServerClient {
  @override
  ServerId get serverId => ServerId(watchHostServerId);

  @override
  MediaBackend get backend => MediaBackend.plex;

  @override
  String thumbnailUrl(String? path, {int? width, int? height, bool cover = true}) =>
      'https://art.test${path?.replaceAll('/library/metadata', '') ?? ''}';

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void _displayTest(String description, Future<void> Function(WidgetTester tester, WatchRoomHarness world) body) {
  testWidgets(description, (tester) async {
    final world = WatchRoomHarness(tester);
    try {
      await body(tester, world);
    } finally {
      await tester.pumpWidget(const SizedBox.shrink());
      await world.close();
    }
  });
}
