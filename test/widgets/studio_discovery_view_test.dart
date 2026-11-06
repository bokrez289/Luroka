import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/studio_discovery.dart';
import 'package:luroka/services/home_preview_controller.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/studio_discovery_view.dart';
import 'package:luroka/widgets/media_card.dart';

import '../test_helpers/prefs.dart';

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
    LocaleSettings.setLocaleSync(AppLocale.en);
    TvDetectionService.debugSetAppleTVOverride(true);
  });
  tearDown(() => TvDetectionService.debugSetAppleTVOverride(null));

  final items = List.generate(
    25,
    (i) => MediaItem.plex(
      id: '$i',
      kind: MediaKind.movie,
      title: 'Studio movie $i',
      year: 2025,
      summary: 'A story with a readable synopsis and enough detail to help choose a film.',
      rating: 9 - i / 10,
      addedAt: 100 + i,
      durationMs: 7200000,
    ),
  );

  Future<void> mount(
    WidgetTester tester, {
    Size size = const Size(960, 540),
    double scale = 1,
    VoidCallback? onBrowseAll,
    ValueChanged<MediaItem>? onOpen,
  }) async {
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final preview = HomePreviewController(resolveClient: (_) => null);
    preview.select(items.first, rowTitle: 'Studio');
    addTearDown(preview.dispose);
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(scale)),
            child: child!,
          ),
          home: Scaffold(
            body: StudioDiscoveryView(
              name: 'Studio',
              brand: null,
              items: items,
              discovery: StudioDiscovery(items),
              loading: false,
              failed: false,
              preview: preview,
              resolveClient: (_) => null,
              onSelect: (item) => preview.select(item, rowTitle: 'Studio'),
              onOpen: onOpen ?? (_) {},
              onRefresh: (_) {},
              onOverview: () {},
              onBrowseAll: onBrowseAll ?? () {},
              onRetry: () {},
              onBack: () {},
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets('remote traverses shelves, contracts hero, restores row memory and activates the selected title', (
    tester,
  ) async {
    MediaItem? opened;
    await mount(tester, onOpen: (item) => opened = item);
    final hero = find.byKey(const ValueKey('studio_landing_hero'));
    final expandedHeight = tester.getSize(hero).height;
    final initialPosterWidth = tester.getSize(find.byType(MediaCard).first).width;
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'studio_browse_all');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'hub_studio_recent');
    final compactHeight = tester.getSize(hero).height;
    expect(compactHeight, lessThan(expandedHeight));
    expect(tester.getSize(find.byType(MediaCard).first).width, greaterThan(initialPosterWidth));
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'hub_studio_rated');
    expect(tester.getSize(hero).height, lessThan(expandedHeight));
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'hub_studio_recent');
    expect(tester.getSize(hero).height, compactHeight);
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(opened?.id, '23'); // Recently added descending, second poster.
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'studio_browse_all');
    expect(tester.getSize(hero).height, expandedHeight);
    expect(tester.takeException(), isNull);
  });

  for (final (size, scale) in [
    (const Size(960, 540), 1.0),
    (const Size(960, 540), 1.5),
    (const Size(1280, 720), 1.0),
  ]) {
    testWidgets('landing fits $size at text scale $scale and opens Browse all', (tester) async {
      var browsed = false;
      await mount(tester, size: size, scale: scale, onBrowseAll: () => browsed = true);
      // Posters must fit on entry, while Browse all still owns focus; relying
      // on a later ensureVisible scroll hides the initial bottom clipping.
      final poster = tester.getRect(find.byType(MediaCard).first);
      expect(poster.bottom, lessThanOrEqualTo(size.height - 8));
      await tester.sendKeyEvent(LogicalKeyboardKey.enter);
      await tester.pumpAndSettle();
      expect(browsed, isTrue);
      expect(find.text(t.studios.mostWatched), findsNothing);
      expect(tester.takeException(), isNull);
    });
  }
}
