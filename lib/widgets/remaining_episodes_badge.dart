import 'dart:async';
import 'package:flutter/material.dart';
import '../i18n/strings.g.dart';
import '../media/ids.dart';
import '../media/media_item.dart';
import '../media/media_kind.dart';
import '../media/media_server_client.dart';
import '../services/settings_service.dart';
import '../services/kids_profile_service.dart';
import '../utils/media_server_http_client.dart';
import '../utils/provider_extensions.dart';
import 'settings_builder.dart';
import 'app_icon.dart';
import 'package:material_symbols_icons/symbols.dart';

/// Optional, delayed enrichment. It never delays the Home request or painting,
/// and a single queue prevents visible cards flooding a slower media server.
class RemainingEpisodesBadge extends StatefulWidget {
  const RemainingEpisodesBadge({super.key, required this.item});
  final MediaItem item;
  @override
  State<RemainingEpisodesBadge> createState() => _RemainingEpisodesBadgeState();
}

class _RemainingEpisodesBadgeState extends State<RemainingEpisodesBadge> {
  static Future<void> _queue = Future.value();
  Timer? _timer;
  AbortController? _abort;
  int? _count;
  String? _identity;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _schedule();
  }

  @override
  void didUpdateWidget(RemainingEpisodesBadge oldWidget) {
    super.didUpdateWidget(oldWidget);
    _schedule();
  }

  void _schedule() {
    final item = widget.item;
    final key = '${item.globalKey}:${item.lastViewedAt}:${item.viewOffsetMs}';
    if (_identity == key) return;
    _identity = key;
    _timer?.cancel();
    _abort?.abort();
    _count = null;
    if (item.kind != MediaKind.episode || item.grandparentId == null || item.serverId == null) return;
    _timer = Timer(const Duration(seconds: 2), () {
      if (!mounted || !SettingsService.instance.read(SettingsService.showRemainingEpisodes)) return;
      final client = context.tryGetMediaClientForServer(ServerId(item.serverId!));
      if (client is! PreviewMetadataClient) return;
      final owner = KidsProfileService.instance.activeId;
      final abort = _abort = AbortController();
      _queue = _queue.then((_) async {
        if (!mounted ||
            abort.isAborted ||
            !SettingsService.instance.read(SettingsService.showRemainingEpisodes) ||
            owner != KidsProfileService.instance.activeId ||
            !identical(client, context.tryGetMediaClientForServer(ServerId(item.serverId!)))) {
          return;
        }
        try {
          final series = await (client as PreviewMetadataClient)
              .fetchPreviewItem(item.grandparentId!, abort: abort)
              .timeout(const Duration(seconds: 4));
          if (mounted &&
              !abort.isAborted &&
              owner == KidsProfileService.instance.activeId &&
              identical(client, context.tryGetMediaClientForServer(ServerId(item.serverId!))) &&
              series?.id == item.grandparentId &&
              series?.backend == item.backend &&
              (series?.serverId == null || series?.serverId == item.serverId)) {
            setState(() => _count = series?.unwatchedCount);
          }
        } catch (_) {
          // Unknown counts are hidden, never guessed from the episode number.
        } finally {
          abort.abort();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _abort?.abort();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SettingValueBuilder<bool>(
    pref: SettingsService.showRemainingEpisodes,
    builder: (context, enabled, _) => !enabled || _count == null
        ? const SizedBox.shrink()
        : Semantics(
            label: _count == 1 ? t.referenceDetails.oneEpisodeLeft : t.referenceDetails.episodesLeft(count: _count!),
            child: Tooltip(
              message: _count == 1
                  ? t.referenceDetails.oneEpisodeLeft
                  : t.referenceDetails.episodesLeft(count: _count!),
              child: ExcludeSemantics(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: .82),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: Colors.white.withValues(alpha: .18)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const AppIcon(Symbols.video_library_rounded, size: 14, color: Colors.white),
                        const SizedBox(width: 4),
                        Text(
                          '$_count',
                          style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
  );
}
