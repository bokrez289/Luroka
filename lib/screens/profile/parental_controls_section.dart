import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../profiles/profile.dart';
import '../../services/kids_profile_service.dart';
import '../../utils/error_dialog.dart';
import 'kids_profile_screen.dart';
import 'parent_access.dart';
import 'pin_entry_dialog.dart';

class ParentalControlsSection extends StatelessWidget {
  const ParentalControlsSection({super.key, required this.profile});
  final Profile profile;

  @override
  Widget build(BuildContext context) => ListenableBuilder(
    listenable: KidsProfileService.instance,
    builder: (context, _) {
      final service = KidsProfileService.instance;
      if (service.isActiveKids) return const SizedBox.shrink();
      final child = service.isKids(profile.id);
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(t.kids.parentalControls, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 12),
          if (child)
            OutlinedButton(
              onPressed: () async {
                if (!await ensureParentAccess(context) || !context.mounted) return;
                await Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (_) => KidsProfileScreen(profile: profile)));
              },
              child: Text(t.kids.ageGroup),
            )
          else ...[
            SwitchListTile(
              title: Text(t.kids.hideWatched),
              subtitle: Text(t.kids.hideExplain),
              value: service.hideKidsFor(profile.id),
              onChanged: (value) async {
                if (!await ensureParentAccess(context)) return;
                try {
                  await service.setHideKids(profile.id, value);
                } catch (_) {
                  if (context.mounted) showErrorDialog(context, t.kids.saveFailed);
                }
              },
            ),
            OutlinedButton(
              onPressed: () async {
                if (!await ensureParentAccess(context) || !context.mounted) return;
                final pin = await captureAndConfirmPin(
                  context,
                  onMismatch: (ctx) => showErrorDialog(ctx, t.profiles.pinsDontMatch),
                );
                if (pin == null) return;
                try {
                  await service.setParentPin(pin);
                } catch (_) {
                  if (context.mounted) showErrorDialog(context, t.kids.saveFailed);
                }
              },
              child: Text(service.hasParentPin ? t.kids.changeParentPin : t.kids.setParentPin),
            ),
            TextButton(
              onPressed: () async {
                if (!await ensureParentAccess(context)) return;
                try {
                  await service.clearWatched();
                } catch (_) {
                  if (context.mounted) showErrorDialog(context, t.kids.saveFailed);
                }
              },
              child: Text(t.kids.clearHistory),
            ),
          ],
          const SizedBox(height: 24),
        ],
      );
    },
  );
}
