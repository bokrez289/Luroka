import 'package:shared_preferences/shared_preferences.dart';

/// Carries previous app settings into Luroka without replacing newer values.
/// The original keys remain available for recovery.
abstract final class BrandStorageMigration {
  static const _done = 'luroka_brand_storage_migrated_v2';

  static Future<void> run(SharedPreferencesWithCache prefs) async {
    if (prefs.getBool(_done) == true) return;
    final keys = prefs.keys.toList();
    for (final oldBrand in ['lomivo', 'lumora']) {
      for (final key in keys) {
        final prefix = '${oldBrand}_';
        final index = key.startsWith(prefix)
            ? 0
            : key.startsWith('user_')
            ? key.lastIndexOf('_$prefix') + 1
            : -1;
        if (index < 0 || !key.substring(index).startsWith(prefix)) continue;
        final target = '${key.substring(0, index)}luroka_${key.substring(index + prefix.length)}';
        if (prefs.containsKey(target)) continue;
        switch (prefs.get(key)) {
          case final bool value:
            await prefs.setBool(target, value);
          case final int value:
            await prefs.setInt(target, value);
          case final double value:
            await prefs.setDouble(target, value);
          case final String value:
            await prefs.setString(target, value);
          case final List<String> value:
            await prefs.setStringList(target, value);
          default:
            throw StateError('Cannot migrate preference $key');
        }
      }
    }
    final theme = prefs.get('theme_mode');
    if (theme is String) {
      for (final oldBrand in ['lomivo', 'lumora']) {
        if (theme.startsWith(oldBrand)) {
          await prefs.setString('theme_mode', 'luroka${theme.substring(oldBrand.length)}');
          break;
        }
      }
    }
    await prefs.setBool(_done, true);
  }
}
