import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:luroka/widgets/secure_transfer_qr.dart';

void main() {
  testWidgets('recovery QR keeps four clear modules at every supported size', (tester) async {
    final data = 'lrb1-${'A' * 43}'; // Synthetic recovery payload only.
    final code = QrCode.fromData(data: data, errorCorrectLevel: QrErrorCorrectLevel.M);
    for (final size in [108.0, 180.0, 220.0]) {
      await tester.pumpWidget(
        MaterialApp(
          home: Center(
            child: SecureTransferQr(data: data, size: size),
          ),
        ),
      );
      final image = tester.widget<QrImageView>(find.byType(QrImageView));
      final padding = image.padding.resolve(TextDirection.ltr);
      final module = (size - padding.horizontal) / code.moduleCount;
      expect(padding.left, closeTo(4 * module, 0.001));
      expect(padding, EdgeInsets.all(padding.left));
      expect(image.backgroundColor, Colors.white);
      expect(image.semanticsLabel, isNot(contains(data)));
      expect(tester.takeException(), isNull);
    }
  });
}
