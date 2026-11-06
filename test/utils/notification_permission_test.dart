import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/utils/notification_permission.dart';

void main() {
  setUp(NotificationPermission.debugReset);

  tearDown(() {
    NotificationPermission.debugRequestOverride = null;
    NotificationPermission.debugReset();
  });

  test('concurrent callers await one shared permission request', () async {
    final requestStarted = Completer<void>();
    final releaseRequest = Completer<void>();
    var requests = 0;
    NotificationPermission.debugRequestOverride = () async {
      requests++;
      requestStarted.complete();
      await releaseRequest.future;
    };

    var firstCompleted = false;
    var secondCompleted = false;
    final first = NotificationPermission.ensure().then((_) => firstCompleted = true);
    final second = NotificationPermission.ensure().then((_) => secondCompleted = true);

    await requestStarted.future;
    expect(requests, 1);
    expect(firstCompleted, isFalse);
    expect(secondCompleted, isFalse);

    releaseRequest.complete();
    await Future.wait([first, second]);

    expect(firstCompleted, isTrue);
    expect(secondCompleted, isTrue);
  });

  test('a failed permission request is swallowed and remains cached', () async {
    var requests = 0;
    NotificationPermission.debugRequestOverride = () async {
      requests++;
      throw StateError('permission channel unavailable');
    };

    await NotificationPermission.ensure();
    await NotificationPermission.ensure();

    expect(requests, 1);
  });

  test('iOS download notification permission is requested once at download time', () async {
    NotificationPermission.debugIsIosOverride = true;
    var requests = 0;
    NotificationPermission.debugRequestOverride = () async => requests++;
    await Future.wait([NotificationPermission.ensureForDownloads(), NotificationPermission.ensureForDownloads()]);
    expect(requests, 1);
  });

  test('an earlier playback permission check does not suppress the iOS download request', () async {
    NotificationPermission.debugIsIosOverride = true;
    var requests = 0;
    NotificationPermission.debugRequestOverride = () async {
      requests++;
    };
    await NotificationPermission.ensure();
    await NotificationPermission.ensureForDownloads();
    expect(requests, 2);
  });
}
