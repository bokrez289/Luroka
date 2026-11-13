import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

/// Keeps the mandatory four-module quiet zone inside the displayed square.
/// Payloads are recovery capabilities: never log them or put them in semantics.
class SecureTransferQr extends StatelessWidget {
  const SecureTransferQr({super.key, required this.data, required this.size});

  final String data;
  final double size;

  @override
  Widget build(BuildContext context) {
    final qr = QrCode.fromData(data: data, errorCorrectLevel: QrErrorCorrectLevel.M);
    final margin = size * 4 / (qr.moduleCount + 8);
    return QrImageView.withQr(
      qr: qr,
      size: size,
      padding: EdgeInsets.all(margin),
      backgroundColor: Colors.white,
      semanticsLabel: 'Private Luroka QR code',
    );
  }
}
