import 'media_item.dart';

/// Backend-neutral presentation categories for playable local extras.
enum MediaExtraCategory { trailers, featurettes, interviews, deletedScenes, behindTheScenes, scenesAndClips, other }

/// Classifies an extra using only the type metadata supplied by its server.
/// Titles are deliberately ignored so localized or user-authored names are
/// never treated as metadata the backend did not provide.
MediaExtraCategory mediaExtraCategory(MediaItem item) {
  final value = switch (item) {
    PlexMediaItem(:final subtype) => subtype,
    JellyfinMediaItem(:final raw) => raw?['ExtraType'] ?? raw?['Type'],
  };
  final normalized = value?.toString().toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

  return switch (normalized) {
    'trailer' || 'trailers' => MediaExtraCategory.trailers,
    'featurette' || 'featurettes' => MediaExtraCategory.featurettes,
    'interview' || 'interviews' => MediaExtraCategory.interviews,
    'deletedscene' || 'deletedscenes' => MediaExtraCategory.deletedScenes,
    'behindthescenes' => MediaExtraCategory.behindTheScenes,
    'scene' || 'scenes' || 'clip' || 'clips' => MediaExtraCategory.scenesAndClips,
    _ => MediaExtraCategory.other,
  };
}

Map<MediaExtraCategory, List<MediaItem>> categorizeMediaExtras(Iterable<MediaItem> extras) {
  final groups = <MediaExtraCategory, List<MediaItem>>{};
  for (final extra in extras) {
    groups.putIfAbsent(mediaExtraCategory(extra), () => []).add(extra);
  }
  return groups;
}
