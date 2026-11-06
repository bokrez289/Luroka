import 'package:flutter/material.dart';
import '../media/media_item.dart';
import '../media/media_playlist.dart';
import '../media/ids.dart';
import '../utils/provider_extensions.dart';
import '../utils/media_server_http_client.dart';
import 'optimized_media_image.dart';

/// Read only, lazy and bounded: missing container artwork uses at most four members.
class ContainerArtworkFallback extends StatefulWidget {
  const ContainerArtworkFallback({super.key, required this.item});
  final Object item;
  @override
  State<ContainerArtworkFallback> createState() => _ContainerArtworkFallbackState();
}

class _ContainerArtworkFallbackState extends State<ContainerArtworkFallback> {
  final _abort = AbortController();
  List<MediaItem> _members = const [];
  bool _started = false;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_started) return;
    _started = true;
    _load();
  }

  Future<void> _load() async {
    final item = widget.item;
    final id = item is MediaItem ? item.serverId : (item as MediaPlaylist).serverId;
    final client = context.tryGetMediaClientForServer(serverIdOrNull(id));
    if (client == null) return;
    try {
      final page = item is MediaItem
          ? await client.fetchCollectionPage(item.id, start: 0, size: 4, abort: _abort)
          : await client.fetchPlaylistPage((item as MediaPlaylist).id, start: 0, size: 4, abort: _abort);
      if (mounted) setState(() => _members = page.items.where((e) => e.thumbPath != null).take(4).toList());
    } catch (_) {
      /* A plain container silhouette remains a valid fallback. */
    }
  }

  @override
  void dispose() {
    _abort.abort();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final item = widget.item;
    final id = item is MediaItem ? item.serverId : (item as MediaPlaylist).serverId;
    final client = context.tryGetMediaClientForServer(serverIdOrNull(id));
    if (_members.isEmpty) {
      return ColoredBox(
        color: Theme.of(context).colorScheme.surfaceContainerHigh,
        child: const Center(child: Icon(Icons.collections_rounded, size: 36)),
      );
    }
    return LayoutBuilder(
      builder: (context, bounds) => Wrap(
        children: [
          for (var i = 0; i < 4; i++)
            OptimizedMediaImage.poster(
              client: client,
              imagePath: _members[i % _members.length].thumbPath,
              width: bounds.maxWidth / 2,
              height: bounds.maxHeight / 2,
              fit: BoxFit.cover,
            ),
        ],
      ),
    );
  }
}
