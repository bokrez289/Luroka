import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../profiles/active_profile_provider.dart';
import '../../services/kids_profile_service.dart';
import '../../services/secure_server_pairing_client.dart';
import '../../utils/platform_detector.dart';
import 'phone_server_pairing_screen.dart';
import 'tv_server_pairing_dialog.dart';

/// Android/iOS cold/warm invitation delivery. No invitation is logged or persisted.
/// The user still has to confirm the TV code before any authentication.
class PairingLinkHost extends StatefulWidget {
  const PairingLinkHost({super.key, required this.navigatorKey, required this.child, this.enabledOverride});
  final GlobalKey<NavigatorState> navigatorKey;
  final Widget child;
  @visibleForTesting
  final bool? enabledOverride;
  @override
  State<PairingLinkHost> createState() => _PairingLinkHostState();
}

class _PairingLinkHostState extends State<PairingLinkHost> with WidgetsBindingObserver {
  static const _channel = MethodChannel('com.luroka/pairing_links');
  Timer? _retry;
  bool _opening = false;
  bool get _enabled => widget.enabledOverride ?? (serverPairingEnabled && (Platform.isAndroid || Platform.isIOS));

  @override
  void initState() {
    super.initState();
    if (_enabled) {
      WidgetsBinding.instance.addObserver(this);
      _channel.setMethodCallHandler(_handle);
      WidgetsBinding.instance.addPostFrameCallback((_) => unawaited(_takePending()));
      _retry = Timer.periodic(const Duration(seconds: 2), (_) => unawaited(_takePending()));
    }
  }

  Future<Object?> _handle(MethodCall call) async {
    if (call.method != 'onInvitation' || call.arguments is! String) return false;
    return _open(call.arguments as String);
  }

  bool get _ready {
    if (!mounted) return false;
    final active = context.read<ActiveProfileProvider?>();
    return widget.navigatorKey.currentState != null && active != null && active.isInitialized;
  }

  Future<bool> _open(String value) async {
    ServerPairingInvite invite;
    try {
      invite = ServerPairingInvite.parse(Uri.parse(value));
    } catch (_) {
      return true; // Consume invalid input without logging it.
    }
    if (!_ready || _opening) return false;
    if (KidsProfileService.instance.isActiveKids || PlatformDetector.isTV()) return true;
    _opening = true;
    try {
      await widget.navigatorKey.currentState!.push<void>(
        MaterialPageRoute(builder: (_) => PhoneServerPairingScreen(initialInvitation: invite.toUri())),
      );
    } finally {
      _opening = false;
    }
    return true;
  }

  Future<void> _takePending() async {
    if (!_ready || _opening) return;
    try {
      final value = await _channel.invokeMethod<String>('takeInitialInvitation');
      if (value != null && mounted) unawaited(_open(value));
    } on MissingPluginException {
      _retry?.cancel();
    } on PlatformException {
      // Invitation is ephemeral; never include the platform error in logs.
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) unawaited(_takePending());
  }

  @override
  void dispose() {
    _retry?.cancel();
    if (_enabled) {
      WidgetsBinding.instance.removeObserver(this);
      _channel.setMethodCallHandler(null);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
