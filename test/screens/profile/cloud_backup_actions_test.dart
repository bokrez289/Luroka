import 'dart:async';

import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/profiles/active_profile_provider.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/profile_registry.dart';
import 'package:luroka/screens/profile/cloud_backup_actions.dart';
import 'package:luroka/services/cloud_backup_client.dart';
import 'package:luroka/services/kids_profile_service.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:provider/provider.dart';

import '../../test_helpers/prefs.dart';

class _Profiles extends ChangeNotifier implements ActiveProfileProvider {
  _Profiles(this.profiles);
  @override
  final List<Profile> profiles;
  @override
  String? get activeId => 'adult-a';
  @override
  int get identityMutationGeneration => 1;
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(() async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    KidsProfileService.instance.resetForTesting();
    await SettingsService.getInstance();
    await KidsProfileService.instance.initialize();
    KidsProfileService.instance.selectProfile('adult-a');
  });
  tearDown(() {
    KidsProfileService.instance.resetForTesting();
    SettingsService.resetForTesting();
  });

  testWidgets('backup shows recovery code before any upload and allows cancellation', (tester) async {
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(db.close);
    final owner = Profile.local(id: 'adult-a', displayName: 'Alice', createdAt: DateTime(2026));
    await ProfileRegistry(db).upsert(owner);
    var uploads = 0;
    final client = CloudBackupClient.forTesting(
      client: MockClient((request) async {
        uploads++;
        return http.Response('{"expiresAt":"2027-01-01T00:00:00Z"}', 201);
      }),
      endpoint: Uri.https('backup.invalid', '/v1/backups'),
    );
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          Provider<AppDatabase>.value(value: db),
          ChangeNotifierProvider<ActiveProfileProvider>.value(value: _Profiles([owner])),
        ],
        child: MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) => TextButton(
                onPressed: () => unawaited(showCloudBackupCreation(context, client: client)),
                child: const Text('Open'),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    expect(find.text('Alice'), findsOneWidget);
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();
    expect(find.text('Authorize encrypted backup?'), findsOneWidget);
    await tester.tap(find.text('Authorize'));
    await tester.pumpAndSettle();
    expect(find.text('Save your recovery code'), findsOneWidget);
    expect(find.textContaining('If you lose it'), findsOneWidget);
    expect(uploads, 0);
    await tester.tap(find.text('Cancel').last);
    await tester.pumpAndSettle();
    expect(uploads, 0);
    expect(find.text('Create encrypted cloud backup'), findsOneWidget);
  });

  testWidgets('selecting another protected adult asks for that profile PIN before upload', (tester) async {
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(db.close);
    final owner = Profile.local(id: 'adult-a', displayName: 'Alice', createdAt: DateTime(2026));
    final other = Profile.local(
      id: 'adult-b',
      displayName: 'Bob',
      pinHash: computePinHash('1234'),
      createdAt: DateTime(2026),
    );
    await ProfileRegistry(db).upsert(owner);
    await ProfileRegistry(db).upsert(other);
    var uploads = 0;
    final client = CloudBackupClient.forTesting(
      client: MockClient((_) async {
        uploads++;
        return http.Response('', 500);
      }),
      endpoint: Uri.https('backup.invalid', '/v1/backups'),
    );
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          Provider<AppDatabase>.value(value: db),
          ChangeNotifierProvider<ActiveProfileProvider>.value(value: _Profiles([owner, other])),
        ],
        child: MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) => TextButton(
                onPressed: () => unawaited(showCloudBackupCreation(context, client: client)),
                child: const Text('Open'),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('cloud-backup-profile-adult-b')));
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();
    expect(find.text('Authorize encrypted backup?'), findsOneWidget);
    await tester.tap(find.text('Authorize'));
    await tester.pumpAndSettle();
    expect(find.textContaining('Bob'), findsWidgets);
    expect(find.text('Save your recovery code'), findsNothing);
    expect(uploads, 0);
  });
}
