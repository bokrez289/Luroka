import 'dart:async';

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../database/app_database.dart';
import '../../i18n/strings.g.dart';
import '../../media/ids.dart';
import '../../media/media_item.dart';
import '../../media/media_kind.dart';
import '../../media/media_server_client.dart';
import '../../profiles/active_profile_provider.dart';
import '../../profiles/profile.dart';
import '../../profiles/profile_avatar.dart';
import '../../services/kids_profile_service.dart';
import '../../services/screen_time_analytics.dart';
import '../../services/screen_time_service.dart';
import '../../services/viewing_activity_summary.dart' hide formatViewingDuration;
import '../../services/viewing_activity_summary.dart' as viewing;
import '../../theme/mono_tokens.dart';
import '../../utils/formatters.dart';
import '../../utils/media_navigation_helper.dart';
import '../../utils/platform_detector.dart';
import '../../utils/provider_extensions.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/app_bar_back_button.dart';
import '../../focus/focusable_button.dart';
import '../../focus/key_event_utils.dart';
import '../../widgets/optimized_media_image.dart';
import '../../utils/media_image_helper.dart' show ImageType;
import 'widgets/viewing_activity_charts.dart';

String _formatViewingDuration(int milliseconds) => milliseconds < 60000
    ? '${(milliseconds / 1000).round().clamp(0, 60)} ${t.settings.secondsShort}'
    : viewing.formatViewingDuration(milliseconds);

/// Viewing-activity destination page — a standalone feature, not a settings
/// sub-page. Designed around a hero header, stat cards, an integrated
/// heatmap + streaks section, poster rails, and wide session cards.
enum _Period { last7, last30, last90, year, all }

extension _PeriodWindow on _Period {
  int? get days => switch (this) {
    _Period.last7 => 7,
    _Period.last30 => 30,
    _Period.last90 => 90,
    _Period.year => null,
    _Period.all => null,
  };
}

/// Everything one period render needs, loaded in a single pass.
class _Snapshot {
  _Snapshot({
    required this.summary,
    required this.period,
    required this.allTimeMs,
    required this.periodMs,
    required this.dailyAverageMs,
    required this.segments,
    required this.weekdayMs,
    required this.hours,
    required this.kinds,
    required this.titles,
    required this.sessions,
    required this.hasMoreSessions,
    required this.artworkSessions,
    required this.streaks,
    required this.records,
    required this.empty,
  });

  final ViewingActivitySummary summary;
  final _Period period;
  ScreenTimeDateRange? range;
  int activeDays = 0;
  int calendarDays = 1;
  int titleCount = 0;
  int? previousMs;
  final int allTimeMs;
  final int periodMs;
  final int dailyAverageMs;
  final List<StatsBarSegment> segments;
  final List<int> weekdayMs;
  final List<ScreenTimeHourBin> hours;
  final List<ScreenTimeKindShare> kinds;
  final List<ScreenTimeTopTitle> titles;
  final List<ScreenTimeSessionRow> sessions;
  final bool hasMoreSessions;
  final List<ScreenTimeSessionRow> artworkSessions;
  final ScreenTimeStreaks streaks;
  final ScreenTimeRecords records;
  final bool empty;
}

class ScreenTimeScreen extends StatefulWidget {
  const ScreenTimeScreen({super.key, this.profileId});

  /// Opens an explicitly linked child's ledger read-only; null uses the
  /// active profile. Callers obtain parent access before opening a child.
  final String? profileId;

  @override
  State<ScreenTimeScreen> createState() => _ScreenTimeScreenState();
}

class _ScreenTimeScreenState extends State<ScreenTimeScreen> {
  static const int _sessionPageSize = 8;

  Future<_Snapshot?>? _snapshot;
  String? _ownerKey;
  _Period _period = _Period.last30;
  int _selectedSegment = -1;
  int _sessionsShown = _sessionPageSize;
  int _section = 0;
  final _historyKey = GlobalKey();
  final _searchController = TextEditingController();
  String? _historyError;
  Future<List<ScreenTimeTopTitle>>? _recapTitles;
  String _historySearch = '';
  int? _historyKind;
  ScreenTimeDateRange? _historyRange;
  List<ScreenTimeSessionRow>? _historyRows;
  bool _historyMore = false;
  bool _historyLoading = false;
  int _historyGeneration = 0;
  Timer? _searchTimer;

  final _backFocus = FocusNode(debugLabel: 'ViewingActivityBack');

  @override
  void initState() {
    super.initState();
    KidsProfileService.instance.addListener(_policyChanged);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && PlatformDetector.isTV() && (ModalRoute.of(context)?.isCurrent ?? true)) {
        _backFocus.requestFocus();
      }
    });
  }

  @override
  void dispose() {
    KidsProfileService.instance.removeListener(_policyChanged);
    _searchTimer?.cancel();
    _searchController.dispose();
    _historyGeneration++;
    _backFocus.dispose();
    super.dispose();
  }

  void _policyChanged() {
    if (mounted && _ownerKey != null) _reload();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final service = context.watch<ScreenTimeService?>();
    final active = context.watch<ActiveProfileProvider?>();
    final profileId = widget.profileId ?? service?.profileId;
    final ownerKey = '${widget.profileId != null}:${profileId ?? ''}:${active?.activeId ?? ''}';
    if (_snapshot == null || _ownerKey != ownerKey) {
      _ownerKey = ownerKey;
      _selectedSegment = -1;
      _sessionsShown = _sessionPageSize;
      _reload();
    }
  }

  @override
  void didUpdateWidget(covariant ScreenTimeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.profileId != widget.profileId) {
      _ownerKey = null;
      _selectedSegment = -1;
      _sessionsShown = _sessionPageSize;
      _reload();
    }
  }

  void _reload() {
    _historyGeneration++;
    _searchTimer?.cancel();
    _searchController.clear();
    _historySearch = '';
    _historyKind = null;
    _historyRows = null;
    _historyRange = null;
    _historyError = null;
    _recapTitles = null;
    _historyLoading = false;
    final service = context.read<ScreenTimeService?>();
    final profileId = widget.profileId ?? service?.profileId;
    final active = context.read<ActiveProfileProvider?>();
    final allowed = _allowed(active, service, profileId);
    final period = _period;
    final sessionsShown = _sessionsShown;
    setState(() {
      _snapshot = () async {
        if (!allowed) return null;
        if (widget.profileId == null) await service?.flush();
        return _loadSnapshot(service?.database, profileId, period, sessionsShown);
      }();
    });
  }

  bool _allowed(ActiveProfileProvider? active, ScreenTimeService? service, String? target) {
    // An explicitly requested profile must always have a real active owner;
    // the standalone own-profile screen also works in isolated test hosts.
    final viewer = active?.activeId ?? (widget.profileId == null ? service?.profileId : null);
    if (active != null && (active.activeId == null || service?.profileId != active.activeId)) return false;
    return KidsProfileService.instance.canViewActivity(viewerId: viewer, targetId: target);
  }

  void _selectPeriod(_Period period) {
    if (_period == period) return;
    setState(() {
      _period = period;
      _selectedSegment = -1;
      _sessionsShown = _sessionPageSize;
    });
    _reload();
  }

  void _showMoreSessions() async {
    final data = await _snapshot;
    if (mounted && data != null) await _loadHistory(data, append: true);
  }

  Future<void> _loadHistory(_Snapshot data, {bool append = false}) async {
    final service = context.read<ScreenTimeService?>();
    final active = context.read<ActiveProfileProvider?>();
    if (!_allowed(active, service, data.summary.profileId) ||
        data.summary.profileId != (widget.profileId ?? service?.profileId) ||
        data.period != _period) {
      return;
    }
    final db = service?.database;
    final range = _historyRange ?? data.range;
    if (db == null || range == null || (append && _historyLoading)) return;
    final generation = ++_historyGeneration;
    final existing = append ? (_historyRows ?? data.sessions) : <ScreenTimeSessionRow>[];
    setState(() {
      _historyLoading = true;
      _historyError = null;
    });
    try {
      final rows = await db.getScreenTimeViewingTotals(
        profileId: data.summary.profileId,
        startLocalDate: range.startLocalDate,
        endLocalDate: range.endLocalDate,
        search: _historySearch,
        mediaKind: _historyKind,
        offset: existing.length,
        limit: _sessionPageSize + 1,
      );
      if (!mounted || generation != _historyGeneration) return;
      setState(() {
        _historyRows = [...existing, ...rows.take(_sessionPageSize)];
        _historyMore = rows.length > _sessionPageSize;
      });
    } catch (_) {
      if (mounted && generation == _historyGeneration) setState(() => _historyError = t.activityStats.historyError);
    } finally {
      if (mounted && generation == _historyGeneration) setState(() => _historyLoading = false);
    }
  }

  Future<_Snapshot?> _loadSnapshot(AppDatabase? db, String? profileId, _Period period, int sessionsShown) async {
    if (db == null || profileId == null) return null;

    final summary = await loadViewingActivitySummaryFor(db, profileId);
    if (summary == null) return null;

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final todayKey = localDateKey(today);

    final allRows = await db.getScreenTimeRange(
      profileId: profileId,
      startLocalDate: '0000-01-01',
      endLocalDate: todayKey,
    );
    final allTimeMs = allRows.fold(0, (total, row) => total + row.durationMs);
    final firstActive = allRows.where((row) => row.durationMs > 0).firstOrNull;
    final firstDay = firstActive == null ? null : ScreenTimeAnalytics.dayFromKey(firstActive.localDate);
    // Count calendar days, including days without viewing, without a DST shift.
    final days = firstDay == null
        ? 0
        : DateTime.utc(
                today.year,
                today.month,
                today.day,
              ).difference(DateTime.utc(firstDay.year, firstDay.month, firstDay.day)).inDays +
              1;
    final dailyAverageMs = days > 0 ? (allTimeMs / days).round() : 0;

    String seriesStartKey;
    if (period.days case final windowDays?) {
      seriesStartKey = localDateKey(DateTime(today.year, today.month, today.day - windowDays + 1));
    } else if (period == _Period.year) {
      seriesStartKey = localDateKey(DateTime(today.year));
    } else {
      seriesStartKey = allRows.isEmpty ? todayKey : allRows.first.localDate;
    }
    final range = ScreenTimeAnalytics.range(seriesStartKey, todayKey);

    final series = await ScreenTimeAnalytics.dailySeries(db, profileId, range);
    final weekdayMs = List<int>.filled(7, 0);
    for (final point in series) {
      if (point.durationMs > 0) {
        weekdayMs[ScreenTimeAnalytics.dayFromKey(point.localDate).weekday - 1] += point.durationMs;
      }
    }

    final results = await Future.wait([
      ScreenTimeAnalytics.streaks(db, profileId, range),
      ScreenTimeAnalytics.records(db, profileId, range),
      ScreenTimeAnalytics.hourOfDayBins(db, profileId, range),
      ScreenTimeAnalytics.kindBreakdown(db, profileId, range),
      ScreenTimeAnalytics.topTitles(db, profileId, range),
      ScreenTimeAnalytics.viewingTotals(db, profileId, range, limit: sessionsShown + 1),
      ScreenTimeAnalytics.sessions(db, profileId, range, pageSize: 9999),
    ]);

    final snapshot = _Snapshot(
      summary: summary,
      period: period,
      allTimeMs: allTimeMs,
      periodMs: series.fold<int>(0, (total, point) => total + point.durationMs),
      dailyAverageMs: dailyAverageMs,
      segments: aggregateDailySeries(series, todayKey),
      weekdayMs: weekdayMs,
      hours: results[2] as List<ScreenTimeHourBin>,
      kinds: results[3] as List<ScreenTimeKindShare>,
      titles: results[4] as List<ScreenTimeTopTitle>,
      sessions: (results[5] as List<ScreenTimeSessionRow>).take(sessionsShown).toList(),
      hasMoreSessions: (results[5] as List<ScreenTimeSessionRow>).length > sessionsShown,
      artworkSessions: results[6] as List<ScreenTimeSessionRow>,
      streaks: results[0] as ScreenTimeStreaks,
      records: results[1] as ScreenTimeRecords,
      empty: allTimeMs == 0,
    );
    snapshot.titleCount = await db.countScreenTimeViewedTitles(
      profileId: profileId,
      startLocalDate: range.startLocalDate,
      endLocalDate: range.endLocalDate,
    );
    snapshot.range = range;
    snapshot.calendarDays = series.length.clamp(1, 100000);
    snapshot.activeDays = series.where((point) => point.durationMs > 0).length;
    if (period.days case final count?) {
      final start = DateTime(today.year, today.month, today.day - count * 2 + 1);
      final end = DateTime(today.year, today.month, today.day - count);
      if (firstDay != null && !firstDay.isAfter(start)) {
        snapshot.previousMs = allRows
            .where(
              (row) =>
                  row.localDate.compareTo(localDateKey(start)) >= 0 && row.localDate.compareTo(localDateKey(end)) <= 0,
            )
            .fold<int>(0, (sum, row) => sum + row.durationMs);
      }
    }
    return snapshot;
  }

  @override
  Widget build(BuildContext context) {
    final active = context.watch<ActiveProfileProvider?>();
    final isTv = PlatformDetector.isTV();
    final service = context.watch<ScreenTimeService?>();
    final theme = Theme.of(context);

    return Focus(
      canRequestFocus: false,
      onKeyEvent: (_, event) => handleBackKeyNavigation(context, event),
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.family.activity),
          leading: isTv ? AppBarBackButton(style: BackButtonStyle.plain, focusNode: _backFocus) : null,
          backgroundColor: theme.scaffoldBackgroundColor,
          elevation: 0,
        ),
        body: ListenableBuilder(
          listenable: KidsProfileService.instance,
          builder: (context, _) => !_allowed(active, service, widget.profileId ?? service?.profileId)
              ? Center(
                  child: Padding(padding: const EdgeInsets.all(32), child: Text(t.family.activityUnavailable)),
                )
              : FutureBuilder<_Snapshot?>(
                  future: _snapshot,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState != ConnectionState.done && !snapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    final data = snapshot.data;
                    final matchesActive = data?.summary.profileId == (widget.profileId ?? service?.profileId);
                    if (data == null || !matchesActive) {
                      return Center(
                        child: Padding(padding: const EdgeInsets.all(32), child: Text(t.family.activityUnavailable)),
                      );
                    }
                    if (data.empty) {
                      return _buildEmptyState(context);
                    }
                    return StatsEntranceFade(child: _buildPage(context, data, isTv, active, theme));
                  },
                ),
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppIcon(Symbols.bar_chart_rounded, size: 48, color: tokens(context).textMuted, fill: 0),
          const SizedBox(height: 16),
          Text(t.activityStats.emptyTitle, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          Text(
            t.activityStats.emptyBody,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: tokens(context).textMuted),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildPage(BuildContext context, _Snapshot data, bool isTv, ActiveProfileProvider? active, ThemeData theme) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(isTv ? 48 : 16, isTv ? 24 : 12, isTv ? 48 : 16, 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeroHeader(context, data, isTv, active, theme),
            SizedBox(height: isTv ? 28 : 20),
            if (isTv) ...[
              Row(
                children: [
                  for (final (index, label) in [
                    t.activityStats.overview,
                    t.activityStats.history,
                    t.activityStats.patternsTab,
                  ].indexed)
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: ChoiceChip(
                        label: Text(label),
                        selected: _section == index,
                        onSelected: (_) => setState(() => _section = index),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 20),
            ],
            if (!isTv || _section == 0) ...[
              _buildStatCards(context, data, isTv, theme),
              const SizedBox(height: 8),
              Text(t.activityStats.playedHint, style: theme.textTheme.bodySmall),
              if (data.previousMs != null)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text('${t.activityStats.previousPeriod}: ${_formatViewingDuration(data.previousMs!)}'),
                ),
              const SizedBox(height: 20),
              if (isTv && MediaQuery.sizeOf(context).width >= 1100 && MediaQuery.textScalerOf(context).scale(1) < 1.5)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: _buildTrendSection(context, data, true, theme)),
                    const SizedBox(width: 24),
                    Expanded(child: _buildSessions(context, data, true, theme)),
                  ],
                )
              else ...[
                _buildSessions(context, data, isTv, theme),
                const SizedBox(height: 24),
                _buildTrendSection(context, data, isTv, theme),
              ],
              if (data.titles.isNotEmpty) ...[
                const SizedBox(height: 24),
                _buildMostWatched(context, data, isTv, theme),
              ],
            ],
            if (isTv && _section == 1) _buildSessions(context, data, isTv, theme),
            if (!isTv || _section == 2) ...[
              const SizedBox(height: 24),
              if (data.activeDays >= 3)
                _buildPatterns(context, data, isTv, theme)
              else
                Text(t.activityStats.gettingStarted),
            ],
            const SizedBox(height: 24),
            ExpansionTile(
              title: Text(t.activityStats.monthlyRecap),
              onExpansionChanged: (expanded) {
                final db = context.read<ScreenTimeService?>()?.database;
                if (!expanded || db == null || _recapTitles != null) return;
                final now = DateTime.now();
                setState(
                  () => _recapTitles = ScreenTimeAnalytics.topTitles(
                    db,
                    data.summary.profileId,
                    ScreenTimeAnalytics.range(localDateKey(DateTime(now.year, now.month)), localDateKey(now)),
                  ),
                );
              },
              children: [
                ListTile(
                  title: Text(t.activityStats.monthWatched(duration: _formatViewingDuration(data.summary.monthMs))),
                  subtitle: Text(t.activityStats.measurementHint),
                ),
                FutureBuilder<List<ScreenTimeTopTitle>>(
                  future: _recapTitles,
                  builder: (context, snapshot) => Column(
                    children: [
                      for (final title in (snapshot.data ?? <ScreenTimeTopTitle>[]).take(3))
                        ListTile(title: Text(title.title), trailing: Text(_formatViewingDuration(title.durationMs))),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              t.activityStats.lifetimeSummary(
                total: _formatViewingDuration(data.allTimeMs),
                average: _formatViewingDuration(data.dailyAverageMs),
              ),
            ),
            const SizedBox(height: 8),
            Text(t.activityStats.ledgerScope),
          ],
        ),
      ),
    );
  }

  // ─── Hero header ────────────────────────────────────────────

  Widget _buildHeroHeader(
    BuildContext context,
    _Snapshot data,
    bool isTv,
    ActiveProfileProvider? active,
    ThemeData theme,
  ) {
    final profile = _targetProfile(active);
    final name = profile?.displayName ?? t.family.thisProfile;
    final kindLabel = _dominantKindLabel(data);
    final heroText = _formatViewingDuration(data.periodMs);
    final art = _artworkFor(data.titles.firstOrNull, data);
    final colors = theme.colorScheme;
    final light = theme.brightness == Brightness.light;

    Widget identity() => Row(
      children: [
        ProfileAvatar(
          profile: profile,
          size: isTv ? 72 : 48,
          avatarUrl: profile == null ? null : active?.avatarUrlFor(profile.id),
        ),
        SizedBox(width: isTv ? 20 : 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w700, fontSize: isTv ? 36 : 26),
              ),
              const SizedBox(height: 5),
              Text(
                [
                  heroText,
                  _periodLabelFor(data.period),
                  if (kindLabel.isNotEmpty && data.activeDays >= 3) t.activityStats.mostlyKind(kind: kindLabel),
                ].join(' · '),
                key: const ValueKey('activity_period_summary'),
                style: theme.textTheme.bodyLarge?.copyWith(color: colors.onSurfaceVariant),
              ),
            ],
          ),
        ),
      ],
    );

    return Container(
      key: const ValueKey('activity_hero'),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: colors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(isTv ? 28 : 18),
        border: isTv ? Border.all(color: colors.primary.withValues(alpha: .22)) : null,
      ),
      child: Stack(
        children: [
          if (isTv && art != null)
            Positioned.fill(
              child: ExcludeSemantics(
                child: IgnorePointer(
                  child: Opacity(
                    opacity: light ? .20 : .30,
                    child: OptimizedMediaImage(
                      client: _clientFor(art.serverKey),
                      imagePath: art.thumbPath,
                      imageType: ImageType.thumb,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          if (isTv)
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      colors.surfaceContainerLow,
                      colors.surfaceContainerLow.withValues(alpha: light ? .82 : .68),
                    ],
                  ),
                ),
              ),
            ),
          Padding(
            padding: EdgeInsets.all(isTv ? 28 : 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isTv) ...[
                  Text(
                    t.activityStats.overview.toUpperCase(),
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: colors.primary,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 24),
                  LayoutBuilder(
                    builder: (context, bounds) {
                      if (bounds.maxWidth < 760 || MediaQuery.textScalerOf(context).scale(1) > 1.4) {
                        return identity();
                      }
                      return Row(
                        children: [
                          Expanded(flex: 3, child: identity()),
                          const SizedBox(width: 32),
                          Container(width: 1, height: 88, color: colors.outlineVariant.withValues(alpha: .6)),
                          const SizedBox(width: 32),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  heroText,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.displayMedium?.copyWith(
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: -1.5,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  t.activityStats.watchedPeriod,
                                  style: theme.textTheme.bodyMedium?.copyWith(color: colors.onSurfaceVariant),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ] else
                  identity(),
                SizedBox(height: isTv ? 20 : 16),
                _buildPeriodSelector(context, isTv, theme),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPeriodSelector(BuildContext context, bool isTv, ThemeData theme) {
    final colors = theme.colorScheme;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 8,
        children: [
          for (final period in _Period.values)
            FocusableButton(
              key: ValueKey('activity_period_${period.name}'),
              borderRadius: 20,
              onPressed: () => _selectPeriod(period),
              child: GestureDetector(
                onTap: () => _selectPeriod(period),
                child: Semantics(
                  selected: _period == period,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: isTv ? 16 : 12, vertical: 10),
                    decoration: BoxDecoration(
                      color: _period == period
                          ? colors.primaryContainer
                          : colors.surfaceContainerHighest.withValues(alpha: .65),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      _periodLabelFor(period),
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: _period == period ? colors.onPrimaryContainer : colors.onSurfaceVariant,
                        fontWeight: _period == period ? FontWeight.w600 : FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  // ─── Stat cards ─────────────────────────────────────────────

  Widget _buildStatCards(BuildContext context, _Snapshot data, bool isTv, ThemeData theme) {
    final cards = <_StatCard>[
      _StatCard(label: t.activityStats.watchedPeriod, value: _formatViewingDuration(data.periodMs)),
      _StatCard(label: t.activityStats.activeDays, value: '${data.activeDays}'),
      _StatCard(label: t.activityStats.titlesPlayedLabel, value: '${data.titleCount}'),
      _StatCard(label: t.activityStats.dailyAverage, value: _formatViewingDuration(data.periodMs ~/ data.calendarDays)),
    ];

    if (isTv) {
      // 4-across on TV
      return IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (var i = 0; i < cards.length; i++) ...[
              if (i > 0) const SizedBox(width: 12),
              Expanded(child: _StatCardWidget(card: cards[i], isTv: true)),
            ],
          ],
        ),
      );
    }

    // 2×2 grid on phone
    return Column(
      children: [
        for (var row = 0; row < 2; row++)
          Padding(
            padding: EdgeInsets.only(bottom: row == 0 ? 12 : 0),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (var col = 0; col < 2; col++) ...[
                    if (col > 0) const SizedBox(width: 12),
                    Expanded(child: _StatCardWidget(card: cards[row * 2 + col], isTv: false)),
                  ],
                ],
              ),
            ),
          ),
      ],
    );
  }

  // ─── Trend section (heatmap + streaks + best) ──────────────

  Widget _buildTrendSection(BuildContext context, _Snapshot data, bool isTv, ThemeData theme) {
    final accent = theme.colorScheme.primary;
    final segments = data.segments;
    final selected = segments.isEmpty
        ? null
        : segments[(_selectedSegment < 0 ? segments.length - 1 : _selectedSegment).clamp(0, segments.length - 1)];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Text(
            t.activityStats.trendTitle,
            style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600, letterSpacing: 0.5),
          ),
        ),
        // Heatmap
        Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerHigh,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(isTv ? 20 : 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t.activityStats.chartScale(
                  duration: _formatViewingDuration(
                    segments.fold<int>(0, (peak, segment) => segment.milliseconds > peak ? segment.milliseconds : peak),
                  ),
                ),
              ),
              StatsDailyBarChart(
                segments: segments,
                selectedLabel: selected?.label,
                onSegmentTap: (index) => setState(() => _selectedSegment = index),
              ),
              if (segments.length > 1) ...[
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        formatAbbreviatedDate(segments.first.label),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelSmall?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Flexible(
                      child: Text(
                        formatAbbreviatedDate(segments.last.endKey ?? segments.last.label),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.end,
                        style: theme.textTheme.labelSmall?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                      ),
                    ),
                  ],
                ),
              ],
              if (selected != null) ...[
                const SizedBox(height: 10),
                Text(
                  t.activityStats.gapDetail(
                    stat: _formatViewingDuration(selected.milliseconds),
                    range: statsSegmentDisplayLabel(selected),
                  ),
                  key: const ValueKey('activity_trend_selection'),
                  style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                ),
              ],
              if (selected != null)
                TextButton(
                  onPressed: () {
                    setState(() {
                      _historyRange = (startLocalDate: selected.label, endLocalDate: selected.endKey ?? selected.label);
                      _section = 1;
                    });
                    unawaited(_loadHistory(data));
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      final historyContext = _historyKey.currentContext;
                      if (mounted && historyContext != null) {
                        Scrollable.ensureVisible(historyContext, duration: const Duration(milliseconds: 250));
                      }
                    });
                  },
                  child: Text(t.activityStats.drillDown),
                ),
              SizedBox(height: isTv ? 18 : 14),
              if (data.activeDays >= 3)
                Wrap(
                  spacing: isTv ? 16 : 10,
                  runSpacing: 8,
                  children: [
                    _buildTrendBadge(
                      context,
                      icon: Symbols.local_fire_department_rounded,
                      label: t.activityStats.currentStreak,
                      value: t.activityStats.dayCount(n: data.streaks.currentDays),
                      accent: accent,
                      isTv: isTv,
                    ),
                    _buildTrendBadge(
                      context,
                      icon: Symbols.emoji_events_rounded,
                      label: t.activityStats.longestStreak,
                      value: t.activityStats.dayCount(n: data.streaks.longestDays),
                      accent: accent,
                      isTv: isTv,
                    ),
                    if (data.records.longestDay.durationMs > 0)
                      _buildTrendBadge(
                        context,
                        icon: Symbols.star_rounded,
                        label: t.activityStats.bestDay,
                        value:
                            '${_formatViewingDuration(data.records.longestDay.durationMs)} · ${formatAbbreviatedDate(data.records.longestDay.localDate)}',
                        accent: accent,
                        isTv: isTv,
                      ),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTrendBadge(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
    required Color accent,
    required bool isTv,
  }) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: isTv ? 18 : 14, vertical: isTv ? 10 : 8),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(isTv ? 24 : 20),
        border: Border.all(color: accent.withValues(alpha: 0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppIcon(icon, size: isTv ? 22 : 18, color: accent, fill: 1),
          SizedBox(width: isTv ? 10 : 8),
          Flexible(
            child: Text('$label · $value', style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }

  // ─── Most watched (poster rail) ─────────────────────────────

  Widget _buildMostWatched(BuildContext context, _Snapshot data, bool isTv, ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            children: [
              Text(
                t.activityStats.topTitlesTitle,
                style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600, letterSpacing: 0.5),
              ),
              const Spacer(),
              if (data.titles.length > (isTv ? 4 : 2))
                AppIcon(Symbols.chevron_right_rounded, size: 20, color: tokens(context).textMuted, fill: 1),
            ],
          ),
        ),
        StatsTopTitlesRail(
          entries: data.titles,
          artworkFor: (entry) {
            final row = _artworkFor(entry, data);
            return row == null ? null : (client: _clientFor(row.serverKey), path: row.thumbPath);
          },
          onOpenFor: (entry) {
            final row = _sessionFor(entry, data);
            return row == null ? null : _sessionOpened(row);
          },
        ),
      ],
    );
  }

  // ─── Recent sessions (wide cards) ───────────────────────────

  Widget _buildSessions(BuildContext context, _Snapshot data, bool isTv, ThemeData theme) {
    final preview = isTv && _section == 0;
    return Column(
      key: _historyKey,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t.activityStats.recentViewingTitle,
                style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600, letterSpacing: 0.5),
              ),
              const SizedBox(height: 4),
              Text(
                t.activityStats.recentViewingHint,
                style: theme.textTheme.bodySmall?.copyWith(color: tokens(context).textMuted),
              ),
            ],
          ),
        ),
        if (!preview)
          TextField(
            controller: _searchController,
            decoration: InputDecoration(prefixIcon: Icon(Icons.search), hintText: t.activityStats.searchHistory),
            onChanged: (value) {
              _historyGeneration++;
              _historySearch = value.trim();
              _searchTimer?.cancel();
              _searchTimer = Timer(const Duration(milliseconds: 300), () => _loadHistory(data));
            },
          ),
        if (!preview)
          Wrap(
            spacing: 8,
            children: [
              for (final (kind, label) in <(int?, String)>[
                (null, t.activityStats.allKinds),
                (0, t.activityStats.moviesFilter),
                (1, t.activityStats.episodesFilter),
              ])
                ChoiceChip(
                  label: Text(label),
                  selected: _historyKind == kind,
                  onSelected: (_) {
                    setState(() => _historyKind = kind);
                    unawaited(_loadHistory(data));
                  },
                ),
              ActionChip(
                label: Text(
                  _historyRange == null
                      ? t.activityStats.datesFilter
                      : '${_historyRange!.startLocalDate} – ${_historyRange!.endLocalDate}',
                ),
                onPressed: () async {
                  final dates = await showDateRangePicker(
                    context: context,
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now(),
                  );
                  if (!mounted || dates == null) return;
                  setState(
                    () => _historyRange = (
                      startLocalDate: localDateKey(dates.start),
                      endLocalDate: localDateKey(dates.end),
                    ),
                  );
                  unawaited(_loadHistory(data));
                },
              ),
              if (_historyRange != null)
                ActionChip(
                  label: Text(t.activityStats.clearDates),
                  onPressed: () {
                    setState(() => _historyRange = null);
                    unawaited(_loadHistory(data));
                  },
                ),
            ],
          ),
        if (_historyError != null) TextButton(onPressed: () => _loadHistory(data), child: Text(_historyError!)),
        if (_historyLoading) const LinearProgressIndicator(),
        if ((_historyRows ?? data.sessions).isEmpty) Text(t.activityStats.noMatches),
        for (final session in preview ? data.sessions.take(3) : (_historyRows ?? data.sessions))
          _buildSessionCard(context, session, isTv, theme),
        if (preview) TextButton(onPressed: () => setState(() => _section = 1), child: Text(t.activityStats.allHistory)),
        if (!preview && (_historyRows == null ? data.hasMoreSessions : _historyMore))
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: FocusableButton(
              borderRadius: 12,
              onPressed: _showMoreSessions,
              child: GestureDetector(
                onTap: _showMoreSessions,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppIcon(Symbols.expand_more_rounded, size: 20, fill: 1),
                      const SizedBox(width: 8),
                      Text(t.activityStats.showMore, style: theme.textTheme.bodyMedium),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildSessionCard(BuildContext context, ScreenTimeSessionRow session, bool isTv, ThemeData theme) {
    final kind = ScreenTimeMediaKind.fromCode(session.mediaKind);
    final isEpisode = kind == ScreenTimeMediaKind.episode && session.showTitle != null;
    final mono = tokens(context);
    final client = _clientFor(session.serverKey);

    final heading = isEpisode
        ? [
            session.showTitle!,
            if (session.seasonIndex != null && session.episodeIndex != null)
              t.dashboard.episodeLabel(season: session.seasonIndex!, episode: session.episodeIndex!),
          ].join(' · ')
        : session.itemTitle ?? t.activityStats.sessionNoTitle;
    final detail = isEpisode
        ? [session.itemTitle, formatAbbreviatedDate(session.localDate)].whereType<String>().join(' · ')
        : '${formatAbbreviatedDate(session.localDate)} · ${statsKindLabel(kind)}';

    final thumbWidth = isTv ? 200.0 : 88.0;
    final thumbHeight = thumbWidth * 9 / 16;
    final onOpen = _sessionOpened(session);

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: FocusableButton(
        borderRadius: 12,
        onPressed: onOpen,
        child: GestureDetector(
          onTap: onOpen,
          child: Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHigh,
              borderRadius: BorderRadius.circular(12),
            ),
            clipBehavior: Clip.antiAlias,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.horizontal(left: Radius.circular(12)),
                  child: SizedBox(
                    width: thumbWidth,
                    height: thumbHeight,
                    child: OptimizedMediaImage(
                      client: client,
                      imagePath: session.thumbPath,
                      fit: BoxFit.cover,
                      imageType: ImageType.thumb,
                      fallbackIcon: statsKindIcon(kind),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: isTv ? 20 : 14, vertical: isTv ? 14 : 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          heading,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          detail,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodySmall?.copyWith(color: mono.textMuted),
                        ),
                        Text(_formatViewingDuration(session.durationMs), style: theme.textTheme.labelMedium),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ─── Patterns (weekday + hour + category) ──────────────────

  Widget _buildPatterns(BuildContext context, _Snapshot data, bool isTv, ThemeData theme) {
    final wide = isTv || MediaQuery.sizeOf(context).width >= 720;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Text(
            t.activityStats.patternsTitle,
            style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600, letterSpacing: 0.5),
          ),
        ),
        if (wide)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _PatternCard(
                  title: t.activityStats.weekdayTitle,
                  isTv: isTv,
                  child: StatsWeekdayBars(weekdayMs: data.weekdayMs),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _PatternCard(
                  title: t.activityStats.hoursTitle,
                  isTv: isTv,
                  child: StatsHourStrip(bins: data.hours),
                ),
              ),
            ],
          )
        else ...[
          _PatternCard(
            title: t.activityStats.weekdayTitle,
            isTv: false,
            child: StatsWeekdayBars(weekdayMs: data.weekdayMs),
          ),
          const SizedBox(height: 12),
          _PatternCard(
            title: t.activityStats.hoursTitle,
            isTv: false,
            child: StatsHourStrip(bins: data.hours),
          ),
        ],
        SizedBox(height: isTv ? 16 : 12),
        // Category chips inline
        StatsKindChips(breakdown: data.kinds),
      ],
    );
  }

  // ─── Helpers ────────────────────────────────────────────────

  MediaServerClient? _clientFor(String? serverKey) {
    if (serverKey == null) return null;
    return context.tryGetMediaClientForServer(ServerId(serverKey));
  }

  ScreenTimeSessionRow? _sessionFor(ScreenTimeTopTitle entry, _Snapshot data, {bool requireArtwork = false}) {
    for (final row in data.artworkSessions) {
      if (ScreenTimeMediaKind.fromCode(row.mediaKind) != entry.kind) continue;
      final matches = entry.kind == ScreenTimeMediaKind.episode
          ? row.showTitle == entry.title
          : row.itemKey == entry.itemKey && row.itemTitle == entry.title;
      if (!matches || _clientFor(row.serverKey) == null) continue;
      if (requireArtwork && (row.thumbPath == null || row.thumbPath!.isEmpty)) continue;
      return row;
    }
    return null;
  }

  ScreenTimeSessionRow? _artworkFor(ScreenTimeTopTitle? entry, _Snapshot data) =>
      entry == null ? null : _sessionFor(entry, data, requireArtwork: true);

  VoidCallback? _sessionOpened(ScreenTimeSessionRow session) {
    final client = _clientFor(session.serverKey);
    final itemKey = session.itemKey;
    if (client == null || itemKey == null) return null;
    final kind = switch (ScreenTimeMediaKind.fromCode(session.mediaKind)) {
      ScreenTimeMediaKind.movie => MediaKind.movie,
      ScreenTimeMediaKind.episode => MediaKind.episode,
      ScreenTimeMediaKind.music => MediaKind.track,
      _ => null,
    };
    if (kind == null) return null;
    return () => unawaited(
      navigateToMediaItemDetails(
        context,
        MediaItem(
          id: itemKey,
          backend: client.backend,
          kind: kind,
          title: session.itemTitle ?? session.showTitle,
          thumbPath: session.thumbPath,
          serverId: session.serverKey,
        ),
      ),
    );
  }

  Profile? _targetProfile(ActiveProfileProvider? active) {
    final override = widget.profileId;
    if (override != null) {
      for (final profile in active?.profiles ?? const []) {
        if (profile.id == override) return profile;
      }
      return null;
    }
    return active?.active;
  }

  String _periodLabelFor(_Period period) => switch (period) {
    _Period.last7 => t.activityStats.last7Days,
    _Period.last30 => t.activityStats.last30Days,
    _Period.last90 => t.activityStats.last90Days,
    _Period.year => t.activityStats.thisYear,
    _Period.all => t.activityStats.allTime,
  };

  String _dominantKindLabel(_Snapshot data) {
    if (data.kinds.isEmpty) return '';
    final top = data.kinds.reduce((a, b) => a.durationMs > b.durationMs ? a : b);
    return statsKindLabel(top.kind);
  }
}

// ─── Private widgets ─────────────────────────────────────────

class _StatCard {
  const _StatCard({required this.label, required this.value});
  final String label;
  final String value;
}

class _StatCardWidget extends StatelessWidget {
  const _StatCardWidget({required this.card, required this.isTv});

  final _StatCard card;
  final bool isTv;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mono = tokens(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: isTv ? 24 : 16, vertical: isTv ? 20 : 14),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(isTv ? 16 : 12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            card.value,
            style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600, fontSize: isTv ? 32 : 24),
          ),
          SizedBox(height: isTv ? 8 : 6),
          Text(card.label, style: theme.textTheme.labelMedium?.copyWith(color: mono.textMuted, letterSpacing: 0.5)),
        ],
      ),
    );
  }
}

class _PatternCard extends StatelessWidget {
  const _PatternCard({required this.title, required this.isTv, required this.child});

  final String title;
  final bool isTv;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mono = tokens(context);
    return Container(
      padding: EdgeInsets.all(isTv ? 16 : 12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(isTv ? 16 : 12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: theme.textTheme.labelMedium?.copyWith(color: mono.textMuted, letterSpacing: 0.5)),
          SizedBox(height: isTv ? 12 : 8),
          child,
        ],
      ),
    );
  }
}
