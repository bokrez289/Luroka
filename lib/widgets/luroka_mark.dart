import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_identity.dart';

/// Luroka's standalone mark. Light surfaces use the one-color silhouette so
/// the warm highlights remain legible at small navigation sizes.
class LurokaMark extends StatelessWidget {
  const LurokaMark({super.key, this.size = 28});

  final double size;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SvgPicture.asset(
      AppIdentity.markAsset,
      width: size,
      height: size,
      semanticsLabel: AppIdentity.name,
      colorFilter: colors.brightness == Brightness.light ? ColorFilter.mode(colors.onSurface, BlendMode.srcIn) : null,
    );
  }
}
