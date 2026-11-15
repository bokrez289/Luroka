import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';
import 'package:luroka/screens/secure_transfer_qr_scanner.dart';
import 'package:luroka/services/cloud_backup_recovery.dart';
import 'package:luroka/services/secure_server_pairing_client.dart';

void main() {
  for (final kind in SecureTransferQrKind.values) {
    for (final size in [const Size(360, 740), const Size(800, 1100), const Size(640, 360)]) {
      testWidgets('$kind scanner has a usable scan frame at $size', (tester) async {
        tester.view.physicalSize = size;
        tester.view.devicePixelRatio = 1;
        addTearDown(tester.view.reset);
        await tester.pumpWidget(
          MaterialApp(
            home: Builder(
              builder: (context) => Scaffold(
                body: TextButton(onPressed: () => scanSecureTransferQr(context, kind), child: const Text('Scan')),
              ),
            ),
          ),
        );
        await tester.tap(find.text('Scan'));
        await tester.pumpAndSettle();
        final scanner = tester.widget<QRView>(find.byType(QRView));
        expect(scanner.overlay, isNotNull);
        expect(scanner.overlay!.cutOutWidth, greaterThan(100));
        expect(scanner.overlay!.cutOutHeight, greaterThan(100));
        expect(find.text(kind == SecureTransferQrKind.recovery ? 'BACKUP RECOVERY' : 'TV CONNECTION'), findsOneWidget);
        expect(tester.takeException(), isNull);
        await tester.ensureVisible(find.text('Enter code manually instead'));
        await tester.tap(find.text('Enter code manually instead'));
        await tester.pumpAndSettle();
        expect(find.byType(QRView), findsNothing);
      });
    }
  }
  final invite = ServerPairingInvite(
    sessionId: base64Url.encode(List.filled(32, 1)).replaceAll('=', ''),
    tvPublicKey: base64Url.encode(List.filled(32, 2)).replaceAll('=', ''),
    secret: base64Url.encode(List.filled(32, 3)).replaceAll('=', ''),
  );

  test('scanner accepts app and HTTPS pairing codes only in the pairing flow', () {
    for (final uri in [invite.toUri(), invite.toBrowserUri()]) {
      expect(isSecureTransferQr(uri.toString(), SecureTransferQrKind.pairing), isTrue);
      expect(isSecureTransferQr(uri.toString(), SecureTransferQrKind.recovery), isFalse);
    }
  });

  test('scanner accepts recovery codes only in the recovery flow', () {
    final code = CloudBackupRecoveryCode.generate().reveal();
    expect(isSecureTransferQr(code, SecureTransferQrKind.recovery), isTrue);
    expect(isSecureTransferQr(code, SecureTransferQrKind.pairing), isFalse);
  });

  test('scanner rejects unrelated, oversized and credential-bearing URLs', () {
    final valid = invite.toBrowserUri();
    for (final value in <String?>[
      null,
      '',
      'x' * 513,
      'not a Luroka code',
      valid.replace(scheme: 'http').toString(),
      valid.replace(host: 'example.com').toString(),
      valid.replace(query: 'token=example').toString(),
      valid.replace(userInfo: 'user:password').toString(),
      valid.replace(port: 8443).toString(),
      'https://connect.luroka.app/pair#invalid',
    ]) {
      expect(isSecureTransferQr(value, SecureTransferQrKind.pairing), isFalse);
      expect(isSecureTransferQr(value, SecureTransferQrKind.recovery), isFalse);
    }
  });
}
