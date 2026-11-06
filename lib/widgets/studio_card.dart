import 'package:flutter/material.dart';
import 'package:cached_network_image_ce/cached_network_image.dart';

import '../media/media_item.dart';
import '../media/studio_brands.dart';
import '../media/media_server_client.dart';
import '../utils/media_image_helper.dart';
import 'optimized_media_image.dart';

/// A typographic studio tile: real server-supplied logos are preferred in the
/// studio browser, with a readable wordmark fallback for every studio name.
class StudioCard extends StatelessWidget {
  const StudioCard({
    super.key,
    required this.item,
    required this.width,
    required this.height,
    required this.onTap,
    this.client,
    this.imagePath,
  });
  final MediaItem item;
  final double width;
  final double height;
  final VoidCallback onTap;
  final MediaServerClient? client;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final name = item.title ?? '';
    final brand = studioBrandForKey(item.raw?['customStudio'] as String? ?? item.id);
    final hue = name.codeUnits.fold<int>(0, (sum, code) => sum + code) % 360;
    final fallback = HSLColor.fromAHSL(
      1,
      hue.toDouble(),
      0.28,
      colors.brightness == Brightness.dark ? 0.18 : 0.88,
    ).toColor();
    final color = brand == null ? fallback : Color.lerp(const Color(0xff11131d), Color(brand.tint), 0.24)!;
    final label = Center(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
          name,
          textAlign: TextAlign.center,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: width < 180 ? 16 : 22,
            fontWeight: FontWeight.w800,
            letterSpacing: 0.5,
            color: brand == null ? colors.onSurface : Colors.white,
          ),
        ),
      ),
    );
    return SizedBox(
      width: width,
      height: height + 6,
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: InkWell(
          canRequestFocus: false,
          onTap: onTap,
          borderRadius: BorderRadius.circular(14),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color, brand == null ? Color.lerp(color, colors.surface, 0.45)! : const Color(0xff0b0e16)],
              ),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: brand == null
                    ? colors.outlineVariant.withValues(alpha: 0.45)
                    : Color(brand.tint).withValues(alpha: 0.3),
              ),
            ),
            child: brand?.logoUrl != null
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.16, vertical: height * 0.24),
                    child: CachedNetworkImage(
                      imageUrl: brand!.logoUrl!,
                      fit: BoxFit.contain,
                      memCacheWidth: (width * MediaQuery.devicePixelRatioOf(context)).round().clamp(160, 640),
                      color: Colors.white,
                      colorBlendMode: BlendMode.srcIn,
                      placeholder: (_, _) => label,
                      errorBuilder: (_, _, _) => label,
                      fadeInDuration: Duration.zero,
                    ),
                  )
                : imagePath == null
                ? label
                : OptimizedMediaImage(
                    client: client,
                    imagePath: imagePath,
                    width: width - 24,
                    height: height - 24,
                    imageType: ImageType.logo,
                    fit: BoxFit.contain,
                    errorWidget: (_, _, _) => label,
                  ),
          ),
        ),
      ),
    );
  }
}
