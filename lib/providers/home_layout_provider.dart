import 'package:flutter/foundation.dart';

import '../media/home_layout.dart';
import '../media/media_hub.dart';
import '../media/media_item.dart';
import '../media/media_kind.dart';
import '../mixins/disposable_change_notifier_mixin.dart';
import '../services/storage_service.dart';
import '../utils/app_logger.dart';

/// Lives in the keyed profile session. Writes always use the captured owner,
/// even if another profile becomes active while persistence is in flight.
class HomeLayoutProvider extends ChangeNotifier with DisposableChangeNotifierMixin {
  HomeLayoutProvider({required StorageService storage, required this.profileId}) : _storage = storage {
    if (profileId != null) {
      _layout = storage.getHomeLayout(profileId!);
      _writes = storage
          .migrateLegacyHomeSpotlight(profileId!)
          .then<void>(
            (_) {},
            onError: (Object error, StackTrace stack) {
              appLogger.w('Could not migrate the Home Spotlight preference', error: error, stackTrace: stack);
            },
          );
    }
  }

  final StorageService _storage;
  final String? profileId;
  HomeLayout _layout = HomeLayout();
  Future<void> _writes = Future.value();

  HomeLayout get layout => _layout;
  bool isPinned(MediaItem item) => _layout.pins.any((pin) => pin.globalKey == item.globalKey);

  Future<void> _mutate(HomeLayout Function(HomeLayout current) update) {
    final result = _writes.then((_) async {
      final owner = profileId;
      if (isDisposed || owner == null) return;
      final next = await _storage.updateHomeLayout(owner, update);
      if (isDisposed) return;
      _layout = next;
      safeNotifyListeners();
    });
    // A failed write reaches its caller without poisoning subsequent edits.
    _writes = result.then<void>((_) {}, onError: (Object _, StackTrace _) {});
    return result;
  }

  Future<void> setHidden(String key, bool hidden) => _mutate((current) {
    final keys = {...current.hidden};
    hidden ? keys.add(key) : keys.remove(key);
    final shown = {...current.shown};
    hidden ? shown.remove(key) : shown.add(key);
    return current.copyWith(hidden: keys, shown: shown);
  });

  Future<void> setSplitContinueWatching(bool split) =>
      _mutate((current) => current.copyWith(splitContinueWatching: split));

  Future<void> setSpotlightSource(HomeSpotlightSource source) =>
      _mutate((current) => current.copyWith(spotlightSource: source));

  Future<void> setGuideChoices({HomeSpotlightSource? spotlight, bool? splitProgress, Iterable<String>? studioOrder,
    Iterable<String>? hiddenStudios}) => _mutate(
    (current) => current.copyWith(spotlightSource: spotlight, splitContinueWatching: splitProgress,
      studioOrder: studioOrder, hiddenStudios: hiddenStudios),
  );

  Future<void> setStudios({required Iterable<String> order, required Iterable<String> hidden}) =>
      _mutate((current) => current.copyWith(studioOrder: order, hiddenStudios: hidden));

  Future<void> moveRow(List<MediaHub> availableRows, String key, int offset) => _mutate((current) {
    final keys = current.arrange(availableRows, includeHidden: true).map(homeRowKey).toSet().toList();
    final from = keys.indexOf(key);
    final to = from + offset;
    if (from < 0 || to < 0 || to >= keys.length) return current;
    keys.insert(to, keys.removeAt(from));
    // Preserve rows from temporarily disconnected servers for their return.
    return current.copyWith(order: [...keys, ...current.order.where((key) => !keys.contains(key))]);
  });

  Future<void> setPinned(MediaItem item, bool pinned) => _mutate((current) {
    if (item.kind != MediaKind.collection || item.serverId?.isNotEmpty != true || item.id.isEmpty) return current;
    return current.copyWith(
      pins: [
        for (final pin in current.pins)
          if (pin.globalKey != item.globalKey) pin,
        if (pinned) item,
      ],
    );
  });

  Future<void> resetRows() => _mutate((current) => current.copyWith(order: [], hidden: [], shown: []));
}
