import 'package:flutter/material.dart';

import '../../focus/focusable_wrapper.dart';
import '../../models/kids_avatar.dart';
import '../../theme/kids_style.dart';
import 'kids_avatar.dart';

class KidsAvatarChooser extends StatelessWidget {
  const KidsAvatarChooser({super.key, required this.value, required this.onChanged, this.older = false});
  final KidsAvatarKind value;
  final ValueChanged<KidsAvatarKind>? onChanged;
  final bool older;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, bounds) {
      final columns = ((bounds.maxWidth + 12) / 128).floor().clamp(2, 7);
      final width = ((bounds.maxWidth - 12 * (columns - 1)) / columns).clamp(92.0, 116.0).toDouble();
      return Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        spacing: 12,
        runSpacing: 12,
        children: [
          for (final avatar in KidsAvatarKind.values)
            FocusableWrapper(
              semanticLabel: kidsAvatarLabel(avatar),
              checked: value == avatar,
              borderRadius: 22,
              focusScale: KidsStyle.reduceMotion(context) ? 1 : 1.03,
              canRequestFocus: onChanged != null,
              descendantsAreFocusable: false,
              onSelect: onChanged == null ? null : () => onChanged!(avatar),
              child: InkWell(
                canRequestFocus: false,
                borderRadius: BorderRadius.circular(22),
                onTap: onChanged == null ? null : () => onChanged!(avatar),
                child: AnimatedContainer(
                  key: ValueKey('kids-avatar-${avatar.name}'),
                  duration: KidsStyle.motion(context),
                  width: width,
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(
                      color: value == avatar ? Theme.of(context).colorScheme.primary : Colors.transparent,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      KidsAvatar(avatar: avatar, size: (width - 20).clamp(64.0, 96.0), older: older),
                      const SizedBox(height: 8),
                      Text(
                        kidsAvatarLabel(avatar),
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      if (value == avatar)
                        const Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: Icon(Icons.check_circle_rounded, size: 18),
                        ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      );
    },
  );
}
