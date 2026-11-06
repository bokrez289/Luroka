import 'dart:convert';
import 'dart:io';
import 'package:crypto/crypto.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'base_shared_preferences_service.dart';
import '../utils/app_identity.dart';

/// Sideload releases use an HTTPS feed and per-artifact Android version codes.
/// The platform independently checks package identity and signing certificates.
class AndroidUpdateService {
  static const channel = MethodChannel('com.bokrez.luroka/updates');
  static const _sourceKey = 'luroka_update_feed_url';
  static const defaultFeed = String.fromEnvironment(
    'LUROKA_UPDATE_FEED_URL',
    defaultValue: AppIdentity.androidUpdateFeedUrl,
  );
  static const variant = String.fromEnvironment('LUROKA_ANDROID_VARIANT', defaultValue: 'split');
  static const maxApkBytes = 600 * 1024 * 1024;
  static bool _downloading = false;

  /// Explicitly mark official store builds at release time; the installer
  /// lookup also protects Play installs built without that flag.
  static const distribution = String.fromEnvironment('LUROKA_DISTRIBUTION', defaultValue: 'auto');

  static bool isStoreManagedInstaller(String? installer, {String buildDistribution = distribution}) {
    if (buildDistribution == 'store' || buildDistribution == 'play') return true;
    if (installer == null || installer.isEmpty) return false;
    if (installer == 'com.android.vending') return true;
    if (buildDistribution == 'sideload') return false;
    const localInstallers = {
      'com.android.shell',
      'com.android.packageinstaller',
      'com.google.android.packageinstaller',
      'com.android.permissioncontroller',
      'com.google.android.permissioncontroller',
    };
    // Unknown installer packages may themselves be app stores. Default to the
    // store-managed path rather than prompting their customers to sideload.
    return !localInstallers.contains(installer);
  }

  static Future<bool> isStoreManagedInstall() async {
    if (distribution == 'store' || distribution == 'play') return true;
    try {
      return isStoreManagedInstaller(await channel.invokeMethod<String>('installerPackage'));
    } on PlatformException {
      // If Android cannot identify the installer, do not risk directing a
      // store installation to an external distribution mechanism.
      return true;
    } on MissingPluginException {
      return true;
    }
  }

  static bool validHttps(String value) {
    final uri = Uri.tryParse(value);
    return uri != null && uri.scheme == 'https' && uri.host.isNotEmpty && uri.userInfo.isEmpty && !uri.hasFragment;
  }

  static Future<String> feedUrl() async =>
      (await BaseSharedPreferencesService.sharedCache()).getString(_sourceKey) ?? defaultFeed;
  static Future<void> setFeedUrl(String url) async {
    final value = url.trim();
    if (value.isNotEmpty && !validHttps(value)) throw const FormatException('HTTPS update source required');
    await (await BaseSharedPreferencesService.sharedCache()).setString(_sourceKey, value);
  }

  static Map<String, dynamic>? selectRelease(
    Map<String, dynamic> feed,
    Map<String, dynamic> device, {
    String buildVariant = variant,
  }) {
    if (buildVariant != 'tcl-universal' && !const ['arm64-v8a', 'armeabi-v7a'].contains(device['abi'])) return null;
    final key = buildVariant == 'tcl-universal'
        ? 'tcl-universal'
        : device['abi'] == 'arm64-v8a'
        ? 'arm64-phone'
        : 'arm32-firestick';
    final artifacts = feed['artifacts'];
    if (artifacts is! Map || artifacts[key] is! Map) return null;
    final artifact = Map<String, dynamic>.from(artifacts[key] as Map);
    final code = artifact['versionCode'];
    final current = device['versionCode'];
    if (code is! int || current is! int || code <= current) return null;
    final minSdk = artifact['minSdk'] ?? 23;
    if (minSdk is! int || (device['sdk'] as int) < minSdk) return null;
    final size = artifact['size'];
    if (size is! int ||
        size <= 0 ||
        size > maxApkBytes ||
        !validHttps(artifact['url']?.toString() ?? '') ||
        !RegExp(r'^[a-fA-F0-9]{64}$').hasMatch(artifact['sha256']?.toString() ?? '')) {
      throw const FormatException('Invalid release artifact');
    }
    if (feed['version'] is! String || (feed['version'] as String).isEmpty) {
      throw const FormatException('Missing release version');
    }
    return {...artifact, 'variant': key, 'version': feed['version'], 'notes': feed['notes']?.toString() ?? ''};
  }

  static Future<HttpClientResponse> _get(HttpClient client, Uri uri, {int redirects = 0}) async {
    if (!validHttps(uri.toString()) || redirects > 5) throw const HttpException('Invalid update redirect');
    final request = await client.getUrl(uri).timeout(const Duration(seconds: 30));
    request.followRedirects = false;
    final response = await request.close().timeout(const Duration(seconds: 30));
    if ([301, 302, 303, 307, 308].contains(response.statusCode)) {
      final target = response.headers.value(HttpHeaders.locationHeader);
      if (target == null) throw const HttpException('Missing redirect');
      await response.drain<void>().timeout(const Duration(seconds: 30));
      return _get(client, uri.resolve(target), redirects: redirects + 1);
    }
    if (response.statusCode != 200) throw HttpException('Update HTTP ${response.statusCode}');
    return response;
  }

  static Future<Map<String, dynamic>?> check() async {
    final source = await feedUrl();
    if (source.isEmpty) return null;
    final client = HttpClient()..connectionTimeout = const Duration(seconds: 20);
    try {
      final response = await _get(client, Uri.parse(source));
      final bytes = <int>[];
      await for (final chunk in response.timeout(const Duration(seconds: 30))) {
        bytes.addAll(chunk);
        if (bytes.length > 1024 * 1024) throw const FormatException('Release feed is too large');
      }
      final data = jsonDecode(utf8.decode(bytes));
      if (data is! Map<String, dynamic>) throw const FormatException('Invalid release feed');
      final device = Map<String, dynamic>.from((await channel.invokeMapMethod<String, dynamic>('deviceInfo'))!);
      final release = selectRelease(data, device);
      if (release == null) return null;
      return {
        'hasUpdate': true,
        'latestVersion': release['version'],
        'currentVersion': '${device['version']} (${device['versionCode']})',
        'releaseNotes': release['notes'],
        'releaseName': 'Luroka ${release['version']}',
        'releaseUrl': source,
        'androidArtifact': release,
      };
    } finally {
      client.close(force: true);
    }
  }

  static Future<File> download(
    Map<String, dynamic> artifact, {
    required void Function(double) onProgress,
    required HttpClient client,
  }) async {
    if (_downloading) throw StateError('An update download is already running');
    _downloading = true;
    try {
      return await _download(artifact, onProgress: onProgress, client: client);
    } finally {
      _downloading = false;
    }
  }

  static Future<File> _download(
    Map<String, dynamic> artifact, {
    required void Function(double) onProgress,
    required HttpClient client,
  }) async {
    final size = artifact['size'];
    if (size is! int || size <= 0 || size > maxApkBytes) throw const FormatException('Invalid APK size');
    final dir = Directory('${(await getTemporaryDirectory()).path}/luroka-updates');
    await dir.create(recursive: true);
    final partial = File('${dir.path}/update.apk.part');
    final target = File('${dir.path}/update.apk');
    if (await target.exists()) await target.delete();
    final sink = partial.openWrite();
    var received = 0;
    try {
      final response = await _get(client, Uri.parse(artifact['url'] as String));
      await for (final chunk in response.timeout(const Duration(seconds: 45))) {
        received += chunk.length;
        if (received > size || received > maxApkBytes) throw const FormatException('APK exceeds declared size');
        sink.add(chunk);
        onProgress(received / size);
      }
      await sink.flush();
      await sink.close();
      if (received != size) throw const FormatException('Incomplete APK');
      final digest = await sha256.bind(partial.openRead()).first;
      if (digest.toString() != artifact['sha256'].toString().toLowerCase()) {
        throw const FormatException('APK checksum mismatch');
      }
      return await partial.rename(target.path);
    } catch (_) {
      await sink.close();
      if (await partial.exists()) await partial.delete();
      rethrow;
    }
  }

  /// Returns false after opening Android's unknown-app-source permission page.
  static Future<bool> install(File apk, int versionCode) async =>
      await channel.invokeMethod<bool>('install', {'path': apk.path, 'versionCode': versionCode}) ?? false;
}
