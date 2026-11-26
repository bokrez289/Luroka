import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:luroka/connection/connection_registry.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/profiles/active_profile_provider.dart';
import 'package:luroka/profiles/plex_home_service.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/profile_selection_policy.dart';
import 'package:luroka/profiles/profile_connection.dart';
import 'package:luroka/profiles/profile_connection_registry.dart';
import 'package:luroka/profiles/profile_registry.dart';
import 'package:luroka/screens/profile/kids_profile_screen.dart';
import 'package:luroka/screens/profile/kids_settings_screen.dart';
import 'package:luroka/services/kids_profile_service.dart';
import 'package:luroka/services/storage_service.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/providers/libraries_provider.dart';
import 'package:luroka/media/media_library.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/models/kids_profile_backup.dart';
import 'package:luroka/models/kids_atmosphere.dart';
import 'package:luroka/widgets/kids/kids_atmosphere_picker.dart';
import 'package:luroka/screens/profile/kids_profile_backup_actions.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';

import '../../test_helpers/backend_client_fixtures.dart';
import '../../test_helpers/prefs.dart';

Future<void> openSection(WidgetTester tester, String id) async {
  final row = find.byKey(PageStorageKey('kids-section-$id'));
  final heading = find.descendant(of: row, matching: find.byType(ListTile)).first;
  await tester.ensureVisible(heading);
  await tester.pumpAndSettle();
  await tester.tap(heading);
  await tester.pumpAndSettle();
}

void main() {
  final kids = KidsProfileService.instance;
  setUp(() {
    resetSharedPreferencesForTest();
    kids.resetForTesting();
    LocaleSettings.setLocaleSync(AppLocale.en);
  });
  tearDown(kids.resetForTesting);

  testWidgets('Back can keep a draft or discard it without creating a profile', (tester) async {
    await kids.initialize();
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          home: Builder(
            builder: (context) => Scaffold(
              body: TextButton(
                onPressed: () =>
                    Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const KidsProfileScreen())),
                child: const Text('Open'),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'Emma');
    await tester.pumpAndSettle();
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.common.cancel));
    await tester.pumpAndSettle();
    expect(tester.widget<TextField>(find.byType(TextField)).controller!.text, 'Emma');
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.kids.discardAction));
    await tester.pumpAndSettle();
    expect(find.text('Open'), findsOneWidget);
    expect(kids.hasKids, isFalse);
  });

  testWidgets('first child offers a recommended Parent PIN choice', (tester) async {
    await kids.initialize();
    await tester.pumpWidget(TranslationProvider(child: const MaterialApp(home: KidsProfileScreen())));
    await tester.pumpAndSettle();
    final choice = find.byKey(const ValueKey('kids-use-parent-pin'));
    expect(tester.widget<SwitchListTile>(choice).value, isTrue);
    await tester.tap(choice);
    await tester.pumpAndSettle();
    expect(tester.widget<SwitchListTile>(choice).value, isFalse);
    expect(find.text(t.kids.pinChoiceHint), findsOneWidget);
  });

  testWidgets('creating a child previews atmosphere changes without saving a profile', (tester) async {
    await kids.initialize();
    await tester.pumpWidget(TranslationProvider(child: const MaterialApp(home: KidsProfileScreen())));
    await tester.pumpAndSettle();
    final picker = find.byType(KidsAtmospherePicker);
    await tester.ensureVisible(picker);
    expect(tester.widget<KidsAtmospherePicker>(picker).value, KidsAtmosphere.sunshine);
    await tester.ensureVisible(find.byKey(const ValueKey('kids-atmosphere-berry')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('kids-atmosphere-berry')));
    await tester.pumpAndSettle();
    expect(tester.widget<KidsAtmospherePicker>(picker).value, KidsAtmosphere.berry);
    expect(kids.hasKids, isFalse);
    expect(tester.takeException(), isNull);
  });

  testWidgets('editing a child shows their saved atmosphere and previews a draft', (tester) async {
    await kids.initialize();
    await kids.setParentPin('1234');
    await kids.setChild('child', parentId: 'adult', maxAge: 7, atmosphere: KidsAtmosphere.mint);
    final child = Profile.local(id: 'child', displayName: 'Emma', createdAt: DateTime(2026));
    await tester.pumpWidget(MaterialApp(home: KidsProfileScreen(profile: child)));
    await tester.pumpAndSettle();
    await openSection(tester, 'appearance');
    final picker = find.byType(KidsAtmospherePicker);
    await tester.ensureVisible(picker);
    expect(tester.widget<KidsAtmospherePicker>(picker).value, KidsAtmosphere.mint);
    await tester.ensureVisible(find.byKey(const ValueKey('kids-atmosphere-sky')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('kids-atmosphere-sky')));
    await tester.pumpAndSettle();
    expect(tester.widget<KidsAtmospherePicker>(picker).value, KidsAtmosphere.sky);
    expect(kids.atmosphereFor('child'), KidsAtmosphere.mint);
    expect(tester.takeException(), isNull);
  });

  testWidgets('child settings changes only its own atmosphere', (tester) async {
    await kids.initialize();
    await kids.setParentPin('1234');
    await kids.setChild('child', parentId: 'adult', maxAge: 7, allowedLibraries: {'srv:kids'});
    kids.selectProfile('child');
    await tester.pumpWidget(TranslationProvider(child: const MaterialApp(home: KidsSettingsScreen())));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byKey(const ValueKey('kids-atmosphere-berry')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('kids-atmosphere-berry')));
    await tester.pumpAndSettle();
    expect(kids.atmosphereFor('child'), KidsAtmosphere.berry);
    expect(kids.librariesFor('child'), {'srv:kids'});
    expect(find.text(t.kids.switchProfile), findsOneWidget);
    expect(find.text(t.kids.allowedLibraries), findsNothing);
    expect(tester.takeException(), isNull);
  });

  for (final tv in [false, true]) {
    testWidgets('${tv ? 'TV' : 'phone'} time-limit labels do not overlap at larger text sizes', (tester) async {
      TvDetectionService.debugSetAppleTVOverride(tv);
      addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
      tester.view.physicalSize = tv ? const Size(960, 540) : const Size(390, 844);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      await tester.pumpWidget(
        MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.3)),
            child: child!,
          ),
          home: const KidsProfileScreen(),
        ),
      );
      await tester.pumpAndSettle();
      await openSection(tester, 'time');
      final daily = find.byKey(const ValueKey('kids-daily-watch-limit'));
      await tester.scrollUntilVisible(daily, 250, scrollable: find.byType(Scrollable).first);
      await tester.ensureVisible(daily);
      await tester.pumpAndSettle();
      expect(
        tester.getTopLeft(find.text(t.kids.dailyWatchLimit)).dy,
        greaterThanOrEqualTo(tester.getBottomLeft(find.text(t.kids.dailyWatchLimitHint)).dy + 4),
      );
      final toggle = find.byKey(const ValueKey('kids-bedtime-enabled'));
      await tester.ensureVisible(toggle);
      await tester.pumpAndSettle();
      await tester.tap(toggle);
      await tester.pumpAndSettle();
      final start = find.byKey(const ValueKey('kids-bedtime-start'));
      final end = find.byKey(const ValueKey('kids-bedtime-end'));
      await tester.ensureVisible(end);
      await tester.pumpAndSettle();
      expect(
        tester.getTopLeft(find.text(t.kids.bedtimeEnd)).dy,
        greaterThanOrEqualTo(tester.getBottomLeft(start).dy + 4),
      );
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('parents can back up, cancel deletion, and review a restored child using the same server login', (
    tester,
  ) async {
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    final profiles = ProfileRegistry(db);
    final connections = ConnectionRegistry(db);
    final bindings = ProfileConnectionRegistry(db);
    final storage = await StorageService.getInstance();
    final home = PlexHomeService(
      connections: connections,
      profileConnections: bindings,
      storage: storage,
      plexHomeUserFetcher: (_) async => [],
    );
    final active = ActiveProfileProvider(
      registry: profiles,
      connections: connections,
      profileConnections: bindings,
      plexHome: home,
      storage: storage,
    );
    addTearDown(() async {
      active.dispose();
      await home.dispose();
      await db.close();
    });
    final parent = Profile.local(id: 'adult', displayName: 'Parent', createdAt: DateTime(2026));
    await profiles.upsert(parent);
    final emby = testEmbyConnection();
    await connections.upsert(emby);
    await bindings.upsert(
      ProfileConnection(
        profileId: parent.id,
        connectionId: emby.id,
        userIdentifier: emby.userId,
        userToken: emby.accessToken,
      ),
    );
    await storage.setActiveProfileId(parent.id);
    await active.initialize();
    await kids.setParentPin('1234');
    final libraries = _KidsLibraryChoices();
    addTearDown(libraries.dispose);
    Profile? editing;
    String? clipboard;
    final messenger = TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
    messenger.setMockMethodCallHandler(SystemChannels.platform, (call) async {
      if (call.method == 'Clipboard.setData') clipboard = (call.arguments as Map)['text'] as String;
      if (call.method == 'Clipboard.getData') return {'text': clipboard};
      return null;
    });
    addTearDown(() => messenger.setMockMethodCallHandler(SystemChannels.platform, null));

    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: active),
          Provider.value(value: profiles),
          Provider.value(value: bindings),
          ChangeNotifierProvider<LibrariesProvider>.value(value: libraries),
        ],
        child: TranslationProvider(
          child: InputModeTracker(
            child: MaterialApp(
              theme: monoTheme(MonoPalette.dark),
              home: Builder(
                builder: (context) => Scaffold(
                  body: Column(
                    children: [
                      TextButton(
                        onPressed: () => Navigator.of(
                          context,
                        ).push(MaterialPageRoute(builder: (_) => KidsProfileScreen(profile: editing))),
                        child: const Text('Create child'),
                      ),
                      TextButton(
                        onPressed: () async {
                          final backup = await chooseKidsProfileBackup(context);
                          if (context.mounted && backup != null) {
                            await Navigator.of(
                              context,
                            ).push(MaterialPageRoute(builder: (_) => KidsProfileScreen(backup: backup)));
                          }
                        },
                        child: const Text('Restore child'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Create child'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'Emma');
    await tester.pump();
    await tester.ensureVisible(find.byKey(const ValueKey('kids-atmosphere-berry')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('kids-atmosphere-berry')));
    await tester.pumpAndSettle();
    await openSection(tester, 'advanced');
    await tester.ensureVisible(find.byKey(const ValueKey('kids-choose-different-connection')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('kids-choose-different-connection')));
    await tester.tap(find.text(t.common.save));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).last, '1234');
    await tester.pumpAndSettle();
    expect(find.text(t.addServer.borrowFromAnotherProfile), findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();
    expect((await profiles.list()).map((profile) => profile.id), ['adult']);
    final connectionSwitch = find.byKey(const ValueKey('kids-choose-different-connection'));
    await tester.scrollUntilVisible(connectionSwitch, -300, scrollable: find.byType(Scrollable).first);
    await tester.pumpAndSettle();
    await tester.tap(connectionSwitch);
    await tester.pumpAndSettle();
    await openSection(tester, 'watch');
    for (final key in ['kids-allow-unrated', 'kids-animation-only', 'kids-all-libraries']) {
      final control = find.byKey(ValueKey(key));
      await tester.scrollUntilVisible(control, 200, scrollable: find.byType(Scrollable).first);
      await tester.ensureVisible(control);
      await tester.pumpAndSettle();
      await tester.tap(control);
      await tester.pumpAndSettle();
    }
    final libraryControl = find.byKey(const ValueKey('kids-library-srv-1:kids-library'));
    await tester.scrollUntilVisible(libraryControl, 200, scrollable: find.byType(Scrollable).first);
    await tester.ensureVisible(libraryControl);
    await tester.pumpAndSettle();
    await tester.tap(libraryControl);
    await tester.pumpAndSettle();
    await openSection(tester, 'watch');
    await openSection(tester, 'time');
    final dailyLimit = find.byKey(const ValueKey('kids-daily-watch-limit'));
    await tester.scrollUntilVisible(dailyLimit, -200, scrollable: find.byType(Scrollable).first);
    await tester.ensureVisible(dailyLimit);
    await tester.pumpAndSettle();
    final hintRect = tester.getRect(find.text(t.kids.dailyWatchLimitHint));
    final limitLabelRect = tester.getRect(find.text(t.kids.dailyWatchLimit));
    expect(limitLabelRect.top, greaterThanOrEqualTo(hintRect.bottom + 4));
    await tester.tap(dailyLimit);
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.kids.minutesLimit(minutes: 90)).last);
    await tester.pumpAndSettle();
    final bedtime = find.byKey(const ValueKey('kids-bedtime-enabled'));
    await tester.ensureVisible(bedtime);
    await tester.pumpAndSettle();
    await tester.tap(bedtime);
    await tester.pumpAndSettle();
    final start = find.byKey(const ValueKey('kids-bedtime-start'));
    final end = find.byKey(const ValueKey('kids-bedtime-end'));
    await tester.ensureVisible(end);
    await tester.pumpAndSettle();
    expect(
      tester.getTopLeft(find.text(t.kids.bedtimeEnd)).dy,
      greaterThanOrEqualTo(tester.getBottomLeft(start).dy + 4),
    );
    await tester.tap(find.text(t.common.save));
    await tester.pumpAndSettle();
    expect(find.text(t.kids.parentPin), findsOneWidget);
    await tester.enterText(find.byType(TextField).last, '1234');
    await tester.pumpAndSettle();

    final child = (await profiles.list()).singleWhere((profile) => profile.displayName == 'Emma');
    expect(kids.isKids(child.id), isTrue);
    expect(kids.parentFor(child.id), parent.id);
    expect(kids.ageFor(child.id), 7);
    expect(kids.atmosphereFor(child.id), KidsAtmosphere.berry);
    expect(kids.librariesFor(child.id), {'srv-1:kids-library'});
    expect(kids.animationOnlyFor(child.id), isTrue);
    expect(kids.allowUnratedFor(child.id), isTrue);
    expect(kids.dailyWatchMinutesFor(child.id), 90);
    expect(kids.bedtimeStartFor(child.id), 1200);
    expect(kids.bedtimeEndFor(child.id), 420);
    expect(kids.hideKidsFor(parent.id), isTrue);
    final copied = (await bindings.listForProfile(child.id)).single;
    expect(copied.connectionId, emby.id);
    expect(copied.userIdentifier, emby.userId);
    expect(copied.userToken, emby.accessToken);
    expect(active.activeId, parent.id);

    expect(await active.activate(child), isTrue);
    final settings = await SettingsService.getInstance();
    expect(active.requiresSelectionOnOpen(settings), isTrue);
    await settings.write(SettingsService.autoLoginLastProfile, true);
    expect(active.requiresSelectionOnOpen(settings), isFalse);
    await settings.write(SettingsService.autoLoginLastProfile, false);
    expect(await active.activate(parent), isFalse);
    expect(await active.activate(parent, parentPin: '0000'), isFalse);
    expect(active.activeId, child.id);
    expect(await active.activate(parent, parentPin: '1234'), isTrue);
    await settings.write(SettingsService.kidsAllowExitWithoutParentPin, true);
    expect(await active.activate(child), isTrue);
    expect(await active.activate(parent), isTrue);
    await settings.write(SettingsService.kidsAllowExitWithoutParentPin, false);
    await kids.disableParentPin();
    expect(await active.activate(child), isTrue);
    expect(await active.activate(parent), isTrue);
    await kids.setParentPin('1234');
    expect(await active.activate(child), isTrue);
    expect(await active.activate(parent), isFalse);
    expect(await active.activate(parent, parentPin: '1234'), isTrue);

    await kids.restoreViewingExclusions(child.id, ['srv-1:watched-series']);
    editing = child;
    await tester.tap(find.text('Create child'));
    await tester.pumpAndSettle();
    await openSection(tester, 'more');
    await tester.scrollUntilVisible(
      find.byKey(const ValueKey('kids-delete-profile')),
      300,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.ensureVisible(find.byKey(const ValueKey('kids-delete-profile')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('kids-delete-profile')));
    await tester.pumpAndSettle();
    expect(find.text(t.kids.parentPin), findsOneWidget);
    await tester.tap(find.text(t.common.cancel));
    await tester.pumpAndSettle();
    expect(kids.isKids(child.id), isTrue);
    expect(find.byType(KidsProfileScreen), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('kids-backup-profile')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).last, '1234');
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.kids.copyBackup));
    await tester.pumpAndSettle();
    final backup = KidsProfileBackup.decode(clipboard!);
    expect(backup.name, 'Emma');
    expect(backup.atmosphere, KidsAtmosphere.berry);
    expect(backup.libraries, {'srv-1:kids-library'});
    expect(backup.viewingExclusions, ['srv-1:watched-series']);
    expect(clipboard, isNot(contains(emby.accessToken)));
    tester.state<NavigatorState>(find.byType(Navigator).first).pop();
    await tester.pumpAndSettle();
    await bindings.remove(child.id, emby.id);
    await profiles.remove(child.id);
    expect(kids.isKids(child.id), isFalse);

    await tester.tap(find.text('Restore child'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).last, '1234');
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.kids.pasteBackup));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.kids.pasteFromClipboard));
    await tester.pumpAndSettle();
    await tester.tap(find.text(t.kids.restoreProfile).last);
    await tester.pumpAndSettle();
    expect(find.text(t.kids.restoreReview), findsOneWidget);
    expect(tester.widget<TextField>(find.byType(TextField)).controller!.text, 'Emma');
    await tester.tap(find.text(t.common.save));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).last, '1234');
    await tester.pumpAndSettle();
    final restored = (await profiles.list()).singleWhere((profile) => profile.displayName == 'Emma');
    expect(restored.id, isNot(child.id));
    expect(kids.librariesFor(restored.id), {'srv-1:kids-library'});
    expect(kids.atmosphereFor(restored.id), KidsAtmosphere.berry);
    expect(kids.animationOnlyFor(restored.id), isTrue);
    expect(kids.allowUnratedFor(restored.id), isTrue);
    expect(kids.dailyWatchMinutesFor(restored.id), 90);
    expect(kids.bedtimeStartFor(restored.id), 1200);
    expect(kids.bedtimeEndFor(restored.id), 420);
    expect(kids.viewingExclusionsFor(restored.id), ['srv-1:watched-series']);
    expect((await bindings.listForProfile(restored.id)).single.userToken, emby.accessToken);
    expect(active.activeId, parent.id);
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('a kids session cannot open the profile creation form', (tester) async {
    await kids.initialize();
    await kids.setParentPin('1234');
    await kids.setChild('child', parentId: 'adult', maxAge: 7);
    kids.selectProfile('child');
    await tester.pumpWidget(TranslationProvider(child: const MaterialApp(home: KidsProfileScreen())));
    await tester.pumpAndSettle();
    expect(find.byType(KidsSettingsScreen), findsOneWidget);
    expect(find.byType(TextField), findsNothing);
  });
}

class _KidsLibraryChoices extends LibrariesProvider {
  @override
  List<MediaLibrary> get libraries => const [
    MediaLibrary(
      id: 'kids-library',
      backend: MediaBackend.emby,
      title: 'Kids movies',
      kind: MediaKind.movie,
      serverId: 'srv-1',
      serverName: 'Home',
    ),
    MediaLibrary(
      id: 'adult-library',
      backend: MediaBackend.emby,
      title: 'All movies',
      kind: MediaKind.movie,
      serverId: 'srv-1',
      serverName: 'Home',
    ),
  ];
}
