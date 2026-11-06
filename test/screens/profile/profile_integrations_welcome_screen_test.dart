import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/screens/profile/profile_integrations_welcome_screen.dart';
import 'package:luroka/services/profile_appearance_service.dart';
import 'package:luroka/theme/mono_theme.dart';
import '../../test_helpers/prefs.dart';

void main() {
  setUp(() {
    resetSharedPreferencesForTest();
    ProfileAppearanceService.instance.resetForTesting();
    LocaleSettings.setLocaleSync(AppLocale.en);
  });

  for (final size in [const Size(320, 640), const Size(960, 540)]) {
    testWidgets('optional integrations prompt fits $size with enlarged text', (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = size;
      addTearDown(tester.view.reset);
      await tester.pumpWidget(
        MaterialApp(
          theme: monoTheme(MonoPalette.dark),
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.6)),
            child: child!,
          ),
          home: const ProfileIntegrationsWelcomeScreen(profileId: 'person'),
        ),
      );
      await tester.pumpAndSettle();
      await tester.ensureVisible(find.byKey(const ValueKey('onboarding-integrations-later')));
      await tester.pumpAndSettle();
      expect(find.text(t.profileIntegrations.examples), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }
}
