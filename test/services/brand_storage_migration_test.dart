import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/services/brand_storage_migration.dart';

import '../test_helpers/prefs.dart';

void main() {
  test('preserves family data and respects settings already migrated', () async {
    resetSharedPreferencesForTest();
    final prefs = await BaseSharedPreferencesService.sharedCache();
    await prefs.setString('lumora_kids_profiles_v1', '{"children":{"kid":{}}}');
    await prefs.setString('user_adult_lumora_tmdb_credential', 'key');
    await prefs.setBool('lumora_auto_login_last_profile', true);
    await prefs.setBool('luroka_auto_login_last_profile', false);
    await prefs.setString('theme_mode', 'lumoraCoral');
    await prefs.setString('lomivo_kids_profiles_v1', '{"children":{"recent":{}}}');
    await prefs.setString('user_adult_lomivo_custom', 'preserved');
    await prefs.setBool('luroka_brand_storage_migrated_v1', true);
    await prefs.remove('luroka_brand_storage_migrated_v2');

    await BrandStorageMigration.run(prefs);
    expect(prefs.getString('luroka_kids_profiles_v1'), '{"children":{"recent":{}}}');
    expect(prefs.getString('user_adult_luroka_custom'), 'preserved');
    expect(prefs.getString('user_adult_luroka_tmdb_credential'), 'key');
    expect(prefs.getBool('luroka_auto_login_last_profile'), false);
    expect(prefs.getString('theme_mode'), 'lurokaCoral');

    await prefs.remove('luroka_kids_profiles_v1');
    await BrandStorageMigration.run(prefs);
    expect(prefs.containsKey('luroka_kids_profiles_v1'), false);
  });
}
