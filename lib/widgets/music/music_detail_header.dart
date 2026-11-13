import 'package:flutter/material.dart';

import '../../utils/layout_constants.dart';

typedef MusicDetailHeaderArtworkBuilder = Widget Function(double size);
typedef MusicDetailHeaderInfoBuilder = Widget Function({required bool centered});

/// Responsive artwork, metadata, and focusable actions shared by music detail
/// screens.
class MusicDetailHeader extends StatelessWidget {
  const MusicDetailHeader({
    super.key,
    required this.artworkBuilder,
    required this.infoBuilder,
    required this.actionBar,
    required this.compactArtworkSize,
    required this.compactArtworkSpacing,
    this.compactBottomSpacing = 0,
    this.wideAlignment = CrossAxisAlignment.center,
  });

  final MusicDetailHeaderArtworkBuilder artworkBuilder;
  final MusicDetailHeaderInfoBuilder infoBuilder;
  final Widget actionBar;
  final double compactArtworkSize;
  final double compactArtworkSpacing;
  final double compactBottomSpacing;
  final CrossAxisAlignment wideAlignment;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [colors.primary.withValues(alpha: .13), colors.surfaceContainerLow.withValues(alpha: .5)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < ScreenBreakpoints.mobile) {
                return Column(
                  children: [
                    artworkBuilder(compactArtworkSize.clamp(0.0, constraints.maxWidth)),
                    SizedBox(height: compactArtworkSpacing),
                    infoBuilder(centered: true),
                    const SizedBox(height: 16),
                    actionBar,
                    if (compactBottomSpacing > 0) SizedBox(height: compactBottomSpacing),
                  ],
                );
              }

              return Row(
                crossAxisAlignment: wideAlignment,
                children: [
                  artworkBuilder((constraints.maxWidth * .24).clamp(180.0, 240.0)),
                  const SizedBox(width: 24),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [infoBuilder(centered: false), const SizedBox(height: 16), actionBar],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
