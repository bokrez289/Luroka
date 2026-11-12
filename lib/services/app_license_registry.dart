import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// Register notices for manually bundled assets that Flutter's package
/// license collector does not discover automatically.
void registerAppLicenseAssets({bool? includeAndroidNotices, bool? includeAppleNotices}) {
  LicenseRegistry.addLicense(() async* {
    yield LicenseEntryWithLineBreaks(const ['Luroka', 'Plezy'], await rootBundle.loadString('LICENSE'));
  });
  LicenseRegistry.addLicense(() async* {
    yield LicenseEntryWithLineBreaks(const ['ArtCNN'], await rootBundle.loadString('assets/licenses/ArtCNN-MIT.txt'));
  });
  LicenseRegistry.addLicense(() async* {
    final ofl = await rootBundle.loadString('assets/licenses/Inter-OFL.txt');
    final licenseStart = ofl.indexOf('-----------------------------------------------------------');
    if (licenseStart < 0) throw const FormatException('Missing bundled SIL Open Font License');
    yield LicenseEntryWithLineBreaks(
      const ['Go Noto Current', 'Go Noto Current Hangul'],
      'Copyright 2022 The Noto Project Authors (https://github.com/notofonts/latin-greek-cyrillic)\n\n'
      '${ofl.substring(licenseStart)}',
    );
  });
  if (includeAppleNotices ?? Platform.isIOS) {
    LicenseRegistry.addLicense(() async* {
      yield LicenseEntryWithLineBreaks(const [
        'Apple media dependencies (partial source notices)',
      ], await rootBundle.loadString('assets/licenses/apple-media-source-notices.txt'));
      yield LicenseEntryWithLineBreaks(const [
        'iOS Swift packages (selected notices)',
      ], await rootBundle.loadString('assets/licenses/ios-swift-package-notices.txt'));
    });
  }
  if ((includeAppleNotices ?? Platform.isIOS) || (includeAndroidNotices ?? Platform.isAndroid)) {
    LicenseRegistry.addLicense(() async* {
      yield LicenseEntryWithLineBreaks(const [
        'libdovi Rust dependencies (candidate notices)',
      ], await rootBundle.loadString('assets/licenses/libdovi-rust-candidate-notices.txt'));
    });
  }
  if (includeAndroidNotices ?? Platform.isAndroid) {
    LicenseRegistry.addLicense(() async* {
      yield LicenseEntryWithLineBreaks(const [
        'ZXing / ZXing Android Embedded',
      ], await rootBundle.loadString('assets/licenses/zxing-scanner-notices.txt'));
    });
    LicenseRegistry.addLicense(() async* {
      yield LicenseEntryWithLineBreaks(const [
        'mpv-android',
      ], await rootBundle.loadString('assets/licenses/mpv-android-NOTICE.txt'));
    });
    LicenseRegistry.addLicense(() async* {
      yield LicenseEntryWithLineBreaks(const ['libass'], await rootBundle.loadString('assets/licenses/libass-ISC.txt'));
      yield LicenseEntryWithLineBreaks(const [
        'libass Android bundled dependencies',
      ], await rootBundle.loadString('assets/licenses/libass-android-0.18.3-notices.txt'));
      yield LicenseEntryWithLineBreaks(const [
        'libdovi',
      ], await rootBundle.loadString('assets/licenses/libdovi-MIT.txt'));
      yield LicenseEntryWithLineBreaks(const ['dav1d'], await rootBundle.loadString('assets/licenses/dav1d-BSD.txt'));
      yield LicenseEntryWithLineBreaks(const [
        'Lua 5.2.4',
      ], await rootBundle.loadString('assets/licenses/lua-5.2.4-MIT.txt'));
      yield LicenseEntryWithLineBreaks(
        const ['mpv / FFmpeg / libplacebo / OpenSSL'],
        'OpenSSL: Copyright (c) 1998-2026 The OpenSSL Project Authors.\n'
        'Copyright (c) 1995-1998 Eric A. Young, Tim J. Hudson. All rights reserved.\n\n'
        '${await rootBundle.loadString('assets/licenses/mpv-native-source-notices.txt')}',
      );
      yield LicenseEntryWithLineBreaks(const [
        'Chromium / Cronet',
      ], await rootBundle.loadString('assets/licenses/cronet-143.7445.0-notices.txt'));
      yield LicenseEntryWithLineBreaks(const [
        'Sentry Android third-party notices',
      ], await rootBundle.loadString('assets/licenses/sentry-android-8.56.0-notices.txt'));
      yield LicenseEntryWithLineBreaks(const [
        'Selected Android Maven dependency notices',
      ], await rootBundle.loadString('assets/licenses/android-maven-selected-notices.txt'));
      yield LicenseEntryWithLineBreaks(const [
        'Android runtime embedded notices',
      ], await rootBundle.loadString('assets/licenses/android-runtime-embedded-notices.txt'));
    });
  }
}
