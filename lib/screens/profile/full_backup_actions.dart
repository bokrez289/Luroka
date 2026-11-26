import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import '../../database/app_database.dart';
import '../../focus/focusable_text_field.dart';
import '../../i18n/strings.g.dart';
import '../../services/file_picker_service.dart';
import '../../services/kids_profile_service.dart';
import '../../services/luroka_backup_snapshot.dart';
import '../../services/cloud_backup_recovery.dart';
import '../../utils/error_dialog.dart';
import '../../utils/platform_detector.dart';
import '../../widgets/dialog_action_button.dart';
import 'parent_access.dart';

/// Export includes account credentials; always require a password and parent
/// authorization when parental controls are in use.
Future<void> exportFullBackup(BuildContext context) async {
  final kids = KidsProfileService.instance;
  final owner = kids.activeId;
  if (kids.isActiveKids || !await ensureParentAccess(context) || !context.mounted || kids.activeId != owner) return;
  final password = await _passwordDialog(context, creating: true);
  if (password == null || !context.mounted || kids.activeId != owner || kids.isActiveKids) return;
  final db = context.read<AppDatabase>();
  try {
    final data = await LurokaBackupSnapshot.export(db, password);
    if (!context.mounted || kids.activeId != owner || kids.isActiveKids) return;
    final bytes = Uint8List.fromList(utf8.encode(data));
    final filename = 'luroka-backup-${DateTime.now().millisecondsSinceEpoch}.json';
    final String? path;
    if (Platform.isAndroid && PlatformDetector.isTV()) {
      final directory = await getApplicationDocumentsDirectory();
      final file = File(p.join(directory.path, filename));
      await file.writeAsBytes(bytes, flush: true);
      path = file.path;
    } else {
      path = await FilePickerService.instance.saveFile(
        dialogTitle: t.auth.saveEncryptedBackup,
        fileName: filename,
        bytes: bytes,
        type: FileType.custom,
        allowedExtensions: const ['json'],
      );
    }
    if (!context.mounted || path == null) return;
    await showDialog<void>(
      context: context,
      builder: (dialog) => AlertDialog(
        title: Text(t.auth.backupSaved),
        content: SelectableText(path!),
        actions: [DialogActionButton(onPressed: () => Navigator.pop(dialog), label: t.common.ok, isPrimary: true)],
      ),
    );
  } catch (_) {
    if (context.mounted) await showErrorDialog(context, t.auth.backupCreateFailed);
  }
}

/// Only used at sign-in before any profile exists. A restart loads the restored
/// settings and parental policy before the profile picker is constructed.
Future<bool> restoreFullBackup(BuildContext context) async {
  final db = context.read<AppDatabase>();
  try {
    final selected = await FilePickerService.instance.pickFiles(
      type: FileType.custom,
      allowedExtensions: const ['json'],
    );
    if (selected == null || selected.files.isEmpty || !context.mounted) return false;
    final file = selected.files.single;
    if (file.size <= 0 || file.size > 64 * 1024 * 1024 || file.path == null) {
      throw const FormatException('Invalid backup');
    }
    final source = File(file.path!);
    if (await source.length() > 64 * 1024 * 1024) throw const FormatException('Invalid backup');
    final data = await source.readAsString();
    if (!context.mounted) return false;
    final password = await _passwordDialog(context, creating: false);
    if (password == null || !context.mounted) return false;
    final restorePassword = password.trim().startsWith('lrb1-')
        ? (await CloudBackupRecoveryCode.parse(password).deriveKeys()).encryptionPassword
        : password;
    await LurokaBackupSnapshot.restore(db, data, restorePassword);
    return true;
  } catch (_) {
    // A failure after the database commit leaves a recovery journal. Never let
    // sign-in continue with potentially stale in-memory parental controls.
    if ((await db.select(db.profiles).get()).isNotEmpty) return true;
    if (context.mounted) {
      await showErrorDialog(
        context,
        t.auth.backupRestoreFailed,
      );
    }
    return false;
  }
}

Future<String?> _passwordDialog(BuildContext context, {required bool creating}) => showDialog<String>(
  context: context,
  builder: (_) => _BackupPasswordDialog(creating: creating),
);

class _BackupPasswordDialog extends StatefulWidget {
  const _BackupPasswordDialog({required this.creating});
  final bool creating;
  @override
  State<_BackupPasswordDialog> createState() => _BackupPasswordDialogState();
}

class _BackupPasswordDialogState extends State<_BackupPasswordDialog> {
  final password = TextEditingController();
  final confirmation = TextEditingController();
  String? error;

  @override
  void dispose() {
    password.dispose();
    confirmation.dispose();
    super.dispose();
  }

  void submit() {
    if (password.text.isEmpty || (widget.creating && password.text != confirmation.text)) {
      setState(() => error = widget.creating ? t.auth.confirmBackupPasswordError : t.auth.enterBackupPassword);
      return;
    }
    Navigator.pop(context, password.text);
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: Text(widget.creating ? t.auth.createEncryptedBackup : t.auth.restoreEncryptedBackup),
    content: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.creating
                ? t.auth.backupCreateInstructions
                : t.auth.backupRestoreInstructions,
          ),
          FocusableTextField(
            controller: password,
            obscureText: true,
            decoration: InputDecoration(labelText: t.addServer.password, errorText: error),
          ),
          if (widget.creating)
            FocusableTextField(
              controller: confirmation,
              obscureText: true,
              decoration: InputDecoration(labelText: t.auth.confirmBackupPassword),
            ),
        ],
      ),
    ),
    actions: [
      DialogActionButton(onPressed: () => Navigator.pop(context), label: t.common.cancel),
      DialogActionButton(onPressed: submit, label: widget.creating ? t.profiles.continueButton : t.auth.restoreBackupAction, isPrimary: true),
    ],
  );
}
