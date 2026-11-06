import 'media_item.dart';
import 'media_item_types.dart';

enum ShowPlayIntent { play, resume, next, replay }

class ShowEpisodeState {
  const ShowEpisodeState(this.episode, this.intent, {this.caughtUp = false});
  final MediaItem? episode;
  final ShowPlayIntent intent;
  final bool caughtUp;

  static ShowEpisodeState resolve(List<MediaItem> episodes, {MediaItem? onDeck, bool complete = false, DateTime? now}) {
    final today = now ?? DateTime.now();
    final items =
        episodes.where((e) {
          final date = DateTime.tryParse(e.originallyAvailableAt ?? '');
          return e.isEpisode && (e.parentIndex ?? 1) > 0 && (date == null || !date.isAfter(today));
        }).toList()..sort((a, b) {
          final season = (a.parentIndex ?? 1).compareTo(b.parentIndex ?? 1);
          return season != 0 ? season : (a.index ?? 0).compareTo(b.index ?? 0);
        });
    final started = items.any((e) => e.isWatched || (e.lastViewedAt ?? 0) > 0 || e.hasActiveProgress);
    final active = items.where((e) => e.hasActiveProgress && !e.isWatched).toList()
      ..sort((a, b) => (b.lastViewedAt ?? 0).compareTo(a.lastViewedAt ?? 0));
    if (onDeck != null && onDeck.hasActiveProgress && !onDeck.isWatched) {
      return ShowEpisodeState(onDeck, ShowPlayIntent.resume);
    }
    if (active.isNotEmpty) return ShowEpisodeState(active.first, ShowPlayIntent.resume);
    if (onDeck != null &&
        !onDeck.isWatched &&
        (onDeck.parentIndex ?? 1) > 0 &&
        !(DateTime.tryParse(onDeck.originallyAvailableAt ?? '')?.isAfter(today) ?? false)) {
      return ShowEpisodeState(onDeck, started ? ShowPlayIntent.next : ShowPlayIntent.play);
    }
    final unwatched = items.where((e) => !e.isWatched).firstOrNull;
    if (unwatched != null) return ShowEpisodeState(unwatched, started ? ShowPlayIntent.next : ShowPlayIntent.play);
    if (items.isEmpty) return const ShowEpisodeState(null, ShowPlayIntent.play);
    final watched = items.where((e) => e.isWatched || (e.lastViewedAt ?? 0) > 0).toList()
      ..sort((a, b) => (a.lastViewedAt ?? 0).compareTo(b.lastViewedAt ?? 0));
    return ShowEpisodeState(watched.lastOrNull ?? items.last, ShowPlayIntent.replay, caughtUp: complete);
  }
}

class ScheduledEpisode {
  const ScheduledEpisode({
    required this.season,
    required this.number,
    required this.released,
    this.title,
    this.summary,
    this.thumbnail,
  });
  final int season, number;
  final DateTime released;
  final String? title, summary, thumbnail;
  String get key => '$season:$number';
}

class ShowSchedule {
  const ShowSchedule({this.episodes = const [], this.ended});
  final List<ScheduledEpisode> episodes;
  final bool? ended;

  List<ScheduledEpisode> latestAndUpcoming(DateTime now) {
    final regular = episodes.where((e) => e.season > 0).toList()
      ..sort((a, b) {
        final date = a.released.compareTo(b.released);
        if (date != 0) return date;
        final season = a.season.compareTo(b.season);
        return season != 0 ? season : a.number.compareTo(b.number);
      });
    final latest = regular.where((e) => !e.released.isAfter(now)).lastOrNull;
    return [?latest, ...regular.where((e) => e.released.isAfter(now)).take(4)];
  }
}
