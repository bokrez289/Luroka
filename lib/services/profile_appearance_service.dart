import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../profiles/profile.dart';
import 'base_shared_preferences_service.dart';
import 'file_picker_service.dart';

enum ProfileAvatarPreset {
  mountain,
  orbit,
  waves,
  blossom,
  lightning,
  moon,
  portraitSunrise,
  portraitOcean,
  kidArtist,
  kidSkater,
  cat,
  dog,
  panda,
  owl,
  fox,
  dinosaur,
  robot,
  portraitMeadow,
  portraitBerry,
  portraitGolden,
  portraitIndigo,
}

/// Character illustrations first, followed by the abstract symbols.
const profileAvatarGallery = <ProfileAvatarPreset>[
  ProfileAvatarPreset.portraitSunrise,
  ProfileAvatarPreset.portraitOcean,
  ProfileAvatarPreset.portraitMeadow,
  ProfileAvatarPreset.portraitBerry,
  ProfileAvatarPreset.portraitGolden,
  ProfileAvatarPreset.portraitIndigo,
  ProfileAvatarPreset.kidArtist,
  ProfileAvatarPreset.kidSkater,
  ProfileAvatarPreset.cat,
  ProfileAvatarPreset.dog,
  ProfileAvatarPreset.panda,
  ProfileAvatarPreset.owl,
  ProfileAvatarPreset.fox,
  ProfileAvatarPreset.dinosaur,
  ProfileAvatarPreset.robot,
  ProfileAvatarPreset.mountain,
  ProfileAvatarPreset.orbit,
  ProfileAvatarPreset.waves,
  ProfileAvatarPreset.blossom,
  ProfileAvatarPreset.lightning,
  ProfileAvatarPreset.moon,
];

/// Device-local appearance also works for virtual Plex Home profiles. Photos
/// are small embedded PNGs; no server account picture or credentials change.
class ProfileAppearanceService extends ChangeNotifier {
  ProfileAppearanceService._();
  static final instance = ProfileAppearanceService._();
  static const _prefix = 'luroka_profile_avatar_';
  static const _setupKey = 'luroka_household_setup_complete';
  static const _setupPendingKey = 'luroka_household_setup_pending';
  static const _integrationsPendingPrefix = 'luroka_profile_integrations_pending_';
  SharedPreferencesWithCache? _prefs;
  Future<void>? _loading;
  final Map<String, Uint8List?> _images = {};

  Future<void> initialize() {
    if (_prefs != null) return Future.value();
    return _loading ??= _load();
  }

  Future<void> _load() async {
    _prefs = await BaseSharedPreferencesService.sharedCache();
  }

  String _key(String id) => '$_prefix${profileUserScope(id)}';
  String _integrationsKey(String id) => '$_integrationsPendingPrefix${profileUserScope(id)}';
  String? _value(String id) => _prefs?.getString(_key(id));
  bool get setupComplete => _prefs?.getBool(_setupKey) ?? false;
  bool get setupPending => !setupComplete && (_prefs?.getBool(_setupPendingKey) ?? false);
  bool integrationsPendingFor(String id) => _prefs?.getBool(_integrationsKey(id)) ?? false;

  Future<void> markIntegrationsPending(String id) async {
    await initialize();
    await _prefs!.setBool(_integrationsKey(id), true);
  }

  Future<void> markIntegrationsPresented(String id) async {
    await initialize();
    await _prefs!.remove(_integrationsKey(id));
  }

  bool hasOverride(String id) => _value(id) != null;
  ProfileAvatarPreset? presetFor(String id) =>
      ProfileAvatarPreset.values.where((value) => _value(id) == 'preset:${value.name}').firstOrNull;

  Uint8List? imageFor(String id) {
    final key = _key(id);
    if (_images.containsKey(key)) return _images[key];
    final value = _value(id);
    if (value == null || !value.startsWith('image:')) return null;
    try {
      return _images[key] = base64Decode(value.substring(6));
    } on FormatException {
      return _images[key] = null;
    }
  }

  Future<void> choosePreset(String id, ProfileAvatarPreset preset) async {
    await initialize();
    await _prefs!.setString(_key(id), 'preset:${preset.name}');
    _images.remove(_key(id));
    notifyListeners();
  }

  Future<void> reset(String id) async {
    await initialize();
    await _prefs!.remove(_key(id));
    await _prefs!.remove(_integrationsKey(id));
    _images.remove(_key(id));
    notifyListeners();
  }

  Future<void> completeSetup() async {
    await initialize();
    await _prefs!.setBool(_setupKey, true);
    await _prefs!.remove(_setupPendingKey);
    notifyListeners();
  }

  Future<void> beginSetup() async {
    await initialize();
    if (setupComplete) return;
    await _prefs!.setBool(_setupPendingKey, true);
    notifyListeners();
  }

  /// Remove device-local profile pictures and restart first-run setup.
  Future<void> clearForLogout() async {
    await initialize();
    final keys = _prefs!.keys
        .where(
          (key) =>
              key.startsWith(_prefix) ||
              key.startsWith(_integrationsPendingPrefix) ||
              key == _setupKey ||
              key == _setupPendingKey,
        )
        .toList();
    for (final key in keys) {
      await _prefs!.remove(key);
    }
    _images.clear();
    notifyListeners();
  }

  static const maxPhotoBytes = 10 * 1024 * 1024;
  static Future<Uint8List?> pickPhoto() async {
    final picked = await FilePickerService.instance.pickFiles(type: FileType.image, withData: true);
    if (picked == null || picked.files.isEmpty) return null;
    final source = picked.files.single;
    if (source.size > maxPhotoBytes) throw const FormatException('Photo is too large');
    var bytes = source.bytes;
    if (bytes == null && source.path != null) {
      final file = File(source.path!);
      if (await file.length() > maxPhotoBytes) throw const FormatException('Photo is too large');
      bytes = await file.readAsBytes();
    }
    if (bytes == null) throw const FormatException('Could not read photo');
    return resizePhoto(bytes);
  }

  static Future<Uint8List> resizePhoto(Uint8List bytes) async {
    if (bytes.length > maxPhotoBytes) throw const FormatException('Photo is too large');
    final buffer = await ui.ImmutableBuffer.fromUint8List(bytes);
    try {
      final descriptor = await ui.ImageDescriptor.encoded(buffer);
      try {
        final width = descriptor.width;
        final height = descriptor.height;
        final largest = width > height ? width : height;
        final scale = largest > 320 ? 320 / largest : 1.0;
        final codec = await descriptor.instantiateCodec(
          targetWidth: (width * scale).round().clamp(1, 320),
          targetHeight: (height * scale).round().clamp(1, 320),
        );
        try {
          final frame = await codec.getNextFrame();
          try {
            final png = await frame.image.toByteData(format: ui.ImageByteFormat.png);
            if (png == null) throw const FormatException('Could not decode photo');
            return png.buffer.asUint8List(png.offsetInBytes, png.lengthInBytes);
          } finally {
            frame.image.dispose();
          }
        } finally {
          codec.dispose();
        }
      } finally {
        descriptor.dispose();
      }
    } finally {
      buffer.dispose();
    }
  }

  Future<void> setPhoto(String id, Uint8List normalizedPng) async {
    if (normalizedPng.length > 512 * 1024) throw const FormatException('Avatar is too large');
    await initialize();
    await _prefs!.setString(_key(id), 'image:${base64Encode(normalizedPng)}');
    _images[_key(id)] = normalizedPng;
    notifyListeners();
  }

  @visibleForTesting
  void resetForTesting() {
    _prefs = null;
    _loading = null;
    _images.clear();
  }
}
