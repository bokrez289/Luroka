import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/widgets/detail_review_card.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/screens/trailer_player_screen.dart';
import 'package:luroka/services/playback_coordinator.dart';
import 'package:luroka/mpv/mpv.dart';
import '../test_helpers/watch_together_fakes.dart';

void main() {
  tearDown(() => TvDetectionService.debugSetAppleTVOverride(null));

  testWidgets('preview waits for native initialization and reveals its native video plane after the first frame', (
    tester,
  ) async {
    final player = _PreviewPlayer();
    const channel = 'dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle';
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMessageHandler(
      channel,
      (_) async => const StandardMessageCodec().encodeMessage([null]),
    );
    addTearDown(
      () => TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMessageHandler(channel, null),
    );
    await tester.pumpWidget(
      MaterialApp(
        home: TrailerPlayerScreen(
          url: 'https://example.com/trailer.mp4',
          title: 'Trailer',
          playerFactory: () => player,
        ),
      ),
    );
    await tester.pump();
    expect(find.byType(Video), findsNothing);
    player.initialized.complete(true);
    await tester.pump();
    await tester.pump();
    expect(find.byType(Video), findsOneWidget);
    expect(tester.widget<Scaffold>(find.byType(Scaffold)).backgroundColor, Colors.transparent);
    player.emitPlaybackRestart();
    await tester.pump();
    expect(tester.widget<Video>(find.byType(Video)).hasFirstFrame!.value, isTrue);
    expect(find.byType(CircularProgressIndicator), findsNothing);
    await tester.runAsync(() => tester.pumpWidget(const SizedBox()));
    await tester.pumpAndSettle();
    await tester.runAsync(() => PlaybackCoordinator.instance.shutdownVideo());
    expect(player.disposed, isTrue);
    expect(tester.takeException(), isNull);
  });

  testWidgets('trailer controls hide while playing and wake without pausing on TV select', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    final player = _PreviewPlayer();
    const channel = 'dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle';
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMessageHandler(
      channel,
      (_) async => const StandardMessageCodec().encodeMessage([null]),
    );
    addTearDown(
      () => TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMessageHandler(channel, null),
    );
    await tester.pumpWidget(
      MaterialApp(
        home: TrailerPlayerScreen(
          url: 'https://example.com/trailer.mp4',
          title: 'Trailer',
          playerFactory: () => player,
        ),
      ),
    );
    player.initialized.complete(true);
    await tester.pump();
    await tester.pump();
    player.emitPlaying(true);
    player.emitPlaybackRestart();
    await tester.pump();
    await tester.pump(const Duration(seconds: 4));
    await tester.pump(const Duration(milliseconds: 300));
    expect(tester.widget<AnimatedOpacity>(find.byKey(const ValueKey('trailer-controls'))).opacity, 0);
    expect(tester.widget<AnimatedOpacity>(find.byKey(const ValueKey('trailer-header'))).opacity, 0);
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pump();
    expect(tester.widget<AnimatedOpacity>(find.byKey(const ValueKey('trailer-controls'))).opacity, 1);
    expect(player.commandLog, isNot(contains('pause')));
    await tester.pump(const Duration(seconds: 4));
    await tester.pump(const Duration(milliseconds: 300));
    expect(tester.widget<AnimatedOpacity>(find.byKey(const ValueKey('trailer-controls'))).opacity, 0);
    await tester.tapAt(const Offset(100, 100));
    await tester.pump();
    expect(tester.widget<AnimatedOpacity>(find.byKey(const ValueKey('trailer-controls'))).opacity, 1);
    player.emitPlaying(false);
    await tester.pump();
    await tester.pump(const Duration(seconds: 5));
    expect(tester.widget<AnimatedOpacity>(find.byKey(const ValueKey('trailer-controls'))).opacity, 1);
    await tester.runAsync(() => tester.pumpWidget(const SizedBox()));
    await tester.pumpAndSettle();
    await tester.runAsync(() => PlaybackCoordinator.instance.shutdownVideo());
  });

  for (final failure in ['resolve', 'open', 'error', 'timeout']) {
    testWidgets('YouTube $failure failure tries embedded playback once', (tester) async {
      final player = _PreviewPlayer()..failOpen = failure == 'open';
      player.initialized.complete(true);
      const wakelock = 'dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle';
      final messenger = TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
      messenger.setMockMessageHandler(wakelock, (_) async => const StandardMessageCodec().encodeMessage([null]));
      const trailers = MethodChannel('com.luroka/trailers');
      final embedded = Completer<bool>();
      var embeddedCalls = 0;
      var closeCalls = 0;
      messenger.setMockMethodCallHandler(trailers, (call) async {
        if (call.method == 'resolve') {
          if (failure == 'resolve') throw PlatformException(code: 'unavailable');
          return {'url': 'https://example.com/expired-trailer.mp4'};
        }
        if (call.method == 'openEmbedded') {
          embeddedCalls++;
          expect(call.arguments['key'], 'abcdefghijk');
          if (failure != 'resolve') expect(player.disposed, isTrue);
          return embedded.future;
        }
        if (call.method == 'closeEmbedded') {
          closeCalls++;
          if (!embedded.isCompleted) embedded.complete(true);
        }
        return null;
      });
      addTearDown(() {
        messenger.setMockMethodCallHandler(trailers, null);
        messenger.setMockMessageHandler(wakelock, null);
      });
      await tester.pumpWidget(
        MaterialApp(
          home: TrailerPlayerScreen(
            url: 'https://www.youtube.com/watch?v=abcdefghijk',
            title: 'Trailer',
            playerFactory: () => player,
          ),
        ),
      );
      await tester.pump();
      await tester.pump();
      if (failure == 'error') {
        player.emitError(const PlayerError('HTTP 403'));
        player.emitError(const PlayerError('Unable to open stream'));
      }
      if (failure == 'timeout') await tester.pump(const Duration(seconds: 30));
      // Fake stream disposal completes on the real event loop.
      await tester.runAsync(() async {
        await Future<void>.delayed(Duration.zero);
      });
      await tester.pump();
      expect(embeddedCalls, 1);
      expect(find.text('Open original video'), findsNothing);
      expect(find.byType(Video), findsNothing);
      if (failure == 'error') {
        // Final embedded failure must show the ordinary external fallback,
        // never retry the same session indefinitely.
        embedded.complete(false);
        await tester.pump();
        expect(find.text('Open original video'), findsOneWidget);
        expect(embeddedCalls, 1);
      }
      await tester.runAsync(() => tester.pumpWidget(const SizedBox()));
      await tester.pumpAndSettle();
      await tester.runAsync(() => PlaybackCoordinator.instance.shutdownVideo());
      if (failure != 'error') expect(closeCalls, 1);
      expect(tester.takeException(), isNull);
    }, variant: TargetPlatformVariant.only(TargetPlatform.android));
  }

  testWidgets('TV review reader scrolls with the remote and Back restores its opener', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    final item = MediaItem(
      id: 'review',
      backend: MediaBackend.jellyfin,
      kind: MediaKind.clip,
      title: 'Actual reviewer',
      summary: List.filled(100, 'A long, attributed written review.').join('\n'),
      raw: {'detailReview': true, 'reviewSource': 'TMDb', 'reviewRating': 8.0},
    );
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Builder(
            builder: (context) => TextButton(
              autofocus: true,
              onPressed: () => unawaited(showDetailReview(context, item)),
              child: const Text('Read'),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Read'));
    await tester.pumpAndSettle();
    expect(find.text('Actual reviewer'), findsOneWidget);
    expect(find.text('TMDb · 8.0/10'), findsOneWidget);
    final scrollable = tester.state<ScrollableState>(find.byType(Scrollable).last);
    expect(scrollable.position.pixels, 0);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pump();
    expect(scrollable.position.pixels, greaterThan(0));
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    expect(find.byType(Dialog), findsNothing);
    expect(find.text('Read'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('unsupported online previews offer fallback and retire their session on Back', (tester) async {
    // Linux has no Android extractor. The failure must be an ordinary preview
    // fallback rather than creating a library playback/reporting session.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Builder(
            builder: (context) => TextButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) =>
                      const TrailerPlayerScreen(url: 'https://www.youtube.com/watch?v=abcdefghijk', title: 'Trailer'),
                ),
              ),
              child: const Text('Open'),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    expect(find.text('Open original video'), findsOneWidget);
    expect(PlaybackCoordinator.instance.hasVideoSession, isTrue);
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    expect(find.byType(TrailerPlayerScreen), findsNothing);
    expect(PlaybackCoordinator.instance.hasVideoSession, isFalse);
    expect(tester.takeException(), isNull);
  }, variant: TargetPlatformVariant.only(TargetPlatform.linux));
}

class _PreviewPlayer extends FakeSyncPlayer {
  final initialized = Completer<bool>();
  bool failOpen = false;
  @override
  Future<bool> requestAudioFocus() => initialized.future;
  @override
  Future<void> abandonAudioFocus() async {}
  @override
  Future<void> open(
    Media media, {
    bool play = true,
    bool isLive = false,
    List<SubtitleTrack>? externalSubtitles,
    Duration? timelineDuration,
    Duration timelineOffset = Duration.zero,
  }) async {
    if (failOpen) throw StateError('Expired trailer stream');
    emitFileStarted();
  }
}
