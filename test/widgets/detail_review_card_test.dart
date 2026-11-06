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
  });
}

class _PreviewPlayer extends FakeSyncPlayer {
  final initialized = Completer<bool>();
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
    emitFileStarted();
  }
}
