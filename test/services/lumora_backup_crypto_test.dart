import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/services/luroka_backup_crypto.dart';

void main() {
  test('password protects and authenticates a backup', () async {
    final envelope = await LurokaBackupCrypto.encrypt({
      'profiles': ['private profile'],
    }, 'long passphrase');
    expect(envelope, isNot(contains('private profile')));
    expect(await LurokaBackupCrypto.decrypt(envelope, 'long passphrase'), {
      'profiles': ['private profile'],
    });
    await expectLater(LurokaBackupCrypto.decrypt(envelope, 'wrong password'), throwsA(anything));
    final modified = jsonDecode(envelope) as Map<String, dynamic>;
    final bytes = base64Decode(modified['ciphertext'] as String);
    bytes[0] ^= 1;
    modified['ciphertext'] = base64Encode(bytes);
    await expectLater(LurokaBackupCrypto.decrypt(jsonEncode(modified), 'long passphrase'), throwsA(anything));
  });
}
