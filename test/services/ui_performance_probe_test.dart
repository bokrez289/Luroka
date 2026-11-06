import 'package:flutter/scheduler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/services/ui_performance_probe.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  FrameTiming frame(int build, int raster) => FrameTiming(
    vsyncStart: 0,
    buildStart: 0,
    buildFinish: build,
    rasterStart: build,
    rasterFinish: build + raster,
    rasterFinishWallTime: build + raster,
  );

  test('an opt-in sample counts slow UI/raster frames against the actual refresh budget', () {
    final probe = UiPerformanceProbe();
    addTearDown(probe.dispose);
    probe.start(refreshRate: 60);
    SchedulerBinding.instance.platformDispatcher.onReportTimings!([
      frame(5000, 5000),
      frame(20000, 5000),
      frame(1000, 22000),
    ]);
    probe.stop();
    final summary = probe.summary!;
    expect(probe.running, isFalse);
    expect(summary.frames, 3);
    expect(summary.slowFrames, 2);
    expect(summary.slowPercent, closeTo(66.6667, 0.01));
    expect(summary.buildP95, const Duration(milliseconds: 20));
    expect(summary.rasterP95, const Duration(milliseconds: 22));
    expect(summary.budget.inMicroseconds, 16667);
  });

  test('empty samples are honest, and a second sample replaces the previous one', () {
    final probe = UiPerformanceProbe();
    addTearDown(probe.dispose);
    probe.start(refreshRate: double.nan);
    probe.stop();
    expect(probe.summary!.frames, 0);
    expect(probe.summary!.slowPercent, 0);
    probe.start(refreshRate: 120);
    SchedulerBinding.instance.platformDispatcher.onReportTimings!([frame(9000, 2000)]);
    probe.stop();
    expect(probe.summary!.frames, 1);
    expect(probe.summary!.slowFrames, 1);
    expect(probe.summary!.budget.inMicroseconds, 8333);
  });
}
