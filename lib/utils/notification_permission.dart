import 'dart:io';

import 'package:background_downloader/background_downloader.dart';
import 'package:flutter/foundation.dart';

import 'app_logger.dart';

/// Notification permission for downloads and Android background playback.
abstract final class NotificationPermission {
  static Future<void>? _requestFuture;
  static Future<void>? _iosDownloadRequestFuture;

  /// Replaces the platform request in tests. Reset to null in `tearDown`.
  @visibleForTesting
  static Future<void> Function()? debugRequestOverride;
  @visibleForTesting
  static bool? debugIsIosOverride;

  /// Clears the once-per-run future so each test starts from a clean slate.
  @visibleForTesting
  static void debugReset() {
    _requestFuture = null;
    _iosDownloadRequestFuture = null;
    debugIsIosOverride = null;
  }

  /// Best-effort permission request.
  ///
  /// Both consumers need it for the same reason: the notification is what
  /// anchors the foreground service. For music that costs only visibility, but
  /// for downloads a denial lets the OS kill the transfer as soon as the screen
  /// goes off — which is exactly the failure users report as "downloads only
  /// work with the screen on".
  ///
  /// Concurrent callers await the same request. The completed future stays
  /// cached for the app run because Android remembers a real denial.
  ///
  /// No-op off Android: iOS/macOS media controls don't use notifications.
  static Future<void> ensure() => _requestFuture ??= _request();

  /// Request iOS authorization only when the viewer actually starts a
  /// download. Playback's Android-only permission path stays unchanged.
  static Future<void> ensureForDownloads() {
    if (debugIsIosOverride ?? Platform.isIOS) {
      return _iosDownloadRequestFuture ??= _request(allowIos: true);
    }
    return ensure();
  }

  static Future<void> _request({bool allowIos = false}) async {
    try {
      // Checked before the platform gate so tests exercise the once-per-run
      // contract on a host that is not Android.
      final override = debugRequestOverride;
      if (override != null) {
        await override();
        return;
      }
      if (!Platform.isAndroid && !(allowIos && (debugIsIosOverride ?? Platform.isIOS))) return;

      final permissions = FileDownloader().permissions;
      final status = await permissions.status(PermissionType.notifications);
      if (status == PermissionStatus.granted) return;
      if (allowIos && status == PermissionStatus.denied) return;
      final result = await permissions.request(PermissionType.notifications);
      appLogger.d('Notification permission request result: $result');
    } catch (e, stackTrace) {
      // Permission prompts are best-effort prerequisites. A platform failure
      // must not poison the shared future or fail playback/download queueing.
      appLogger.w('Notification permission request failed', error: e, stackTrace: stackTrace);
    }
  }
}
