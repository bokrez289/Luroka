import 'dart:async';

import 'package:drift/drift.dart' show Value;

import '../database/app_database.dart';
import '../utils/app_logger.dart';

typedef ScreenTimeWallClock = DateTime Function();
typedef ScreenTimeMonotonicClock = Duration Function();
typedef ScreenTimeTimerFactory = Timer Function(Duration duration, void Function(Timer timer) callback);

/// Counts elapsed video playback for one profile without retaining title-level
/// history in the aggregates. Any number of overlapping leases represent one
/// active interval.
///
/// Separately, an append-only session ledger records each continuous interval
/// with its play identity (kind/item/server) for the viewing-activity
/// statistics. The ledger never feeds live totals: daily aggregates above stay
/// the single source of truth for the today/week/month chips.

/// Stable code written to the session ledger. Kept as an int column so the
/// codes can outlive enum reordering and stay queryable without a lookup.
enum ScreenTimeMediaKind {
  movie(0),
  episode(1),
  liveTv(2),
  music(3),
  other(4);

  const ScreenTimeMediaKind(this.code);

  final int code;

  /// Unknown or out-of-range codes degrade to [other] rather than throwing;
  /// rows written before a code change stay readable forever.
  static ScreenTimeMediaKind fromCode(int code) {
    final values = ScreenTimeMediaKind.values;
    if (code < 0 || code >= values.length) return other;
    return values[code];
  }
}

/// What was playing while a session was open. Null identity fields mean the
/// source could not say — still a valid session row, just uncatalogued.
class ScreenTimeSessionKey {
  const ScreenTimeSessionKey({
    this.mediaKind = ScreenTimeMediaKind.other,
    this.itemKey,
    this.itemTitle,
    this.serverKey,
    this.showTitle,
    this.seasonIndex,
    this.episodeIndex,
    this.thumbPath,
  });

  final ScreenTimeMediaKind mediaKind;
  final String? itemKey;
  final String? itemTitle;
  final String? serverKey;

  /// Episode context: the series this episode belongs to and its position,
  /// plus a still for artwork-first viewing-activity rows.
  final String? showTitle;
  final int? seasonIndex;
  final int? episodeIndex;
  final String? thumbPath;

  bool get hasIdentity => itemKey != null || itemTitle != null;

  @override
  bool operator ==(Object other) =>
      other is ScreenTimeSessionKey &&
      other.mediaKind == mediaKind &&
      other.itemKey == itemKey &&
      other.itemTitle == itemTitle &&
      other.serverKey == serverKey &&
      other.showTitle == showTitle &&
      other.seasonIndex == seasonIndex &&
      other.episodeIndex == episodeIndex &&
      other.thumbPath == thumbPath;

  @override
  int get hashCode =>
      Object.hash(mediaKind, itemKey, itemTitle, serverKey, showTitle, seasonIndex, episodeIndex, thumbPath);
}

/// Returns what is playing *now*. Evaluated when a session opens and on every
/// checkpoint, so identity changes (next episode, live channel zap) close the
/// current ledger row and open a new one.
typedef ScreenTimeSessionKeySource = ScreenTimeSessionKey? Function();

/// One closed playback segment ready for the ledger.
typedef _PendingSessionSegment = ({
  String localDate,
  int startUtcMs,
  int endUtcMs,
  int durationMs,
  ScreenTimeSessionKey key,
});

class ScreenTimeService {
  ScreenTimeService({
    required this.database,
    required this.profileId,
    ScreenTimeWallClock? wallClock,
    ScreenTimeMonotonicClock? monotonicClock,
    ScreenTimeTimerFactory? periodicTimerFactory,
    this.flushInterval = const Duration(minutes: 1),
  }) : _wallClock = wallClock ?? DateTime.now,
       _periodicTimerFactory = periodicTimerFactory ?? Timer.periodic {
    if (monotonicClock == null) {
      final stopwatch = Stopwatch()..start();
      _monotonicClock = () => stopwatch.elapsed;
    } else {
      _monotonicClock = monotonicClock;
    }
  }

  final AppDatabase database;
  final String? profileId;
  final ScreenTimeWallClock _wallClock;
  late final ScreenTimeMonotonicClock _monotonicClock;
  final ScreenTimeTimerFactory _periodicTimerFactory;
  final Duration flushInterval;

  final Set<Object> _leases = <Object>{};
  DateTime? _intervalWallStart;
  Duration? _intervalMonotonicStart;
  Timer? _timer;
  final Map<String, int> _pendingBuckets = <String, int>{};
  Future<void> _writeQueue = Future<void>.value();
  bool _disposed = false;

  bool get isActive => _leases.isNotEmpty;

  /// Time awaiting a successful database write, after [flush]. Keeping this in
  /// live totals prevents a transient write failure from extending Kids limits.
  int pendingDurationMsForDate(String localDate) => _pendingBuckets[localDate] ?? 0;

  /// Latest metadata source handed to [acquireLease]; most recent wins.
  ScreenTimeSessionKeySource? _sessionKeySource;

  /// Identity of the ledger row currently being accumulated, plus the wall
  /// instant the open segment (or the pending close) started from.
  ScreenTimeSessionKey? _openSessionKey;
  DateTime? _sessionCursorStart;

  /// Closed segments awaiting the write queue.
  final List<_PendingSessionSegment> _pendingSessionSegments = <_PendingSessionSegment>[];

  ScreenTimeLease acquireLease({ScreenTimeSessionKeySource? sessionKeySource}) {
    if (_disposed || profileId == null) return ScreenTimeLease._noop();
    final token = Object();
    if (sessionKeySource != null) _sessionKeySource = sessionKeySource;
    if (_leases.isEmpty) {
      _intervalWallStart = _wallClock();
      _intervalMonotonicStart = _monotonicClock();
      _openSessionKey = _resolveSessionKey();
      _sessionCursorStart = _intervalWallStart;
      _timer = _periodicTimerFactory(flushInterval, (_) => unawaited(flush()));
    }
    _leases.add(token);
    return ScreenTimeLease._(this, token);
  }

  ScreenTimeSessionKey _resolveSessionKey() {
    final source = _sessionKeySource;
    if (source == null) return const ScreenTimeSessionKey();
    try {
      return source() ?? const ScreenTimeSessionKey();
    } catch (error, stackTrace) {
      // A broken identity source must not take playback accounting down.
      appLogger.w('Screen time session identity source failed', error: error, stackTrace: stackTrace);
      return const ScreenTimeSessionKey();
    }
  }

  Future<void> _release(Object token) async {
    if (!_leases.remove(token)) return;
    if (_leases.isEmpty) {
      _timer?.cancel();
      _timer = null;
      _checkpoint(continueInterval: false);
      _scheduleWrite();
    }
    await _writeQueue;
  }

  /// Persists elapsed time so far while preserving any active leases.
  Future<void> flush() async {
    if (_disposed && _leases.isEmpty) return _writeQueue;
    _checkpoint(continueInterval: _leases.isNotEmpty);
    _scheduleWrite();
    await _writeQueue;
  }

  void _checkpoint({required bool continueInterval}) {
    final wallStart = _intervalWallStart;
    final monotonicStart = _intervalMonotonicStart;
    if (wallStart == null || monotonicStart == null) return;

    final monotonicNow = _monotonicClock();
    final elapsed = monotonicNow - monotonicStart;
    final intervalEnd = wallStart.add(elapsed);
    final buckets = elapsed > Duration.zero ? splitScreenTimeByLocalDate(wallStart, elapsed) : const <String, int>{};

    if (continueInterval) {
      _intervalWallStart = intervalEnd;
      _intervalMonotonicStart = monotonicNow;
    } else {
      _intervalWallStart = null;
      _intervalMonotonicStart = null;
    }

    final owner = profileId;
    if (owner != null && buckets.isNotEmpty) {
      for (final entry in buckets.entries) {
        _pendingBuckets[entry.key] = (_pendingBuckets[entry.key] ?? 0) + entry.value;
      }
    }
    _checkpointSession(intervalEnd: intervalEnd, continueInterval: continueInterval);
    _scheduleWrite();
  }

  /// Advances the session ledger for one checkpoint. An unchanged identity
  /// keeps its row open across checkpoints and only closes at local-midnight
  /// boundaries; a changed identity (or interval end) closes the current row
  /// at the boundary and — mid-interval — reopens the ledger with the new key.
  void _checkpointSession({required DateTime intervalEnd, required bool continueInterval}) {
    final cursor = _sessionCursorStart;
    final openKey = _openSessionKey;
    if (openKey == null || cursor == null) return;

    if (!continueInterval) {
      _rememberSegments(cursor, intervalEnd, openKey, includeTail: true);
      _openSessionKey = null;
      _sessionCursorStart = null;
      return;
    }

    if (_sessionKeySource != null) {
      final desired = _resolveSessionKey();
      if (desired != openKey) {
        _rememberSegments(cursor, intervalEnd, openKey, includeTail: true);
        _openSessionKey = desired;
        _sessionCursorStart = intervalEnd;
        return;
      }
    }

    _sessionCursorStart = _rememberSegments(cursor, intervalEnd, openKey, includeTail: false);
  }

  /// Queues wall segments of [start, end) split at every local midnight.
  /// With `includeTail: false`, the window's final day-segment stays open
  /// (returned as the new cursor) so one continuous play counts as one row;
  /// with `includeTail: true` every day-segment is queued as a closed row.
  DateTime _rememberSegments(DateTime start, DateTime end, ScreenTimeSessionKey key, {required bool includeTail}) {
    var cursor = start;
    while (true) {
      final nextMidnight = DateTime(cursor.year, cursor.month, cursor.day + 1);
      if (!nextMidnight.isBefore(end)) break;
      _appendSegment(cursor, nextMidnight, key);
      cursor = nextMidnight;
    }
    if (includeTail && end.isAfter(cursor)) {
      _appendSegment(cursor, end, key);
      return end;
    }
    return cursor;
  }

  void _appendSegment(DateTime start, DateTime end, ScreenTimeSessionKey key) {
    final durationMs = end.difference(start).inMilliseconds;
    if (durationMs <= 0) return;
    _pendingSessionSegments.add((
      localDate: localDateKey(start),
      startUtcMs: start.millisecondsSinceEpoch,
      endUtcMs: end.millisecondsSinceEpoch,
      durationMs: durationMs,
      key: key,
    ));
  }

  void _scheduleWrite() {
    final owner = profileId;
    if (owner == null || (_pendingBuckets.isEmpty && _pendingSessionSegments.isEmpty)) return;
    _writeQueue = _writeQueue.then((_) async {
      if (_pendingBuckets.isEmpty && _pendingSessionSegments.isEmpty) return;
      final bucketSnapshot = Map<String, int>.of(_pendingBuckets);
      final sessionSnapshot = List<_PendingSessionSegment>.of(_pendingSessionSegments);
      try {
        final updatedAt = _wallClock().millisecondsSinceEpoch;
        await database.transaction(() async {
          for (final entry in bucketSnapshot.entries) {
            await database.addScreenTime(
              profileId: owner,
              localDate: entry.key,
              durationMs: entry.value,
              updatedAt: updatedAt,
            );
          }
          await database.addScreenTimeSessions([
            for (final segment in sessionSnapshot)
              ScreenTimeSessionsCompanion.insert(
                profileId: owner,
                localDate: segment.localDate,
                startUtcMs: segment.startUtcMs,
                endUtcMs: segment.endUtcMs,
                durationMs: segment.durationMs,
                mediaKind: segment.key.mediaKind.code,
                serverKey: Value(segment.key.serverKey),
                itemKey: Value(segment.key.itemKey),
                itemTitle: Value(segment.key.itemTitle),
                showTitle: Value(segment.key.showTitle),
                seasonIndex: Value(segment.key.seasonIndex),
                episodeIndex: Value(segment.key.episodeIndex),
                thumbPath: Value(segment.key.thumbPath),
              ),
          ]);
        });
        for (final entry in bucketSnapshot.entries) {
          final remaining = (_pendingBuckets[entry.key] ?? 0) - entry.value;
          if (remaining > 0) {
            _pendingBuckets[entry.key] = remaining;
          } else {
            _pendingBuckets.remove(entry.key);
          }
        }
        _pendingSessionSegments.removeRange(0, sessionSnapshot.length);
      } catch (error, stackTrace) {
        // Keep both snapshots pending so the next periodic/final flush retries
        // them and the ledger stays consistent with the aggregates.
        appLogger.w('Failed to persist screen time', error: error, stackTrace: stackTrace);
      }
    });
  }

  void dispose() {
    if (_disposed) return;
    _disposed = true;
    _timer?.cancel();
    _timer = null;
    _leases.clear();
    _checkpoint(continueInterval: false);
    _scheduleWrite();
    unawaited(_writeQueue);
  }
}

class ScreenTimeLease {
  ScreenTimeLease._(this._owner, this._token);
  ScreenTimeLease._noop() : _owner = null, _token = null;

  ScreenTimeService? _owner;
  Object? _token;

  Future<void> close() {
    final owner = _owner;
    final token = _token;
    _owner = null;
    _token = null;
    if (owner == null || token == null) return Future<void>.value();
    return owner._release(token);
  }
}

Map<String, int> splitScreenTimeByLocalDate(DateTime localStart, Duration elapsed) {
  var cursor = localStart;
  var remainingUs = elapsed.inMicroseconds;
  final result = <String, int>{};
  while (remainingUs > 0) {
    final nextMidnight = DateTime(cursor.year, cursor.month, cursor.day + 1);
    final untilMidnightUs = nextMidnight.difference(cursor).inMicroseconds;
    final partUs = remainingUs < untilMidnightUs ? remainingUs : untilMidnightUs;
    final partMs = partUs ~/ Duration.microsecondsPerMillisecond;
    if (partMs > 0) {
      final key = localDateKey(cursor);
      result[key] = (result[key] ?? 0) + partMs;
    }
    remainingUs -= partUs;
    cursor = cursor.add(Duration(microseconds: partUs));
  }
  return result;
}

String localDateKey(DateTime date) {
  String twoDigits(int value) => value.toString().padLeft(2, '0');
  return '${date.year.toString().padLeft(4, '0')}-${twoDigits(date.month)}-${twoDigits(date.day)}';
}
