import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../services/kids_profile_service.dart';
import '../../utils/error_dialog.dart';
import '../../widgets/kids/kids_atmosphere_picker.dart';
import '../../widgets/focused_scroll_scaffold.dart';
import 'profile_switch_screen.dart';

/// Kids may personalize their own appearance, but cannot edit restrictions.
class KidsSettingsScreen extends StatelessWidget {
  const KidsSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) => ListenableBuilder(
    listenable: KidsProfileService.instance,
    builder: (context, _) {
      final kids = KidsProfileService.instance;
      final id = kids.activeId;
      return FocusedScrollScaffold(
    title: Text(t.kids.title),
    slivers: [
      SliverPadding(
        padding: const EdgeInsets.all(24),
        sliver: SliverList.list(
          children: [
            if (id != null && kids.isKids(id) && kids.themeFor(id)) ...[
              KidsAtmospherePicker(
                value: kids.atmosphereFor(id),
                quiet: kids.quietSceneryFor(id),
                onChanged: (choice) async {
                  try {
                    await kids.setActiveAtmosphere(choice);
                  } catch (_) {
                    if (context.mounted) await showErrorDialog(context, t.kids.saveFailed);
                  }
                },
              ),
              const SizedBox(height: 24),
            ],
            Text(t.kids.manageFromAdult),
            const SizedBox(height: 24),
            FilledButton(
              autofocus: true,
              onPressed: () => Navigator.of(
                context,
                rootNavigator: true,
              ).push(MaterialPageRoute(builder: (_) => const ProfileSwitchScreen())),
              child: Text(t.kids.switchProfile),
            ),
          ],
        ),
      ),
    ],
      );
    },
  );
}
