import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';
import 'package:luroka/connection/connection_registry.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/profiles/active_profile_provider.dart';
import 'package:luroka/profiles/plex_home_service.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/profile_avatar.dart';
import 'package:luroka/profiles/profile_connection_registry.dart';
import 'package:luroka/profiles/profile_registry.dart';
import 'package:luroka/screens/profile/family_settings_screen.dart';
import 'package:luroka/screens/profile/kids_profile_screen.dart';
import 'package:luroka/screens/profile/kids_settings_screen.dart';
import 'package:luroka/screens/profile/parental_controls_screen.dart';
import 'package:luroka/screens/profile/pin_entry_dialog.dart';
import 'package:luroka/screens/profile/profile_detail_screen.dart';
import 'package:luroka/screens/settings/screen_time_screen.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/services/kids_profile_service.dart';
import 'package:luroka/services/screen_time_service.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/media/media_kind.dart';
import '../../test_helpers/media_items.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/dialog_action_button.dart';
import '../../test_helpers/prefs.dart';
import '../../test_helpers/profile_stack.dart';

void main() {
  setUpAll(() => initializeDateFormatting('en'));
  final kids = KidsProfileService.instance;
  final alex = Profile.local(id: 'alex', displayName: 'Alex', createdAt: DateTime(2026));
  final mia = Profile.local(id: 'mia', displayName: 'Mia', createdAt: DateTime(2026), sortOrder: 1);
  setUp(() async {
    resetSharedPreferencesForTest();
    kids.resetForTesting();
    LocaleSettings.setLocaleSync(AppLocale.en);
    await kids.initialize();
    await StorageService.getInstance();
    await SettingsService.getInstance();
  });
  tearDown(() {
    kids.resetForTesting();
    TvDetectionService.debugSetAppleTVOverride(null);
  });

  Future<ProfileStack> stack(WidgetTester tester, {List<Profile>? people}) async => (await tester.runAsync(() async {
    final value = await ProfileStack.create();
    addTearDown(() => tester.runAsync(value.dispose));
    for (final profile in people ?? [alex, mia]) {
      await value.profiles.upsert(profile);
    }
    await value.storage.setActiveProfileId(alex.id);
    await value.active.initialize();
    return value;
  }))!;

  Future<void> pump(
    WidgetTester tester,
    ProfileStack value, {
    Widget? page,
    FocusNode? firstFocus,
    double textScale = 1,
  }) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<ActiveProfileProvider>.value(value: value.active),
          Provider<ProfileRegistry>.value(value: value.profiles),
          Provider<ProfileConnectionRegistry>.value(value: value.profileConnections),
          Provider<ConnectionRegistry>.value(value: value.connections),
          Provider<PlexHomeService>.value(value: value.plexHome),
        ],
        child: InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            builder: (context, child) => MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(textScale)),
              child: child!,
            ),
            home: page ?? FamilySettingsScreen(firstFocus: firstFocus),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  Future<void> bounded(WidgetTester tester) async {
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));
    await tester.pump(const Duration(milliseconds: 400));
  }

  for (final (size, scale) in [
    (const Size(320, 640), 2.0),
    (const Size(960, 540), 1.0),
    (const Size(1920, 1080), 1.0),
  ]) {
    testWidgets('family fits $size at text scale $scale with accurate roles and no false avatar locks', (tester) async {
      tester.view.physicalSize = size;
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      TvDetectionService.debugSetAppleTVOverride(size.width >= 960);
      await kids.setParentPin('1234');
      await kids.setChild(mia.id, parentId: alex.id, maxAge: 7);
      final value = await stack(tester);
      await pump(tester, value, textScale: scale);
      expect(find.text('${t.family.peopleCount(n: 2)} · ${t.family.kidsCount(n: 1)}'), findsOneWidget);
      expect(find.byType(FamilyProfileTile), findsNWidgets(2));
      expect(tester.widget<FamilyProfileTile>(find.byType(FamilyProfileTile).first).profile.id, alex.id);
      expect(
        tester.widgetList<ProfileAvatar>(find.byType(ProfileAvatar)).every((avatar) => !avatar.showLockBadge),
        isTrue,
      );
      expect(
        find.text(t.family.upToAge(age: 7), findRichText: true),
        findsNothing,
        reason: 'age is part of the person’s role line rather than an isolated duplicate',
      );
      expect(find.textContaining(t.family.upToAge(age: 7)), findsOneWidget);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
    });
  }

  testWidgets('family settings exposes profile startup and Kids exit controls', (tester) async {
    await kids.setParentPin('1234');
    await kids.setChild(mia.id, parentId: alex.id, maxAge: 7);
    final value = await stack(tester);
    await pump(tester, value);
    expect(find.byKey(const ValueKey('family-auto-login')), findsOneWidget);
    expect(find.byKey(const ValueKey('family-kids-exit')), findsOneWidget);
    await tester.ensureVisible(find.byKey(const ValueKey('family-kids-exit')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('family-kids-exit')));
    await tester.pumpAndSettle();
    expect(find.byType(PinEntryDialog), findsOneWidget);
    expect(SettingsService.instance.read(SettingsService.kidsAllowExitWithoutParentPin), isFalse);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('add person has explicit adult/child choices and does not switch the active identity', (tester) async {
    final value = await stack(tester, people: [alex]);
    await pump(tester, value);
    await tester.tap(find.text(t.family.addPerson));
    await tester.pumpAndSettle();
    expect(find.text(t.family.adultTeen), findsOneWidget);
    expect(find.text(t.family.child), findsOneWidget);
    await tester.tap(find.text(t.family.child));
    await bounded(tester);
    expect(find.byType(KidsProfileScreen), findsOneWidget);
    expect(value.active.activeId, alex.id);
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump(const Duration(milliseconds: 100));
  });

  testWidgets('TV remote enters People and navigates profile rows without switching identity', (tester) async {
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    TvDetectionService.debugSetAppleTVOverride(true);
    final value = await stack(tester);
    final first = FocusNode(debugLabel: 'FamilySwitch');
    addTearDown(first.dispose);
    await pump(tester, value, firstFocus: first);
    first.requestFocus();
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    FocusNode row() => tester
        .widget<ListTile>(
          find.descendant(of: find.byKey(ValueKey('family_profile_${alex.id}')), matching: find.byType(ListTile)).first,
        )
        .focusNode!;
    expect(row().hasFocus, isTrue);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    final second = tester
        .widget<ListTile>(
          find.descendant(of: find.byKey(ValueKey('family_profile_${mia.id}')), matching: find.byType(ListTile)).first,
        )
        .focusNode!;
    expect(second.hasFocus, isTrue);
    expect(value.active.activeId, alex.id);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(row().hasFocus, isTrue);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump(const Duration(milliseconds: 100));
  });

  testWidgets('clearing kids history is confirm-first and Cancel preserves recorded activity', (tester) async {
    final value = await stack(tester);
    await kids.setParentPin('1234');
    await kids.setChild(mia.id, parentId: alex.id, maxAge: 7);
    kids.selectProfile(mia.id);
    await kids.recordPlayback(
      testMediaItem(id: 'watched', kind: MediaKind.movie, title: 'Watched', serverId: 'server'),
    );
    kids.selectProfile(alex.id);
    final before = kids.viewingExclusionsFor(mia.id);
    expect(before, isNotEmpty);
    await pump(tester, value, page: const ParentalControlsScreen());
    await tester.scrollUntilVisible(find.text(t.kids.clearHistory), 200, scrollable: find.byType(Scrollable).first);
    await tester.ensureVisible(find.text(t.kids.clearHistory));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.kids.clearHistory));
    await tester.pumpAndSettle();
    expect(find.text(t.family.clearHistoryConfirm), findsOneWidget);
    expect(find.byType(PinEntryDialog), findsNothing);
    await tester.tap(find.widgetWithText(DialogActionButton, t.common.cancel));
    await tester.pumpAndSettle();
    expect(kids.viewingExclusionsFor(mia.id), before);
    expect(tester.takeException(), isNull);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('managing a protected person checks their Profile PIN and cancellation leaves the family intact', (
    tester,
  ) async {
    final protected = Profile.local(
      id: mia.id,
      displayName: mia.displayName,
      createdAt: DateTime(2026),
      pinHash: computePinHash('1234'),
    );
    final value = await stack(tester, people: [alex, protected]);
    await pump(tester, value);
    await tester.tap(find.byKey(ValueKey('family_profile_${mia.id}')));
    await bounded(tester);
    expect(find.byType(PinEntryDialog), findsOneWidget);
    expect(find.byType(ProfileDetailScreen), findsNothing);
    await tester.enterText(find.byType(TextField), '9999');
    await bounded(tester);
    expect(find.text(t.profiles.incorrectPinTryAgain), findsOneWidget);
    await tester.tap(find.text(t.common.cancel));
    await bounded(tester);
    expect(find.byType(PinEntryDialog), findsNothing);
    expect(value.active.activeId, alex.id);
    expect(find.byType(FamilyProfileTile), findsNWidgets(2));
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('missing Parent PIN offers setup rather than prompting for a nonexistent PIN', (tester) async {
    final value = await stack(tester);
    await tester.runAsync(() async {
      final prefs = await BaseSharedPreferencesService.sharedCache();
      await prefs.setString(
        'luroka_kids_profiles_v1',
        jsonEncode({
          'children': {
            mia.id: {'parentId': alex.id, 'maxAge': 7},
          },
        }),
      );
      kids.resetForTesting();
      await kids.initialize();
      kids.selectProfile(alex.id);
    });
    await pump(tester, value, page: const ParentalControlsScreen());
    expect(find.text(t.family.missingPin), findsOneWidget);
    await tester.tap(find.widgetWithText(FilledButton, t.kids.setParentPin));
    await tester.pumpAndSettle();
    expect(find.byType(PinEntryDialog), findsNothing);
    await tester.tap(find.widgetWithText(DialogActionButton, t.kids.setParentPin));
    await bounded(tester);
    expect(find.byType(PinEntryDialog), findsOneWidget);
    await tester.enterText(find.byType(TextField), '1234');
    await bounded(tester);
    await tester.enterText(find.byType(TextField), '1234');
    await bounded(tester);
    expect(kids.hasParentPin, isTrue);
    expect(kids.verifyParentPin('1234'), isTrue);
    expect(value.active.activeId, alex.id);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('a kids session cannot mount the adult family hub', (tester) async {
    final value = await stack(tester);
    await kids.setParentPin('1234');
    await kids.setChild(mia.id, parentId: alex.id, maxAge: 7);
    kids.selectProfile(mia.id);
    await pump(tester, value);
    expect(find.byType(KidsSettingsScreen), findsOneWidget);
    expect(find.byType(FamilyHero), findsNothing);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('per-person Today chips and PIN-gated per-person statistics rows', (tester) async {
    final value = await stack(tester);
    await kids.setParentPin('1234');
    await kids.setChild(mia.id, parentId: alex.id, maxAge: 7);
    final service = ScreenTimeService(database: value.db, profileId: alex.id);
    addTearDown(service.dispose);
    final today = localDateKey(DateTime.now());
    await tester.runAsync(() async {
      await value.db.addScreenTime(profileId: alex.id, localDate: today, durationMs: 45 * 60000, updatedAt: 1);
      await value.db.addScreenTime(profileId: mia.id, localDate: today, durationMs: 20 * 60000, updatedAt: 1);
    });

    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<ActiveProfileProvider>.value(value: value.active),
          Provider<ProfileRegistry>.value(value: value.profiles),
          Provider<ProfileConnectionRegistry>.value(value: value.profileConnections),
          Provider<ConnectionRegistry>.value(value: value.connections),
          Provider<PlexHomeService>.value(value: value.plexHome),
          Provider<ScreenTimeService>.value(value: service),
        ],
        child: InputModeTracker(
          child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: FamilySettingsScreen()),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // People tiles carry per-person Today chips, kids included.
    expect(find.textContaining('${t.screenTime.today} 45 min'), findsWidgets);
    expect(find.textContaining('${t.screenTime.today} 20 min'), findsNWidgets(2));
    // The linked child gets a PIN-gated statistics entry.
    expect(find.text(t.family.namedActivity(name: mia.displayName)), findsOneWidget);
    expect(find.text(t.family.namedActivity(name: alex.displayName)), findsOneWidget);
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump(const Duration(milliseconds: 100));
  });

  testWidgets('activity is limited to the active adult and their linked child', (tester) async {
    final child = Profile.local(id: 'child', displayName: 'Child', createdAt: DateTime(2026));
    final otherChild = Profile.local(id: 'other-child', displayName: 'Other child', createdAt: DateTime(2026));
    final value = await stack(tester, people: [alex, mia, child, otherChild]);
    await kids.setParentPin('1234');
    await kids.setChild(child.id, parentId: alex.id, maxAge: 7);
    await kids.setChild(otherChild.id, parentId: mia.id, maxAge: 7);
    final service = ScreenTimeService(database: value.db, profileId: alex.id);
    addTearDown(service.dispose);
    final today = localDateKey(DateTime.now());
    await tester.runAsync(() async {
      for (final (id, minutes) in [(alex.id, 11), (mia.id, 22), (child.id, 33), (otherChild.id, 44)]) {
        await value.db.addScreenTime(profileId: id, localDate: today, durationMs: minutes * 60000, updatedAt: 1);
      }
    });
    await tester.pumpWidget(MultiProvider(providers: [
      ChangeNotifierProvider<ActiveProfileProvider>.value(value: value.active),
      Provider<ProfileRegistry>.value(value: value.profiles),
      Provider<ProfileConnectionRegistry>.value(value: value.profileConnections),
      Provider<ConnectionRegistry>.value(value: value.connections),
      Provider<PlexHomeService>.value(value: value.plexHome),
      Provider<ScreenTimeService>.value(value: service),
    ], child: InputModeTracker(child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: const FamilySettingsScreen()))));
    await tester.pumpAndSettle();
    expect(find.byType(FamilyProfileTile), findsNWidgets(4));
    expect(find.text(t.family.namedActivity(name: alex.displayName)), findsOneWidget);
    expect(find.text(t.family.namedActivity(name: child.displayName)), findsOneWidget);
    expect(find.text(t.family.namedActivity(name: mia.displayName)), findsNothing);
    expect(find.text(t.family.namedActivity(name: otherChild.displayName)), findsNothing);
    expect(find.textContaining('${t.screenTime.today} 22 min'), findsNothing);
    expect(find.textContaining('${t.screenTime.today} 44 min'), findsNothing);
    expect(find.textContaining('${t.screenTime.today} 33 min'), findsWidgets);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('direct history screen denies another adult and follows child ownership changes', (tester) async {
    final child = Profile.local(id: 'child', displayName: 'Child', createdAt: DateTime(2026));
    final value = await stack(tester, people: [alex, mia, child]);
    await kids.setParentPin('1234');
    await kids.setChild(child.id, parentId: alex.id, maxAge: 7);
    final service = ScreenTimeService(database: value.db, profileId: alex.id);
    addTearDown(service.dispose);
    final today = localDateKey(DateTime.now());
    await tester.runAsync(() async {
      await value.db.addScreenTime(profileId: child.id, localDate: today, durationMs: 330000, updatedAt: 1);
      await value.db.addScreenTime(profileId: mia.id, localDate: today, durationMs: 220000, updatedAt: 1);
    });
    Widget page(String target) => MultiProvider(providers: [
      ChangeNotifierProvider<ActiveProfileProvider>.value(value: value.active),
      Provider<ScreenTimeService>.value(value: service),
    ], child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: ScreenTimeScreen(profileId: target)));
    await tester.pumpWidget(page(mia.id));
    await tester.pumpAndSettle();
    expect(find.text(t.family.activityUnavailable), findsOneWidget);
    await tester.pumpWidget(page(child.id));
    await tester.pumpAndSettle();
    expect(find.text(t.family.activityUnavailable), findsNothing);
    await kids.setChild(child.id, parentId: mia.id, maxAge: 7);
    await tester.pumpAndSettle();
    expect(find.text(t.family.activityUnavailable), findsOneWidget);
    await tester.pumpWidget(const SizedBox.shrink());
  });
}
