import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../i18n/strings.g.dart';
import '../models/kids_profile_backup.dart';
import '../profiles/profile.dart';
import '../utils/platform_detector.dart';
import 'file_picker_service.dart';
import 'kids_profile_service.dart';

class KidsProfileBackupService {
  static KidsProfileBackup snapshot(Profile profile) {
    final kids = KidsProfileService.instance;
    if (kids.isActiveKids || !kids.isKids(profile.id)) throw StateError('An adult must back up a kids profile');
    return KidsProfileBackup(
      name: profile.displayName,
      maxAge: kids.ageFor(profile.id),
      theme: kids.themeFor(profile.id),
      avatar: kids.avatarFor(profile.id),
      libraries: kids.librariesFor(profile.id),
      animationOnly: kids.animationOnlyFor(profile.id),
      allowUnrated: kids.allowUnratedFor(profile.id),
      dailyWatchMinutes: kids.dailyWatchMinutesFor(profile.id),
      bedtimeStart: kids.bedtimeStartFor(profile.id),
      bedtimeEnd: kids.bedtimeEndFor(profile.id),
      viewingExclusions: kids.viewingExclusionsFor(profile.id),
    );
  }

  static Future<String?> save(KidsProfileBackup backup) async {
    if (KidsProfileService.instance.isActiveKids) throw StateError('Parent access required');
    final bytes = Uint8List.fromList(utf8.encode(backup.encode()));
    final filename = 'luroka-kids-${DateTime.now().millisecondsSinceEpoch}.json';
    if (Platform.isAndroid && PlatformDetector.isTV()) {
      final directory = await getApplicationDocumentsDirectory();
      final file = File(p.join(directory.path, filename));
      await file.writeAsBytes(bytes, flush: true);
      return file.path;
    }
    return FilePickerService.instance.saveFile(
      dialogTitle: t.kids.backupProfile,
      fileName: filename,
      bytes: bytes,
      type: FileType.custom,
      allowedExtensions: const ['json'],
    );
  }

  static Future<KidsProfileBackup?> pick() async {
    if (KidsProfileService.instance.isActiveKids) throw StateError('Parent access required');
    final picked = await FilePickerService.instance.pickFiles(
      type: FileType.custom,
      allowedExtensions: const ['json'],
      withData: true,
    );
    if (picked == null || picked.files.isEmpty) return null;
    final file = picked.files.single;
    if (file.size > KidsProfileBackup.maxFileBytes) throw const FormatException('Kids backup is too large');
    final bytes = file.bytes;
    if (bytes != null) return KidsProfileBackup.decode(utf8.decode(bytes));
    final path = file.path;
    if (path == null) throw const FormatException('Could not read kids backup');
    final source = File(path);
    if (await source.length() > KidsProfileBackup.maxFileBytes) throw const FormatException('Kids backup is too large');
    return KidsProfileBackup.decode(await source.readAsString());
  }
}
