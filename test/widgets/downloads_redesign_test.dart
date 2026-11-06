import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/focus/input_mode_tracker.dart';
import 'package:luroka/i18n/strings.g.dart';
import 'package:luroka/models/download_models.dart';
import 'package:luroka/theme/mono_theme.dart';
import 'package:luroka/utils/platform_detector.dart';
import 'package:luroka/widgets/download_tree_view.dart';
import 'package:luroka/widgets/downloads_dashboard_summary.dart';
import '../test_helpers/media_items.dart';

void main() {
  for (final tv in [false, true]) {
    testWidgets('download cards show real percentage/speed and retain Pause on ${tv ? 'TV' : 'phone'}', (tester) async {
      tester.view.physicalSize = tv ? const Size(1280, 720) : const Size(320, 700);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      TvDetectionService.debugSetAppleTVOverride(tv);
      addTearDown(() => TvDetectionService.debugSetAppleTVOverride(null));
      final item = testMediaItem(id: 'movie', title: 'Offline movie', serverId: 'server');
      final progress = DownloadProgress(
        globalKey: item.globalKey,
        status: DownloadStatus.downloading,
        progress: 37,
        speed: 2 * 1024 * 1024,
        downloadedBytes: 37 * 1024 * 1024,
        totalBytes: 100 * 1024 * 1024,
      );
      String? paused;
      await tester.pumpWidget(
        InputModeTracker(
          child: MaterialApp(
            theme: monoTheme(MonoPalette.dark),
            home: Scaffold(
              body: Column(
                children: [
                  DownloadsDashboardSummary(downloads: [progress]),
                  Expanded(
                    child: DownloadTreeView(
                      downloads: {item.globalKey: progress},
                      metadata: {item.globalKey: item},
                      onPause: (id) => paused = id,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.textContaining('37%'), findsOneWidget);
      expect(find.textContaining('MB/s'), findsWidgets);
      await tester.ensureVisible(find.byTooltip(t.common.pause));
      await tester.tap(find.byTooltip(t.common.pause));
      await tester.pumpAndSettle();
      expect(paused, item.globalKey);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
    });
  }
}
