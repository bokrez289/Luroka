import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/media/ids.dart';
import 'package:luroka/media/media_backend.dart';
import 'package:luroka/media/media_file_info.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_server_client.dart';
import 'package:luroka/models/audio_channel_limit.dart';
import 'package:luroka/mpv/models.dart';
import 'package:luroka/mpv/player/player.dart';
import 'package:luroka/mpv/player/player_native.dart';
import 'package:luroka/mpv/player/player_state.dart';
import 'package:luroka/mpv/player/player_streams.dart';
import 'package:luroka/providers/multi_server_provider.dart';
import 'package:luroka/screens/settings/subtitle_styling_screen.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/services/multi_server_manager.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/services/sleep_timer_service.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/overlay_sheet.dart';
import 'package:luroka/widgets/focusable_list_tile.dart';
import 'package:luroka/widgets/video_controls/models/track_controls_state.dart';
import 'package:luroka/widgets/video_controls/sheets/video_settings_sheet.dart';
import 'package:luroka/widgets/video_controls/sheets/base_video_control_sheet.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences_platform_interface/in_memory_shared_preferences_async.dart';
import 'package:shared_preferences_platform_interface/shared_preferences_async_platform_interface.dart';
import 'package:shared_preferences_platform_interface/types.dart';

import '../test_helpers/media_items.dart';
import '../test_helpers/multi_server_fixtures.dart';
import '../test_helpers/player_streams.dart';
import '../test_helpers/prefs.dart';
import '../test_helpers/theme.dart';

void main() {
  for (final back in ['remote', 'header']) {
    testWidgets('direct Quality $back Back closes to player instead of settings', (tester) async {
      resetSharedPreferencesForTest();
      SettingsService.resetForTesting();
      await SettingsService.getInstance();
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData(extensions: const [testMonoTokensAnimated]),
          home: OverlaySheetHost(
            child: Scaffold(
              body: Builder(
                builder: (context) => TextButton(
                  onPressed: () => unawaited(
                    OverlaySheetController.of(context).show<void>(
                      builder: (_) => VideoSettingsSheet(
                        player: _FakeSettingsPlayer(),
                        openQuality: true,
                        trackControlsState: TrackControlsState(
                          canControl: true,
                          serverSupportsTranscoding: true,
                          onSwitchQualityPreset: (_) {},
                        ),
                      ),
                    ),
                  ),
                  child: const Text('Player'),
                ),
              ),
            ),
          ),
        ),
      );
      await tester.tap(find.text('Player'));
      await tester.pumpAndSettle();
      expect(find.byType(VideoSettingsSheet), findsOneWidget);
      if (back == 'remote') {
        await tester.sendKeyEvent(LogicalKeyboardKey.escape);
      } else {
        tester.widget<BaseVideoControlSheet>(find.byType(BaseVideoControlSheet)).onBack!();
      }
      await tester.pumpAndSettle();
      expect(find.byType(VideoSettingsSheet), findsNothing);
      expect(find.text('Player'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }
  setUpAll(() async {
    await LocaleSettings.setLocale(AppLocale.ru);
    LocaleSettings.setLocaleSync(AppLocale.en);
  });

  setUp(() async {
    LocaleSettings.setLocaleSync(AppLocale.en);
    SleepTimerService().cancelTimer();
    resetSharedPreferencesForTest();
    SettingsService.resetForTesting();
    await SettingsService.getInstance();
  });

  tearDown(() {
    SleepTimerService().cancelTimer();
    LocaleSettings.setLocaleSync(AppLocale.en);
  });

  testWidgets('keeps audio passthrough out of the in-player sheet', (tester) async {
    // It configures the audio output route, not this playback, and applying it
    // mid-stream bounces the audio renderer and re-decides video tunneling. Settings >
    // Video Playback owns it, alongside Tunneled Playback.
    await _pumpSheet(tester);
    await _openPlayerSection(tester, 'sound');

    // Positive control: land on the audio block that used to hold the toggle. Without
    // it, findsNothing below would also pass for an unbuilt or off-screen region, which
    // is what a bare scroll-then-assert silently degrades into. scrollUntilVisible
    // throws when the block is missing entirely, so the guard fails loudly instead.
    await tester.scrollUntilVisible(find.text('Normalize Loudness'), 300, scrollable: find.byType(Scrollable).first);
    await tester.pumpAndSettle();
    expect(find.text('Audio Channels'), findsOneWidget);

    expect(find.text('Audio Passthrough'), findsNothing);
  });

  testWidgets('TV root puts tracks first and each toggle is one remote focus stop', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(true);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    tester.view.physicalSize = const Size(960, 540);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await _pumpSheet(tester, canControl: true);
    FocusNode nodeFor(String title) =>
        tester.widget<ListTile>(find.ancestor(of: find.text(title), matching: find.byType(ListTile)).first).focusNode!;
    expect(
      tester.getTopLeft(find.text(t.videoControls.tracksButton)).dy,
      lessThan(tester.getTopLeft(find.text(t.videoSettings.playbackSpeed)).dy),
    );
    nodeFor(t.videoSettings.playbackSpeed).requestFocus();
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(nodeFor(t.videoSettings.sleepTimer).hasFocus, isTrue);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(nodeFor(t.videoControls.autoPlayNext).hasFocus, isTrue);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    expect(FocusManager.instance.primaryFocus?.debugLabel, 'SettingsEntry:sound');
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('localizes Off, Normal, and Active video setting values', (tester) async {
    LocaleSettings.setLocaleSync(AppLocale.ru);

    await _pumpSheet(tester, canControl: true);
    expect(find.text('Обычная'), findsOneWidget);
    expect(find.text('Выкл.'), findsOneWidget);

    final sleepTimer = SleepTimerService();
    sleepTimer.startTimer(const Duration(hours: 1));
    try {
      await tester.pump();
      expect(find.textContaining('Активен ('), findsOneWidget);
    } finally {
      sleepTimer.cancelTimer();
    }
  });

  testWidgets('offers requested playback speeds through 8x and persists the selection', (tester) async {
    final appliedRates = <double>[];
    final player = _FakeSettingsPlayer(
      onSetRate: (rate) async {
        appliedRates.add(rate);
      },
    );
    await _pumpSheetViaOverlayRoute(tester, player);

    await tester.tap(find.text('Playback Speed'));
    await tester.pumpAndSettle();

    final scrollable = find.byType(Scrollable).last;
    for (final label in ['3.5x', '4x', '4.5x', '5x', '6x', '7x', '8x']) {
      await tester.scrollUntilVisible(find.text(label), 200, scrollable: scrollable);
      expect(find.text(label), findsOneWidget);
    }

    await tester.tap(find.text('8x'));
    await tester.pumpAndSettle();

    expect(appliedRates, [8.0]);
    expect(SettingsService.instance.read(SettingsService.defaultPlaybackSpeed), 8.0);
  });

  testWidgets('applies a picked audio channel limit to the player and stores it', (tester) async {
    await SettingsService.instance.write(SettingsService.downmixCenterBoost, 4);
    await SettingsService.instance.write(SettingsService.audioDownmixNormalize, false);
    final applied = <(AudioChannelLimit, int, bool)>[];
    final player = _FakeSettingsPlayer(
      onSetAudioChannelLimit: (limit, centerBoostDb, normalize) async {
        applied.add((limit, centerBoostDb, normalize));
      },
    );
    await _pumpSheetViaOverlayRoute(tester, player);

    await _openPlayerSection(tester, 'sound');
    await tester.scrollUntilVisible(find.text('Audio Channels'), 300, scrollable: find.byType(Scrollable).first);
    await tester.tap(find.text('Audio Channels'));
    await tester.pumpAndSettle();
    for (final label in ['Original', 'Up to 5.1', 'Stereo']) {
      expect(find.text(label), findsOneWidget);
    }
    expect(_tickOn('Original'), findsOneWidget);

    await tester.tap(find.text('Up to 5.1'));
    await tester.pumpAndSettle();

    expect(applied, [(AudioChannelLimit.surround51, 4, false)]);
    expect(SettingsService.instance.read(SettingsService.audioChannelLimit), AudioChannelLimit.surround51);
    expect(find.byType(VideoSettingsSheet), findsNothing);
  });

  // #2744: the pick has to outlive this player, or every new video starts back
  // on "Autoselect device". The Audio Output row is a desktop/TV control.
  testWidgets('remembers a picked audio output for later players', (tester) async {
    final applied = <String>[];
    final player = _FakeSettingsPlayer(
      state: const PlayerState(
        audioDevices: [
          AudioDevice(name: 'auto', description: 'Autoselect device'),
          AudioDevice(name: 'alsa', description: 'Default (alsa)'),
        ],
      ),
      onSetAudioDevice: (device) async => applied.add(device.name),
    );
    await _pumpSheetViaOverlayRoute(tester, player);

    await _openPlayerSection(tester, 'sound');
    await tester.scrollUntilVisible(find.text('Audio Output'), 300, scrollable: find.byType(Scrollable).first);
    await tester.tap(find.text('Audio Output'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Default (alsa)'));
    await tester.pumpAndSettle();

    expect(applied, ['alsa']);
    expect(SettingsService.instance.read(SettingsService.audioOutputDevice), 'alsa');
    expect(find.byType(VideoSettingsSheet), findsNothing);
  }, variant: TargetPlatformVariant.only(TargetPlatform.linux));

  testWidgets('keeps the remembered audio output when the player refuses the pick', (tester) async {
    await SettingsService.instance.write(SettingsService.audioOutputDevice, 'pipewire');
    final player = _FakeSettingsPlayer(
      state: const PlayerState(
        audioDevices: [AudioDevice(name: 'alsa', description: 'Default (alsa)')],
      ),
      onSetAudioDevice: (_) async => throw StateError('rejected'),
    );
    await _pumpSheetViaOverlayRoute(tester, player);

    await _openPlayerSection(tester, 'sound');
    await tester.scrollUntilVisible(find.text('Audio Output'), 300, scrollable: find.byType(Scrollable).first);
    await tester.tap(find.text('Audio Output'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Default (alsa)'));
    await tester.pumpAndSettle();

    expect(SettingsService.instance.read(SettingsService.audioOutputDevice), 'pipewire');
  }, variant: TargetPlatformVariant.only(TargetPlatform.linux));

  testWidgets('localizes every ASS subtitle override enum label', (tester) async {
    LocaleSettings.setLocaleSync(AppLocale.ru);
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(extensions: const [testMonoTokensAnimated]),
        home: const SubtitleStylingScreen(),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('Переопределение ASS'));
    await tester.pumpAndSettle();

    final dialog = find.byType(AlertDialog);
    for (final label in ['Нет', 'Да', 'Масштаб', 'Принудительно', 'Удалить стили']) {
      expect(find.descendant(of: dialog, matching: find.text(label)), findsOneWidget);
    }
  });

  testWidgets('embedded subtitle font size saves and applies without leaving the player', (tester) async {
    var applied = 0;
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(extensions: const [testMonoTokensAnimated]),
        home: OverlaySheetHost(
          child: Scaffold(
            body: Builder(
              builder: (context) => TextButton(
                onPressed: () => OverlaySheetController.of(
                  context,
                ).show<void>(builder: (_) => SubtitleStylingScreen(embedded: true, onChanged: () async => applied++)),
                child: const Text('Player'),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Player'));
    await tester.pumpAndSettle();
    final fontTile = find
        .ancestor(of: find.text(t.subtitlingStyling.fontSize).last, matching: find.byType(ListTile))
        .first;
    expect(tester.getSize(fontTile).height, lessThan(72));
    await tester.tap(find.text(t.subtitlingStyling.fontSize).last);
    await tester.pumpAndSettle();
    tester.widget<Slider>(find.byType(Slider)).onChanged!(54);
    await tester.pump();
    await tester.tap(find.text(t.common.save));
    await tester.pumpAndSettle();
    expect(SettingsService.instance.read(SettingsService.subtitleFontSize), 54);
    expect(applied, 1);
    expect(find.byType(SubtitleStylingScreen), findsOneWidget);
    expect(find.text('Player'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('mobile landscape subtitle font size uses a visible preview and slider', (tester) async {
    tester.view.physicalSize = const Size(568, 320);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    TvDetectionService.debugSetAppleTVOverride(false);
    addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(platform: TargetPlatform.android, extensions: const [testMonoTokensAnimated]),
        home: const Scaffold(body: SubtitleStylingScreen()),
      ),
    );
    await tester.pumpAndSettle();

    expect(SettingsService.instance.read(SettingsService.subtitleFontSize), 42);
    await tester.tap(find.text(t.subtitlingStyling.fontSize));
    await tester.pumpAndSettle();

    expect(find.byType(TextField), findsNothing, reason: 'font-size edits should not open the small landscape IME');
    expect(find.byType(Slider), findsOneWidget);
    final editor = find.byType(AlertDialog);
    expect(
      find.descendant(of: editor, matching: find.text(t.settings.subtitleStyling)),
      findsOneWidget,
      reason: 'the sample remains visible while editing',
    );
    expect(find.descendant(of: editor, matching: find.text('42')), findsOneWidget);

    final slider = tester.widget<Slider>(find.byType(Slider));
    slider.onChanged!(58);
    await tester.pump();
    expect(find.descendant(of: editor, matching: find.text('58')), findsOneWidget);
    await tester.tap(find.text(t.common.save));
    await tester.pumpAndSettle();

    expect(SettingsService.instance.read(SettingsService.subtitleFontSize), 58);
    expect(tester.takeException(), isNull);
  });

  testWidgets('failed HDR write restores the toggle without persisting', (tester) async {
    final propertyWrite = Completer<void>();
    final writes = <(String, String)>[];
    final player = _FakeSettingsPlayer(
      onSetProperty: (name, value) {
        writes.add((name, value));
        return propertyWrite.future;
      },
    );
    await _pumpSheet(tester, player: player, supportsHdrControl: true);
    await tester.scrollUntilVisible(find.text('HDR'), 500, scrollable: find.byType(Scrollable).first);

    final tile = find.ancestor(of: find.text('HDR'), matching: find.byType(ListTile)).first;
    final toggle = find.descendant(of: tile, matching: find.byType(Switch));
    expect(tester.widget<Switch>(toggle).value, isTrue);

    await tester.tap(toggle);
    await tester.pump();
    expect(tester.widget<Switch>(toggle).value, isFalse);
    expect(SettingsService.instance.read(SettingsService.enableHDR), isTrue);

    propertyWrite.completeError(StateError('rejected'));
    await tester.pump();
    await tester.pump();
    await tester.runAsync(() => Future<void>.delayed(Duration.zero));

    expect(tester.takeException(), isNull);
    expect(tester.widget<Switch>(toggle).value, isTrue);
    expect(SettingsService.instance.read(SettingsService.enableHDR), isTrue);
    // The name carries as much weight as the count: the plane intercepts this
    // exact property, and any other name falls through to mpv as a real write.
    expect(writes, [('hdr-enabled', 'no')]);
  });

  // The switch springing back on its own reads as a lost tap. This message is
  // what tells the user the surface itself cannot carry HDR and no retry will
  // change that, so it has to survive any rework of the write path.
  testWidgets('a plane that can never carry HDR says so', (tester) async {
    final writes = <(String, String)>[];
    final player = _FakeSettingsPlayer(
      onSetProperty: (name, value) async {
        writes.add((name, value));
        throw PlatformException(code: 'HDR_UNSUPPORTED', message: 'no colour-management protocol');
      },
    );
    await _pumpSheet(tester, player: player, supportsHdrControl: true);
    await tester.scrollUntilVisible(find.text('HDR'), 500, scrollable: find.byType(Scrollable).first);

    final tile = find.ancestor(of: find.text('HDR'), matching: find.byType(ListTile)).first;
    final toggle = find.descendant(of: tile, matching: find.byType(Switch));
    await tester.tap(toggle);
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
    expect(find.text(t.videoSettings.hdrUnsupported), findsOneWidget);
    // Once. A refusal is not something to compensate for: nothing was recorded,
    // so there is nothing to put back and no second write to explain.
    expect(writes, [('hdr-enabled', 'no')]);
    expect(tester.widget<Switch>(toggle).value, isTrue);
    expect(SettingsService.instance.read(SettingsService.enableHDR), isTrue);
  });

  testWidgets('an accepted HDR write pushes one hdr-enabled write per toggle', (tester) async {
    final writes = <(String, String)>[];
    final player = _FakeSettingsPlayer(onSetProperty: (name, value) async => writes.add((name, value)));
    await _pumpSheet(tester, player: player, supportsHdrControl: true);
    await tester.scrollUntilVisible(find.text('HDR'), 500, scrollable: find.byType(Scrollable).first);

    final tile = find.ancestor(of: find.text('HDR'), matching: find.byType(ListTile)).first;
    final toggle = find.descendant(of: tile, matching: find.byType(Switch));
    await tester.tap(toggle);
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
    expect(writes, [('hdr-enabled', 'no')]);
    expect(tester.widget<Switch>(toggle).value, isFalse);
    expect(SettingsService.instance.read(SettingsService.enableHDR), isFalse);

    // Toggled back so the expectation cannot be met by a sheet that sends 'no'
    // whichever way the switch went.
    await tester.tap(toggle);
    await tester.pumpAndSettle();

    expect(writes, [('hdr-enabled', 'no'), ('hdr-enabled', 'yes')]);
    expect(tester.widget<Switch>(toggle).value, isTrue);
    expect(SettingsService.instance.read(SettingsService.enableHDR), isTrue);
  });

  testWidgets('hides the HDR controls when the host declares the surface cannot carry HDR', (tester) async {
    await _pumpSheet(tester);

    // Scroll past where the HDR rows would sit. Without a following anchor the
    // absence would also be satisfied by the ListView simply not having built
    // that far yet, which is not the contract under test.
    await tester.scrollUntilVisible(find.text('Auto-Play Next'), 500, scrollable: find.byType(Scrollable).first);

    expect(find.text('HDR'), findsNothing);
    expect(find.text('HDR Tone Mapping'), findsNothing);
  });

  // The sheet resolves both the capability probe and the tone-mapping row through
  // PlayerNative.usesLinuxVideoPlane, so setting the documented override puts the
  // plane's behaviour under test on any host.
  group('on the Linux video plane', () {
    setUp(() {
      PlayerNative.debugUseLinuxVideoPlane = true;
    });

    tearDown(() {
      PlayerNative.debugUseLinuxVideoPlane = null;
    });

    // supportsHdrControl left null so the sheet asks the player, which is the path
    // that ships on Linux. The cases above inject the answer and so cover only the
    // gate, not the probe behind it.
    testWidgets('hides the HDR controls when the capability probe answers no', (tester) async {
      final player = _FakeSettingsPlayer(hdrOutputSupported: false);
      await _pumpSheet(tester, player: player, supportsHdrControl: null, height: 4000);

      expect(find.text('Auto-Play Next'), findsOneWidget, reason: 'the list should be fully built');
      expect(find.text('HDR'), findsNothing);
      expect(find.text('HDR Tone Mapping'), findsNothing);
    });

    testWidgets('a player reporting an HDR output reveals the controls', (tester) async {
      final player = _FakeSettingsPlayer(hdrOutputSupported: true);
      await _pumpSheet(tester, player: player, supportsHdrControl: null, height: 4000);

      expect(find.text('HDR'), findsOneWidget);
      expect(find.text('HDR Tone Mapping'), findsOneWidget);
    });

    // Dragging the window onto an HDR monitor raises no lifecycle event on
    // Wayland, so this stream is the sheet's only notice that the probe now
    // answers differently.
    testWidgets('an HDR output arriving under the window reveals the controls', (tester) async {
      final player = _FakeSettingsPlayer(hdrOutputSupported: false);
      await _pumpSheet(tester, player: player, supportsHdrControl: null, height: 4000);
      expect(find.text('HDR'), findsNothing);

      player.hdrOutputSupported = true;
      player.hdrOutputChanged.add(null);
      await tester.pumpAndSettle();
      await _openPlayerSection(tester, 'picture');

      expect(find.text('HDR'), findsOneWidget);
      expect(find.text('HDR Tone Mapping'), findsOneWidget);
    });

    testWidgets('losing the HDR output takes the controls away again', (tester) async {
      final player = _FakeSettingsPlayer(hdrOutputSupported: true);
      await _pumpSheet(tester, player: player, supportsHdrControl: null, height: 4000);
      expect(find.text('HDR'), findsOneWidget);

      player.hdrOutputSupported = false;
      player.hdrOutputChanged.add(null);
      await tester.pumpAndSettle();

      expect(find.text('Auto-Play Next'), findsOneWidget, reason: 'the list should be fully built');
      expect(find.text('HDR'), findsNothing);
      expect(find.text('HDR Tone Mapping'), findsNothing);
    });

    testWidgets('the output-changed subscription does not outlive the sheet', (tester) async {
      final player = _FakeSettingsPlayer(hdrOutputSupported: false);
      await _pumpSheet(tester, player: player, supportsHdrControl: null, height: 4000);
      final probesWhileMounted = player.probeCount;

      await tester.pumpWidget(const MaterialApp(home: SizedBox.shrink()));
      await tester.pumpAndSettle();

      player.hdrOutputSupported = true;
      player.hdrOutputChanged.add(null);
      await tester.pumpAndSettle();

      // The plane outlives any one sheet, so a subscription left behind keeps
      // probing - and setState()s - on a disposed State.
      expect(player.hdrOutputChanged.hasListener, isFalse);
      expect(player.probeCount, probesWhileMounted);
      expect(tester.takeException(), isNull);
    });

    testWidgets('selecting a tone-mapping mode pushes it to mpv and persists it', (tester) async {
      final writes = <(String, String)>[];
      final player = _FakeSettingsPlayer(onSetProperty: (name, value) async => writes.add((name, value)));
      await _pumpSheet(tester, player: player, supportsHdrControl: true, withSheetHost: true);
      await tester.scrollUntilVisible(find.text('HDR Tone Mapping'), 500, scrollable: find.byType(Scrollable).first);

      await tester.tap(find.text('HDR Tone Mapping'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Player'));
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);
      expect(writes, [('hdr-tone-mapping', 'player')]);
      expect(SettingsService.instance.read(SettingsService.hdrToneMapping), HdrToneMapping.player);
    });

    testWidgets('a refused tone-mapping write leaves the stored mode alone', (tester) async {
      final writes = <(String, String)>[];
      final player = _FakeSettingsPlayer(
        onSetProperty: (name, value) async {
          writes.add((name, value));
          throw StateError('rejected');
        },
      );
      await _pumpSheet(tester, player: player, supportsHdrControl: true, withSheetHost: true);
      await tester.scrollUntilVisible(find.text('HDR Tone Mapping'), 500, scrollable: find.byType(Scrollable).first);

      await tester.tap(find.text('HDR Tone Mapping'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Player'));
      await tester.pumpAndSettle();

      // mpv is asked before the setting is written, precisely so a refusal
      // cannot leave the stored mode claiming one the player never entered.
      expect(tester.takeException(), isNull);
      expect(writes, [('hdr-tone-mapping', 'player')]);
      expect(SettingsService.instance.read(SettingsService.hdrToneMapping), HdrToneMapping.compositor);
    });
  });

  // The refusals covered above all come from the player. This is the other half:
  // the player takes the value and the store loses it, which is the case that
  // used to leave the plane carrying a policy neither the sheet nor the stored
  // preference named for the rest of the session.
  group('when the preference store refuses the write', () {
    late _RejectingPrefsStore store;

    setUp(() async {
      // The tone-mapping row is gated on the plane. Installing the store belongs
      // out here too: SharedPreferencesWithCache binds the platform when it is
      // created, and creating it reads the store off disk, which a testWidgets
      // body cannot await.
      PlayerNative.debugUseLinuxVideoPlane = true;
      store = _RejectingPrefsStore(
        // Seeded with the values both controls start on, so a rejected write is
        // a rejected *overwrite* and the surviving value is an explicit one
        // rather than the absence of a key.
        initial: {SettingsService.enableHDR.key: true, SettingsService.hdrToneMapping.key: 'compositor'},
        refused: {SettingsService.enableHDR.key, SettingsService.hdrToneMapping.key},
      );
      SharedPreferencesAsyncPlatform.instance = store;
      // resetSharedPreferencesForTest already registered the teardown that puts
      // the previous platform back.
      BaseSharedPreferencesService.resetForTesting();
      SettingsService.resetForTesting();
      await SettingsService.getInstance();
    });

    tearDown(() {
      PlayerNative.debugUseLinuxVideoPlane = null;
    });

    testWidgets('a lost HDR preference write puts the plane back on the stored policy', (tester) async {
      final writes = <(String, String)>[];
      final player = _FakeSettingsPlayer(onSetProperty: (name, value) async => writes.add((name, value)));
      await _pumpSheet(tester, player: player, supportsHdrControl: true);
      await tester.scrollUntilVisible(find.text('HDR'), 500, scrollable: find.byType(Scrollable).first);

      final tile = find.ancestor(of: find.text('HDR'), matching: find.byType(ListTile)).first;
      final toggle = find.descendant(of: tile, matching: find.byType(Switch));
      expect(tester.widget<Switch>(toggle).value, isTrue);

      await tester.tap(toggle);
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);
      // The plane accepted 'no' and the store then lost it, so the plane has to
      // be told 'yes' again. Leaving it at 'no' is the divergence.
      expect(writes, [('hdr-enabled', 'no'), ('hdr-enabled', 'yes')]);
      expect(tester.widget<Switch>(toggle).value, isTrue);
      expect(SettingsService.instance.read(SettingsService.enableHDR), isTrue);
      expect(await store.durable(SettingsService.enableHDR.key), isTrue);
    });

    testWidgets('a lost tone-mapping preference write puts the plane back on the stored mode', (tester) async {
      final writes = <(String, String)>[];
      final player = _FakeSettingsPlayer(onSetProperty: (name, value) async => writes.add((name, value)));
      await _pumpSheet(tester, player: player, supportsHdrControl: true, withSheetHost: true);
      await tester.scrollUntilVisible(find.text('HDR Tone Mapping'), 500, scrollable: find.byType(Scrollable).first);

      await tester.tap(find.text('HDR Tone Mapping'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Player'));
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);
      expect(writes, [('hdr-tone-mapping', 'player'), ('hdr-tone-mapping', 'compositor')]);
      expect(SettingsService.instance.read(SettingsService.hdrToneMapping), HdrToneMapping.compositor);
      expect(await store.durable(SettingsService.hdrToneMapping.key), 'compositor');
      // The pick did not take, so the picker stays open with the tick where it
      // was. A tick on 'Player' would mean the sheet is showing a mode the
      // stored preference does not name.
      expect(_tickOn('Compositor'), findsOneWidget);
      expect(_tickOn('Player'), findsNothing);
    });
  });

  group('File Info', () {
    testWidgets('opens the playing item as a nested page whose back button returns to the menu', (tester) async {
      final client = _FileInfoClient();
      final item = testMediaItem(title: 'Inception', serverId: client.serverId.value);
      await _pumpFileInfoSheet(tester, client, TrackControlsState(metadata: item, serverId: item.serverId));

      await tester.ensureVisible(find.text(t.mediaMenu.fileInfo));
      await tester.pumpAndSettle();
      await tester.tap(find.text(t.mediaMenu.fileInfo));
      await tester.pump();
      expect(client.requested, [item]);
      expect(find.byType(CircularProgressIndicator), findsOneWidget);

      client.response.complete(const MediaFileInfo(versions: [MediaFileVersion(container: 'mkv')]));
      await tester.pumpAndSettle();
      expect(find.byType(CircularProgressIndicator), findsNothing);
      expect(find.text('Inception'), findsOneWidget);
      expect(find.text('MKV'), findsWidgets);

      await tester.tapAt(tester.getCenter(find.byIcon(Symbols.arrow_back_rounded)));
      await tester.pumpAndSettle();
      expect(find.text('MKV'), findsNothing);
      expect(find.text(t.videoSettings.performanceOverlay), findsOneWidget);
    });

    testWidgets('says so when the server has no file info for the item', (tester) async {
      final client = _FileInfoClient();
      final item = testMediaItem(serverId: client.serverId.value);
      await _pumpFileInfoSheet(tester, client, TrackControlsState(metadata: item, serverId: item.serverId));

      await tester.ensureVisible(find.text(t.mediaMenu.fileInfo));
      await tester.pumpAndSettle();
      await tester.tap(find.text(t.mediaMenu.fileInfo));
      client.response.complete(null);
      await tester.pumpAndSettle();

      expect(find.byType(CircularProgressIndicator), findsNothing);
      expect(find.text(t.messages.fileInfoNotAvailable), findsOneWidget);
    });

    testWidgets('is not offered for live TV, which has no file', (tester) async {
      final client = _FileInfoClient();
      final item = testMediaItem(serverId: client.serverId.value);
      await _pumpFileInfoSheet(
        tester,
        client,
        TrackControlsState(metadata: item, serverId: item.serverId, isLive: true),
      );

      expect(find.text(t.videoSettings.performanceOverlay), findsOneWidget);
      expect(find.text(t.mediaMenu.fileInfo), findsNothing);
    });
  });
}

/// The tick marking the selected option in one of the sheet's picker views.
Finder _tickOn(String label) => find.descendant(
  of: find.ancestor(of: find.text(label), matching: find.byType(ListTile)).first,
  matching: find.byIcon(Symbols.check_rounded),
);

/// Opens the settings sheet through a real host, as the player does, with
/// [client] registered for the playing item's server.
Future<void> _pumpFileInfoSheet(WidgetTester tester, _FileInfoClient client, TrackControlsState state) async {
  // Tall enough that the lazy menu builds every row.
  tester.view.physicalSize = const Size(1200, 4000);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  final manager = MultiServerManager()..debugRegisterClientForTesting(client);
  final provider = testMultiServerProvider(manager);
  addTearDown(() {
    provider.dispose();
    manager.dispose();
  });

  await tester.pumpWidget(
    ChangeNotifierProvider<MultiServerProvider>.value(
      value: provider,
      child: MaterialApp(
        theme: ThemeData(extensions: const [testMonoTokensAnimated]),
        home: OverlaySheetHost(
          child: Scaffold(
            body: Builder(
              builder: (context) => TextButton(
                onPressed: () => unawaited(
                  OverlaySheetController.of(context).show<void>(
                    builder: (_) => VideoSettingsSheet(player: _FakeSettingsPlayer(), trackControlsState: state),
                  ),
                ),
                child: const Text('Open settings'),
              ),
            ),
          ),
        ),
      ),
    ),
  );
  await tester.tap(find.text('Open settings'));
  await tester.pumpAndSettle();
  await _openPlayerSection(tester, 'tools');
}

class _FileInfoClient implements MediaServerClient {
  final response = Completer<MediaFileInfo?>();
  final requested = <MediaItem>[];

  @override
  ServerId get serverId => ServerId('file-info-server');

  @override
  MediaBackend get backend => MediaBackend.plex;

  @override
  Future<MediaFileInfo?> getFileInfo(MediaItem item) {
    requested.add(item);
    return response.future;
  }

  @override
  void close() {}

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

Future<void> _pumpSheet(
  WidgetTester tester, {
  bool canControl = false,
  Player? player,
  // Explicitly false by default so the sheet does not consult the platform.
  // Pass null to exercise the capability probe instead.
  bool? supportsHdrControl = false,
  // Option views that dismiss themselves on selection reach
  // OverlaySheetController.of(), which asserts without a host above it.
  bool withSheetHost = false,
  // The default is short enough that the ListView is lazy: callers that need a
  // row present without dragging to it pass a taller sheet, which builds all of
  // them.
  double height = 700,
}) async {
  final sheet = SizedBox(
    width: 900,
    height: height,
    child: VideoSettingsSheet(
      player: player ?? _FakeSettingsPlayer(),
      supportsHdrControl: supportsHdrControl,
      trackControlsState: TrackControlsState(canControl: canControl),
    ),
  );
  await tester.pumpWidget(
    MaterialApp(
      theme: ThemeData(extensions: const [testMonoTokensAnimated]),
      home: Scaffold(body: withSheetHost ? OverlaySheetHost(child: sheet) : sheet),
    ),
  );
  await tester.pumpAndSettle();
  if (supportsHdrControl != false) await _openPlayerSection(tester, 'picture', ifPresent: true);
}

Future<void> _openPlayerSection(WidgetTester tester, String id, {bool ifPresent = false}) async {
  final entry = find.byWidgetPredicate(
    (widget) => widget is FocusableListTile && widget.focusNode?.debugLabel == 'SettingsEntry:$id',
  );
  if (ifPresent && entry.evaluate().isEmpty) return;
  expect(entry, findsOneWidget);
  await tester.ensureVisible(entry);
  await tester.pumpAndSettle();
  await tester.tap(entry);
  await tester.pumpAndSettle();
}

Future<void> _pumpSheetViaOverlayRoute(WidgetTester tester, Player player) async {
  await tester.pumpWidget(
    MaterialApp(
      theme: ThemeData(extensions: const [testMonoTokensAnimated]),
      home: OverlaySheetHost(
        child: Scaffold(
          body: Builder(
            builder: (context) => TextButton(
              onPressed: () => unawaited(
                OverlaySheetController.of(context).show<void>(
                  builder: (_) => VideoSettingsSheet(
                    player: player,
                    trackControlsState: const TrackControlsState(canControl: true),
                  ),
                ),
              ),
              child: const Text('Open settings'),
            ),
          ),
        ),
      ),
    ),
  );
  await tester.tap(find.text('Open settings'));
  await tester.pumpAndSettle();
}

class _FakeSettingsPlayer implements Player {
  _FakeSettingsPlayer({
    this.onSetProperty,
    this.onSetRate,
    this.onSetAudioChannelLimit,
    this.onSetAudioDevice,
    this.state = const PlayerState(),
    this.hdrOutputSupported = false,
  });

  /// The plane's notice that the output under the window changed, which is the
  /// only thing that moves [isHdrOutputSupported]'s answer while a sheet is up.
  /// Closed by [dispose], which the tests that emit on it call through
  /// `addTearDown`.
  final hdrOutputChanged = StreamController<void>.broadcast();

  @override
  Future<void> dispose({bool preserveDisplayMode = false}) async {
    await hdrOutputChanged.close();
  }

  late final PlayerStreams _streams = emptyPlayerStreams(hdrOutputChanged: hdrOutputChanged.stream);

  final Future<void> Function(String name, String value)? onSetProperty;
  final Future<void> Function(double rate)? onSetRate;
  final Future<void> Function(AudioChannelLimit limit, int centerBoostDb, bool normalize)? onSetAudioChannelLimit;
  final Future<void> Function(AudioDevice device)? onSetAudioDevice;
  bool hdrOutputSupported;
  int probeCount = 0;

  @override
  Future<bool> isHdrOutputSupported() async {
    probeCount++;
    return hdrOutputSupported;
  }

  @override
  final PlayerState state;

  @override
  PlayerStreams get streams => _streams;

  @override
  String get playerType => 'exoplayer';

  @override
  Future<void> setAudioPassthrough(bool enabled) async {}

  @override
  Future<void> setProperty(String name, String value) {
    return onSetProperty?.call(name, value) ?? Future<void>.value();
  }

  @override
  Future<void> setRate(double rate) {
    return onSetRate?.call(rate) ?? Future<void>.value();
  }

  @override
  Future<void> setAudioChannelLimit(AudioChannelLimit limit, {required int centerBoostDb, required bool normalize}) {
    return onSetAudioChannelLimit?.call(limit, centerBoostDb, normalize) ?? Future<void>.value();
  }

  @override
  Future<void> setAudioDevice(AudioDevice device) {
    return onSetAudioDevice?.call(device) ?? Future<void>.value();
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// A preference store that loses the durable half of a write.
///
/// Substituting the platform is how this suite supplies a store at all (see
/// [resetSharedPreferencesForTest]), and it is the only layer that can be lost:
/// `SharedPreferencesWithCache` sits above it and is not subclassable.
final class _RejectingPrefsStore extends InMemorySharedPreferencesAsync {
  _RejectingPrefsStore({required Map<String, Object> initial, required this.refused}) : super.withData(initial);

  /// Only these keys. Creating the cache runs the legacy-to-async migration,
  /// which stores its own completion marker and must be allowed to.
  final Set<String> refused;

  /// What survived, which is what the next launch reads. Not
  /// `SettingsService.read`: that answers from the in-process copy, which a
  /// refused write moves before the platform call it then fails.
  Future<Object?> durable(String key) async {
    final stored = await getPreferences(
      GetPreferencesParameters(filter: PreferencesFilters(allowList: {key})),
      const SharedPreferencesOptions(),
    );
    return stored[key];
  }

  Future<bool> _refuse(String key) async => throw StateError('the preference store refused "$key"');

  @override
  Future<bool> setBool(String key, bool value, SharedPreferencesOptions options) =>
      refused.contains(key) ? _refuse(key) : super.setBool(key, value, options);

  @override
  Future<bool> setString(String key, String value, SharedPreferencesOptions options) =>
      refused.contains(key) ? _refuse(key) : super.setString(key, value, options);
}
