import 'package:flutter/material.dart';

import '../../focus/focusable_button.dart';
import '../../i18n/strings.g.dart';
import '../../models/kids_atmosphere.dart';
import 'kids_movie_shelf.dart' show KidsQuietScenery;

String kidsAtmosphereLabel(KidsAtmosphere value) => switch (value) {
  KidsAtmosphere.sunshine => t.kidsShelf.sunshine,
  KidsAtmosphere.berry => t.kidsShelf.berry,
  KidsAtmosphere.mint => t.kidsShelf.mint,
  KidsAtmosphere.sky => t.kidsShelf.sky,
};

/// A draft preview; selection is saved only with the rest of the profile.
class KidsAtmospherePicker extends StatelessWidget {
  const KidsAtmospherePicker({
    super.key,
    required this.value,
    required this.onChanged,
    required this.quiet,
  });
  final KidsAtmosphere value;
  final ValueChanged<KidsAtmosphere>? onChanged;
  final bool quiet;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(t.kidsShelf.atmosphere, style: Theme.of(context).textTheme.titleSmall),
      const SizedBox(height: 4),
      Text(t.kidsShelf.atmosphereHint, style: Theme.of(context).textTheme.bodySmall),
      const SizedBox(height: 12),
      Semantics(
        label: t.kidsShelf.atmospherePreview,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: AspectRatio(
            aspectRatio: 2.4,
            child: Stack(fit: StackFit.expand, children: [
              ColoredBox(color: value.background),
              if (!quiet) Image.asset('assets/branding/kids-world-phone.webp', fit: BoxFit.cover),
              if (quiet) const KidsQuietScenery(),
              DecoratedBox(decoration: BoxDecoration(gradient: LinearGradient(
                colors: [value == KidsAtmosphere.sunshine ? Colors.transparent : value.skyTint.withValues(alpha: .38), Colors.transparent],
                stops: const [0, .72],
              ))),
              DecoratedBox(decoration: BoxDecoration(gradient: LinearGradient(
                colors: [value.background.withValues(alpha: .72), value.background.withValues(alpha: 0)],
              ))),
              DecoratedBox(decoration: BoxDecoration(gradient: LinearGradient(
                begin: Alignment.topCenter, end: Alignment.bottomCenter,
                colors: [Colors.transparent, value.background],
                stops: const [.50, 1],
              ))),
              PositionedDirectional(
                start: 14, end: 14, bottom: 12,
                child: Row(children: [
                  Expanded(child: Text(t.kidsShelf.pickSomething, maxLines: 1, overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                  const SizedBox(width: 8),
                  DecoratedBox(
                    decoration: BoxDecoration(color: value.accent, borderRadius: BorderRadius.circular(20)),
                    child: Padding(padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      child: Text(t.kids.movies, style: TextStyle(color: value.background, fontWeight: FontWeight.bold))),
                  ),
                ]),
              ),
            ]),
          ),
        ),
      ),
      const SizedBox(height: 12),
      Wrap(spacing: 8, runSpacing: 8, children: [
        for (final choice in KidsAtmosphere.values)
          Semantics(
            selected: choice == value,
            child: FocusableButton(
              key: ValueKey('kids-atmosphere-${choice.name}'),
              borderRadius: 20,
              onPressed: onChanged == null ? null : () => onChanged!(choice),
              child: ChoiceChip(
                label: Text(kidsAtmosphereLabel(choice)),
                avatar: CircleAvatar(backgroundColor: choice.accent, radius: 8),
                selected: choice == value,
                onSelected: onChanged == null ? null : (_) => onChanged!(choice),
              ),
            ),
          ),
      ]),
    ],
  );
}
