import 'dart:async';

import 'package:flutter/material.dart';

import '../exceptions/media_server_exceptions.dart';
import '../i18n/strings.g.dart';
import '../media/media_backend.dart';
import '../media/media_item.dart';
import '../media/media_kind.dart';
import '../media/media_playlist.dart';
import '../media/play_queue.dart';
import '../providers/playback_state_provider.dart';
import '../utils/app_logger.dart';
import '../utils/dialogs.dart';
import '../utils/error_dialog.dart';
import '../utils/error_message_utils.dart';
import '../utils/media_server_http_client.dart';
import '../utils/video_player_navigation.dart';
import '../widgets/dialog_action_button.dart';
import 'jellyfin_sequential_launcher.dart';
import 'play_queue_launcher.dart';
import 'settings_service.dart';

sealed class PlayQueueResult {
  const PlayQueueResult();
}

class PlayQueueSuccess extends PlayQueueResult {
  const PlayQueueSuccess();
}

class PlayQueueEmpty extends PlayQueueResult {
  const PlayQueueEmpty();
}

class PlayQueueCancelled extends PlayQueueResult {
  const PlayQueueCancelled();
}

class PlayQueueError extends PlayQueueResult {
  final Object error;
  const PlayQueueError(this.error);
}

/// Backend-neutral playback launcher for collections, playlists and folders.
abstract class MediaListPlaybackLauncher {
  Future<PlayQueueResult> launchFromCollectionOrPlaylist({
    required Object item,
    required bool shuffle,
    MediaItem? startItem,
    bool showLoadingIndicator = true,
  });

  Future<PlayQueueResult> launchShuffledShow({required MediaItem metadata, bool showLoadingIndicator = true});

  Future<PlayQueueResult> launchFromFolder({
    required MediaItem folder,
    required bool shuffle,
    bool showLoadingIndicator = true,
  });

  static MediaListPlaybackLauncher forItem(BuildContext context, Object item) {
    final backend = _backendOf(item);
    if (backend.usesMediaBrowserApi) return JellyfinSequentialLauncher(context: context);
    return PlexPlayQueueLauncher.forContext(context, item);
  }

  static MediaBackend _backendOf(Object item) {
    if (item is MediaItem) return item.backend;
    if (item is MediaPlaylist) return item.backend;
    throw ArgumentError('Unsupported item type for MediaListPlaybackLauncher: ${item.runtimeType}');
  }

  static MediaListItemFacts? classifyItem(Object item) {
    if (item is MediaItem) {
      if (item.kind != MediaKind.collection) return null;
      return MediaListItemFacts(
        isCollection: true,
        isPlaylist: false,
        id: item.id,
        serverId: item.serverId,
        serverName: item.serverName,
      );
    }
    if (item is MediaPlaylist) {
      return MediaListItemFacts(
        isCollection: false,
        isPlaylist: true,
        id: item.id,
        serverId: item.serverId,
        serverName: item.serverName,
      );
    }
    return null;
  }

  @protected
  Future<PlayQueueResult> executeWithLoading({
    required BuildContext context,
    required bool showLoading,
    required String actionLabel,
    AbortController? abort,
    required Future<PlayQueueResult> Function(Future<void> Function() dismissLoading) execute,
  }) async {
    final loadingDialog = ScopedLoadingDialogController();
    final loadingOwner = abort == null ? null : _LoadingCancellationOwner(abort);
    if (showLoading) {
      if (!context.mounted) {
        abort?.abort();
      } else {
        loadingDialog.show(
          context,
          builder: (_) => loadingOwner == null
              ? const Center(child: CircularProgressIndicator())
              : _CancellableLoadingDialog(owner: loadingOwner, actionLabel: actionLabel),
          onDisposed: () => loadingOwner?.cancel(),
        );
      }
    }

    Future<void> dismissLoading() async {
      if (!loadingDialog.isVisible) return;
      loadingOwner?.complete();
      await loadingDialog.dismiss();
    }

    try {
      abort?.throwIfAborted();
      final operationFuture = execute(dismissLoading);
      operationFuture.ignore();
      await loadingDialog.ready;
      final result = await operationFuture;
      if (abort?.isAborted ?? false) return const PlayQueueCancelled();
      if (result is PlayQueueEmpty && context.mounted) {
        unawaited(showErrorDialog(context, t.messages.failedToCreatePlayQueueNoItems));
      }
      return result;
    } on MediaServerHttpException catch (e) {
      if (e.isCancellation || (abort?.isAborted ?? false)) return const PlayQueueCancelled();
      appLogger.e('Failed to $actionLabel', error: e);
      if (context.mounted) {
        unawaited(
          showErrorDialog(context, t.messages.failedPlayback(action: actionLabel, error: localizedErrorReason(e))),
        );
      }
      return PlayQueueError(e);
    } catch (e) {
      if (abort?.isAborted ?? false) return const PlayQueueCancelled();
      appLogger.e('Failed to $actionLabel', error: e);
      if (context.mounted) {
        unawaited(
          showErrorDialog(context, t.messages.failedPlayback(action: actionLabel, error: localizedErrorReason(e))),
        );
      }
      return PlayQueueError(e);
    } finally {
      await dismissLoading();
    }
  }

  @protected
  Future<PlayQueueResult> launchLocalQueuePlayback({
    required BuildContext context,
    required PlaybackStateProvider playbackState,
    required LocalPlayQueue queue,
    required String contextKey,
    Future<void> Function(MediaItem item)? navigateForTesting,
  }) async {
    if (queue.items.isEmpty) return const PlayQueueEmpty();
    if (!context.mounted && navigateForTesting == null) return const PlayQueueError('Context not mounted');
    final currentIndex = queue.currentIndex ?? 0;
    if (currentIndex < 0 || currentIndex >= queue.items.length) {
      return PlayQueueError(RangeError.index(currentIndex, queue.items, 'currentIndex'));
    }
    var itemToPlay = queue.items[currentIndex];
    var queueToPublish = queue;
    if (queue.shuffled && (itemToPlay.viewOffsetMs ?? 0) > 0) {
      if ((await SettingsService.getInstance()).read(SettingsService.shuffleStartsFromBeginning)) {
        itemToPlay = itemToPlay.copyWith(viewOffsetMs: 0);
        queueToPublish = LocalPlayQueue(
          items: [...queue.items]..[currentIndex] = itemToPlay,
          currentIndex: queue.currentIndex,
          shuffled: queue.shuffled,
        );
      }
    }
    playbackState.setPlaybackFromLocalQueue(queueToPublish, contextKey: contextKey);
    if (navigateForTesting != null) {
      await navigateForTesting(itemToPlay);
    } else {
      if (!context.mounted) return const PlayQueueError('Context not mounted');
      await navigateToVideoPlayer(context, metadata: itemToPlay, resolveWatchState: false);
    }
    return const PlayQueueSuccess();
  }
}

class MediaListItemFacts {
  final bool isCollection;
  final bool isPlaylist;
  final String id;
  final String? serverId;
  final String? serverName;

  const MediaListItemFacts({
    required this.isCollection,
    required this.isPlaylist,
    required this.id,
    required this.serverId,
    required this.serverName,
  });
}

class _LoadingCancellationOwner {
  final AbortController abort;
  bool _completed = false;
  _LoadingCancellationOwner(this.abort);
  void complete() {
    if (!abort.isAborted) _completed = true;
  }

  void cancel() {
    if (!_completed) abort.abort();
  }
}

class _CancellableLoadingDialog extends StatefulWidget {
  final _LoadingCancellationOwner? owner;
  final String actionLabel;
  const _CancellableLoadingDialog({required this.owner, required this.actionLabel});
  @override
  State<_CancellableLoadingDialog> createState() => _CancellableLoadingDialogState();
}

class _CancellableLoadingDialogState extends State<_CancellableLoadingDialog> {
  bool _dismissed = false;
  void _cancelAndDismiss() {
    if (_dismissed) return;
    _dismissed = true;
    widget.owner?.cancel();
    final route = ModalRoute.of(context);
    if ((route?.isCurrent ?? false) && context.mounted) Navigator.of(context).pop();
  }

  @override
  void dispose() {
    widget.owner?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => PopScope(
    canPop: false,
    onPopInvokedWithResult: (didPop, _) {
      if (!didPop) _cancelAndDismiss();
    },
    child: AlertDialog(
      title: Text(widget.actionLabel),
      content: const Center(widthFactor: 1, heightFactor: 1, child: CircularProgressIndicator()),
      actions: [DialogActionButton(onPressed: _cancelAndDismiss, label: t.common.cancel)],
    ),
  );
}
