import 'package:flutter/material.dart';

import 'skeleton_media_card.dart';

/// First-load geometry stays close to the poster catalog that will replace it.
/// There is no fabricated title/count and nothing focusable while data loads.
class PosterLoadingSliver extends StatelessWidget {
  const PosterLoadingSliver({super.key});

  @override
  Widget build(BuildContext context) => SliverPadding(
    padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
    sliver: SliverLayoutBuilder(
      builder: (context, bounds) {
        final columns = (bounds.crossAxisExtent / 160).floor().clamp(2, 6);
        return SliverGrid.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns,
            childAspectRatio: 2 / 3.5,
            crossAxisSpacing: 12,
            mainAxisSpacing: 16,
          ),
          itemCount: columns * 3,
          itemBuilder: (_, _) => const SkeletonMediaCard(),
        );
      },
    ),
  );
}

class PosterLoadingPlaceholder extends StatelessWidget {
  const PosterLoadingPlaceholder({super.key});

  @override
  Widget build(BuildContext context) =>
      const CustomScrollView(primary: false, physics: NeverScrollableScrollPhysics(), slivers: [PosterLoadingSliver()]);
}
