import 'dart:async';
import 'dart:convert';

import 'package:drift/native.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:luroka/database/app_database.dart';
import 'package:luroka/profiles/active_profile_provider.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/profiles/profile_registry.dart';
import 'package:luroka/screens/profile/cloud_backup_actions.dart';
import 'package:luroka/services/cloud_backup_client.dart';
import 'package:luroka/services/file_picker_service.dart';
import 'package:luroka/services/kids_profile_service.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/dialog_action_button.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

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

class _CodeFilePicker implements FilePickerDelegate {
  Uint8List? savedBytes;
  @override
  Future<String?> saveFile({
    String? dialogTitle,
    String? fileName,
    Uint8List? bytes,
    FileType type = FileType.any,
    List<String>? allowedExtensions,
  }) async {
    savedBytes = bytes;
    return '/private/recovery.txt';
  }

  @override
  Future<FilePickerResult?> pickFiles({
    FileType type = FileType.any,
    List<String>? allowedExtensions,
    bool withData = false,
  }) async => null;
  @override
  Future<String?> getDirectoryPath({String? dialogTitle}) async => null;
}

Future<void> _waitForWidget(WidgetTester tester, Finder target) async {
  await tester.runAsync(() async {
    for (var i = 0; i < 600; i++) {
      await tester.pump(const Duration(milliseconds: 20));
      if (target.evaluate().isNotEmpty) return;
      await Future<void>.delayed(const Duration(milliseconds: 50));
    }
    fail('Timed out waiting for $target');
  });
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
    FilePickerService.setDelegateForTesting(null);
    TvDetectionService.debugSetAppleTVOverride(null);
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
    expect(find.text('Step 2 of 3: Save your recovery code'), findsOneWidget);
    expect(find.textContaining('If you lose it'), findsOneWidget);
    expect(find.text('Your backup has not been uploaded yet.'), findsOneWidget);
    expect(uploads, 0);
    await tester.tap(find.text('Cancel').last);
    await tester.pumpAndSettle();
    expect(uploads, 0);
    expect(find.text('Step 1 of 3: Choose profiles'), findsOneWidget);
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
    expect(find.text('Step 2 of 3: Save your recovery code'), findsNothing);
    expect(uploads, 0);
  });

  testWidgets('phone can copy or save the recovery code before any upload', (tester) async {
    tester.view.physicalSize = const Size(320, 640);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(db.close);
    final owner = Profile.local(id: 'adult-a', displayName: 'Alice', createdAt: DateTime(2026));
    await ProfileRegistry(db).upsert(owner);
    final picker = _CodeFilePicker();
    FilePickerService.setDelegateForTesting(picker);
    String? copied;
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      SystemChannels.platform,
      (call) async {
        if (call.method == 'Clipboard.setData') copied = (call.arguments as Map)['text'] as String?;
        return null;
      },
    );
    addTearDown(
      () => TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
        SystemChannels.platform,
        null,
      ),
    );
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
          ChangeNotifierProvider<ActiveProfileProvider>.value(value: _Profiles([owner])),
        ],
        child: MaterialApp(
          theme: ThemeData(platform: TargetPlatform.iOS),
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
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Authorize'));
    await tester.pumpAndSettle();
    expect(find.text('Your backup has not been uploaded yet.'), findsOneWidget);
    expect(find.byType(QrImageView), findsNothing);
    await tester.ensureVisible(find.text('Show QR code'));
    await tester.tap(find.text('Show QR code'));
    await tester.pumpAndSettle();
    expect(find.byType(QrImageView), findsOneWidget);
    await tester.ensureVisible(find.text('Hide QR code'));
    await tester.tap(find.text('Hide QR code'));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Copy code'));
    await tester.tap(find.text('Copy code'));
    await tester.pumpAndSettle();
    expect(copied, startsWith('lrb1-'));
    await tester.tap(find.text('Save code to file'));
    await tester.pumpAndSettle();
    expect(utf8.decode(picker.savedBytes!), copied);
    expect(find.text('Recovery code saved. Keep the file private.'), findsOneWidget);
    expect(uploads, 0);
  });

  testWidgets('TV recovery step shows QR instructions and focuses continue', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    tester.view.physicalSize = const Size(720, 480);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(db.close);
    final owner = Profile.local(id: 'adult-a', displayName: 'Alice', createdAt: DateTime(2026));
    await ProfileRegistry(db).upsert(owner);
    final client = CloudBackupClient.forTesting(
      client: MockClient((_) async => http.Response('', 500)),
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
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Authorize'));
    await tester.pumpAndSettle();
    expect(find.text('Keep a private copy of this code. To restore on your phone, open Luroka’s cloud backup restore option and choose Scan recovery code.'), findsOneWidget);
    expect(find.byType(QrImageView), findsOneWidget);
    final qr = tester.getRect(find.byKey(const ValueKey('tv-backup-recovery-qr')));
    final dialog = tester.getRect(find.byType(AlertDialog).last);
    final continueButton = tester.getRect(find.text('I saved my code — continue'));
    expect(qr.top, greaterThanOrEqualTo(dialog.top));
    expect(qr.bottom, lessThanOrEqualTo(continueButton.top));
    expect(qr.bottom, lessThanOrEqualTo(tester.view.physicalSize.height));
    final primary = find.text('I saved my code — continue');
    expect(primary, findsOneWidget);
    final focused = FocusManager.instance.primaryFocus?.context?.findAncestorWidgetOfExactType<DialogActionButton>();
    expect(focused?.label, 'I saved my code — continue');
    expect(tester.takeException(), isNull);
  });

  testWidgets('restore from a populated installation explains the welcome-screen flow', (tester) async {
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(db.close);
    await ProfileRegistry(db).upsert(Profile.local(id: 'adult-a', displayName: 'Alice', createdAt: DateTime(2026)));
    await tester.pumpWidget(
      Provider<AppDatabase>.value(
        value: db,
        child: MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) =>
                  TextButton(onPressed: () => unawaited(showCloudBackupRestore(context)), child: const Text('Restore')),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Restore'));
    await tester.pumpAndSettle();
    expect(find.text('Restore on an empty installation'), findsOneWidget);
    expect(find.textContaining('cannot be merged'), findsOneWidget);
    expect(find.textContaining('welcome screen'), findsOneWidget);
  });

  testWidgets('uncertain upload retries the same backup and shows success only after confirmation', (tester) async {
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(db.close);
    final owner = Profile.local(id: 'adult-a', displayName: 'Alice', createdAt: DateTime(2026));
    await ProfileRegistry(db).upsert(owner);
    final requests = <http.Request>[];
    final firstUpload = Completer<http.Response>();
    final client = CloudBackupClient.forTesting(
      client: MockClient((request) async {
        requests.add(request);
        if (requests.length == 1) return firstUpload.future;
        return http.Response(
          jsonEncode({'expiresAt': DateTime.now().toUtc().add(const Duration(days: 1)).toIso8601String()}),
          201,
        );
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
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Authorize'));
    await tester.pumpAndSettle();
    final firstCode = tester.widget<SelectableText>(find.byType(SelectableText)).data!;
    await tester.tap(find.text('I saved my code — continue'));
    await _waitForWidget(tester, find.text('Step 3 of 3: Upload backup'));
    expect(requests, isEmpty);
    await tester.tap(find.text('Cloud only — upload backup'));
    await _waitForWidget(tester, find.text('Uploading your encrypted backup…'));
    expect(find.text('Cloud backup created'), findsNothing);
    await tester.runAsync(() async {
      for (var i = 0; i < 600 && requests.isEmpty; i++) {
        await tester.pump(const Duration(milliseconds: 20));
        await Future<void>.delayed(const Duration(milliseconds: 50));
      }
    });
    expect(requests, hasLength(1));
    firstUpload.completeError(http.ClientException('connection interrupted'));
    await _waitForWidget(tester, find.textContaining('may have completed'));
    await tester.tap(find.text('OK'));
    await tester.pumpAndSettle();
    expect(find.text('Retry upload'), findsOneWidget);
    await tester.tap(find.text('Retry upload'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Authorize'));
    await tester.pumpAndSettle();
    expect(tester.widget<SelectableText>(find.byType(SelectableText)).data, firstCode);
    expect(find.textContaining('previous upload may have completed'), findsOneWidget);
    await tester.tap(find.text('I saved my code — continue'));
    await _waitForWidget(tester, find.text('Step 3 of 3: Upload backup'));
    await tester.tap(find.text('Cloud only — upload backup'));
    await _waitForWidget(tester, find.text('Cloud backup created'));
    expect(requests, hasLength(2));
    expect(requests[1].headers['X-Luroka-Backup-Lookup'], requests[0].headers['X-Luroka-Backup-Lookup']);
    expect(requests[1].body, requests[0].body);
    await tester.tap(find.text('Done'));
    await tester.pumpAndSettle();
    expect(find.byType(AlertDialog), findsNothing);
    expect((await ProfileRegistry(db).list()).single.id, 'adult-a');
  }, timeout: const Timeout(Duration(minutes: 2)));
}
