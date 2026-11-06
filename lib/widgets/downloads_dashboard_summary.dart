import 'package:flutter/material.dart';
import '../i18n/strings.g.dart';
import '../models/download_models.dart';
import '../utils/formatters.dart';

/// A lightweight snapshot of the real transfer stream, shared by TV and phone.
class DownloadsDashboardSummary extends StatelessWidget {
  const DownloadsDashboardSummary({super.key, required this.downloads});
  final Iterable<DownloadProgress> downloads;
  @override
  Widget build(BuildContext context) {
    final entries = downloads.toList();
    final active = entries.where((p) => p.status == DownloadStatus.downloading).toList();
    final ready = entries.where((p) => p.status == DownloadStatus.completed).length;
    final speed = active.fold<double>(0, (sum, p) => sum + (p.speed.isFinite && p.speed > 0 ? p.speed : 0));
    final bytes = entries.fold<int>(0, (sum, p) => sum + p.downloadedBytes);
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(t.downloadsRedesign.subtitle, style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600)),
          const SizedBox(height: 18),
          LayoutBuilder(
            builder: (context, bounds) {
              final columns = bounds.maxWidth < 600 ? 2 : 4;
              final metrics = [
                (Icons.offline_pin_outlined, t.downloadsRedesign.ready, '$ready'),
                (Icons.downloading_rounded, t.downloadsRedesign.active, '${active.length}'),
                (Icons.speed_rounded, t.downloadsRedesign.speed, speed > 0 ? ByteFormatter.formatSpeed(speed) : '—'),
                (Icons.storage_rounded, t.downloadsRedesign.downloaded, ByteFormatter.formatBytes(bytes)),
              ];
              return Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  for (final (icon, title, value) in metrics)
                    SizedBox(
                      width: (bounds.maxWidth - 12 * (columns - 1)) / columns,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: colors.surfaceContainerLow,
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: colors.outlineVariant.withValues(alpha: .45)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(icon, color: colors.primary, size: 24),
                            const SizedBox(height: 12),
                            Text(
                              value,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              title,
                              maxLines: 2,
                              style: theme.textTheme.bodySmall?.copyWith(color: colors.onSurfaceVariant),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
