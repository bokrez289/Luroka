import 'dart:async';
import 'dart:io';
import 'package:crypto/crypto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:luroka/services/android_update_service.dart';
import '../test_helpers/prefs.dart';

void main() {
  setUp(resetSharedPreferencesForTest);
  test('official store installations never follow the sideload update path', () {
    expect(AndroidUpdateService.isStoreManagedInstaller('com.android.vending'), isTrue);
    expect(AndroidUpdateService.isStoreManagedInstaller('com.android.vending', buildDistribution: 'sideload'), isTrue);
    expect(AndroidUpdateService.isStoreManagedInstaller(null, buildDistribution: 'play'), isTrue);
    expect(AndroidUpdateService.isStoreManagedInstaller('another.store'), isTrue);
    expect(AndroidUpdateService.isStoreManagedInstaller('com.android.shell'), isFalse);
    expect(AndroidUpdateService.isStoreManagedInstaller('com.google.android.packageinstaller'), isFalse);
    expect(AndroidUpdateService.isStoreManagedInstaller(null), isFalse);
    expect(AndroidUpdateService.isStoreManagedInstaller('file.manager', buildDistribution: 'sideload'), isFalse);
  });
  Map<String, dynamic> artifact(int code, {int size = 4, String? hash}) => {
    'versionCode': code,
    'minSdk': 23,
    'size': size,
    'url': 'https://releases.example/luroka.apk',
    'sha256': hash ?? sha256.convert([1, 2, 3, 4]).toString(),
  };
  Map<String, dynamic> feed() => {
    'version': '2.0.0',
    'notes': 'New settings',
    'artifacts': {'arm64-phone': artifact(2201), 'arm32-firestick': artifact(1201), 'tcl-universal': artifact(2201)},
  };
  test('selects the installed build family and compares Android version codes', () {
    expect(
      AndroidUpdateService.selectRelease(feed(), {'abi': 'arm64-v8a', 'sdk': 34, 'versionCode': 2200})!['variant'],
      'arm64-phone',
    );
    expect(
      AndroidUpdateService.selectRelease(feed(), {'abi': 'armeabi-v7a', 'sdk': 28, 'versionCode': 1200})!['variant'],
      'arm32-firestick',
    );
    expect(
      AndroidUpdateService.selectRelease(feed(), {
        'abi': 'armeabi-v7a',
        'sdk': 34,
        'versionCode': 2200,
      }, buildVariant: 'tcl-universal')!['variant'],
      'tcl-universal',
    );
    expect(AndroidUpdateService.selectRelease(feed(), {'abi': 'arm64-v8a', 'sdk': 34, 'versionCode': 2201}), isNull);
    expect(AndroidUpdateService.selectRelease(feed(), {'abi': 'arm64-v8a', 'sdk': 22, 'versionCode': 2200}), isNull);
  });
  test('rejects invalid artifact checksums, sizes and insecure URLs', () {
    for (final change in [
      {'sha256': 'bad'},
      {'size': -1},
      {'size': AndroidUpdateService.maxApkBytes + 1},
      {'url': 'http://releases.example/app.apk'},
    ]) {
      final data = feed();
      (data['artifacts'] as Map)['arm64-phone'] = {...artifact(2201), ...change};
      expect(
        () => AndroidUpdateService.selectRelease(data, {'abi': 'arm64-v8a', 'sdk': 34, 'versionCode': 2200}),
        throwsFormatException,
      );
    }
  });
  test('update sources persist and reject non-HTTPS and credential-bearing addresses', () async {
    await AndroidUpdateService.setFeedUrl('https://example.com/luroka.json');
    expect(await AndroidUpdateService.feedUrl(), 'https://example.com/luroka.json');
    for (final invalid in ['http://example.com/feed', 'file:///tmp/update', 'https://user:password@example.com/feed']) {
      await expectLater(AndroidUpdateService.setFeedUrl(invalid), throwsFormatException);
    }
    await AndroidUpdateService.setFeedUrl('');
    expect(await AndroidUpdateService.feedUrl(), isEmpty);
  });
  group('APK transfer verification', () {
    late Directory temp;
    late PathProviderPlatform oldPaths;
    setUp(() async {
      temp = await Directory.systemTemp.createTemp('luroka-update-test-');
      oldPaths = PathProviderPlatform.instance;
      PathProviderPlatform.instance = _Paths(temp.path);
    });
    tearDown(() async {
      PathProviderPlatform.instance = oldPaths;
      await temp.delete(recursive: true);
    });
    test('only a complete checksum-matching download becomes installable', () async {
      final progress = <double>[];
      final file = await AndroidUpdateService.download(
        artifact(2201),
        onProgress: progress.add,
        client: _Client([
          [1, 2],
          [3, 4],
        ]),
      );
      expect(await file.readAsBytes(), [1, 2, 3, 4]);
      expect(file.path, endsWith('/luroka-updates/update.apk'));
      expect(progress.last, 1);
    });
    for (final bad in ['truncated', 'oversized', 'checksum', 'http redirect', 'cancelled']) {
      test('rejects $bad and deletes incomplete APK', () async {
        final client = _Client(
          bad == 'truncated'
              ? [
                  [1, 2],
                ]
              : bad == 'oversized'
              ? [
                  [1, 2, 3, 4, 5],
                ]
              : [
                  [1, 2, 3, 4],
                ],
          redirect: bad == 'http redirect' ? 'http://example.com/app.apk' : null,
          fail: bad == 'cancelled',
        );
        await expectLater(
          AndroidUpdateService.download(
            artifact(2201, hash: bad == 'checksum' ? '0' * 64 : null),
            onProgress: (_) {},
            client: client,
          ),
          throwsA(anything),
        );
        expect(await File('${temp.path}/luroka-updates/update.apk').exists(), isFalse);
        expect(await File('${temp.path}/luroka-updates/update.apk.part').exists(), isFalse);
      });
    }
  });
}

class _Paths extends PathProviderPlatform {
  _Paths(this.path);
  final String path;
  @override
  Future<String?> getTemporaryPath() async => path;
}

class _Client implements HttpClient {
  _Client(this.chunks, {this.redirect, this.fail = false});
  final List<List<int>> chunks;
  final String? redirect;
  final bool fail;
  @override
  Future<HttpClientRequest> getUrl(Uri url) async => _Request(_Response(chunks, redirect, fail));
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _Request implements HttpClientRequest {
  _Request(this.response);
  final HttpClientResponse response;
  @override
  bool followRedirects = true;
  @override
  Future<HttpClientResponse> close() async => response;
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _Response extends Stream<List<int>> implements HttpClientResponse {
  _Response(this.chunks, this.redirectUrl, this.fail);
  final List<List<int>> chunks;
  final String? redirectUrl;
  final bool fail;
  @override
  int get statusCode => redirectUrl == null ? 200 : 302;
  @override
  HttpHeaders get headers => _Headers(redirectUrl);
  @override
  StreamSubscription<List<int>> listen(
    void Function(List<int>)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) => (fail ? Stream<List<int>>.error(const SocketException('cancelled')) : Stream.fromIterable(chunks)).listen(
    onData,
    onError: onError,
    onDone: onDone,
    cancelOnError: cancelOnError,
  );
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _Headers implements HttpHeaders {
  _Headers(this.redirect);
  final String? redirect;
  @override
  String? value(String name) => name == HttpHeaders.locationHeader ? redirect : null;
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
