import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../models/catalog/catalog_item.dart';
import '../../widgets/catalog_source_logo.dart';

String integrationDescription(CatalogSourceId source) => switch (source) {
  CatalogSourceId.seerr => t.services.seerrDescription,
  CatalogSourceId.tmdb => t.services.tmdbDescription,
  CatalogSourceId.trakt => t.services.traktDescription,
  CatalogSourceId.mal => t.services.malDescription,
  CatalogSourceId.anilist => t.services.anilistDescription,
  CatalogSourceId.simkl => t.services.simklDescription,
  CatalogSourceId.mdblist => t.services.mdblistDescription,
  _ => t.services.hubSubtitle,
};

/// A shared service identity panel for setup and connected settings.
class IntegrationHeader extends StatelessWidget {
  const IntegrationHeader({super.key, required this.source, required this.title, this.description, this.status});

  final CatalogSourceId source;
  final String title;
  final String? description;
  final String? status;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return Container(
      key: ValueKey('integration_header_${source.name}'),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(colors: [colors.primaryContainer.withValues(alpha: .55), colors.surfaceContainerHigh]),
        border: Border.all(color: colors.primary.withValues(alpha: .24)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 52,
            height: 52,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: colors.surface.withValues(alpha: .85),
              borderRadius: BorderRadius.circular(15),
            ),
            child: CatalogSourceLogo(source, size: 28),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700)),
                const SizedBox(height: 6),
                Text(
                  description ?? integrationDescription(source),
                  style: theme.textTheme.bodyMedium?.copyWith(color: colors.onSurfaceVariant, height: 1.35),
                ),
                if (status != null) ...[
                  const SizedBox(height: 10),
                  Text(
                    status!,
                    style: theme.textTheme.labelLarge?.copyWith(color: colors.primary, fontWeight: FontWeight.w700),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
