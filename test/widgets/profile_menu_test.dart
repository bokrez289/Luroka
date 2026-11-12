import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/profiles/active_profile_provider.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/app_menu.dart';
import 'package:luroka/widgets/overlay_sheet.dart';
import 'package:luroka/widgets/profile_menu.dart';

class _Profiles extends Fake implements ActiveProfileProvider {
  _Profiles(this.active, this.pickerProfiles);

  @override
  final Profile? active;
  @override
  final List<Profile> pickerProfiles;
  @override
  String? avatarUrlFor(String profileId) => null;
}

void main() {
  final alex = Profile.local(id: 'alex', displayName: 'Alex', createdAt: DateTime(2026));
  final sam = Profile.local(id: 'sam', displayName: 'Sam', createdAt: DateTime(2026));

  test('profile menu groups actions consistently and retains desktop quick switching', () {
    final entries = buildProfileMenuEntries(
      provider: _Profiles(alex, [alex, sam]),
      isKids: false,
      showDownloads: true,
      showWatchTogether: true,
      showCustomizeHome: true,
      showDirectProfiles: true,
      showLiveTv: true,
    );
    expect(entries.whereType<AppMenuItem<String>>().map((item) => item.value), [
      'switch_profile',
      'profile:sam',
      'manage_profiles',
      'activity',
      'settings',
      'customize_home',
      'sources',
      'downloads',
      'live_tv',
      'together',
      'logout',
    ]);
    expect(entries.whereType<AppMenuItem<String>>().last.destructive, isTrue);
  });

  test('Kids and offline menus do not expose unavailable or adult-only actions', () {
    final kids = buildProfileMenuEntries(
      provider: _Profiles(alex, [alex, sam]),
      isKids: true,
      showDownloads: true,
      showWatchTogether: true,
      showCustomizeHome: true,
      showLiveTv: true,
    );
    expect(kids.whereType<AppMenuItem<String>>().map((item) => item.value), ['switch_profile', 'settings']);
    final offline = buildProfileMenuEntries(
      provider: _Profiles(null, []),
      isKids: false,
      showDownloads: false,
      showWatchTogether: false,
      showCustomizeHome: false,
    );
    final actions = offline.whereType<AppMenuItem<String>>().map((item) => item.value);
    expect(actions, ['switch_profile', 'manage_profiles', 'settings', 'logout']);
  });

  testWidgets('TV profile sheet focuses and scrolls through all actions with the remote', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    String? selection;
    final triggerFocus = FocusNode(debugLabel: 'profile-menu-trigger');
    addTearDown(triggerFocus.dispose);
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(
          theme: monoTheme(MonoPalette.dark).copyWith(platform: TargetPlatform.android),
          home: OverlaySheetHost(
            child: Builder(
              builder: (context) => Scaffold(
                body: TextButton(
                  focusNode: triggerFocus,
                  onPressed: () async {
                    selection = await showAdaptiveAppMenu<String>(
                      context,
                      focusFirstItem: true,
                      entries: buildProfileMenuEntries(
                        provider: _Profiles(alex, [alex, sam]),
                        isKids: false,
                        showDownloads: true,
                        showWatchTogether: true,
                        showCustomizeHome: true,
                      ),
                    );
                  },
                  child: const Text('Open'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    triggerFocus.requestFocus();
    await tester.pump();
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('profile-menu-identity')), findsOneWidget);
    expect(find.text('Alex'), findsOneWidget);
    expect(find.text(t.profiles.active), findsOneWidget);
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'AppMenuInitialFocus');
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus, same(triggerFocus));
    expect(selection, isNull);
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(
      FocusManager.instance.primaryFocus?.context?.findAncestorWidgetOfExactType<AppMenuItemTile<String>>()?.item.value,
      'manage_profiles',
    );
    for (var i = 0; i < 7; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pumpAndSettle();
    }
    expect(
      FocusManager.instance.primaryFocus?.context?.findAncestorWidgetOfExactType<AppMenuItemTile<String>>()?.item.value,
      'logout',
    );
    expect(tester.getRect(find.byKey(const ValueKey('logout'))).bottom, lessThanOrEqualTo(720));
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(selection, 'logout');
    expect(tester.takeException(), isNull);
  });
}
