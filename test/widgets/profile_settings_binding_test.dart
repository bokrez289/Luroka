import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/widgets/profile_settings_binding.dart';

import '../test_helpers/prefs.dart';

void main() {
  setUp(resetSharedPreferencesForTest);

  testWidgets('a slow old profile language cannot win over a newer profile', (tester) async {
    final settings = await SettingsService.getInstance();
    await settings.prepareProfileSettings(['one', 'two']);
    settings.selectProfile('one');
    await settings.write(SettingsService.appLocale, AppLocale.fr);
    await settings.write(SettingsService.enableDiscordRPC, true);
    settings.selectProfile('two');
    await settings.write(SettingsService.appLocale, AppLocale.de);
    settings.selectProfile('one');

    final firstApply = Completer<void>();
    final applied = <AppLocale>[];
    final serverLanguages = <String>[];
    final discord = <bool>[];
    await tester.pumpWidget(
      ProfileSettingsBinding(
        settings: settings,
        updateServerLanguage: serverLanguages.add,
        applyDiscord: (enabled) async => discord.add(enabled),
        applyLocale: (locale) async {
          applied.add(locale);
          if (applied.length == 1) await firstApply.future;
        },
        child: const SizedBox(),
      ),
    );
    expect(applied, [AppLocale.fr]);
    expect(discord.last, isTrue);
    settings.selectProfile('two');
    expect(discord.last, isFalse);
    await tester.pump();
    firstApply.complete();
    await tester.pump();
    expect(applied, [AppLocale.fr, AppLocale.de]);
    expect(serverLanguages, ['de']);
  });
}
