import 'package:flutter/foundation.dart';

import '../database/app_database.dart';
import '../media/home_taste.dart';
import '../services/screen_time_service.dart';

typedef HomeTasteSessionLoader =
    Future<List<ScreenTimeSessionRow>> Function({
      required String profileId,
      required String startLocalDate,
      required int limit,
    });

/// Reads a bounded slice of the existing local viewing ledger for one profile.
/// No history or genre metadata is written or sent to any service.
class HomeTasteProvider extends ChangeNotifier {
  HomeTasteProvider({required this.profileId, required this.loadSessions, DateTime Function()? now})
    : _now = now ?? DateTime.now;

  static const int maxSessions = 200;
  static const Duration lookback = Duration(days: 90);
  static const Duration refreshInterval = Duration(minutes: 10);
  final String? profileId;
  final HomeTasteSessionLoader loadSessions;
  final DateTime Function() _now;
  List<HomeViewingSignal> _signals = const [];
  List<HomeViewingSignal> get signals => _signals;
  bool _disposed = false;
  bool _loading = false;
  int _generation = 0;
  DateTime? _loadedAt;

  void invalidate() {
    _generation++;
    _loading = false;
    _loadedAt = null;
  }

  void cancelPending() {
    if (!_loading) return;
    _generation++;
    _loading = false;
  }

  Future<void> ensureFresh({required bool Function() canRun}) async {
    final owner = profileId;
    if (_disposed || _loading || owner == null || !canRun()) return;
    final now = _now();
    if (_loadedAt != null && now.difference(_loadedAt!) < refreshInterval) return;
    final generation = ++_generation;
    _loading = true;
    try {
      final start = localDateKey(now.subtract(lookback));
      final end = localDateKey(now);
      final rows = await loadSessions(profileId: owner, startLocalDate: start, limit: maxSessions);
      if (_disposed || generation != _generation || !canRun()) return;
      final duration = <(String, String, bool), int>{};
      for (final row in rows.take(maxSessions)) {
        final server = row.serverKey;
        final item = row.itemKey;
        final kind = ScreenTimeMediaKind.fromCode(row.mediaKind);
        if (row.profileId != owner ||
            row.localDate.compareTo(start) < 0 ||
            row.localDate.compareTo(end) > 0 ||
            server == null ||
            server.isEmpty ||
            item == null ||
            item.isEmpty ||
            row.durationMs <= 0 ||
            (kind != ScreenTimeMediaKind.movie && kind != ScreenTimeMediaKind.episode)) {
          continue;
        }
        final key = (server, item, kind == ScreenTimeMediaKind.episode);
        duration[key] = (duration[key] ?? 0) + row.durationMs;
      }
      final next = <HomeViewingSignal>[
        for (final entry in duration.entries)
          (serverId: entry.key.$1, itemId: entry.key.$2, episode: entry.key.$3, durationMs: entry.value),
      ];
      _loadedAt = now;
      if (!listEquals(_signals, next)) {
        _signals = List.unmodifiable(next);
        notifyListeners();
      }
    } catch (_) {
      // Recommendations are optional; an unavailable local ledger must not
      // delay or fail Home.
    } finally {
      if (generation == _generation) _loading = false;
    }
  }

  @override
  void dispose() {
    _disposed = true;
    invalidate();
    super.dispose();
  }
}
