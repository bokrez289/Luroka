import 'dart:convert';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/models/kids_avatar.dart';
import 'package:luroka/models/kids_profile_backup.dart';
import 'package:luroka/profiles/profile.dart';
import 'package:luroka/services/file_picker_service.dart';
import 'package:luroka/services/kids_profile_backup_service.dart';
import 'package:luroka/services/kids_profile_service.dart';

import '../test_helpers/prefs.dart';

class _Picker implements FilePickerDelegate {
  Uint8List? savedBytes;
  String? savedName;
  String? savePath = '/chosen/child.json';
  FilePickerResult? picked;
  int calls = 0;

  @override
  Future<String?> saveFile({
    String? dialogTitle,
    String? fileName,
    Uint8List? bytes,
    FileType type = FileType.any,
    List<String>? allowedExtensions,
  }) async {
    calls++;
    savedBytes = bytes;
    savedName = fileName;
    return savePath;
  }

  @override
  Future<FilePickerResult?> pickFiles({
    FileType type = FileType.any,
    List<String>? allowedExtensions,
    bool withData = false,
  }) async {
    calls++;
    return picked;
  }

  @override
  Future<String?> getDirectoryPath({String? dialogTitle}) async => null;
}

void main() {
  final kids = KidsProfileService.instance;
  final child = Profile.local(id: 'child', displayName: 'Emma', createdAt: DateTime(2026));
  final episode = MediaItem(
    id: 'episode',
    backend: MediaBackend.emby,
    kind: MediaKind.episode,
    serverId: 'server',
  ).copyWith(grandparentId: 'series');

  setUp(() async {
    resetSharedPreferencesForTest();
    kids.resetForTesting();
    await kids.initialize();
    await kids.setParentPin('4321');
    await kids.setChild(
      child.id,
      parentId: 'parent',
      maxAge: 7,
      theme: false,
      avatar: KidsAvatarKind.fox,
      allowedLibraries: {'server:kids'},
      animationOnly: true,
      allowUnrated: true,
      updateTimeLimits: true,
      dailyWatchMinutes: 90,
      bedtimeStart: 1200,
      bedtimeEnd: 420,
    );
    kids.selectProfile(child.id);
    await kids.recordPlayback(episode);
    kids.selectProfile('parent');
  });
  tearDown(() {
    kids.resetForTesting();
    FilePickerService.setDelegateForTesting(null);
  });

  test('backup round trip preserves child settings and exclusions without credentials or PIN', () {
    final encoded = KidsProfileBackupService.snapshot(child).encode();
    final backup = KidsProfileBackup.decode(encoded);
    expect(backup.name, 'Emma');
    expect(backup.maxAge, 7);
    expect(backup.theme, isFalse);
    expect(backup.avatar, KidsAvatarKind.fox);
    expect(backup.libraries, {'server:kids'});
    expect(backup.animationOnly, isTrue);
    expect(backup.allowUnrated, isTrue);
    expect(backup.dailyWatchMinutes, 90);
    expect(backup.bedtimeStart, 1200);
    expect(backup.bedtimeEnd, 420);
    expect(backup.viewingExclusions, ['server:series']);
    for (final secret in ['4321', 'parentPin', 'pinHash', 'parentId', 'accessToken', 'userToken', 'connectionId']) {
      expect(encoded, isNot(contains(secret)));
    }
  });

  test('backup survives deletion and restores restrictions under a fresh profile identity', () async {
    final backup = KidsProfileBackup.decode(KidsProfileBackupService.snapshot(child).encode());
    await kids.removeProfile(child.id);
    expect(kids.isKids(child.id), isFalse);
    await kids.setChild(
      'restored',
      parentId: 'new-parent',
      maxAge: backup.maxAge,
      theme: backup.theme,
      avatar: backup.avatar,
      restrictLibraries: backup.libraries != null,
      allowedLibraries: backup.libraries,
      animationOnly: backup.animationOnly,
      allowUnrated: backup.allowUnrated,
      updateTimeLimits: true,
      dailyWatchMinutes: backup.dailyWatchMinutes,
      bedtimeStart: backup.bedtimeStart,
      bedtimeEnd: backup.bedtimeEnd,
    );
    await kids.restoreViewingExclusions('restored', backup.viewingExclusions);
    expect(kids.parentFor('restored'), 'new-parent');
    expect(kids.dailyWatchMinutesFor('restored'), 90);
    expect(kids.bedtimeStartFor('restored'), 1200);
    expect(kids.verifyParentPin('4321'), isTrue);
    expect(kids.viewingExclusionsFor('restored'), ['server:series']);
    kids.selectProfile('restored');
    final movie = MediaItem(
      id: 'movie',
      backend: MediaBackend.emby,
      kind: MediaKind.movie,
      serverId: 'server',
    ).copyWith(libraryId: 'kids', genres: ['Animation']);
    expect(kids.allows(movie), isTrue);
    expect(kids.allows(movie.copyWith(libraryId: 'other')), isFalse);
    expect(kids.allows(movie.copyWith(contentRating: 'R')), isFalse);
  });

  test('an explicit empty library selection remains empty, rather than becoming all libraries', () async {
    await kids.setChild(child.id, parentId: 'parent', maxAge: 7, allowedLibraries: {});
    final empty = KidsProfileBackup.decode(KidsProfileBackupService.snapshot(child).encode());
    expect(empty.libraries, isEmpty);
    await kids.setChild(child.id, parentId: 'parent', maxAge: 7, restrictLibraries: false);
    final all = KidsProfileBackup.decode(KidsProfileBackupService.snapshot(child).encode());
    expect(all.libraries, isNull);
  });

  test('bedtime handles overnight and same-day windows', () async {
    expect(kids.isBedtime(child.id, DateTime(2026, 1, 1, 19, 59)), isFalse);
    expect(kids.isBedtime(child.id, DateTime(2026, 1, 1, 20)), isTrue);
    expect(kids.isBedtime(child.id, DateTime(2026, 1, 2, 6, 59)), isTrue);
    expect(kids.isBedtime(child.id, DateTime(2026, 1, 2, 7)), isFalse);
    await kids.setChild(
      child.id,
      parentId: 'parent',
      maxAge: 7,
      updateTimeLimits: true,
      bedtimeStart: 600,
      bedtimeEnd: 720,
    );
    expect(kids.isBedtime(child.id, DateTime(2026, 1, 1, 10)), isTrue);
    expect(kids.isBedtime(child.id, DateTime(2026, 1, 1, 12)), isFalse);
  });

  test('malformed or unsupported backups never silently relax restrictions', () {
    final source = jsonDecode(KidsProfileBackupService.snapshot(child).encode()) as Map<String, dynamic>;
    final profile = source['profile'] as Map<String, dynamic>;
    final variants = [
      {...source, 'version': 999},
      {...source, 'format': 'other'},
      {
        ...source,
        'profile': {...profile}..remove('libraries'),
      },
      {
        ...source,
        'profile': {...profile}..remove('animationOnly'),
      },
      {
        ...source,
        'profile': {...profile, 'maxAge': 18},
      },
      {
        ...source,
        'profile': {...profile, 'avatar': 'unknown'},
      },
      {
        ...source,
        'profile': {...profile, 'allowUnrated': 'true'},
      },
      {
        ...source,
        'profile': {...profile, 'libraries': 'all'},
      },
      {
        ...source,
        'profile': {
          ...profile,
          'viewingExclusions': [7],
        },
      },
    ];
    for (final variant in variants) {
      expect(() => KidsProfileBackup.decode(jsonEncode(variant)), throwsFormatException);
    }
    expect(() => KidsProfileBackup.decode(' ' * (KidsProfileBackup.maxFileBytes + 1)), throwsFormatException);
    expect(kids.librariesFor(child.id), {'server:kids'});
    expect(kids.animationOnlyFor(child.id), isTrue);
  });

  test('file export supplies valid JSON bytes and import only reads a draft', () async {
    final picker = _Picker();
    FilePickerService.setDelegateForTesting(picker);
    final backup = KidsProfileBackupService.snapshot(child);
    expect(await KidsProfileBackupService.save(backup), '/chosen/child.json');
    expect(picker.savedName, startsWith('luroka-kids-'));
    final bytes = picker.savedBytes!;
    picker.picked = FilePickerResult([PlatformFile(name: 'child.json', size: bytes.length, bytes: bytes)]);
    final restored = await KidsProfileBackupService.pick();
    expect(restored!.encode(), backup.encode());
    expect(kids.activeId, 'parent');
    expect(kids.isKids('restored'), isFalse);
  });

  test('cancelled file operations are silent and kids cannot export or import', () async {
    final picker = _Picker()..savePath = null;
    FilePickerService.setDelegateForTesting(picker);
    final backup = KidsProfileBackupService.snapshot(child);
    expect(await KidsProfileBackupService.save(backup), isNull);
    expect(await KidsProfileBackupService.pick(), isNull);
    kids.selectProfile(child.id);
    expect(() => KidsProfileBackupService.snapshot(child), throwsStateError);
    await expectLater(KidsProfileBackupService.save(backup), throwsStateError);
    await expectLater(KidsProfileBackupService.pick(), throwsStateError);
    expect(picker.calls, 2);
  });
}
