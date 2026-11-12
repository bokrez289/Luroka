import 'dart:ui' as ui;
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/services/profile_appearance_service.dart';

import '../test_helpers/prefs.dart';

void main() {
  final appearance = ProfileAppearanceService.instance;
  setUp(() async {
    resetSharedPreferencesForTest();
    appearance.resetForTesting();
    await appearance.initialize();
  });
  tearDown(appearance.resetForTesting);

  test('per-profile avatar persists and resetting one member keeps the other intact', () async {
    await appearance.choosePreset('emby-person', ProfileAvatarPreset.waves);
    await appearance.choosePreset('plex-person', ProfileAvatarPreset.moon);
    appearance.resetForTesting();
    await appearance.initialize();
    expect(appearance.presetFor('emby-person'), ProfileAvatarPreset.waves);
    expect(appearance.presetFor('plex-person'), ProfileAvatarPreset.moon);
    await appearance.reset('emby-person');
    expect(appearance.hasOverride('emby-person'), isFalse);
    expect(appearance.presetFor('plex-person'), ProfileAvatarPreset.moon);
  });

  test('virtual Plex Home avatars use the stable home identity scope', () async {
    await appearance.choosePreset('plex-home-first-aaaaaaaaaaaaaaaa', ProfileAvatarPreset.orbit);
    expect(appearance.presetFor('plex-home-second-aaaaaaaaaaaaaaaa'), ProfileAvatarPreset.orbit);
    expect(appearance.presetFor('plex-home-second-bbbbbbbbbbbbbbbb'), isNull);
  });

  test('illustrated portrait and animal presets persist through the stable device-local format', () async {
    await appearance.choosePreset('person', ProfileAvatarPreset.portraitSunrise);
    await appearance.choosePreset('child', ProfileAvatarPreset.panda);
    appearance.resetForTesting();
    await appearance.initialize();
    expect(appearance.presetFor('person'), ProfileAvatarPreset.portraitSunrise);
    expect(appearance.presetFor('child'), ProfileAvatarPreset.panda);
  });

  test('setup completion is durable and avatar changes do not reset it', () async {
    expect(appearance.setupComplete, isFalse);
    await appearance.completeSetup();
    await appearance.choosePreset('person', ProfileAvatarPreset.blossom);
    appearance.resetForTesting();
    await appearance.initialize();
    expect(appearance.setupComplete, isTrue);
  });

  test('unfinished setup survives reload and completion clears the pending marker', () async {
    await appearance.beginSetup();
    appearance.resetForTesting();
    await appearance.initialize();
    expect(appearance.setupPending, isTrue);
    await appearance.completeSetup();
    appearance.resetForTesting();
    await appearance.initialize();
    expect(appearance.setupComplete, isTrue);
    expect(appearance.setupPending, isFalse);
    await appearance.beginSetup();
    expect(appearance.setupPending, isFalse, reason: 'Sign-in must not reopen completed onboarding');
  });

  test('pending integration prompts persist independently and clear when shown or profile is removed', () async {
    await appearance.markIntegrationsPending('one');
    await appearance.markIntegrationsPending('two');
    appearance.resetForTesting();
    await appearance.initialize();
    expect(appearance.integrationsPendingFor('one'), isTrue);
    expect(appearance.integrationsPendingFor('two'), isTrue);
    await appearance.markIntegrationsPresented('one');
    await appearance.reset('two');
    appearance.resetForTesting();
    await appearance.initialize();
    expect(appearance.integrationsPendingFor('one'), isFalse);
    expect(appearance.integrationsPendingFor('two'), isFalse);
  });

  test('guide and library prompts survive restart, avatar edits, and are cleared on logout', () async {
    await appearance.markPersonalizationPending('one');
    await appearance.markSourceSelectionPending('one');
    await appearance.markPersonalizationPending('two');
    await appearance.reset('one');
    appearance.resetForTesting();
    await appearance.initialize();
    expect(appearance.personalizationPendingFor('one'), isTrue);
    expect(appearance.sourceSelectionPendingFor('one'), isTrue);
    await appearance.completeSourceSelection('one');
    await appearance.completePersonalization('one');
    expect(appearance.personalizationPendingFor('two'), isTrue);
    await appearance.clearForLogout();
    expect(appearance.personalizationPendingFor('two'), isFalse);
    expect(appearance.sourceSelectionPendingFor('one'), isFalse);
  });

  test('photo resizing bounds decode dimensions and preserves aspect ratio', () async {
    final recorder = ui.PictureRecorder();
    final canvas = ui.Canvas(recorder);
    canvas.drawRect(const ui.Rect.fromLTWH(0, 0, 640, 320), ui.Paint()..color = const ui.Color(0xff00aabb));
    final picture = recorder.endRecording();
    final original = await picture.toImage(640, 320);
    final data = await original.toByteData(format: ui.ImageByteFormat.png);
    original.dispose();
    picture.dispose();
    final resized = await ProfileAppearanceService.resizePhoto(data!.buffer.asUint8List());
    final codec = await ui.instantiateImageCodec(resized);
    final frame = await codec.getNextFrame();
    expect(frame.image.width, 320);
    expect(frame.image.height, 160);
    frame.image.dispose();
    codec.dispose();
    await appearance.setPhoto('person', resized);
    appearance.resetForTesting();
    await appearance.initialize();
    expect(appearance.imageFor('person'), resized);
    await appearance.choosePreset('person', ProfileAvatarPreset.mountain);
    expect(appearance.imageFor('person'), isNull);
  });

  test('oversized input and unsupported image bytes do not replace a saved avatar', () async {
    await appearance.choosePreset('person', ProfileAvatarPreset.lightning);
    await expectLater(
      ProfileAppearanceService.resizePhoto(Uint8List(ProfileAppearanceService.maxPhotoBytes + 1)),
      throwsFormatException,
    );
    await expectLater(ProfileAppearanceService.resizePhoto(Uint8List.fromList([1, 2, 3])), throwsA(anything));
    expect(appearance.presetFor('person'), ProfileAvatarPreset.lightning);
  });
}
