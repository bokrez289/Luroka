import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/screens/settings/about_screen.dart';
import 'package:luroka/screens/settings/privacy_policy_screen.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import '../../test_helpers/prefs.dart';

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
    LocaleSettings.setLocaleSync(AppLocale.en);
    PackageInfo.setMockInitialValues(
      appName: 'Luroka',
      packageName: 'com.bokrez.luroka',
      version: '2.1.0',
      buildNumber: '42',
      buildSignature: '',
    );
  });
  for (final size in [const Size(320, 640), const Size(960, 540)]) {
    testWidgets('Luroka About describes the product and installed version at $size', (tester) async {
      tester.view.physicalSize = size;
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      await tester.pumpWidget(MaterialApp(theme: monoTheme(MonoPalette.dark), home: const AboutScreen()));
      await tester.pumpAndSettle();
      expect(find.text('Luroka'), findsWidgets);
      expect(find.textContaining('2.1.0'), findsOneWidget);
      expect(find.textContaining('2.1.0 (42)'), findsNothing);
      expect(find.text(t.settingsRedesign.aboutDescription), findsOneWidget);
      expect(find.text('Plex'), findsOneWidget);
      expect(find.text('Jellyfin'), findsOneWidget);
      expect(find.text('Emby'), findsOneWidget);
      expect(find.text(t.about.openSourceLicenses), findsOneWidget);
      expect(find.text(t.about.privacyPolicy), findsOneWidget);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
    });
  }

  testWidgets('privacy policy opens offline from About', (tester) async {
    await tester.pumpWidget(MaterialApp(theme: monoTheme(MonoPalette.dark), home: const AboutScreen()));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text(t.about.privacyPolicy));
    await tester.tap(find.text(t.about.privacyPolicy));
    await tester.pumpAndSettle();

    expect(find.byType(PrivacyPolicyScreen), findsOneWidget);
    expect(find.text('Last updated: November 12, 2026'), findsOneWidget);
    expect(find.text('Information stored on your device'), findsOneWidget);
  });

  testWidgets('TV remote opens, scrolls and exits the privacy policy', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    PlatformDetector.debugSetIsDesktopOSOverride(false);
    addTearDown(() {
      TvDetectionService.debugSetAppleTVOverride(null);
      PlatformDetector.debugSetIsDesktopOSOverride(null);
    });
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: const AboutScreen()),
      ),
    );
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text(t.about.privacyPolicy));
    final tile = find.ancestor(of: find.text(t.about.privacyPolicy), matching: find.byType(ListTile));
    tester.widget<ListTile>(tile).focusNode!.requestFocus();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    expect(find.byType(PrivacyPolicyScreen), findsOneWidget);
    final content = tester.widget<ListView>(find.byKey(const ValueKey('privacy-policy-content')));
    expect(content.controller!.offset, 0);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(content.controller!.offset, greaterThan(0));
    for (var i = 0; i < 30 && content.controller!.offset < content.controller!.position.maxScrollExtent; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pumpAndSettle();
    }
    expect(content.controller!.offset, content.controller!.position.maxScrollExtent);
    expect(find.text('Contact: privacy@luroka.app'), findsOneWidget);
    final bottom = content.controller!.offset;
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.pumpAndSettle();
    expect(content.controller!.offset, lessThan(bottom));
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    expect(find.byType(PrivacyPolicyScreen), findsNothing);
    expect(find.byType(AboutScreen), findsOneWidget);
  });

  testWidgets('TV select activates the focused privacy back button', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    PlatformDetector.debugSetIsDesktopOSOverride(false);
    addTearDown(() {
      TvDetectionService.debugSetAppleTVOverride(null);
      PlatformDetector.debugSetIsDesktopOSOverride(null);
    });
    await tester.pumpWidget(
      InputModeTracker(
        child: MaterialApp(theme: monoTheme(MonoPalette.dark), home: const AboutScreen()),
      ),
    );
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text(t.about.privacyPolicy));
    await tester.tap(find.text(t.about.privacyPolicy));
    await tester.pumpAndSettle();
    expect(find.byType(PrivacyPolicyScreen), findsOneWidget);
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pumpAndSettle();
    expect(find.byType(PrivacyPolicyScreen), findsNothing);
  });
}
