import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../focus/focusable_text_field.dart';
import '../../i18n/strings.g.dart';
import '../../models/kids_profile_backup.dart';
import '../../profiles/profile.dart';
import '../../services/kids_profile_backup_service.dart';
import '../../services/kids_profile_service.dart';
import '../../utils/app_logger.dart';
import '../../utils/platform_detector.dart';
import '../../utils/error_dialog.dart';
import '../../widgets/dialog_action_button.dart';
import 'parent_access.dart';

Future<void> backUpKidsProfile(BuildContext context, Profile profile) async {
  final kids = KidsProfileService.instance;
  final owner = kids.activeId;
  if (kids.isActiveKids || !await ensureParentAccess(context) || !context.mounted || kids.activeId != owner) return;
  try {
    final backup = KidsProfileBackupService.snapshot(profile);
    final choice = await showDialog<String>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(t.kids.backupProfile),
        content: Text(t.kids.backupExplain),
        actions: [
          DialogActionButton(onPressed: () => Navigator.pop(dialogContext), label: t.common.cancel),
          DialogActionButton(onPressed: () => Navigator.pop(dialogContext, 'copy'), label: t.kids.copyBackup),
          if (!PlatformDetector.isAppleTV())
            DialogActionButton(
              onPressed: () => Navigator.pop(dialogContext, 'file'),
              label: t.kids.saveBackupFile,
              isPrimary: true,
            ),
        ],
      ),
    );
    if (choice == null || !context.mounted || kids.activeId != owner || kids.isActiveKids) return;
    if (choice == 'copy') {
      await Clipboard.setData(ClipboardData(text: backup.encode()));
    } else {
      final path = await KidsProfileBackupService.save(backup);
      if (!context.mounted || path == null) return;
      await showDialog<void>(
        context: context,
        builder: (dialogContext) => AlertDialog(
          title: Text(t.kids.backupProfile),
          content: SelectableText(t.kids.backupSaved(path: path)),
          actions: [
            DialogActionButton(onPressed: () => Navigator.pop(dialogContext), label: t.common.ok, isPrimary: true),
          ],
        ),
      );
    }
  } catch (error, stack) {
    appLogger.w('Kids profile backup failed', error: error, stackTrace: stack);
    if (context.mounted) showErrorDialog(context, t.kids.backupFailed);
  }
}

Future<KidsProfileBackup?> chooseKidsProfileBackup(BuildContext context) async {
  final kids = KidsProfileService.instance;
  final owner = kids.activeId;
  if (kids.isActiveKids || !await ensureParentAccess(context) || !context.mounted || kids.activeId != owner) {
    return null;
  }
  try {
    final choice = PlatformDetector.isTV()
        ? 'paste'
        : await showDialog<String>(
            context: context,
            builder: (dialogContext) => AlertDialog(
              title: Text(t.kids.restoreProfile),
              content: Text(t.kids.backupExplain),
              actions: [
                DialogActionButton(onPressed: () => Navigator.pop(dialogContext), label: t.common.cancel),
                DialogActionButton(onPressed: () => Navigator.pop(dialogContext, 'paste'), label: t.kids.pasteBackup),
                DialogActionButton(
                  onPressed: () => Navigator.pop(dialogContext, 'file'),
                  label: t.kids.chooseBackupFile,
                  isPrimary: true,
                ),
              ],
            ),
          );
    if (choice == null || !context.mounted || kids.activeId != owner || kids.isActiveKids) return null;
    final backup = choice == 'paste'
        ? await showDialog<KidsProfileBackup>(context: context, builder: (_) => const _PasteKidsBackupDialog())
        : await KidsProfileBackupService.pick();
    if (!context.mounted || kids.activeId != owner || kids.isActiveKids) return null;
    return backup;
  } catch (error, stack) {
    appLogger.w('Could not read kids profile backup', error: error, stackTrace: stack);
    if (context.mounted) showErrorDialog(context, t.kids.restoreInvalid);
    return null;
  }
}

class _PasteKidsBackupDialog extends StatefulWidget {
  const _PasteKidsBackupDialog();
  @override
  State<_PasteKidsBackupDialog> createState() => _PasteKidsBackupDialogState();
}

class _PasteKidsBackupDialogState extends State<_PasteKidsBackupDialog> {
  final _text = TextEditingController();
  String? _error;
  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  void _restore() {
    try {
      Navigator.pop(context, KidsProfileBackup.decode(_text.text));
    } on FormatException {
      setState(() => _error = t.kids.restoreInvalid);
    }
  }

  Future<void> _paste() async {
    try {
      final text = (await Clipboard.getData(Clipboard.kTextPlain))?.text;
      if (!mounted || text == null) return;
      if (text.length > KidsProfileBackup.maxFileBytes) {
        setState(() => _error = t.kids.restoreInvalid);
        return;
      }
      setState(() {
        _text.text = text;
        _error = null;
      });
    } catch (_) {
      if (mounted) setState(() => _error = t.kids.restoreInvalid);
    }
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: Text(t.kids.restoreProfile),
    content: SizedBox(
      width: 540,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(t.kids.restoreReview),
            const SizedBox(height: 16),
            FocusableTextField(
              controller: _text,
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(labelText: t.kids.backupText, errorText: _error, errorMaxLines: 4),
            ),
            const SizedBox(height: 12),
            TextButton.icon(
              onPressed: _paste,
              icon: const Icon(Icons.paste_rounded),
              label: Text(t.kids.pasteFromClipboard),
            ),
          ],
        ),
      ),
    ),
    actions: [
      DialogActionButton(onPressed: () => Navigator.pop(context), label: t.common.cancel),
      DialogActionButton(onPressed: _restore, label: t.kids.restoreProfile, isPrimary: true),
    ],
  );
}
