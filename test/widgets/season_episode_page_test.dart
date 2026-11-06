import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/season_labels.dart';
import 'package:luroka/widgets/season_episode_page.dart';
import '../test_helpers/media_items.dart';

void main() {
  test('season identity never uses the show display title', () {
    final season = testMediaItem(
      kind: MediaKind.season,
      title: 'The Final Chapter',
      index: 3,
      parentTitle: 'The Series',
    );
    expect(seasonLabel(season), 'The Final Chapter');
    expect(seasonLabel(season.copyWith(title: 'The Series')), 'Season 3');
  });

  testWidgets('season list keeps one activation per row and pages before the loaded end', (tester) async {
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final episodes = [
      for (var i = 1; i <= 8; i++)
        testMediaItem(
          id: 'e$i',
          kind: MediaKind.episode,
          title: 'Episode $i',
          index: i,
          parentIndex: 2,
          durationMs: 1800000,
        ),
    ];
    final plays = <String>[];
    var menus = 0;
    var more = 0;
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: SeasonEpisodePage(
            season: testMediaItem(kind: MediaKind.season, title: 'Season 2', parentTitle: 'The Series'),
            episodes: episodes,
            onBack: () {},
            onPlay: (e) => plays.add(e.id),
            onLoadMore: () => more++,
            onRetry: () {},
            posterBuilder: (_) => const ColoredBox(color: Colors.grey),
            thumbnailBuilder: (_, _) => null,
            decorateEpisode: (_, child) => child,
            onEpisodeMenu: (_) => menus++,
            loading: false,
            failed: false,
            hasMore: true,
            hideSpoilers: true,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'season_episode:e1');
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(plays, ['e1']);
    await tester.sendKeyDownEvent(LogicalKeyboardKey.enter);
    await tester.pump(const Duration(milliseconds: 600));
    await tester.sendKeyUpEvent(LogicalKeyboardKey.enter);
    expect(menus, 1);
    expect(plays, ['e1']);
    for (var i = 0; i < 2; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pumpAndSettle();
    }
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'season_episode:e8');
    expect(more, greaterThan(0));
    final label = t.dashboard.episodeLabel(season: 2, episode: 8);
    final rect = tester.getRect(find.descendant(of: find.byType(GridView), matching: find.text(label)));
    expect(find.text('Episode 8'), findsNothing);
    expect(rect.top, greaterThan(0));
    expect(rect.bottom, lessThan(720));
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox.shrink());
  });
}
