import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/widgets/series_season_browser.dart';
import '../test_helpers/media_items.dart';

void main() {
  testWidgets('rapid season browsing stays local, activates the preview, and exposes season actions', (tester) async {
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final key = GlobalKey<SeriesSeasonBrowserState>();
    final seasons = [
      for (var i = 1; i <= 20; i++)
        testMediaItem(
          id: 's$i',
          kind: MediaKind.season,
          title: 'Season $i',
          index: i,
          summary: 'A different story for season $i.',
          leafCount: i + 2,
          year: 2000 + i,
        ),
    ];
    final activated = <String>[];
    final highlighted = <String>[];
    var selected = seasons.first.id;
    var menus = 0;
    var ups = 0;
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: Scaffold(
            body: StatefulBuilder(
              builder: (context, setState) => SeriesSeasonBrowser(
                key: key,
                seasons: seasons,
                selectedId: selected,
                scale: 1,
                onActivate: (season) {
                  activated.add(season.id);
                  setState(() => selected = season.id);
                },
                onHighlighted: (season) {
                  highlighted.add(season.id);
                  setState(() => selected = season.id);
                },
                onNavigateUp: () => ups++,
                onFocus: () {},
                posterBuilder: (_, _) => const ColoredBox(color: Colors.blueGrey),
                decorateSeason: (_, child) => child,
                onSeasonMenu: (_) => menus++,
                episodeCount: (season) => season.leafCount,
              ),
            ),
          ),
        ),
      ),
    );
    key.currentState!.requestFocus();
    await tester.pumpAndSettle();
    for (var i = 0; i < 19; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    }
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'title_season:s20');
    expect(tester.widget<Text>(find.byKey(const ValueKey('series_season_heading'))).data, startsWith('Season 20 ·'));
    expect(activated, isEmpty, reason: 'highlighting seasons must not open the season page');
    expect(highlighted.last, 's20');
    expect(selected, 's20');
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(activated, ['s20']);
    expect(selected, 's20');
    await tester.sendKeyDownEvent(LogicalKeyboardKey.enter);
    await tester.pump(const Duration(milliseconds: 600));
    await tester.sendKeyUpEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(menus, 1);
    expect(activated, ['s20'], reason: 'a long select must not also open episodes');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pump();
    expect(ups, 1);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox.shrink());
  });
}
