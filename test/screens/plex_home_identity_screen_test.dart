import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/connection/connection.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/models/plex/plex_home_user.dart';
import 'package:luroka/screens/auth/plex_home_identity_screen.dart';
import 'package:luroka/utils/platform_detector.dart';

PlexHomeUser _user(int id, String name, {bool protected = false}) => PlexHomeUser(
  id: id,
  uuid: 'home-$id',
  title: name,
  thumb: '',
  hasPassword: protected,
  restricted: false,
  updatedAt: null,
  admin: id == 1,
  guest: false,
  protected: protected,
);

void main() {
  setUp(() => LocaleSettings.setLocaleSync(AppLocale.en));
  tearDown(() => TvDetectionService.debugSetAppleTVOverride(null));

  for (final tv in [false, true]) {
    testWidgets('Plex Home choice authenticates only the selected ${tv ? 'TV' : 'phone'} identity', (tester) async {
      TvDetectionService.debugSetAppleTVOverride(tv);
      tester.view.physicalSize = tv ? const Size(960, 540) : const Size(390, 844);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      final selected = <String>[];
      PlexHomeIdentity? result;
      final account = PlexAccountConnection(
        id: 'plex-account',
        accountToken: 'owner-token',
        clientIdentifier: 'device',
        accountLabel: 'Owner',
        createdAt: DateTime(2026),
      );
      await tester.pumpWidget(
        InputModeTracker(
          child: MaterialApp(
            home: Builder(
              builder: (context) => Scaffold(
                body: TextButton(
                  onPressed: () async {
                    result = await Navigator.of(context).push<PlexHomeIdentity>(
                      MaterialPageRoute(
                        builder: (_) => PlexHomeIdentityScreen(
                          account: account,
                          users: [_user(1, 'Owner'), _user(2, 'Sam', protected: true)],
                          authenticate: (user) async {
                            selected.add(user.uuid);
                            return 'token-for-${user.uuid}';
                          },
                        ),
                      ),
                    );
                  },
                  child: const Text('Sign in'),
                ),
              ),
            ),
          ),
        ),
      );
      await tester.tap(find.text('Sign in'));
      await tester.pumpAndSettle();
      expect(selected, isEmpty, reason: 'the authenticated owner must not be picked implicitly');
      expect(find.text('Owner'), findsOneWidget);
      expect(find.text('Sam'), findsOneWidget);
      await tester.tap(find.text('Sam'));
      await tester.pumpAndSettle();
      expect(selected, ['home-2']);
      expect(result?.user.uuid, 'home-2');
      expect(result?.token, 'token-for-home-2');
      expect(tester.takeException(), isNull);
    });
  }
}
