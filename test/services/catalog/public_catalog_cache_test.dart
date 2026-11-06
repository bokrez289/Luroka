import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/services/catalog/public_catalog_cache.dart';
import 'package:luroka/utils/platform_detector.dart';

import '../../test_helpers/prefs.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    resetSharedPreferencesForTest();
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
  });

  test('Apple TV cache is bounded, refreshable, and does not write preferences', () async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    final cache = PublicCatalogCache(isAppleTV: true, maxBytes: 6);
    await cache.setString(prefs, 'feed:a', '1234');
    expect(cache.getString(prefs, 'feed:a'), '1234');
    expect(prefs.getString('feed:a'), isNull);
    await cache.setString(prefs, 'feed:b', '5678');
    expect(cache.getString(prefs, 'feed:a'), isNull);
    expect(cache.getString(prefs, 'feed:b'), '5678');
    await cache.removePrefix(prefs, 'feed:');
    expect(cache.getString(prefs, 'feed:b'), isNull);
    await cache.setString(prefs, 'oversized', '1234567');
    expect(cache.getString(prefs, 'oversized'), isNull);
  });

  test('Apple TV removes only old disposable public caches on startup', () async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    await prefs.setString('luroka_cinemeta_public_v1:/catalog/series/top.json', 'large public response');
    await prefs.setString('luroka_tmdb_public_v1:/trending', 'public response');
    await prefs.setString('tvos_db_recovery_identity_v1', 'recovery data');
    await prefs.setString('credential_vault_key_v1', 'vault data');
    TvDetectionService.debugSetAppleTVOverride(true);
    await PublicCatalogCache.removeLegacyAppleTVCaches(prefs);
    expect(prefs.getString('luroka_cinemeta_public_v1:/catalog/series/top.json'), isNull);
    expect(prefs.getString('luroka_tmdb_public_v1:/trending'), isNull);
    expect(prefs.getString('tvos_db_recovery_identity_v1'), 'recovery data');
    expect(prefs.getString('credential_vault_key_v1'), 'vault data');
  });

  test('other platforms retain persistent cache behavior', () async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    final cache = PublicCatalogCache(isAppleTV: false);
    await cache.setString(prefs, 'feed:a', 'value');
    expect(prefs.getString('feed:a'), 'value');
    await cache.removePrefix(prefs, 'feed:');
    expect(prefs.getString('feed:a'), isNull);
  });
}
