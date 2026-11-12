import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../services/cloud_backup_recovery.dart';
import '../services/secure_server_pairing_client.dart';

enum SecureTransferQrKind { pairing, recovery }

/// Opens the camera only in response to the user's explicit scan action.
/// QR contents and camera frames are never logged or sent to the relay.
Future<String?> scanSecureTransferQr(BuildContext context, SecureTransferQrKind kind) =>
    Navigator.of(context).push<String>(MaterialPageRoute(builder: (_) => _ScannerScreen(kind: kind)));

class _ScannerScreen extends StatefulWidget {
  const _ScannerScreen({required this.kind});
  final SecureTransferQrKind kind;
  @override
  State<_ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<_ScannerScreen> {
  bool _accepted = false;
  void _detected(BarcodeCapture capture) {
    if (_accepted || !mounted) return;
    for (final barcode in capture.barcodes) {
      final value = barcode.rawValue;
      if (value == null || value.length > 512) continue;
      try {
        switch (widget.kind) {
          case SecureTransferQrKind.pairing:
            ServerPairingInvite.parse(Uri.parse(value));
          case SecureTransferQrKind.recovery:
            CloudBackupRecoveryCode.parse(value);
        }
        _accepted = true;
        Navigator.of(context).pop(value);
        return;
      } on FormatException {
        // Ignore unrelated QR codes without exposing their contents.
      }
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Scan QR code')),
    body: MobileScanner(
      onDetect: _detected,
      errorBuilder: (_, _) => const Center(child: Text('Camera unavailable. You can enter the code manually.')),
      overlayBuilder: (_, _) => const Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text('Point the camera at the Luroka QR code', style: TextStyle(color: Colors.white)),
        ),
      ),
    ),
  );
}
