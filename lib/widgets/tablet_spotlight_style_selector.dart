import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../i18n/strings.g.dart';
import '../services/settings_service.dart';
import 'settings_builder.dart';

class TabletSpotlightStyleSelector extends StatelessWidget {
  const TabletSpotlightStyleSelector({super.key});
  @override
  Widget build(BuildContext context) => SettingsBuilder(
    prefs: const [SettingsService.tabletMarquee, SettingsService.tabletTonightPicks],
    builder: (context) {
      final settings = SettingsService.instance;
      final selected = settings.read(SettingsService.tabletTonightPicks) ? 'picks'
          : settings.read(SettingsService.tabletMarquee) ? 'marquee' : 'classic';
      return ListTile(
        leading: const Icon(Symbols.dashboard_rounded),
        title: Text(t.profileSetupGuide.tabletSpotlightStyle),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Wrap(spacing: 8, children: [
            for (final choice in [
              ('classic', t.profileSetupGuide.spotlightClassic),
              ('marquee', t.profileSetupGuide.spotlightMarquee),
              ('picks', t.profileSetupGuide.spotlightTonight),
            ])
              ChoiceChip(
                label: Text(choice.$2),
                selected: selected == choice.$1,
                onSelected: (_) async {
                  await settings.write(SettingsService.tabletMarquee, choice.$1 == 'marquee');
                  await settings.write(SettingsService.tabletTonightPicks, choice.$1 == 'picks');
                },
              ),
          ]),
        ),
      );
    },
  );
}
