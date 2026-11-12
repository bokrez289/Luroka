import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/services/secure_server_pairing_crypto.dart';

void main() {
  test('phone and TV agree on a confirmation code and keep connection data encrypted', () async {
    final id = ServerPairingKeyPair.newSessionId();
    final tv = await ServerPairingKeyPair.create(sessionId: id, isTv: true);
    final phone = await ServerPairingKeyPair.create(sessionId: id, isTv: false);
    final tvSession = await tv.connect(phone.publicKey);
    final phoneSession = await phone.connect(tv.publicKey);
    expect(tvSession.checkCode, phoneSession.checkCode);
    expect(tvSession.checkCode, matches(RegExp(r'^\d{6}$')));
    await expectLater(phoneSession.encrypt({'token': 'private'}), throwsStateError);
    expect(phoneSession.confirm('wrong'), isFalse);
    expect(phoneSession.confirm(phoneSession.checkCode), isTrue);
    expect(tvSession.confirm(tvSession.checkCode), isTrue);
    final encrypted = await phoneSession.encrypt({'url': 'http://private-server', 'user': 'alice', 'token': 'secret'});
    expect(encrypted, isNot(contains('private-server')));
    expect(encrypted, isNot(contains('alice')));
    expect(encrypted, isNot(contains('secret')));
    expect(await tvSession.decrypt(encrypted), {'url': 'http://private-server', 'user': 'alice', 'token': 'secret'});
    await expectLater(phoneSession.encrypt({'token': 'secret'}), throwsStateError);
    await expectLater(tvSession.decrypt(encrypted), throwsStateError);
  });

  test('wrong peer, session and tampered ciphertext fail authentication', () async {
    final id = ServerPairingKeyPair.newSessionId();
    final tv = await ServerPairingKeyPair.create(sessionId: id, isTv: true);
    final phone = await ServerPairingKeyPair.create(sessionId: id, isTv: false);
    final phoneSession = await phone.connect(tv.publicKey);
    final tvSession = await tv.connect(phone.publicKey);
    phoneSession.confirm(phoneSession.checkCode);
    tvSession.confirm(tvSession.checkCode);
    final envelope = await phoneSession.encrypt({'token': 'private'});
    final intruder = await ServerPairingKeyPair.create(sessionId: id, isTv: true);
    final intruderSession = await intruder.connect(phone.publicKey);
    intruderSession.confirm(intruderSession.checkCode);
    await expectLater(intruderSession.decrypt(envelope), throwsA(anything));
    final otherTv = await ServerPairingKeyPair.create(sessionId: ServerPairingKeyPair.newSessionId(), isTv: true);
    final otherSession = await otherTv.connect(phone.publicKey);
    otherSession.confirm(otherSession.checkCode);
    await expectLater(otherSession.decrypt(envelope), throwsA(anything));
    final modified = jsonDecode(envelope) as Map<String, dynamic>;
    final bytes = base64Decode(modified['ciphertext'] as String)..[0] ^= 1;
    modified['ciphertext'] = base64Encode(bytes);
    await expectLater(tvSession.decrypt(jsonEncode(modified)), throwsA(anything));
    await expectLater(tv.connect(tv.publicKey), throwsFormatException);
    await expectLater(tv.connect('A' * 43), throwsFormatException);
  });
}
