import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../database/app_database.dart';
import '../../connection/connection.dart';
import '../../focus/focusable_text_field.dart';
import '../../profiles/active_profile_provider.dart';
import '../../profiles/profile.dart';
import '../../profiles/profile_activation.dart';
import '../../profiles/plex_home_switch.dart';
import '../../services/cloud_backup_client.dart';
import '../../services/cloud_backup_recovery.dart';
import '../../services/kids_profile_service.dart';
import '../../services/file_picker_service.dart';
import '../../services/luroka_backup_snapshot.dart';
import '../../services/profile_backup_authorization.dart';
import '../../services/secure_server_pairing_client.dart';
import '../../utils/dialogs.dart';
import '../../utils/error_dialog.dart';
import '../../widgets/dialog_action_button.dart';
import '../../widgets/focusable_list_tile.dart';
import 'parent_access.dart';
import 'pin_entry_dialog.dart';
import '../secure_transfer_qr_scanner.dart';
import '../../utils/platform_detector.dart';

/// Enabled for owner-authorized public testing. A build define can disable it.
const cloudBackupEnabled = bool.fromEnvironment('LUROKA_CLOUD_BACKUP_ENABLED', defaultValue: true);

Future<void> showCloudBackupCreation(BuildContext context, {CloudBackupClient? client}) async {
  final active = context.read<ActiveProfileProvider>();
  final database = context.read<AppDatabase>();
  final kids = KidsProfileService.instance;
  if (active.activeId == null || kids.isActiveKids || kids.activeId != active.activeId) return;
  await showScopedDialog<void>(
    context: context,
    builder: (_) => _CloudBackupCreation(active: active, database: database, client: client),
  );
}

class _CloudBackupCreation extends StatefulWidget {
  const _CloudBackupCreation({required this.active, required this.database, this.client});
  final ActiveProfileProvider active;
  final AppDatabase database;
  final CloudBackupClient? client;
  @override
  State<_CloudBackupCreation> createState() => _CloudBackupCreationState();
}

class _CloudBackupCreationState extends State<_CloudBackupCreation> {
  late final String _owner = widget.active.activeId!;
  late final int _generation = widget.active.identityMutationGeneration;
  late final CloudBackupClient _client = widget.client ?? CloudBackupClient();
  final _selected = <String>{};
  final _kids = KidsProfileService.instance;
  int _policyRevision = 0;
  bool _includeCredentials = false;
  bool _busy = false;
  CloudBackupRecoveryCode? _recoveryCode;
  String? _preparedEnvelope;
  Set<String>? _preparedIds;
  bool? _preparedCredentials;
  bool _uploadAttempted = false;

  @override
  void initState() {
    super.initState();
    _selected.add(_owner);
    _kids.addListener(_policyChanged);
  }

  void _policyChanged() => _policyRevision++;

  @override
  void dispose() {
    _kids.removeListener(_policyChanged);
    if (widget.client == null) _client.close();
    super.dispose();
  }

  Future<bool> _approveAdult(Profile profile) async {
    if (!mounted) return false;
    if (profile.isPlexHome && profile.isPinProtected) {
      final approved = await showConfirmDialog(
        context,
        title: 'Include ${profile.displayName}?',
        message: 'Enter this person’s Plex PIN to include their profile in the backup.',
        confirmText: 'Continue',
      );
      if (!mounted || !approved) return false;
      final account = widget.active.connectionsById[profile.parentConnectionId];
      final uuid = profile.plexHomeUserUuid;
      if (account is! PlexAccountConnection || uuid == null || uuid.isEmpty) return false;
      final result = await mintPlexHomeUserToken(
        account: account,
        homeUserUuid: uuid,
        requiresPin: true,
        promptForPin: dialogPinPrompt(context, profile.displayName),
      );
      return result.succeeded;
    }
    if (profile.isLocal && profile.isPinProtected) {
      final pin = await showPinEntryDialog(context, profile.displayName);
      return pin != null && verifyProfilePin(profile, pin);
    }
    return showConfirmDialog(
      context,
      title: 'Include ${profile.displayName}?',
      message: 'Include this person’s profile and local data in the encrypted backup?',
      confirmText: 'Include',
    );
  }

  Future<void> _create() async {
    if (_busy || _selected.isEmpty) return;
    setState(() => _busy = true);
    try {
      final profiles = List<Profile>.of(widget.active.profiles);
      final policyRevision = _policyRevision;
      final fingerprint = {
        for (final profile in profiles.where((profile) => _selected.contains(profile.id)))
          profile.id: (
            profile.kind,
            profile.pinHash,
            profile.isPinProtected,
            profile.parentConnectionId,
            profile.plexHomeUserUuid,
          ),
      };
      bool current() {
        if (!mounted ||
            widget.active.activeId != _owner ||
            widget.active.identityMutationGeneration != _generation ||
            _kids.isActiveKids ||
            _kids.activeId != _owner ||
            _policyRevision != policyRevision) {
          return false;
        }
        final latest = {for (final profile in widget.active.profiles) profile.id: profile};
        return fingerprint.entries.every((entry) {
          final profile = latest[entry.key];
          return profile != null &&
              (
                    profile.kind,
                    profile.pinHash,
                    profile.isPinProtected,
                    profile.parentConnectionId,
                    profile.plexHomeUserUuid,
                  ) ==
                  entry.value;
        });
      }

      final selection = await AuthorizedBackupSelection.authorize(
        activeProfileId: _owner,
        profiles: profiles,
        selectedProfileIds: _selected,
        isCurrent: current,
        isKid: _kids.isKids,
        parentFor: _kids.parentFor,
        approveActiveProfile: _approveActiveProfile,
        approveParent: () => ensureParentAccess(context),
        approveOtherAdult: _approveAdult,
        includeCredentials: _includeCredentials,
        approveSharedCredentials: () => showConfirmDialog(
          context,
          title: 'Include saved credentials?',
          message:
              'Server connections can be shared with other profiles. Their access tokens may grant access to data beyond the selected profiles. Anyone with this backup’s recovery code can use them.',
          confirmText: 'Include credentials',
        ),
      );
      if (!mounted || !current()) return;
      // Retain the same code across a failed or ambiguous upload response so
      // retrying cannot silently orphan an already stored backup.
      final code = _recoveryCode ??= CloudBackupRecoveryCode.generate();
      final saved = await _confirmRecoveryCode(context, code);
      if (!saved || !current()) return;
      final unchanged =
          _preparedIds?.length == selection.profileIds.length &&
          _preparedIds!.containsAll(selection.profileIds) &&
          _preparedCredentials == _includeCredentials;
      if (!unchanged) {
        if (_uploadAttempted) {
          throw StateError('Delete or retry the previous backup before changing the selection');
        }
        final keys = await code.deriveKeys();
        _preparedEnvelope = await LurokaBackupSnapshot.exportSelected(
          widget.database,
          keys.encryptionPassword,
          selectedProfileIds: selection.profileIds,
          selectedProfiles: selection.profiles,
          includeCredentials: _includeCredentials,
        );
        _preparedIds = Set.unmodifiable(selection.profileIds);
        _preparedCredentials = _includeCredentials;
      }
      selection.requireCurrent();
      if (!mounted || !current()) return;
      final localDecision = await _offerLocalCopy(context, _preparedEnvelope!);
      if (!localDecision || !current()) return;
      _uploadAttempted = true;
      final receipt = await _client.uploadSelectedEnvelope(
        selection: selection,
        recoveryCode: code,
        envelope: _preparedEnvelope!,
      );
      if (!mounted) return;
      await showScopedDialog<void>(
        context: context,
        builder: (dialog) => AlertDialog(
          title: const Text('Encrypted backup created'),
          content: Text('Expires ${receipt.expiresAt.toLocal()}. Keep the recovery code you saved.'),
          actions: [DialogActionButton(label: 'Done', isPrimary: true, onPressed: () => Navigator.pop(dialog))],
        ),
      );
      if (mounted) Navigator.pop(context);
    } catch (_) {
      if (mounted) {
        await showErrorDialog(
          context,
          'Backup could not be created. Check the selection and connection and try again.',
        );
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  /// A backup can contain account tokens, so a profile unlock is never
  /// treated as perpetual consent to export. Plex Home users must complete
  /// their own Plex PIN flow; local pinned profiles must enter their local PIN.
  Future<bool> _approveActiveProfile(Profile profile) async {
    if (profile.isPlexHome && profile.isPinProtected) return _approveAdult(profile);
    if (profile.isLocal && profile.isPinProtected) return _approveAdult(profile);
    return showConfirmDialog(
      context,
      title: 'Authorize encrypted backup?',
      message: 'Confirm that you want to export ${profile.displayName}\'s selected local data.',
      confirmText: 'Authorize',
    );
  }

  @override
  Widget build(BuildContext context) {
    final profiles = widget.active.profiles;
    final requiresPlexConnection = profiles.any((profile) => _selected.contains(profile.id) && profile.isPlexHome);
    return AlertDialog(
      title: const Text('Create encrypted cloud backup'),
      content: SizedBox(
        width: 520,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Select profiles. Include the linked parent with each Kids profile.'),
              if (requiresPlexConnection && !_includeCredentials)
                const Text('Plex Home profiles require their parent Plex account credentials to be included.'),
              for (final profile in profiles)
                FocusableListTile(
                  key: ValueKey('cloud-backup-profile-${profile.id}'),
                  title: Text(profile.displayName),
                  subtitle: _kids.isKids(profile.id) ? const Text('Kids profile') : null,
                  selected: _selected.contains(profile.id),
                  trailing: Icon(_selected.contains(profile.id) ? Icons.check_box : Icons.check_box_outline_blank),
                  onTap: _busy || _uploadAttempted
                      ? null
                      : () => setState(() {
                          if (!_selected.remove(profile.id)) _selected.add(profile.id);
                        }),
                ),
              FocusableListTile(
                title: const Text('Include saved server and integration credentials'),
                subtitle: const Text('Shared server access may include access beyond a single profile.'),
                selected: _includeCredentials,
                trailing: Icon(_includeCredentials ? Icons.check_box : Icons.check_box_outline_blank),
                onTap: _busy || _uploadAttempted
                    ? null
                    : () => setState(() => _includeCredentials = !_includeCredentials),
              ),
              const Text('Backups expire after 90 days. Downloads are not included.'),
            ],
          ),
        ),
      ),
      actions: [
        DialogActionButton(label: 'Cancel', onPressed: _busy ? null : () => Navigator.pop(context)),
        DialogActionButton(
          label: 'Continue',
          isPrimary: true,
          onPressed: _busy || (requiresPlexConnection && !_includeCredentials) ? null : _create,
        ),
      ],
    );
  }
}

Future<bool> _offerLocalCopy(BuildContext context, String envelope) async {
  final choice = await showScopedDialog<bool>(
    context: context,
    builder: (dialog) => AlertDialog(
      title: const Text('Keep a local copy?'),
      content: const Text('The local copy is encrypted with the same recovery code. Keep both somewhere safe.'),
      actions: [
        DialogActionButton(label: 'Cancel', onPressed: () => Navigator.pop(dialog)),
        DialogActionButton(label: 'Cloud only', onPressed: () => Navigator.pop(dialog, false)),
        DialogActionButton(label: 'Save local copy', isPrimary: true, onPressed: () => Navigator.pop(dialog, true)),
      ],
    ),
  );
  if (choice == null || !context.mounted) return false;
  if (!choice) return true;
  try {
    final bytes = Uint8List.fromList(utf8.encode(envelope));
    final filename = 'luroka-cloud-backup-${DateTime.now().millisecondsSinceEpoch}.json';
    final String? path;
    if (Platform.isAndroid && PlatformDetector.isTV()) {
      final directory = await getApplicationDocumentsDirectory();
      final file = File(p.join(directory.path, filename));
      await file.writeAsBytes(bytes, flush: true);
      path = file.path;
    } else {
      path = await FilePickerService.instance.saveFile(
        dialogTitle: 'Save encrypted backup',
        fileName: filename,
        bytes: bytes,
        type: FileType.custom,
        allowedExtensions: const ['json'],
      );
    }
    if (path == null || !context.mounted) return false;
    await showScopedDialog<void>(
      context: context,
      builder: (dialog) => AlertDialog(
        title: const Text('Local backup saved'),
        content: SelectableText(path!),
        actions: [DialogActionButton(label: 'Continue', isPrimary: true, onPressed: () => Navigator.pop(dialog))],
      ),
    );
    return context.mounted;
  } catch (_) {
    if (context.mounted) await showErrorDialog(context, 'Could not save the local backup.');
    return false;
  }
}

Future<bool> _confirmRecoveryCode(BuildContext context, CloudBackupRecoveryCode code) async {
  final value = code.reveal();
  return await showScopedDialog<bool>(
        context: context,
        barrierDismissible: false,
        builder: (dialog) => AlertDialog(
          title: const Text('Save your recovery code'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Anyone with this code can restore your backup. If you lose it, Luroka cannot recover it.'),
                const SizedBox(height: 12),
                SizedBox(
                  width: 180,
                  height: 180,
                  child: QrImageView(data: value, size: 180, backgroundColor: Colors.white),
                ),
                SelectableText(value),
              ],
            ),
          ),
          actions: [
            DialogActionButton(label: 'Cancel', onPressed: () => Navigator.pop(dialog, false)),
            DialogActionButton(label: 'I saved it', isPrimary: true, onPressed: () => Navigator.pop(dialog, true)),
          ],
        ),
      ) ??
      false;
}

/// Restores only after a preview and an explicit confirmation. This is intended
/// for the sign-in screen, before any profile/database content exists.
Future<bool> showCloudBackupRestore(BuildContext context, {CloudBackupClient? client}) async {
  final db = context.read<AppDatabase>();
  if ((await db.select(db.profiles).get()).isNotEmpty || (await db.select(db.connections).get()).isNotEmpty) {
    if (context.mounted) await showErrorDialog(context, 'Restore requires an empty installation.');
    return false;
  }
  if (!context.mounted) return false;
  final code = await showScopedDialog<String>(
    context: context,
    builder: (_) => PlatformDetector.isTV()
        ? const _TvRecoveryCodeDialog()
        : const _RecoveryCodeDialog(title: 'Restore cloud backup', action: 'Review'),
  );
  if (code == null || !context.mounted) return false;
  final service = client ?? CloudBackupClient();
  try {
    final prepared = await service.prepareRestore(CloudBackupRecoveryCode.parse(code));
    if (!context.mounted) return false;
    final confirmed = await showConfirmDialog(
      context,
      title: 'Review backup',
      message:
          'Profiles: ${prepared.profileNames.join(', ')}\n'
          '${prepared.includesConnections ? 'Includes saved connections.' : 'Connections must be added again.'}\n'
          'Restore requires an empty installation.',
      confirmText: 'Restore',
    );
    if (!confirmed || !context.mounted) return false;
    await prepared.apply(db);
    return true;
  } catch (_) {
    // Match the local restore flow: a committed restore with an outstanding
    // recovery journal must restart rather than continue with stale policy.
    if ((await db.select(db.profiles).get()).isNotEmpty) return true;
    if (context.mounted) await showErrorDialog(context, 'Backup unavailable or recovery code incorrect.');
    return false;
  } finally {
    if (client == null) service.close();
  }
}

class _TvRecoveryCodeDialog extends StatefulWidget {
  const _TvRecoveryCodeDialog();
  @override
  State<_TvRecoveryCodeDialog> createState() => _TvRecoveryCodeDialogState();
}

class _TvRecoveryCodeDialogState extends State<_TvRecoveryCodeDialog> {
  final _relay = ServerPairingClient();
  TvPairingAttempt? _attempt;
  Timer? _timer;
  bool _polling = false;
  bool _enteringManually = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    unawaited(_start());
  }

  Future<void> _start() async {
    try {
      final attempt = await _relay.createTvAttempt();
      if (!mounted) {
        await attempt.cancel();
        return;
      }
      setState(() => _attempt = attempt);
      _timer = Timer.periodic(const Duration(seconds: 2), (_) => unawaited(_poll()));
      await _poll();
    } catch (_) {
      if (mounted) setState(() => _error = 'Phone transfer unavailable. Enter your code manually.');
    }
  }

  Future<void> _poll() async {
    final attempt = _attempt;
    if (attempt == null || _polling || _enteringManually || _error != null) return;
    _polling = true;
    try {
      await attempt.poll();
      if (!mounted) return;
      if (_enteringManually) return;
      if (attempt.hasPayload) {
        final code = attempt.checkCode;
        if (code == null || !attempt.confirm(code)) throw StateError('Transfer expired');
        final recovery = await attempt.takeRecoveryCode();
        if (mounted) Navigator.pop(context, recovery);
      } else {
        setState(() {});
      }
    } catch (_) {
      _timer?.cancel();
      if (mounted) setState(() => _error = 'Transfer expired or was interrupted. Enter your code manually.');
    } finally {
      _polling = false;
    }
  }

  Future<void> _manual() async {
    _enteringManually = true;
    final result = await showScopedDialog<String>(
      context: context,
      builder: (_) => const _RecoveryCodeDialog(title: 'Restore cloud backup', action: 'Review'),
    );
    _enteringManually = false;
    if (mounted && result != null) {
      Navigator.pop(context, result);
    } else if (mounted) {
      unawaited(_poll());
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    final attempt = _attempt;
    if (attempt == null) {
      _relay.close();
    } else {
      unawaited(attempt.cancel().catchError((Object _) {}).whenComplete(_relay.close));
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final attempt = _attempt;
    final code = attempt?.checkCode;
    final invite = attempt == null
        ? null
        : ServerPairingInvite(
            sessionId: attempt.invite.sessionId,
            tvPublicKey: attempt.invite.tvPublicKey,
            secret: attempt.invite.secret,
            recovery: true,
          );
    return AlertDialog(
      title: const Text('Restore with your phone'),
      content: SizedBox(
        width: 440,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (_error != null)
                Text(_error!)
              else if (invite == null)
                const CircularProgressIndicator()
              else ...[
                const Text('Scan with your phone, then use Luroka to scan or paste your saved recovery code.'),
                const SizedBox(height: 12),
              QrImageView(data: invite.toBrowserUri().toString(), size: 240, backgroundColor: Colors.white),
                if (code != null) ...[const SizedBox(height: 12), Text('Confirm this code on your phone: $code')],
              ],
            ],
          ),
        ),
      ),
      actions: [
        DialogActionButton(label: 'Cancel', onPressed: () => Navigator.pop(context)),
        DialogActionButton(label: 'Enter manually', onPressed: _manual),
      ],
    );
  }
}

Future<void> showCloudBackupDeletion(BuildContext context, {CloudBackupClient? client}) async {
  final active = context.read<ActiveProfileProvider>();
  final kids = KidsProfileService.instance;
  final owner = active.activeId;
  final generation = active.identityMutationGeneration;
  if (owner == null ||
      kids.isActiveKids ||
      !await ensureParentAccess(context) ||
      !context.mounted ||
      active.activeId != owner ||
      active.identityMutationGeneration != generation ||
      kids.activeId != owner ||
      kids.isActiveKids) {
    return;
  }
  final code = await showScopedDialog<String>(
    context: context,
    builder: (_) => const _RecoveryCodeDialog(title: 'Delete cloud backup', action: 'Continue'),
  );
  if (code == null ||
      !context.mounted ||
      active.activeId != owner ||
      active.identityMutationGeneration != generation ||
      kids.activeId != owner ||
      kids.isActiveKids) {
    return;
  }
  final confirmed = await showConfirmDialog(
    context,
    title: 'Delete this backup?',
    message: 'The encrypted backup will be removed from the service.',
    confirmText: 'Delete',
    isDestructive: true,
  );
  if (!confirmed ||
      !context.mounted ||
      active.activeId != owner ||
      active.identityMutationGeneration != generation ||
      kids.activeId != owner ||
      kids.isActiveKids) {
    return;
  }
  final service = client ?? CloudBackupClient();
  try {
    await service.delete(CloudBackupRecoveryCode.parse(code));
    if (context.mounted) {
      await showScopedDialog<void>(
        context: context,
        builder: (dialog) => AlertDialog(
          title: const Text('Backup deleted'),
          actions: [DialogActionButton(label: 'Done', isPrimary: true, onPressed: () => Navigator.pop(dialog))],
        ),
      );
    }
  } catch (_) {
    if (context.mounted) await showErrorDialog(context, 'Backup unavailable or recovery code incorrect.');
  } finally {
    if (client == null) service.close();
  }
}

class _RecoveryCodeDialog extends StatefulWidget {
  const _RecoveryCodeDialog({required this.title, required this.action});
  final String title;
  final String action;
  @override
  State<_RecoveryCodeDialog> createState() => _RecoveryCodeDialogState();
}

class _RecoveryCodeDialogState extends State<_RecoveryCodeDialog> {
  final controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: Text(widget.title),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FocusableTextField(
          controller: controller,
          obscureText: true,
          decoration: const InputDecoration(labelText: 'Recovery code'),
        ),
        if (PlatformDetector.isMobile(context))
          TextButton.icon(
            onPressed: () async {
              final scanned = await scanSecureTransferQr(context, SecureTransferQrKind.recovery);
              if (mounted && scanned != null) controller.text = scanned;
            },
            icon: const Icon(Icons.qr_code_scanner),
            label: const Text('Scan recovery code'),
          ),
      ],
    ),
    actions: [
      DialogActionButton(label: 'Cancel', onPressed: () => Navigator.pop(context)),
      DialogActionButton(
        label: widget.action,
        isPrimary: true,
        onPressed: () => Navigator.pop(context, controller.text),
      ),
    ],
  );
}
