import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/models/plex/plex_config.dart';
import 'package:luroka/utils/device_identity.dart';
import 'package:package_info_plus/package_info_plus.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test('production configuration identifies Plex player as Luroka', () async {
    PackageInfo.setMockInitialValues(
      appName: 'Luroka',
      packageName: 'test',
      version: '2.24.0',
      buildNumber: '211',
      buildSignature: '',
    );
    DeviceIdentityService.debugOverride(
      const DeviceIdentity(platform: 'Android', deviceModel: 'AFTKM', deviceName: 'Living Room', isTv: true),
    );
    addTearDown(() => DeviceIdentityService.debugOverride(null));
    final config = await PlexConfig.create(baseUrl: 'https://plex.example.com', clientIdentifier: 'unique-device');
    expect(config.headers['X-Plex-Product'], 'Luroka');
    expect(config.headers['X-Plex-Device-Name'], 'Luroka');
    expect(config.headers['X-Plex-Device'], 'AFTKM');
    expect(config.headers['X-Plex-Client-Identifier'], 'unique-device');
  });
  group('PlexConfig.headers', () {
    test('includes X-Plex-Device-Name when deviceName is set', () {
      final config = PlexConfig(
        baseUrl: 'https://plex.example.com',
        clientIdentifier: 'client-1',
        product: 'Plezy',
        version: '1.0',
        platform: 'Windows',
        device: 'Windows',
        deviceName: 'Living Room PC',
      );
      expect(config.headers['X-Plex-Platform'], 'Windows');
      expect(config.headers['X-Plex-Device'], 'Windows');
      expect(config.headers['X-Plex-Device-Name'], 'Living Room PC');
    });

    test('omits X-Plex-Device-Name and X-Plex-Device when unset', () {
      final config = PlexConfig(
        baseUrl: 'https://plex.example.com',
        clientIdentifier: 'client-1',
        product: 'Plezy',
        version: '1.0',
      );
      expect(config.headers.containsKey('X-Plex-Device-Name'), isFalse);
      expect(config.headers.containsKey('X-Plex-Device'), isFalse);
      // Raw-constructor default is unchanged for tests that rely on it.
      expect(config.headers['X-Plex-Platform'], 'Flutter');
    });

    test('always requests JSON responses', () {
      final config = PlexConfig(
        baseUrl: 'https://plex.example.com',
        clientIdentifier: 'client-1',
        product: 'Plezy',
        version: '1.0',
      );
      expect(config.headers['Accept'], 'application/json');
    });
  });
}
