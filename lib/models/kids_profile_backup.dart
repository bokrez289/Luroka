import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'kids_avatar.dart';

/// Portable child settings. Server credentials and parent PINs never belong in
/// this format. Restore is reviewed as a new profile under the current parent.
@immutable
class KidsProfileBackup {
  KidsProfileBackup({
    required this.name,
    required this.maxAge,
    required this.theme,
    required this.avatar,
    required Set<String>? libraries,
    required this.animationOnly,
    required this.allowUnrated,
    this.dailyWatchMinutes,
    this.bedtimeStart,
    this.bedtimeEnd,
    List<String> viewingExclusions = const [],
  }) : libraries = libraries == null ? null : Set.unmodifiable(libraries),
       viewingExclusions = List.unmodifiable(viewingExclusions);

  static const format = 'luroka-kids-profile';
  static const version = 1;
  static const maxFileBytes = 2 * 1024 * 1024;
  final String name;
  final int maxAge;
  final bool theme;
  final KidsAvatarKind avatar;
  final Set<String>? libraries;
  final bool animationOnly;
  final bool allowUnrated;
  final int? dailyWatchMinutes;
  final int? bedtimeStart;
  final int? bedtimeEnd;
  final List<String> viewingExclusions;

  String encode() => const JsonEncoder.withIndent('  ').convert({
    'format': format,
    'version': version,
    'profile': {
      'name': name,
      'maxAge': maxAge,
      'theme': theme,
      'avatar': avatar.name,
      'libraries': libraries?.toList(),
      'animationOnly': animationOnly,
      'allowUnrated': allowUnrated,
      'dailyWatchMinutes': dailyWatchMinutes,
      'bedtimeStart': bedtimeStart,
      'bedtimeEnd': bedtimeEnd,
      'viewingExclusions': viewingExclusions,
    },
  });

  factory KidsProfileBackup.decode(String contents) {
    if (contents.length > maxFileBytes || utf8.encode(contents).length > maxFileBytes) {
      throw const FormatException('Kids backup is too large');
    }
    final json = jsonDecode(contents);
    if (json is! Map<String, dynamic> ||
        json['format'] != format ||
        json['version'] != version ||
        json['profile'] is! Map<String, dynamic>) {
      throw const FormatException('Not a supported kids profile backup');
    }
    final profile = json['profile'] as Map<String, dynamic>;
    final name = profile['name'];
    final age = profile['maxAge'];
    final avatar = profile['avatar'];
    final daily = profile['dailyWatchMinutes'];
    final start = profile['bedtimeStart'];
    final end = profile['bedtimeEnd'];
    if (name is! String ||
        name.trim().isEmpty ||
        name.length > 4096 ||
        age is! int ||
        !const [0, 7, 12, 16].contains(age) ||
        profile['theme'] is! bool ||
        profile['animationOnly'] is! bool ||
        profile['allowUnrated'] is! bool ||
        !KidsAvatarKind.values.any((value) => value.name == avatar) ||
        !profile.containsKey('libraries') ||
        (daily != null && (daily is! int || daily < 1 || daily > 1440)) ||
        (start == null) != (end == null) ||
        (start != null && (start is! int || start < 0 || start >= 1440)) ||
        (end != null && (end is! int || end < 0 || end >= 1440)) ||
        (start != null && start == end)) {
      throw const FormatException('Invalid kids profile settings');
    }
    List<String> strings(Object? raw, int limit) {
      if (raw is! List ||
          raw.length > limit ||
          raw.any((value) => value is! String || value.isEmpty || value.length > 4096)) {
        throw const FormatException('Invalid kids backup list');
      }
      return raw.cast<String>().toSet().toList();
    }

    return KidsProfileBackup(
      name: name.trim(),
      maxAge: age,
      theme: profile['theme'] as bool,
      avatar: KidsAvatarKind.fromId(avatar as String),
      libraries: profile['libraries'] == null ? null : strings(profile['libraries'], 2000).toSet(),
      animationOnly: profile['animationOnly'] as bool,
      allowUnrated: profile['allowUnrated'] as bool,
      dailyWatchMinutes: daily as int?,
      bedtimeStart: start as int?,
      bedtimeEnd: end as int?,
      viewingExclusions: strings(profile['viewingExclusions'], 50000),
    );
  }
}
