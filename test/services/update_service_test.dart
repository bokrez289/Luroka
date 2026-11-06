import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:luroka/utils/media_server_http_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/services/base_shared_preferences_service.dart';
import 'package:luroka/services/update_service.dart';

import '../test_helpers/prefs.dart';

void main() {
  const lastCheckKey = 'update_last_check_time';

  setUp(resetSharedPreferencesForTest);
  PackageInfo.setMockInitialValues(
    appName: 'Plezy',
    packageName: 'com.plezy.test',
    version: '1.0.0',
    buildNumber: '1',
    buildSignature: '',
  );

  test('malformed cooldown state fails open and removes the invalid value', () async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    await prefs.setString(lastCheckKey, 'not-an-instant');

    expect(await UpdateService.shouldCheckForUpdates(), isTrue);
    expect(prefs.getString(lastCheckKey), isNull);
  });

  test('future cooldown state fails open and removes the invalid value', () async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    await prefs.setString(lastCheckKey, DateTime.now().add(const Duration(days: 30)).toIso8601String());

    expect(await UpdateService.shouldCheckForUpdates(), isTrue);
    expect(prefs.getString(lastCheckKey), isNull);
  });

  test('recent valid cooldown state suppresses a duplicate check and remains stored', () async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    final recent = DateTime.now().subtract(const Duration(minutes: 5)).toIso8601String();
    await prefs.setString(lastCheckKey, recent);

    expect(await UpdateService.shouldCheckForUpdates(), isFalse);
    expect(prefs.getString(lastCheckKey), recent);
  });

  test('old valid cooldown state permits a new check', () async {
    final prefs = await BaseSharedPreferencesService.sharedCache();
    final old = DateTime.now().subtract(const Duration(days: 2)).toIso8601String();
    await prefs.setString(lastCheckKey, old);

    expect(await UpdateService.shouldCheckForUpdates(), isTrue);
    expect(prefs.getString(lastCheckKey), old);
  });

  final failedResponses = <String, Future<http.Response> Function()>{
    'timeout': () async => throw TimeoutException('request timed out'),
    'non-200 response': () async => http.Response('unavailable', 503),
    'parse failure': () async => http.Response('not-json', 200, headers: {'content-type': 'application/json'}),
  };

  for (final failure in failedResponses.entries) {
    test('a manual check reports a ${failure.key} as a failure, not as the latest version', () async {
      final client = MediaServerHttpClient(client: MockClient((_) => failure.value()));
      addTearDown(client.close);

      await expectLater(
        UpdateService.debugPerformUpdateCheck(respectCooldown: false, client: client, throwOnFailure: true),
        throwsA(anything),
      );
    });
  }

  test('a manual check that finds no newer release returns null', () async {
    Uri? requested;
    final client = MediaServerHttpClient(
      client: MockClient((request) async {
        requested = request.url;
        return http.Response(
          jsonEncode({'tag_name': 'v1.0.0', 'html_url': 'https://example.com', 'published_at': '2026-01-01'}),
          200,
          headers: {'content-type': 'application/json'},
        );
      }),
    );
    addTearDown(client.close);

    expect(
      await UpdateService.debugPerformUpdateCheck(respectCooldown: false, client: client, throwOnFailure: true),
      isNull,
    );
    expect(requested.toString(), 'https://api.github.com/repos/bokrez289/luroka/releases/latest');
  });

  test('About shares the latest successful update and clears it when none remains', () async {
    final responses = [
      http.Response(
        jsonEncode({
          'tag_name': 'v1.1.0',
          'html_url': 'https://example.com/release',
          'name': 'Version 1.1.0',
          'body': 'Release notes',
          'published_at': '2026-01-01',
        }),
        200,
        headers: {'content-type': 'application/json'},
      ),
      http.Response(
        jsonEncode({'tag_name': 'v1.0.0', 'html_url': 'https://example.com', 'published_at': '2026-01-01'}),
        200,
        headers: {'content-type': 'application/json'},
      ),
    ];
    final client = MediaServerHttpClient(client: MockClient((_) async => responses.removeAt(0)));
    addTearDown(client.close);

    final update = await UpdateService.debugPerformUpdateCheck(
      respectCooldown: false,
      client: client,
      throwOnFailure: true,
    );

    expect(update?['latestVersion'], '1.1.0');
    expect(UpdateService.lastKnownUpdate?['latestVersion'], '1.1.0');

    expect(
      await UpdateService.debugPerformUpdateCheck(respectCooldown: false, client: client, throwOnFailure: true),
      isNull,
    );
    expect(UpdateService.lastKnownUpdate, isNull);
  });

  test('store Android never checks GitHub; sideload Android opens Luroka releases', () async {
    var calls = 0;
    final client = MediaServerHttpClient(
      client: MockClient((request) async {
        calls++;
        return http.Response(
          jsonEncode({'tag_name': 'v1.1.0', 'html_url': 'https://example.com/elsewhere', 'published_at': '2026-01-01'}),
          200,
          headers: {'content-type': 'application/json'},
        );
      }),
    );
    addTearDown(client.close);
    final storeResult = await UpdateService.debugPerformUpdateCheck(
      respectCooldown: false,
      client: client,
      androidOverride: true,
      storeManagedOverride: () async => true,
    );
    expect(storeResult, isNull);
    expect(calls, 0);
    final sideloadResult = await UpdateService.debugPerformUpdateCheck(
      respectCooldown: false,
      client: client,
      androidOverride: true,
      storeManagedOverride: () async => false,
    );
    expect(calls, 1);
    expect(sideloadResult?['releaseUrl'], 'https://github.com/bokrez289/luroka/releases');
    expect(sideloadResult?.containsKey('androidArtifact'), isFalse);
  });

  test('skipping a version clears the cached About update', () async {
    final client = MediaServerHttpClient(
      client: MockClient(
        (_) async => http.Response(
          jsonEncode({
            'tag_name': 'v1.1.0',
            'html_url': 'https://example.com/release',
            'name': 'Version 1.1.0',
            'body': 'Release notes',
            'published_at': '2026-01-01',
          }),
          200,
          headers: {'content-type': 'application/json'},
        ),
      ),
    );
    addTearDown(client.close);

    await UpdateService.debugPerformUpdateCheck(respectCooldown: false, client: client, throwOnFailure: true);
    expect(UpdateService.lastKnownUpdate?['latestVersion'], '1.1.0');

    await UpdateService.skipVersion('1.1.0');

    expect(UpdateService.lastKnownUpdate, isNull);
  });

  for (final failure in failedResponses.entries) {
    test('startup ${failure.key} records cooldown before request and manual check bypasses it', () async {
      final prefs = await BaseSharedPreferencesService.sharedCache();
      final cooldownAtRequest = <String?>[];
      var requestCount = 0;
      final client = MediaServerHttpClient(
        client: MockClient((_) async {
          requestCount++;
          cooldownAtRequest.add(prefs.getString(lastCheckKey));
          return failure.value();
        }),
      );
      addTearDown(client.close);

      expect(await UpdateService.debugPerformUpdateCheck(respectCooldown: true, client: client), isNull);
      expect(requestCount, 1);
      expect(cooldownAtRequest.single, isNotNull);
      final recordedCooldown = prefs.getString(lastCheckKey);
      expect(recordedCooldown, cooldownAtRequest.single);
      expect(DateTime.now().difference(DateTime.parse(recordedCooldown!)), lessThan(const Duration(minutes: 1)));

      expect(await UpdateService.debugPerformUpdateCheck(respectCooldown: true, client: client), isNull);
      expect(requestCount, 1, reason: 'a simulated next launch must honor the failed attempt cooldown');

      expect(await UpdateService.debugPerformUpdateCheck(respectCooldown: false, client: client), isNull);
      expect(requestCount, 2, reason: 'an explicit manual check must bypass a recent startup cooldown');
      expect(
        prefs.getString(lastCheckKey),
        recordedCooldown,
        reason: 'manual checks must not rewrite startup cooldown',
      );
    });
  }
}
