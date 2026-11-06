import 'dart:async';
import 'dart:io';
import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';

/// A bounded, opt-in sample. No callbacks/timers run between measurements.
/// Device-wide so returning to Home does not interrupt a browsing sample.
class UiPerformanceProbe extends ChangeNotifier {
  static final instance = UiPerformanceProbe();

  Timer? _timer;
  final List<Duration> _build = [];
  final List<Duration> _raster = [];
  Duration _budget = const Duration(microseconds: 16667);
  int _frames = 0;
  int _slowFrames = 0;
  bool get running => _timer != null;
  UiPerformanceSummary? summary;

  void start({double refreshRate = 60, Duration duration = const Duration(seconds: 20)}) {
    if (running) return;
    final hz = refreshRate.isFinite && refreshRate > 0 ? refreshRate : 60;
    _budget = Duration(microseconds: (Duration.microsecondsPerSecond / hz).round());
    _build.clear();
    _raster.clear();
    _frames = 0;
    _slowFrames = 0;
    summary = null;
    SchedulerBinding.instance.addTimingsCallback(_record);
    _timer = Timer(duration, stop);
    notifyListeners();
  }

  void _record(List<FrameTiming> timings) {
    for (final frame in timings) {
      _frames++;
      if (frame.buildDuration > _budget || frame.rasterDuration > _budget) _slowFrames++;
      // 20 seconds at up to 120 Hz fits comfortably. Keep a hard bound even
      // when the caller requests a longer sample on a high-refresh display.
      if (_build.length < 4096) {
        _build.add(frame.buildDuration);
        _raster.add(frame.rasterDuration);
      }
    }
  }

  void stop() {
    if (!running) return;
    _timer!.cancel();
    _timer = null;
    SchedulerBinding.instance.removeTimingsCallback(_record);
    int? rss;
    try {
      rss = ProcessInfo.currentRss;
    } catch (_) {
      /* Unavailable on some targets. */
    }
    summary = UiPerformanceSummary(
      frames: _frames,
      slowFrames: _slowFrames,
      budget: _budget,
      buildP95: percentile95(_build),
      rasterP95: percentile95(_raster),
      rssBytes: rss,
    );
    notifyListeners();
  }

  @visibleForTesting
  static Duration percentile95(List<Duration> values) {
    if (values.isEmpty) return Duration.zero;
    final sorted = List<Duration>.of(values)..sort();
    return sorted[math.max(0, (sorted.length * 0.95).ceil() - 1)];
  }

  @override
  void dispose() {
    stop();
    super.dispose();
  }
}

class UiPerformanceSummary {
  const UiPerformanceSummary({
    required this.frames,
    required this.slowFrames,
    required this.budget,
    required this.buildP95,
    required this.rasterP95,
    this.rssBytes,
  });

  final int frames;
  final int slowFrames;
  final Duration budget;
  final Duration buildP95;
  final Duration rasterP95;
  final int? rssBytes;
  double get slowPercent => frames == 0 ? 0 : slowFrames * 100 / frames;
}
