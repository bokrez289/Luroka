import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/services/app_license_registry.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('registers the application license and the bundled ArtCNN notice', () async {
    registerAppLicenseAssets(includeAndroidNotices: true, includeAppleNotices: true);
    final entries = await LicenseRegistry.licenses.toList();
    String notice(String package) => entries
        .where((entry) => entry.packages.contains(package))
        .expand((entry) => entry.paragraphs)
        .map((paragraph) => paragraph.text)
        .join('\n');

    expect(notice('Luroka'), contains('GNU GENERAL PUBLIC LICENSE'));
    expect(notice('Luroka'), contains('https://github.com/edde746/plezy'));
    expect(notice('Plezy'), contains('Copyright (C) 2024–2026 edde746 and contributors.'));
    expect(notice('Plezy'), contains('GNU GENERAL PUBLIC LICENSE'));
    expect(notice('ArtCNN'), contains('Copyright (c) 2024 Joao Chrisostomo, Kacper Michajłow'));
    expect(notice('ArtCNN'), contains('Permission is hereby granted, free of charge'));
    expect(notice('Go Noto Current'), contains('Copyright 2022 The Noto Project Authors'));
    expect(notice('Go Noto Current Hangul'), contains('SIL OPEN FONT LICENSE'));
    expect(notice('mpv-android'), contains('Copyright (c) 2016 Ilya Zhuravlev'));
    expect(notice('mpv-android'), contains('Copyright (c) 2016 sfan5'));
    expect(notice('libass'), contains('Copyright (C) 2006-2016 libass contributors'));
    expect(notice('libass Android bundled dependencies'), contains('===== freetype/FTL.TXT ====='));
    expect(notice('libass Android bundled dependencies'), contains('===== fribidi/COPYING ====='));
    expect(notice('libdovi'), contains('Copyright (c) 2025 quietvoid'));
    expect(notice('libdovi Rust dependencies (candidate notices)'), contains('===== bitvec 1.0.1 ====='));
    expect(notice('libdovi Rust dependencies (candidate notices)'), contains('===== crc-catalog 2.4.0 ====='));
    expect(notice('dav1d'), contains('2018-2025, VideoLAN and dav1d authors'));
    expect(notice('Chromium / Cronet'), contains('Copyright 2015 The Chromium Authors'));
    expect(notice('Chromium / Cronet'), contains('CityHash'));
    expect(notice('Chromium / Cronet'), contains('BoringSSL'));
    expect(notice('Sentry Android third-party notices'), contains('Google GSON'));
    expect(notice('Selected Android Maven dependency notices'), contains('commons-io:commons-io:2.20.0'));
    expect(notice('Selected Android Maven dependency notices'), contains('org.apache.tika:tika-core:3.2.3'));
    expect(notice('Selected Android Maven dependency notices'), contains('org.slf4j:slf4j-api:2.0.17'));
    expect(notice('Lua 5.2.4'), contains('1994–2015 Lua.org, PUC-Rio'));
    expect(notice('mpv / FFmpeg / libplacebo / OpenSSL'), contains('===== OpenSSL/LICENSE.txt ====='));
    expect(notice('Apple media dependencies (partial source notices)'), contains('===== mpv GPL ====='));
    expect(notice('Apple media dependencies (partial source notices)'), contains('===== OpenSSL 3.3.5 license ====='));
    expect(notice('Apple media dependencies (partial source notices)'), contains('===== FreeType 2.12.1 FTL ====='));
    expect(notice('Apple media dependencies (partial source notices)'), contains('===== FriBidi 1.0.12 license ====='));
    expect(notice('Apple media dependencies (partial source notices)'), contains('===== shaderc v2025.5 license ====='));
    expect(notice('Apple media dependencies (partial source notices)'), contains('===== uchardet 0.0.8 licenses ====='));
    expect(notice('Apple media dependencies (partial source notices)'), contains('===== libunibreak 6.1 candidate license ====='));
    expect(notice('Apple media dependencies (partial source notices)'), contains('===== uavs3d candidate license ====='));
    expect(notice('Apple media dependencies (partial source notices)'), contains('based in part on the work of the Independent JPEG Group'));
    expect(notice('iOS Swift packages (selected notices)'), contains('===== DKCamera ====='));
    expect(notice('iOS Swift packages (selected notices)'), contains('Copyright (c) 2015-2024 Tim Oliver'));
    expect(notice('iOS Swift packages (selected notices)'), contains('Copyright (c) 2015 Sentry'));
  });
}
