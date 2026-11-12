import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../connection/connection.dart';
import '../../media/media_browser_dialect.dart';
import '../../profiles/active_profile_provider.dart';
import '../../services/kids_profile_service.dart';
import '../../services/paired_server_validation.dart';
import '../../services/secure_server_pairing_client.dart';
import '../../utils/dialogs.dart';
import '../../widgets/dialog_action_button.dart';

/// Enabled for owner-authorized public testing. A build define can disable it.
const serverPairingEnabled = bool.fromEnvironment('LUROKA_SERVER_PAIRING_ENABLED', defaultValue: true);

Future<JellyfinConnection?> showTvServerPairing(
  BuildContext context,
  MediaBrowserDialect dialect, {
  @visibleForTesting ServerPairingClient? relay,
  @visibleForTesting http.Client? validationClient,
  @visibleForTesting void Function(ServerPairingInvite)? onInvitation,
}) => showScopedDialog<JellyfinConnection>(
  context: context,
  barrierDismissible: false,
  builder: (_) => _TvServerPairingDialog(
    dialect: dialect,
    relay: relay,
    validationClient: validationClient,
    onInvitation: onInvitation,
  ),
);

class _TvServerPairingDialog extends StatefulWidget {
  const _TvServerPairingDialog({required this.dialect, this.relay, this.validationClient, this.onInvitation});
  final MediaBrowserDialect dialect;
  final ServerPairingClient? relay;
  final http.Client? validationClient;
  final void Function(ServerPairingInvite)? onInvitation;
  @override
  State<_TvServerPairingDialog> createState() => _TvServerPairingDialogState();
}

class _TvServerPairingDialogState extends State<_TvServerPairingDialog> {
  late final _relay = widget.relay ?? ServerPairingClient();
  late final _http = widget.validationClient ?? http.Client();
  TvPairingAttempt? _attempt;
  Timer? _timer;
  bool _polling = false;
  bool _completing = false;
  String? _error;
  ActiveProfileProvider? _activeProfiles;
  String? _ownerId;
  int? _identityGeneration;
  int _policyChanges = 0;

  @override
  void initState() {
    super.initState();
    _activeProfiles = context.read<ActiveProfileProvider?>();
    _ownerId = _activeProfiles?.activeId;
    _identityGeneration = _activeProfiles?.identityMutationGeneration;
    _activeProfiles?.addListener(_profileChanged);
    KidsProfileService.instance.addListener(_policyChanged);
    if (_authorized) {
      unawaited(_start());
    } else {
      _error = 'Pairing is available only from an adult profile.';
    }
  }

  bool get _authorized {
    final active = _activeProfiles;
    final owner = _ownerId;
    final kids = KidsProfileService.instance;
    // First-run server setup precedes profile creation. It is safe to start a
    // pairing without an owner only while this remains a genuinely empty,
    // initialized installation with no retained parental policy.
    final firstRun =
        owner == null &&
        active != null &&
        active.isInitialized &&
        active.profiles.isEmpty &&
        kids.activeId == null &&
        !kids.hasKids &&
        !kids.hasParentPin;
    return mounted &&
        active != null &&
        (owner != null || firstRun) &&
        active.activeId == owner &&
        active.identityMutationGeneration == _identityGeneration &&
        _policyChanges == 0 &&
        (kids.activeId == null || kids.activeId == owner) &&
        !kids.isActiveKids;
  }

  void _policyChanged() {
    _policyChanges++;
    if (_attempt != null && !_authorized) unawaited(_invalidateAuthorization());
  }

  void _profileChanged() {
    if (_attempt != null && !_authorized) unawaited(_invalidateAuthorization());
  }

  Future<void> _invalidateAuthorization() async {
    if (_error != null) return;
    _timer?.cancel();
    final attempt = _attempt;
    if (attempt != null) {
      try {
        await attempt.cancel();
      } catch (_) {
        // The in-memory relay expires the attempt if cancellation races with
        // delivery. Do not expose relay capabilities in the UI or logs.
      }
    }
    if (mounted) setState(() => _error = 'Profile access changed. Pairing was cancelled.');
  }

  bool _requireAuthorization() {
    if (_authorized) return true;
    unawaited(_invalidateAuthorization());
    return false;
  }

  Future<void> _start() async {
    if (!_requireAuthorization()) return;
    try {
      final attempt = await _relay.createTvAttempt();
      if (!_authorized) {
        await attempt.cancel();
        return;
      }
      setState(() => _attempt = attempt);
      widget.onInvitation?.call(attempt.invite);
      _timer = Timer.periodic(const Duration(seconds: 2), (_) => unawaited(_poll()));
      await _poll();
    } catch (_) {
      if (mounted) setState(() => _error = 'Pairing service unavailable. Try again or enter the server manually.');
    }
  }

  Future<void> _poll() async {
    final attempt = _attempt;
    if (!_requireAuthorization() || attempt == null || _polling || _completing || _error != null) return;
    _polling = true;
    try {
      await attempt.poll();
      if (!mounted) return;
      setState(() {});
      if (attempt.hasPayload) await _complete();
    } catch (_) {
      if (mounted) setState(() => _error = 'Pairing expired or was interrupted. Start again.');
      _timer?.cancel();
    } finally {
      _polling = false;
    }
  }

  Future<void> _complete() async {
    final attempt = _attempt;
    if (_completing || attempt == null || !attempt.hasPayload || !_requireAuthorization()) return;
    setState(() => _completing = true);
    try {
      final code = attempt.checkCode;
      if (code == null || !attempt.confirm(code)) throw StateError('Pairing expired');
      final paired = await attempt.takeConnection();
      if (!_requireAuthorization()) return;
      if (paired.backend != widget.dialect.name) throw const FormatException('Wrong server type');
      final connection = await validatePairedServer(paired, client: _http);
      if (!mounted || !_requireAuthorization()) return;
      Navigator.of(context).pop(connection);
    } catch (_) {
      if (mounted) setState(() => _error = 'Could not verify the server and account. Start pairing again.');
    } finally {
      if (mounted) setState(() => _completing = false);
    }
  }

  @override
  void dispose() {
    _activeProfiles?.removeListener(_profileChanged);
    KidsProfileService.instance.removeListener(_policyChanged);
    _timer?.cancel();
    if (widget.validationClient == null) _http.close();
    final attempt = _attempt;
    if (attempt == null) {
      if (widget.relay == null) _relay.close();
    } else {
      unawaited(
        attempt.cancel().catchError((Object _) {}).whenComplete(() {
          if (widget.relay == null) _relay.close();
        }),
      );
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final attempt = _attempt;
    final code = attempt?.checkCode;
    return AlertDialog(
      title: Text('Connect ${widget.dialect.productName} with your phone'),
      content: SizedBox(
        width: 440,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (_error != null)
                Text(_error!)
              else if (attempt == null)
                const CircularProgressIndicator()
              else ...[
                const Text(
                  'Scan the code with your phone camera or in Luroka. The invitation expires in five minutes.',
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: 240,
                  height: 240,
                  child: QrImageView(
                    data: attempt.invite.toBrowserUri().toString(),
                    size: 240,
                    backgroundColor: Colors.white,
                  ),
                ),
                if (code != null) ...[
                  const SizedBox(height: 12),
                  Text('Check that your phone shows: $code'),
                  const Text('Confirm the matching code on your phone, then finish sign-in there.'),
                ],
              ],
            ],
          ),
        ),
      ),
      actions: [DialogActionButton(label: 'Cancel', onPressed: () => Navigator.pop(context))],
    );
  }
}
