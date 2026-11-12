import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../../../media/library_query.dart';
import '../../../media/media_kind.dart';
import '../../../media/media_playlist.dart';
import '../../../utils/library_refresh_notifier.dart';
import '../../../utils/media_server_http_client.dart';
import '../../../i18n/strings.g.dart';
import 'base_library_tab.dart';
import 'paginated_card_grid_tab.dart';
import '../state_messages.dart';
import '../../../utils/error_dialog.dart';

/// Playlists tab for library screen
/// Shows playlists that contain items from the current library
class LibraryPlaylistsTab extends BaseLibraryTab<MediaPlaylist> {
  const LibraryPlaylistsTab({
    super.key,
    required super.library,
    super.viewMode,
    super.density,
    super.onDataLoaded,
    super.isActive,
    super.suppressAutoFocus,
    super.onBack,
    super.onNavigateLibraryMenu,
  });

  @override
  State<LibraryPlaylistsTab> createState() => _LibraryPlaylistsTabState();
}

class _LibraryPlaylistsTabState extends PaginatedCardGridTabState<MediaPlaylist, LibraryPlaylistsTab> {
  @override
  Widget build(BuildContext context) {
    final body = super.build(context);
    if (hasLoadedData && !isLoading && totalSize == 0 && !hasCatalogueQuery && !widget.library.kind.isMusic) {
      return EmptyStateWidget(
        message: emptyMessage,
        icon: emptyIcon,
        actionLabel: t.playlists.create,
        actionIcon: Symbols.add_rounded,
        onAction: _createPlaylist,
      );
    }
    return body;
  }

  Future<void> _createPlaylist() async {
    final controller = TextEditingController();
    final key = widget.library.globalKey;
    final title = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(t.playlists.create),
        content: TextField(
          controller: controller,
          autofocus: true,
          decoration: InputDecoration(labelText: t.playlists.playlistName),
          onSubmitted: (value) => Navigator.pop(context, value),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text(t.common.cancel)),
          TextButton(onPressed: () => Navigator.pop(context, controller.text), child: Text(t.playlists.create)),
        ],
      ),
    );
    await Future<void>.delayed(const Duration(milliseconds: 250));
    controller.dispose();
    if (!mounted || widget.library.globalKey != key || title?.trim().isNotEmpty != true) return;
    try {
      final result = await getMediaClientForLibrary().createPlaylist(title: title!.trim(), items: const []);
      if (!mounted || widget.library.globalKey != key) return;
      if (result == null) {
        showErrorDialog(context, t.errors.connectionFailed);
        return;
      }
      await loadItems();
    } catch (_) {
      if (mounted) showErrorDialog(context, t.errors.connectionFailed);
    }
  }

  @override
  int get pageSize => 200;

  @override
  String get focusNodeDebugLabel => 'playlists_first_item';

  @override
  IconData get emptyIcon => Symbols.playlist_play_rounded;

  @override
  String get emptyMessage => '${t.libraryPolish.playlistEmptyTitle}\n\n${t.libraryPolish.playlistEmptyHint}';

  @override
  String get errorContext => t.playlists.title;

  @override
  Stream<void>? getRefreshStream() => LibraryRefreshNotifier().playlistsStream;

  @override
  String idOf(MediaPlaylist playlist) => playlist.id;

  @override
  Future<LibraryPage<MediaPlaylist>> fetchRawPage(int start, int size, AbortController? abort) {
    // Both backends return playlists scoped to the server (not the library) —
    // neither Plex nor Jellyfin's API filters playlists by section. Music
    // libraries surface audio playlists; everything else keeps video.
    final client = getMediaClientForLibrary();
    final playlistType = widget.library.kind == MediaKind.artist ? 'audio' : 'video';
    return client.fetchPlaylistsPage(playlistType: playlistType, start: start, size: size, abort: abort);
  }

  @override
  bool get usesSquareCards => widget.library.kind.isMusic;
  @override
  bool get wideContainerCards => !widget.library.kind.isMusic;
  @override
  String? get scopeDescription => widget.library.kind.isMusic ? null : t.libraryPolish.serverPlaylists;
}
