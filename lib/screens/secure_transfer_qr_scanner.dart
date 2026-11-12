import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';

import '../services/cloud_backup_recovery.dart';
import '../services/secure_server_pairing_client.dart';

enum SecureTransferQrKind { pairing, recovery }

/// Validate locally before a scanned capability reaches a pairing/restore flow.
/// Unrelated or oversized QR payloads must never be logged or sent to a server.
bool isSecureTransferQr(String? value, SecureTransferQrKind kind) {
  if (value == null || value.isEmpty || value.length > 512) return false;
  try {
    switch (kind) {
      case SecureTransferQrKind.pairing:
        ServerPairingInvite.parse(Uri.parse(value));
      case SecureTransferQrKind.recovery:
        CloudBackupRecoveryCode.parse(value);
    }
    return true;
  } on FormatException {
    return false;
  }
}

/// Opens the camera only in response to the user's explicit scan action.
Future<String?> scanSecureTransferQr(BuildContext context, SecureTransferQrKind kind) =>
    Navigator.of(context).push<String>(MaterialPageRoute(builder: (_) => _ScannerScreen(kind: kind)));

class _ScannerScreen extends StatefulWidget {
  const _ScannerScreen({required this.kind});
  final SecureTransferQrKind kind;
  @override
  State<_ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<_ScannerScreen> with WidgetsBindingObserver {
  final _qrKey = GlobalKey(debugLabel: 'secure-transfer-scanner');
  QRViewController? _controller;
  StreamSubscription<Barcode>? _subscription;
  bool _accepted = false;
  bool _cameraUnavailable = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    unawaited(_subscription?.cancel());
    // QRView owns and disposes its controller and native camera.
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    unawaited(_setCameraActive(state == AppLifecycleState.resumed));
  }

  Future<void> _setCameraActive(bool active) async {
    final controller = _controller;
    if (controller == null || controller.disposed) return;
    try {
      if (active && !_accepted) {
        await controller.resumeCamera();
      } else {
        await controller.pauseCamera();
      }
    } on CameraException {
      if (mounted) setState(() => _cameraUnavailable = true);
    }
  }

  void _created(QRViewController controller) {
    unawaited(_subscription?.cancel());
    _controller = controller;
    _subscription = controller.scannedDataStream.listen(_detected);
    if (WidgetsBinding.instance.lifecycleState != AppLifecycleState.resumed) {
      unawaited(_setCameraActive(false));
    }
  }

  void _detected(Barcode barcode) {
    if (_accepted || !mounted || WidgetsBinding.instance.lifecycleState != AppLifecycleState.resumed) return;
    final value = barcode.code;
    if (!isSecureTransferQr(value, widget.kind)) return;
    _accepted = true;
    unawaited(_setCameraActive(false));
    Navigator.of(context).pop(value);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Scan QR code')),
    body: Stack(
      fit: StackFit.expand,
      children: [
        QRView(
          key: _qrKey,
          onQRViewCreated: _created,
          formatsAllowed: const [BarcodeFormat.qrcode],
          onPermissionSet: (_, granted) {
            if (mounted) setState(() => _cameraUnavailable = !granted);
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    _cameraUnavailable
                        ? 'Camera unavailable. Go back to enter the code manually, or allow camera access in device settings.'
                        : 'Point the camera at the Luroka QR code. Scanning happens on your device.',
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
