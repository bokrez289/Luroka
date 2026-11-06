import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/services/settings_service.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/tv_screen_insets.dart';
import '../test_helpers/prefs.dart';

void main() {
  setUp(() async {
    resetSharedPreferencesForTest();
    await SettingsService.getInstance();
  });
  tearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
  testWidgets('TV margins protect every edge and update live without nested doubling', (tester) async {
    tester.view.physicalSize = const Size(1280, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    TvDetectionService.debugSetAppleTVOverride(true);
    const key = ValueKey('safe-content');
    await tester.pumpWidget(
      const MaterialApp(
        home: TvScreenInsets(
          child: TvScreenInsets(child: SizedBox.expand(key: key)),
        ),
      ),
    );
    var rect = tester.getRect(find.byKey(key));
    expect(rect.left, closeTo(38.4, 0.01));
    expect(rect.top, closeTo(21.6, 0.01));
    expect(rect.right, closeTo(1241.6, 0.01));
    expect(rect.bottom, closeTo(698.4, 0.01));
    await SettingsService.instance.write(SettingsService.tvScreenMargin, 5);
    await tester.pump();
    rect = tester.getRect(find.byKey(key));
    expect(rect.left, 64);
    expect(rect.bottom, 684);
  });
  testWidgets('mobile browsing is not reduced by the TV margin preference', (tester) async {
    TvDetectionService.debugSetAppleTVOverride(false);
    await tester.pumpWidget(
      const MaterialApp(
        home: TvScreenInsets(child: SizedBox.expand(key: ValueKey('mobile'))),
      ),
    );
    expect(tester.getRect(find.byKey(const ValueKey('mobile'))).topLeft, Offset.zero);
  });
}
