import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/subtitle_style_service.dart';

import '../test_helpers/prefs.dart';
import '../test_helpers/watch_together_fakes.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() async {
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    await SettingsService.getInstance();
  });

  test('subtitle font defaults to the larger readable size', () {
    expect(SettingsService.instance.read(SettingsService.subtitleFontSize), 42);
  });

  test('MPV subtitle sizing updates the running renderer without restarting playback', () async {
    final player = FakeSyncPlayer();
    addTearDown(player.dispose);
    final settings = SettingsService.instance;
    await settings.write(SettingsService.subtitleFontSize, 76);
    await applyPlaybackSubtitleStyle(player, settings);
    expect(player.properties['sub-font-size'], '38');
    expect(player.properties['sub-scale'], '2.0');
    expect(player.commandLog, isEmpty);
  });
}
