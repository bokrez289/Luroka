import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/services/cloud_backup_recovery.dart';
import 'package:luroka/services/luroka_backup_crypto.dart';

void main() {
  test('recovery code round trips and derives independent stable capabilities', () async {
    final original = CloudBackupRecoveryCode.generate();
    final code = original.reveal();
    final fromCode = CloudBackupRecoveryCode.parse(code);
    final first = await original.deriveKeys();
    final second = await fromCode.deriveKeys();

    expect(second.lookup, first.lookup);
    expect(second.deletion, first.deletion);
    expect(second.encryptionPassword, first.encryptionPassword);
    expect({first.lookup, first.deletion, first.encryptionPassword}, hasLength(3));
    expect([first.lookup, first.deletion, first.encryptionPassword], isNot(contains(code.substring(5))));
    expect(CloudBackupRecoveryCode.generate().reveal(), isNot(code));
  });

  test('rejects malformed, noncanonical and wrong-version recovery codes', () {
    for (final code in ['lrb2-abc', 'lrb1-', 'lrb1-${'a' * 42}', 'lrb1-${'a' * 43}=', 'lrb1-${'!' * 43}']) {
      expect(() => CloudBackupRecoveryCode.parse(code), throwsFormatException);
    }
    // The final base64 character contains padding bits; nonzero bits are not canonical.
    expect(() => CloudBackupRecoveryCode.parse('lrb1-${'A' * 42}B'), throwsFormatException);
  });

  test('server-facing capabilities cannot decrypt an authenticated backup', () async {
    final keys = await CloudBackupRecoveryCode.generate().deriveKeys();
    final backup = await LurokaBackupCrypto.encrypt({'token': 'private connection token'}, keys.encryptionPassword);
    expect(backup, isNot(contains('private connection token')));
    expect(jsonDecode(backup), isA<Map>());
    expect(await LurokaBackupCrypto.decrypt(backup, keys.encryptionPassword), {'token': 'private connection token'});
    await expectLater(LurokaBackupCrypto.decrypt(backup, keys.lookup), throwsA(anything));
    await expectLater(LurokaBackupCrypto.decrypt(backup, keys.deletion), throwsA(anything));
  });
}
