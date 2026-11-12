import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/services/settings_export_service.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/services/profile_settings_store.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/models/player_setting_scope.dart';
import 'package:luroka/models/external_player_models.dart';
import 'package:luroka/utils/platform_detector.dart';

import '../test_helpers/prefs.dart';

void main() {
  setUp(resetSharedPreferencesForTest);

  test('existing profiles keep migrated settings and new profiles start at defaults', () async {
    final settings = await SettingsService.getInstance();
    await settings.write(SettingsService.themeMode, ThemeMode.dark);
    await settings.write(SettingsService.posterDetails, true);
    await settings.write(SettingsService.showThemeMusic, false);
    await settings.write(SettingsService.seekTimeSmall, 25);
    settings.selectProfile('one');
    await settings.prepareProfileSettings(['one', 'two']);

    final theme = settings.listenable(SettingsService.themeMode);
    expect(theme.value, ThemeMode.dark);
    await settings.write(SettingsService.themeMode, ThemeMode.light);
    await settings.write(SettingsService.posterDetails, false);
    await settings.write(SettingsService.seekTimeSmall, 40);

    settings.selectProfile('two');
    expect(theme.value, ThemeMode.dark);
    expect(settings.read(SettingsService.posterDetails), isTrue);
    expect(settings.read(SettingsService.showThemeMusic), isFalse);
    expect(settings.read(SettingsService.seekTimeSmall), 25);
    expect(settings.readForProfile('one', SettingsService.themeMode), ThemeMode.light);
    expect(settings.readForProfile('one', SettingsService.seekTimeSmall), 40);
    expect(settings.read(SettingsService.themeMode), ThemeMode.dark);

    settings.selectProfile('new');
    expect(theme.value, SettingsService.themeMode.resolvedDefault);
    expect(settings.read(SettingsService.posterDetails), isFalse);
    expect(settings.read(SettingsService.showThemeMusic), isTrue);
    expect(settings.read(SettingsService.seekTimeSmall), SettingsService.seekTimeSmall.resolvedDefault);

    settings.selectProfile('one');
    expect(theme.value, ThemeMode.light);
    expect(settings.read(SettingsService.posterDetails), isFalse);
    expect(settings.read(SettingsService.showThemeMusic), isFalse);
    expect(settings.read(SettingsService.seekTimeSmall), 40);
  });

  test('a write finishing after a profile switch stays with its original owner', () async {
    final settings = await SettingsService.getInstance();
    await settings.prepareProfileSettings(['one', 'two']);
    settings.selectProfile('one');
    final write = settings.write(SettingsService.showThemeMusic, false);
    settings.selectProfile('two');
    await write;
    expect(settings.read(SettingsService.showThemeMusic), isTrue);
    settings.selectProfile('one');
    expect(settings.read(SettingsService.showThemeMusic), isFalse);
  });

  test('reset, export and import address the selected profile', () async {
    final settings = await SettingsService.getInstance();
    await settings.prepareProfileSettings(['one', 'two']);
    settings.selectProfile('one');
    await settings.write(SettingsService.themeMode, ThemeMode.dark);
    await settings.write(SettingsService.showThemeMusic, false);
    final exported = SettingsExportService.buildExportMap(settings.prefs, currentUserUuid: 'one');

    settings.selectProfile('two');
    await SettingsExportService.applyImportMap(exported, settings.prefs, currentUserUuid: 'two');
    settings.refreshListenables();
    expect(settings.read(SettingsService.themeMode), ThemeMode.dark);
    expect(settings.read(SettingsService.showThemeMusic), isFalse);
    await settings.reset(SettingsService.showThemeMusic);
    expect(settings.read(SettingsService.showThemeMusic), isTrue);

    settings.selectProfile('one');
    expect(settings.read(SettingsService.showThemeMusic), isFalse);
  });

  test('sign-out clears profile settings and permits the same identity to sign in again', () async {
    final settings = await SettingsService.getInstance();
    await settings.prepareProfileSettings(['one', 'two']);
    settings.selectProfile('one');
    await settings.write(SettingsService.showThemeMusic, false);
    settings.selectProfile('two');
    await settings.write(SettingsService.posterDetails, true);
    final oldView = settings.prefs;

    await settings.clearProfileSettingsForLogout(['one', 'two']);
    await expectLater(oldView.setBool(SettingsService.posterDetails.key, true), throwsStateError);
    settings.selectProfile('one');
    expect(settings.read(SettingsService.showThemeMusic), isTrue);
    await settings.write(SettingsService.showThemeMusic, false);
    expect(settings.read(SettingsService.showThemeMusic), isFalse);
    settings.selectProfile('two');
    expect(settings.read(SettingsService.posterDetails), isFalse);
  });

  test('reset all does not reset another profile’s scoped choices', () async {
    final settings = await SettingsService.getInstance();
    await settings.prepareProfileSettings(['one', 'two']);
    settings.selectProfile('one');
    await settings.write(SettingsService.themeMode, ThemeMode.dark);
    settings.selectProfile('two');
    await settings.write(SettingsService.themeMode, ThemeMode.light);
    await settings.resetAllSettings();
    expect(settings.read(SettingsService.themeMode), SettingsService.themeMode.resolvedDefault);
    settings.selectProfile('one');
    expect(settings.read(SettingsService.themeMode), ThemeMode.dark);
  });

  test('legacy playback choices migrate independently and do not leak to new profiles', () async {
    final settings = await SettingsService.getInstance();
    await settings.prefs.setBool('auto_skip_intro', true);
    await settings.prefs.setBool('use_season_poster', true);
    await settings.prepareProfileSettings(['one', 'two']);

    settings.selectProfile('one');
    expect(settings.read(SettingsService.skipIntroMode), SkipMarkerMode.auto);
    expect(settings.read(SettingsService.episodePosterMode), EpisodePosterMode.seasonPoster);
    settings.selectProfile('new');
    expect(settings.read(SettingsService.skipIntroMode), SkipMarkerMode.button);
    expect(settings.read(SettingsService.episodePosterMode), EpisodePosterMode.episodeThumbnail);
    settings.selectProfile('two');
    expect(settings.read(SettingsService.skipIntroMode), SkipMarkerMode.auto);
    expect(settings.read(SettingsService.episodePosterMode), EpisodePosterMode.seasonPoster);
  });

  test('player defaults, scopes and delayed volume writes stay with their profile', () async {
    final settings = await SettingsService.getInstance();
    await settings.prepareProfileSettings(['one', 'two']);
    settings.selectProfile('one');
    await settings.write(SettingsService.defaultPlaybackSpeed, 1.5);
    final saveVolume = settings.captureWriter(SettingsService.volume);
    await settings.write(SettingsService.playbackSpeedScope, PlayerSettingScope.title);
    expect(settings.read(SettingsService.defaultPlaybackSpeed), 1.0);

    settings.selectProfile('two');
    await settings.write(SettingsService.defaultPlaybackSpeed, 2.0);
    await saveVolume(40);
    expect(settings.read(SettingsService.volume), 100);
    expect(settings.read(SettingsService.playbackSpeedScope), PlayerSettingScope.global);

    settings.selectProfile('one');
    expect(settings.read(SettingsService.volume), 40);
    expect(settings.read(SettingsService.playbackSpeedScope), PlayerSettingScope.title);
    expect(settings.read(SettingsService.defaultPlaybackSpeed), 1.0);
    settings.selectProfile('two');
    expect(settings.read(SettingsService.defaultPlaybackSpeed), 2.0);
  });

  test('a shared shader file is kept while another profile still references it', () async {
    final settings = await SettingsService.getInstance();
    await settings.prepareProfileSettings(['one', 'two']);
    settings.selectProfile('one');
    await settings.write(SettingsService.customShaderPresets, [
      {'fileName': 'shared.glsl'},
    ]);
    settings.selectProfile('two');
    await settings.write(SettingsService.customShaderPresets, [
      {'fileName': 'shared.glsl'},
    ]);
    await settings.write(SettingsService.customShaderPresets, <Map<String, dynamic>>[]);
    expect(settings.isShaderFileReferenced('shared.glsl'), isTrue);
    settings.selectProfile('one');
    await settings.write(SettingsService.customShaderPresets, <Map<String, dynamic>>[]);
    expect(settings.isShaderFileReferenced('shared.glsl'), isFalse);
  });

  test('external player selection is independent for each profile', () async {
    final settings = await SettingsService.getInstance();
    await settings.prepareProfileSettings(['one', 'two']);
    settings.selectProfile('one');
    final vlc = KnownPlayers.findById('vlc')!;
    await settings.selectExternalPlayer(vlc);
    settings.selectProfile('two');
    expect(settings.read(SettingsService.selectedExternalPlayer).id, KnownPlayers.systemDefault.id);
    settings.selectProfile('one');
    expect(settings.read(SettingsService.selectedExternalPlayer).id, vlc.id);
  });

  test('player configuration and relay choices are independent per profile', () async {
    final settings = await SettingsService.getInstance();
    await settings.prepareProfileSettings(['one', 'two']);
    settings.selectProfile('one');
    await settings.write(SettingsService.mpvConfigText, 'hwdec=auto');
    await settings.write(SettingsService.watchPartyRelayUrl, 'https://relay.example');
    settings.selectProfile('two');
    expect(settings.read(SettingsService.mpvConfigText), isEmpty);
    expect(settings.read(SettingsService.watchPartyRelayUrl), isNull);
    settings.selectProfile('one');
    expect(settings.read(SettingsService.mpvConfigText), 'hwdec=auto');
    expect(settings.read(SettingsService.watchPartyRelayUrl), 'https://relay.example');
  });

  test('force-TV mode follows the selected profile before layout listeners refresh', () async {
    TvDetectionService.debugReset();
    addTearDown(TvDetectionService.debugReset);
    await TvDetectionService.getInstance();
    final settings = await SettingsService.getInstance();
    await settings.prepareProfileSettings(['one', 'two']);
    settings.selectProfile('one');
    await settings.write(SettingsService.forceTvMode, true);
    settings.selectProfile('two');
    expect(PlatformDetector.isTV(), isFalse);
    settings.selectProfile('one');
    expect(PlatformDetector.isTV(), isTrue);
    settings.selectProfile('two');
    expect(PlatformDetector.isTV(), isFalse);
  });

  test('startup preferences can be read for the last profile before session binding', () async {
    var settings = await SettingsService.getInstance();
    await settings.prepareProfileSettings(['one', 'two']);
    settings.selectProfile('one');
    await settings.write(SettingsService.startInFullscreen, true);
    await settings.write(SettingsService.autoCheckUpdatesOnStartup, false);

    SettingsService.resetForTesting();
    BaseSharedPreferencesService.resetForTesting();
    settings = await SettingsService.getInstance();
    expect(settings.readForProfile('one', SettingsService.startInFullscreen), isTrue);
    expect(settings.readForProfile('one', SettingsService.autoCheckUpdatesOnStartup), isFalse);
    expect(settings.readForProfile('two', SettingsService.startInFullscreen), isFalse);
    expect(settings.readForProfile('two', SettingsService.autoCheckUpdatesOnStartup), isTrue);
  });

  test('automatic watched-download removal is independent for each profile', () async {
    final settings = await SettingsService.getInstance();
    await settings.prepareProfileSettings(['one', 'two']);
    settings.selectProfile('one');
    await settings.write(SettingsService.autoRemoveWatchedDownloads, true);
    settings.selectProfile('two');
    expect(settings.read(SettingsService.autoRemoveWatchedDownloads), isFalse);
    expect(settings.readForProfile('one', SettingsService.autoRemoveWatchedDownloads), isTrue);
  });

  test('newly scoped startup preferences migrate for already-migrated profiles', () async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    final oldStore = ProfileSettingsStore(prefs);
    await prefs.setBool(SettingsService.startInFullscreen.key, true);
    await oldStore.migrateLegacy(profileIds: ['one', 'two'], preferenceKeys: const []);
    await oldStore.migrateAdditionalLegacy(profileIds: ['one', 'two'], preferenceKeys: const []);
    final settings = await SettingsService.getInstance();
    await settings.prepareProfileSettings(['one', 'two']);
    expect(settings.readForProfile('one', SettingsService.startInFullscreen), isTrue);
    expect(settings.readForProfile('two', SettingsService.startInFullscreen), isTrue);
    settings.selectProfile('new');
    expect(settings.read(SettingsService.startInFullscreen), isFalse);
  });
}
