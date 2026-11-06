import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/navigation/navigation_tabs.dart';
import 'package:luroka/services/device_performance.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/widgets/tv_navigation_dock.dart';

void main() {
  testWidgets('Croatian Otkrij label and its descender fit within the TV dock viewport', (tester) async {
    await tester.runAsync(() => LocaleSettings.setLocale(AppLocale.hr));
    addTearDown(() => LocaleSettings.setLocaleSync(AppLocale.en));
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: Scaffold(
            body: SizedBox(
              height: 64,
              child: TvNavigationDock(
                tabs: NavigationTab.getVisibleTabs(isOffline: false, hasExplore: true),
                selected: NavigationTabId.discover,
                onSelected: (_) {},
                onContent: () {},
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    final label = find.text('Otkrij');
    expect(label, findsOneWidget);
    final viewport = find.ancestor(of: label, matching: find.byType(SingleChildScrollView)).first;
    expect(tester.getBottomLeft(label).dy, lessThan(tester.getBottomLeft(viewport).dy - 2));
    expect(tester.takeException(), isNull);
  });
  testWidgets('Libraries opens the chooser on a short Select; Down enters the current destination', (tester) async {
    final key = GlobalKey<TvNavigationDockState>();
    var chooser = 0;
    var content = 0;
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          home: Scaffold(
            body: SizedBox(
              height: 72,
              child: TvNavigationDock(
                key: key,
                tabs: NavigationTab.getVisibleTabs(isOffline: false),
                selected: NavigationTabId.libraries,
                onSelected: (_) {},
                onContent: () => content++,
                onLibraryPicker: () => chooser++,
              ),
            ),
          ),
        ),
      ),
    );
    key.currentState!.focusActiveItem();
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.expand_more_rounded), findsOneWidget);
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    expect(chooser, 1);
    expect(content, 0);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    expect(content, 1);
    expect(tester.takeException(), isNull);
  });
  testWidgets('TV dock focus moves without activating; Select and Down enter the requested destination', (
    tester,
  ) async {
    final key = GlobalKey<TvNavigationDockState>();
    final selected = <NavigationTabId>[];
    var content = 0;
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: Scaffold(
            body: SizedBox(
              height: 72,
              child: TvNavigationDock(
                key: key,
                tabs: NavigationTab.getVisibleTabs(isOffline: false),
                selected: NavigationTabId.discover,
                onSelected: selected.add,
                onContent: () => content++,
              ),
            ),
          ),
        ),
      ),
    );
    key.currentState!.focusActiveItem();
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'tv_dock_discover');
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'tv_dock_libraries');
    expect(selected, isEmpty);
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    expect(selected, [NavigationTabId.libraries]);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    expect(selected.last, NavigationTabId.libraries);
    key.currentState!.focusActiveItem(home: true);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    expect(content, 1);
    expect(tester.takeException(), isNull);
  });
  testWidgets('wide TV dock shows the Luroka wordmark', (tester) async {
    tester.view.physicalSize = const Size(1280, 600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: Scaffold(
            body: SizedBox(
              height: 72,
              child: TvNavigationDock(
                tabs: NavigationTab.getVisibleTabs(isOffline: false),
                selected: NavigationTabId.discover,
                onSelected: (_) {},
                onContent: () {},
              ),
            ),
          ),
        ),
      ),
    );
    expect(find.text('LUROKA'), findsOneWidget);
    expect(find.text('CINEMA'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('small TV viewport scrolls destinations without overflow, including reduced mode', (tester) async {
    DevicePerformance.debugReset(autoReduced: true);
    addTearDown(DevicePerformance.debugReset);
    tester.view.physicalSize = const Size(800, 600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final key = GlobalKey<TvNavigationDockState>();
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          home: Scaffold(
            body: SizedBox(
              height: 72,
              child: TvNavigationDock(
                key: key,
                tabs: NavigationTab.getVisibleTabs(isOffline: false, hasExplore: true, hasLiveTv: true),
                selected: NavigationTabId.settings,
                onSelected: (_) {},
                onContent: () {},
              ),
            ),
          ),
        ),
      ),
    );
    key.currentState!.focusActiveItem();
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'tv_dock_settings');
    expect(tester.takeException(), isNull);
  });

  testWidgets('the selection pill measures under the selected tab and follows it', (tester) async {
    tester.view.physicalSize = const Size(1280, 600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    Widget dock(NavigationTabId selected) => InputModeTracker(
      child: MaterialApp(
        theme: monoTheme(MonoPalette.dark),
        home: Scaffold(
          body: SizedBox(
            height: 72,
            child: TvNavigationDock(
              tabs: NavigationTab.getVisibleTabs(isOffline: false),
              selected: selected,
              onSelected: (_) {},
              onContent: () {},
            ),
          ),
        ),
      ),
    );

    await tester.pumpWidget(dock(NavigationTabId.discover));
    await tester.pumpAndSettle();

    final pillFinder = find.byKey(const Key('tv_dock_selection_pill'));
    expect(pillFinder, findsOneWidget);
    final discoverPillLeft = tester.getTopLeft(pillFinder).dx;

    // Re-select a later tab: the pill glides to sit under it.
    await tester.pumpWidget(dock(NavigationTabId.settings));
    await tester.pumpAndSettle();
    expect(pillFinder, findsOneWidget);
    final settingsPillLeft = tester.getTopLeft(pillFinder).dx;
    expect(settingsPillLeft, greaterThan(discoverPillLeft));
    expect(tester.takeException(), isNull);
  });
}
