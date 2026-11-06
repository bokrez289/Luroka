import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/utils/orientation_helper.dart';
import 'package:luroka/utils/platform_detector.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('restoreSystemUI explicitly shows overlays before edge-to-edge', () async {
    final calls = <MethodCall>[];
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      SystemChannels.platform,
      (call) async {
        calls.add(call);
        return null;
      },
    );
    addTearDown(
      () => TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
        SystemChannels.platform,
        null,
      ),
    );

    await OrientationHelper.restoreSystemUI();

    expect(calls, hasLength(2));
    expect(calls[0].method, 'SystemChrome.setEnabledSystemUIOverlays');
    expect(calls[0].arguments, ['SystemUiOverlay.top', 'SystemUiOverlay.bottom']);
    expect(calls[1].method, 'SystemChrome.setEnabledSystemUIMode');
    expect(calls[1].arguments, 'SystemUiMode.edgeToEdge');
  });

  group('orientation requests', () {
    late List<MethodCall> calls;

    setUp(() {
      calls = <MethodCall>[];
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
        SystemChannels.platform,
        (call) async {
          calls.add(call);
          return null;
        },
      );
    });

    tearDown(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
        SystemChannels.platform,
        null,
      );
      TvDetectionService.debugSetAppleTVOverride(null);
      TvDetectionService.debugSetAutomotiveOverride(null);
    });

    List<MethodCall> orientationCalls() =>
        calls.where((call) => call.method == 'SystemChrome.setPreferredOrientations').toList();

    test('a handheld gets every orientation back, and the landscape lock when the player asks', () async {
      TvDetectionService.debugSetAppleTVOverride(false);
      TvDetectionService.debugSetAutomotiveOverride(false);

      await OrientationHelper.restoreDefaultOrientations();
      await OrientationHelper.lockLandscapeOrientation();

      expect(orientationCalls().map((call) => call.arguments), [
        [
          'DeviceOrientation.portraitUp',
          'DeviceOrientation.landscapeLeft',
          'DeviceOrientation.portraitDown',
          'DeviceOrientation.landscapeRight',
        ],
        ['DeviceOrientation.landscapeLeft', 'DeviceOrientation.landscapeRight'],
      ]);
    });

    test('phone browsing is portrait while tablet browsing keeps both orientations', () async {
      TvDetectionService.debugSetAppleTVOverride(false);
      TvDetectionService.debugSetAutomotiveOverride(false);

      await OrientationHelper.restoreAppOrientations(isPhone: true);
      await OrientationHelper.lockLandscapeOrientation();
      await OrientationHelper.restoreDefaultOrientations();
      await OrientationHelper.restoreAppOrientations(isPhone: true);
      await OrientationHelper.restoreAppOrientations(isPhone: false);

      expect(orientationCalls().map((call) => call.arguments), [
        ['DeviceOrientation.portraitUp'],
        ['DeviceOrientation.landscapeLeft', 'DeviceOrientation.landscapeRight'],
        [
          'DeviceOrientation.portraitUp',
          'DeviceOrientation.landscapeLeft',
          'DeviceOrientation.portraitDown',
          'DeviceOrientation.landscapeRight',
        ],
        ['DeviceOrientation.portraitUp'],
        [
          'DeviceOrientation.portraitUp',
          'DeviceOrientation.landscapeLeft',
          'DeviceOrientation.portraitDown',
          'DeviceOrientation.landscapeRight',
        ],
      ]);
    });

    for (final platform in [TargetPlatform.iOS, TargetPlatform.android]) {
      testWidgets('$platform identifies phones and tablets from the display rather than the window', (tester) async {
        TvDetectionService.debugSetAppleTVOverride(false);
        TvDetectionService.debugSetAutomotiveOverride(false);
        tester.view.devicePixelRatio = 2;
        tester.view.physicalSize = const Size(780, 1688);
        addTearDown(tester.view.reset);
        addTearDown(tester.view.display.reset);
        bool? phone;
        Future<void> render(Size displaySize) async {
          tester.view.display.size = displaySize;
          await tester.pumpWidget(
            MaterialApp(
              theme: ThemeData(platform: platform),
              home: Builder(
                builder: (context) {
                  phone = OrientationHelper.isPhoneDisplay(context);
                  return const SizedBox.shrink();
                },
              ),
            ),
          );
        }

        await render(const Size(780, 1688));
        expect(phone, isTrue);
        // Same narrow window on a larger display, as in iPad split view.
        await render(const Size(2048, 2732));
        expect(phone, isFalse);
      });
    }

    // A TV never rotates, and the request is not free: Flutter sends the full
    // set as SCREEN_ORIENTATION_FULL_USER, which lets WindowManager pick the
    // 180° rotation it withholds from apps that ask for nothing — the whole UI
    // then renders upside down on boxes that do not pin rotation (#2401).
    test('a TV is never sent an orientation, but still enters immersive playback', () async {
      TvDetectionService.debugSetAppleTVOverride(true);

      await OrientationHelper.restoreDefaultOrientations();
      await OrientationHelper.restoreAppOrientations(isPhone: true);
      await OrientationHelper.lockLandscapeOrientation();
      OrientationHelper.setLandscapeOrientation();
      await Future<void>.delayed(Duration.zero);

      expect(orientationCalls(), isEmpty);
      expect(calls.single.method, 'SystemChrome.setEnabledSystemUIMode');
      expect(calls.single.arguments, 'SystemUiMode.immersiveSticky');
    });

    test('a car is never sent an orientation', () async {
      TvDetectionService.debugSetAutomotiveOverride(true);

      await OrientationHelper.restoreDefaultOrientations();
      await OrientationHelper.restoreAppOrientations(isPhone: true);
      await OrientationHelper.lockLandscapeOrientation();

      expect(orientationCalls(), isEmpty);
    });
  });
}
