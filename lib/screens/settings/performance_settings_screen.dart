import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../i18n/strings.g.dart';
import '../../services/device_performance.dart';
import '../../services/settings_service.dart';
import '../../services/ui_performance_probe.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/focusable_list_tile.dart';
import '../../widgets/settings_builder.dart';
import '../../widgets/settings_page.dart';
import '../../widgets/settings_section.dart';
import '../../widgets/setting_tile.dart';

class PerformanceSettingsScreen extends StatelessWidget {
  const PerformanceSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) => SettingsBuilder(
    prefs: const [SettingsService.fireStickMode, SettingsService.visualEffects],
    builder: (context) => ListenableBuilder(
      listenable: UiPerformanceProbe.instance,
      builder: (context, _) {
        final probe = UiPerformanceProbe.instance;
        final result = probe.summary;
        final cache = PaintingBinding.instance.imageCache;
        String milliseconds(Duration value) => '${(value.inMicroseconds / 1000).toStringAsFixed(1)} ms';
        return SettingsPage(
          title: Text(t.customPerformance.title),
          children: [
            SettingSwitchTile(
              pref: SettingsService.fireStickMode,
              icon: Symbols.speed_rounded,
              title: t.customPerformance.fireStickMode,
              subtitle: t.customPerformance.description,
            ),
            SettingsGroup(
              children: [
                ListTile(
                  title: Text(t.customPerformance.effectsTier),
                  subtitle: Text(DevicePerformance.describeSync()),
                ),
                ListTile(
                  title: Text(t.customPerformance.imageCache),
                  subtitle: Text('${cache.maximumSize} • ${cache.maximumSizeBytes ~/ (1 << 20)} MiB'),
                ),
              ],
            ),
            SettingsGroup(
              title: t.customPerformance.measurement,
              children: [
                Padding(padding: const EdgeInsets.all(16), child: Text(t.customPerformance.measureInstructions)),
                FocusableListTile(
                  leading: AppIcon(probe.running ? Symbols.stop_rounded : Symbols.play_arrow_rounded),
                  title: Text(probe.running ? t.customPerformance.stopSample : t.customPerformance.startSample),
                  onTap: () {
                    if (probe.running) {
                      probe.stop();
                    } else {
                      probe.start(refreshRate: View.of(context).display.refreshRate);
                    }
                  },
                ),
                if (probe.running)
                  Padding(padding: const EdgeInsets.all(16), child: Text(t.customPerformance.sampling)),
                if (result != null) ...[
                  ListTile(title: Text(t.customPerformance.frames), trailing: Text('${result.frames}')),
                  if (result.frames == 0)
                    Padding(padding: const EdgeInsets.all(16), child: Text(t.customPerformance.noFrames))
                  else ...[
                    ListTile(
                      title: Text(t.customPerformance.slowFrames),
                      trailing: Text('${result.slowPercent.toStringAsFixed(1)}%'),
                    ),
                    ListTile(title: Text(t.customPerformance.buildP95), trailing: Text(milliseconds(result.buildP95))),
                    ListTile(
                      title: Text(t.customPerformance.rasterP95),
                      trailing: Text(milliseconds(result.rasterP95)),
                    ),
                    ListTile(title: Text(t.customPerformance.frameBudget), trailing: Text(milliseconds(result.budget))),
                  ],
                  if (result.rssBytes case final bytes?)
                    ListTile(
                      title: Text(t.customPerformance.processMemory),
                      trailing: Text('${bytes ~/ (1 << 20)} MiB'),
                    ),
                ],
              ],
            ),
            const SizedBox(height: 24),
          ],
        );
      },
    ),
  );
}
