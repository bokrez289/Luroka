import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../widgets/focused_scroll_scaffold.dart';
import 'profile_switch_screen.dart';

/// Kids sessions intentionally expose no account or settings mutations.
class KidsSettingsScreen extends StatelessWidget {
  const KidsSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) => FocusedScrollScaffold(
    title: Text(t.kids.title),
    slivers: [
      SliverPadding(
        padding: const EdgeInsets.all(24),
        sliver: SliverList.list(
          children: [
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
}
