import '../../providers/multi_server_provider.dart';
import '../../services/jellyfin_client.dart';
import '../../media/ids.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../../media/media_browser_dialect.dart';
import '../../profiles/active_profile_provider.dart';
import '../../services/kids_profile_service.dart';
import '../../services/jellyfin_lan_discovery_service.dart';
import '../../services/pairing_phone_auth.dart';
import '../../services/secure_server_pairing_client.dart';
import '../../services/cloud_backup_recovery.dart';
import '../secure_transfer_qr_scanner.dart';

/// Experimental phone half of server pairing. The invitation can be pasted
/// until native QR/deep-link integration is ready.
class PhoneServerPairingScreen extends StatefulWidget {
  const PhoneServerPairingScreen({super.key, this.initialInvitation, this.relay, this.serverHttp});
  final Uri? initialInvitation;
  @visibleForTesting
  final ServerPairingClient? relay;
  @visibleForTesting
  final http.Client? serverHttp;
  @override
  State<PhoneServerPairingScreen> createState() => _PhoneServerPairingScreenState();
}

class _PhoneServerPairingScreenState extends State<PhoneServerPairingScreen> {
  late final _relay = widget.relay ?? ServerPairingClient();
  late final _serverHttp = widget.serverHttp ?? http.Client();
  late final _invite = TextEditingController(text: widget.initialInvitation?.toString());
  final _server = TextEditingController();
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _recovery = TextEditingController();
  bool _recoveryTransfer = false;
  PhonePairingAttempt? _attempt;
  String _backend = 'jellyfin';
  bool _confirmed = false;
  bool _busy = false;
  bool _sent = false;
  bool _terminal = false;
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
    if (widget.initialInvitation != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) unawaited(_join());
      });
    }
  }

  bool get _authorized {
    final active = _activeProfiles;
    final owner = _ownerId;
    final kids = KidsProfileService.instance;
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
    if (_terminal) return;
    _terminal = true;
    final attempt = _attempt;
    if (attempt != null) {
      try {
        await attempt.cancel();
      } catch (_) {
        // The relay session still expires after five minutes. Never surface
        // capabilities or transport details in an authorization error.
      }
    }
    if (mounted) {
      setState(() => _error = 'Profile access changed. Pairing was cancelled.');
    }
  }

  bool _requireAuthorization() {
    if (_authorized) return true;
    unawaited(_invalidateAuthorization());
    return false;
  }

  Future<void> _join() async {
    if (_busy || !_requireAuthorization()) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final invitation = ServerPairingInvite.parse(Uri.parse(_invite.text.trim()));
      final attempt = await _relay.join(invitation);
      if (!_authorized) {
        await attempt.cancel();
        return;
      }
      _invite.clear();
      setState(() {
        _recoveryTransfer = invitation.recovery;
        _attempt = attempt;
      });
    } catch (_) {
      if (mounted) setState(() => _error = 'Invitation invalid, expired, or unavailable. Try a new code.');
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  List<Widget> _savedServerChoices() {
    final servers = context.watch<MultiServerProvider?>();
    final clients = [
      for (final id in servers?.onlineServerIds ?? <String>[])
        if (servers?.getClientForServer(ServerId(id)) case final JellyfinClient client)
          if (Uri.tryParse(client.connection.baseUrl)?.scheme == 'https') client,
    ];
    if (clients.isEmpty) return const [];
    return [
      const Text('Use a server from this phone'),
      for (final client in clients)
        ListTile(
          leading: const Icon(Icons.dns_outlined),
          title: Text(client.connection.serverName),
          subtitle: Text(client.connection.userName),
          onTap: _busy
              ? null
              : () => setState(() {
                  _server.text = client.connection.baseUrl;
                  _username.text = client.connection.userName;
                  _backend = client.connection.dialect.name;
                }),
        ),
      const Text('Enter your password to create a separate TV session.'),
      const SizedBox(height: 12),
    ];
  }

  Future<void> _scan() async {
    final value = await scanSecureTransferQr(context, SecureTransferQrKind.pairing);
    if (!mounted || value == null) return;
    _invite.text = value;
    await _join();
  }

  Future<void> _authenticateAndSend() async {
    final attempt = _attempt;
    if (_busy || !_confirmed || attempt == null || !_requireAuthorization()) return;
    final input = _server.text.trim();
    final server = Uri.tryParse(input.contains('://') ? input : 'https://$input');
    if (server == null || server.scheme != 'https' || server.host.isEmpty) {
      setState(() => _error = 'Pairing requires HTTPS with a trusted certificate.');
      return;
    }
    final username = _username.text;
    final password = _password.text;
    _password.clear();
    var sending = false;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final connection = await authenticateServerForTv(
        client: _serverHttp,
        backend: _backend,
        baseUrl: server.toString(),
        username: username,
        password: password,
        allowInsecureHttp: false,
      );
      if (!_requireAuthorization()) return;
      sending = true;
      await attempt.sendConnection(connection);
      if (!_requireAuthorization()) return;
      setState(() => _sent = true);
    } catch (_) {
      if (mounted) {
        setState(() {
          _terminal = sending;
          _error = sending
              ? 'Pairing could not be completed. Cancel and start a new pairing.'
              : 'Could not sign in. Check the server and try again.';
        });
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _sendRecovery() async {
    final attempt = _attempt;
    if (_busy || !_confirmed || attempt == null || !_requireAuthorization()) return;
    try {
      final code = CloudBackupRecoveryCode.parse(_recovery.text).reveal();
      setState(() {
        _busy = true;
        _error = null;
      });
      await attempt.sendRecoveryCode(code);
      _recovery.clear();
      if (_requireAuthorization()) setState(() => _sent = true);
    } on FormatException {
      if (mounted) setState(() => _error = 'Enter a valid recovery code.');
    } catch (_) {
      if (mounted) {
        setState(() {
          _terminal = true;
          _error = 'Transfer failed. Start again on your TV.';
        });
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _findServers() async {
    if (_busy || !_requireAuthorization()) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final dialect = _backend == 'emby' ? MediaBrowserDialect.emby : MediaBrowserDialect.jellyfin;
      final servers = await JellyfinLanDiscoveryService().discover(
        dialect: dialect,
        responseWindow: const Duration(milliseconds: 1500),
      );
      if (!mounted) return;
      if (servers.isEmpty) {
        setState(() => _error = 'No servers found. Enter the HTTPS server address manually.');
        return;
      }
      final selected = await showDialog<String>(
        context: context,
        builder: (dialog) => AlertDialog(
          title: const Text('Choose a server'),
          content: SizedBox(
            width: 440,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (final server in servers)
                    ListTile(
                      title: Text(server.name),
                      subtitle: Text(server.address),
                      onTap: () => Navigator.pop(dialog, server.address),
                    ),
                ],
              ),
            ),
          ),
          actions: [TextButton(onPressed: () => Navigator.pop(dialog), child: const Text('Cancel'))],
        ),
      );
      if (mounted && selected != null) {
        setState(() {
          _server.text = selected;
        });
      }
    } catch (_) {
      if (mounted) setState(() => _error = 'Could not discover servers. Enter the address manually.');
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  void _confirm() {
    final attempt = _attempt;
    if (_requireAuthorization() && attempt != null && attempt.confirm(attempt.checkCode)) {
      setState(() => _confirmed = true);
    }
  }

  @override
  void dispose() {
    _activeProfiles?.removeListener(_profileChanged);
    KidsProfileService.instance.removeListener(_policyChanged);
    _invite.dispose();
    _server.dispose();
    _username.dispose();
    _password.dispose();
    _recovery.dispose();
    if (widget.serverHttp == null) _serverHttp.close();
    final attempt = _attempt;
    if (attempt == null || _sent) {
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
    return Scaffold(
      appBar: AppBar(title: const Text('Connect a TV')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (_sent)
                Text(
                  _recoveryTransfer
                      ? 'Recovery code sent. Continue on your TV.'
                      : 'Connection sent. Finish setup on your TV.',
                )
              else if (attempt == null) ...[
                const Text('Scan the TV code or paste the invitation.'),
                OutlinedButton.icon(
                  onPressed: _busy ? null : _scan,
                  icon: const Icon(Icons.qr_code_scanner),
                  label: const Text('Scan TV code'),
                ),
                TextField(
                  controller: _invite,
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: const InputDecoration(labelText: 'TV invitation'),
                ),
                const SizedBox(height: 16),
                FilledButton(onPressed: _busy ? null : _join, child: const Text('Connect')),
              ] else if (!_confirmed) ...[
                Text('Check that your TV shows the same code: ${attempt.checkCode}'),
                const SizedBox(height: 16),
                FilledButton(onPressed: _busy ? null : _confirm, child: const Text('Codes match')),
              ] else if (_recoveryTransfer) ...[
                const Text('Scan or paste your saved recovery code. It will be encrypted for your TV.'),
                TextField(
                  controller: _recovery,
                  obscureText: true,
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: const InputDecoration(labelText: 'Recovery code'),
                ),
                TextButton.icon(
                  onPressed: _busy
                      ? null
                      : () async {
                          final code = await scanSecureTransferQr(context, SecureTransferQrKind.recovery);
                          if (mounted && code != null) _recovery.text = code;
                        },
                  icon: const Icon(Icons.qr_code_scanner),
                  label: const Text('Scan recovery code'),
                ),
                FilledButton(onPressed: _busy || _terminal ? null : _sendRecovery, child: const Text('Send to TV')),
              ] else ...[
                ..._savedServerChoices(),
                const Text('Sign in to your server. Your password is sent to that server, not to Luroka.'),
                const SizedBox(height: 12),
                DropdownButtonFormField<String>(
                  key: ValueKey(_backend),
                  initialValue: _backend,
                  items: const [
                    DropdownMenuItem(value: 'jellyfin', child: Text('Jellyfin')),
                    DropdownMenuItem(value: 'emby', child: Text('Emby')),
                  ],
                  onChanged: _busy
                      ? null
                      : (value) {
                          if (value != null) setState(() => _backend = value);
                        },
                ),
                TextButton.icon(
                  onPressed: _busy ? null : _findServers,
                  icon: const Icon(Icons.travel_explore),
                  label: const Text('Find servers on this network'),
                ),
                TextField(
                  controller: _server,
                  keyboardType: TextInputType.url,
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: const InputDecoration(labelText: 'Server URL', hintText: 'https://'),
                ),
                TextField(
                  controller: _username,
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: const InputDecoration(labelText: 'Username'),
                ),
                TextField(
                  controller: _password,
                  obscureText: true,
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: const InputDecoration(labelText: 'Password'),
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: _busy || _terminal ? null : _authenticateAndSend,
                  child: const Text('Sign in and send'),
                ),
              ],
              if (_error != null) ...[
                const SizedBox(height: 12),
                Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
