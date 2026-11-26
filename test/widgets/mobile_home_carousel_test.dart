import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/theme/kids_style.dart';
import 'package:luroka/widgets/mobile_home_carousel.dart';
import 'package:luroka/widgets/optimized_media_image.dart';

import '../test_helpers/prefs.dart';

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
  });
  final items = [
    const MediaItem.plex(id: 'movie', kind: MediaKind.movie, title: 'A popular movie', year: 2026),
    const MediaItem.plex(id: 'show', kind: MediaKind.show, title: 'A new show', year: 2026),
    const MediaItem.plex(id: 'second', kind: MediaKind.movie, title: 'Another movie', year: 2025),
  ];

  Future<void> mount(
    WidgetTester tester, {
    ValueNotifier<bool>? active,
    bool reduceMotion = false,
    ValueChanged<MediaItem>? onPlay,
    ValueChanged<MediaItem>? onDetails,
    double textScale = 1,
    bool light = false,
    KidsStyle? kidsStyle,
  }) async {
    tester.view.physicalSize = const Size(360, 780);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final state = active ?? ValueNotifier(true);
    if (active == null) addTearDown(state.dispose);
    await tester.pumpWidget(
      MaterialApp(
        theme: monoTheme(light ? MonoPalette.lurokaPearl : MonoPalette.lurokaCoral),
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(disableAnimations: reduceMotion, textScaler: TextScaler.linear(textScale)),
          child: child!,
        ),
        home: Scaffold(
          body: SizedBox(
            height: 480,
            child: ValueListenableBuilder<bool>(
              valueListenable: state,
              builder: (_, visible, _) => MobileHomeCarousel(
                items: items,
                label: 'Popular in your library',
                active: visible,
                resolveClient: (_) => null,
                onPlay: onPlay ?? (_) {},
                onDetails: onDetails ?? (_) {},
                kidsStyle: kidsStyle,
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    addTearDown(() async {
      await tester.pumpWidget(const SizedBox.shrink());
    });
  }

  double page(WidgetTester tester) => tester.widget<PageView>(find.byType(PageView)).controller!.page!;

  testWidgets('phone spotlight size defaults compact and leaves tablet and kids sizing unchanged', (
    tester,
  ) async {
    late BuildContext context;
    tester.view.physicalSize = const Size(360, 780);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(MaterialApp(home: Builder(builder: (value) {
      context = value;
      return const SizedBox.shrink();
    })));
    expect(SettingsService.instance.read(SettingsService.phoneSpotlightSize), PhoneSpotlightSize.compact);
    expect(SettingsService.instance.read(SettingsService.phoneCinematicSpotlight), isTrue);
    double phone() => MobileHomeCarousel.heightFor(context, 360, availableHeight: 700);
    final compact = phone();
    final kids = MobileHomeCarousel.heightFor(context, 360, availableHeight: 700, kids: true);
    await SettingsService.instance.write(SettingsService.phoneSpotlightSize, PhoneSpotlightSize.standard);
    final standard = phone();
    await SettingsService.instance.write(SettingsService.phoneSpotlightSize, PhoneSpotlightSize.large);
    final large = phone();
    expect(compact, lessThan(standard));
    expect(standard, lessThan(large));
    expect(MobileHomeCarousel.heightFor(context, 360, availableHeight: 700, kids: true), kids);
    tester.view.physicalSize = const Size(768, 1024);
    await tester.pump();
    final tabletLarge = MobileHomeCarousel.heightFor(context, 768, availableHeight: 900);
    await SettingsService.instance.write(SettingsService.phoneSpotlightSize, PhoneSpotlightSize.compact);
    expect(MobileHomeCarousel.heightFor(context, 768, availableHeight: 900), tabletLarge);
  });

  for (final size in PhoneSpotlightSize.values) {
    for (final scale in [1.0, 1.5, 2.0]) {
      for (final cinematic in [false, true]) {
      testWidgets('phone ${size.name} cinematic=$cinematic fits a long title at text scale $scale', (tester) async {
        await SettingsService.instance.write(SettingsService.phoneCinematicSpotlight, cinematic);
        await SettingsService.instance.write(SettingsService.phoneSpotlightSize, size);
        tester.view.physicalSize = const Size(360, 780);
        tester.view.devicePixelRatio = 1;
        addTearDown(tester.view.reset);
        final item = items[1].copyWith(title: 'The Lord of the Rings: The Rings of Power');
        await tester.pumpWidget(
          MaterialApp(
            theme: monoTheme(MonoPalette.lurokaCoral),
            builder: (context, child) => MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(scale)),
              child: child!,
            ),
            home: Scaffold(
              body: Builder(
                builder: (context) => SizedBox(
                  height: MobileHomeCarousel.heightFor(context, 360, availableHeight: 700),
                  child: MobileHomeCarousel(
                    items: [item],
                    label: 'Trending',
                    active: true,
                    resolveClient: (_) => null,
                    onPlay: (_) {},
                    onDetails: (_) {},
                  ),
                ),
              ),
            ),
          ),
        );
        await tester.pumpAndSettle();
        expect(find.byKey(ValueKey('cinematic_feature_${item.globalKey}')), cinematic ? findsOneWidget : findsNothing);
        expect(find.byKey(ValueKey('mobile_feature_open_${item.globalKey}')), findsOneWidget);
        expect(tester.takeException(), isNull);
      });
      }
    }
  }

  testWidgets('swiping selects a new poster without playing; show and movie actions use their own target', (
    tester,
  ) async {
    MediaItem? played, opened;
    await mount(tester, onPlay: (item) => played = item, onDetails: (item) => opened = item);
    await tester.drag(find.byType(PageView), const Offset(-320, 0));
    await tester.pumpAndSettle();
    expect(page(tester), 1);
    expect(played, isNull);
    expect(opened, isNull);
    await tester.tap(find.byKey(ValueKey('mobile_feature_open_${items[1].globalKey}')));
    expect(opened?.id, 'show');
    await tester.drag(find.byType(PageView), const Offset(-320, 0));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('mobile_feature_open_${items[2].globalKey}')));
    expect(played?.id, 'second');
    expect(tester.takeException(), isNull);
  });

  testWidgets('auto rotation advances, pauses off-screen, resumes, and grants time after a swipe', (tester) async {
    await SettingsService.instance.write(SettingsService.homeSpotlightInterval, 12);
    final active = ValueNotifier(true);
    addTearDown(active.dispose);
    await mount(tester, active: active);
    await tester.pump(const Duration(seconds: 11));
    expect(page(tester), 0);
    await tester.pump(const Duration(seconds: 1));
    await tester.pumpAndSettle();
    expect(page(tester), 1);
    active.value = false;
    await tester.pump();
    await tester.pump(const Duration(seconds: 20));
    expect(page(tester), 1);
    active.value = true;
    await tester.pump();
    await tester.drag(find.byType(PageView), const Offset(-320, 0));
    await tester.pumpAndSettle();
    expect(page(tester), 2);
    await tester.pump(const Duration(seconds: 11));
    expect(page(tester), 2, reason: 'a manual swipe gets the configured reading interval');
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();
    expect(page(tester), 0, reason: 'rotation wraps around');
  });

  testWidgets('reduced motion keeps manual swipes but prevents automatic rotation', (tester) async {
    await mount(tester, reduceMotion: true);
    await tester.pump(const Duration(seconds: 30));
    expect(page(tester), 0);
    await tester.drag(find.byType(PageView), const Offset(-320, 0));
    await tester.pumpAndSettle();
    expect(page(tester), 1);
    await tester.pump(const Duration(seconds: 30));
    expect(page(tester), 1);
  });

  testWidgets('rotation setting changes apply while the carousel is open', (tester) async {
    await SettingsService.instance.write(SettingsService.homeSpotlightInterval, 12);
    await mount(tester);
    await SettingsService.instance.write(SettingsService.homeSpotlightAutoRotate, false);
    await tester.pump();
    await tester.pump(const Duration(seconds: 30));
    expect(page(tester), 0);
    await SettingsService.instance.write(SettingsService.homeSpotlightAutoRotate, true);
    await SettingsService.instance.write(SettingsService.homeSpotlightInterval, 20);
    await tester.pump();
    await tester.pump(const Duration(seconds: 19));
    expect(page(tester), 0);
    await tester.pump(const Duration(seconds: 1));
    await tester.pumpAndSettle();
    expect(page(tester), 1);
  });

  testWidgets('opening details pauses the carousel until the covering route closes', (tester) async {
    await mount(tester);
    final navigator = tester.state<NavigatorState>(find.byType(Navigator));
    navigator.push(MaterialPageRoute<void>(builder: (_) => const Scaffold(body: Text('Details'))));
    await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds: 20));
    final hiddenPages = tester.widget<PageView>(find.byType(PageView, skipOffstage: false));
    expect(hiddenPages.controller!.page, 0);
    navigator.pop();
    await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds: 15));
    await tester.pumpAndSettle();
    expect(page(tester), 1);
  });

  for (final light in [false, true]) {
    testWidgets('poster actions fit enlarged phone text in ${light ? 'light' : 'dark'} theme', (tester) async {
      await mount(tester, light: light, textScale: 1.5);
      expect(find.byType(PageView), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }

  for (final kids in [false, true]) {
    testWidgets('${kids ? 'kids' : 'adult'} hero shows uncropped poster above a separate caption panel', (
      tester,
    ) async {
      if (!kids) await SettingsService.instance.write(SettingsService.phoneCinematicSpotlight, false);
      await mount(tester, kidsStyle: kids ? const KidsStyle(maxAge: 7) : null);
      final poster = find.descendant(of: find.byType(PageView), matching: find.byType(OptimizedMediaImage)).first;
      expect(tester.widget<OptimizedMediaImage>(poster).fit, BoxFit.contain);
      final caption = find.byKey(ValueKey('mobile_feature_caption_${items[0].globalKey}'));
      expect(tester.getRect(caption).top, greaterThanOrEqualTo(tester.getRect(poster).bottom));
      expect(tester.getSize(poster).height, greaterThan(100));
      expect(tester.takeException(), isNull);
    });
  }

  for (final size in [const Size(768, 1024), const Size(1024, 768)]) {
    testWidgets('tablet spotlight is compact and actionable at $size', (tester) async {
      tester.view.physicalSize = size;
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      MediaItem? played;
      final movie = items.first.copyWith(summary: 'A story selected from your own library.');
      await tester.pumpWidget(
        MaterialApp(
          theme: monoTheme(MonoPalette.lurokaCoral),
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(disableAnimations: true, textScaler: const TextScaler.linear(1.6)),
            child: child!,
          ),
          home: Scaffold(
            body: Builder(
              builder: (context) => SizedBox(
                height: MobileHomeCarousel.heightFor(context, size.width, availableHeight: size.height - 56),
                child: MobileHomeCarousel(
                  items: [movie],
                  label: 'Popular',
                  active: true,
                  resolveClient: (_) => null,
                  onPlay: (item) => played = item,
                  onDetails: (_) {},
                ),
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('tablet_home_carousel')), findsOneWidget);
      expect(find.text(movie.summary!), findsOneWidget);
      expect(tester.getSize(find.byType(MobileHomeCarousel)).height, lessThan(size.height * .7));
      await tester.tap(find.byKey(ValueKey('mobile_feature_open_${movie.globalKey}')));
      expect(played?.id, movie.id);
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('rotating a tablet keeps the selected spotlight title', (tester) async {
    tester.view.physicalSize = const Size(768, 1024);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(
      MaterialApp(
        theme: monoTheme(MonoPalette.lurokaCoral),
        builder: (context, child) =>
            MediaQuery(data: MediaQuery.of(context).copyWith(disableAnimations: true), child: child!),
        home: Scaffold(
          body: SizedBox(
            height: 420,
            child: MobileHomeCarousel(
              items: items,
              label: 'Popular',
              active: true,
              resolveClient: (_) => null,
              onPlay: (_) {},
              onDetails: (_) {},
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.drag(find.byType(PageView), const Offset(-600, 0));
    await tester.pumpAndSettle();
    expect(page(tester), 1);
    tester.view.physicalSize = const Size(1024, 768);
    await tester.pumpAndSettle();
    expect(page(tester), 1);
    expect(find.byKey(ValueKey('mobile_feature_title_${items[1].globalKey}')), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
