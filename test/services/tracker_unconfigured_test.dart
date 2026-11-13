import 'package:flutter_test/flutter_test.dart';
import 'package:http/testing.dart';
import 'package:luroka/services/trackers/simkl/simkl_auth_service.dart';
import 'package:luroka/services/trackers/simkl/simkl_constants.dart';

void main() {
  test('unconfigured Simkl fails before sending an authorization request', () async {
    final http = MockClient((_) async => fail('unexpected network request'));
    final simkl = SimklAuthService(httpClient: http);
    await expectLater(simkl.createDeviceCode(), throwsStateError);
    expect(() => SimklConstants.clientIdFor(null), throwsStateError);
    expect(() => SimklConstants.clientIdFor('old-token'), throwsStateError);
    http.close();
  }, skip: SimklConstants.v2ClientId.isNotEmpty);
}
