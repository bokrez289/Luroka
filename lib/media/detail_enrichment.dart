import 'media_item.dart';
import 'media_role.dart';

/// Online promotional videos are deliberately separate from library items:
/// preview playback must never report progress against the parent movie.
class DetailVideo {
  const DetailVideo({required this.url, required this.name, required this.type, this.thumbnail});
  final String url;
  final String name;
  final String type;
  final String? thumbnail;
}

class DetailReview {
  const DetailReview({
    required this.id,
    required this.author,
    required this.content,
    required this.source,
    this.rating,
    this.date,
    this.url,
  });
  final String id;
  final String author;
  final String content;
  final String source;
  final double? rating;
  final DateTime? date;
  final String? url;
}

class DetailEnrichment {
  const DetailEnrichment({this.videos = const [], this.reviews = const [], this.reviewsFailed = false});
  final List<DetailVideo> videos;
  final List<DetailReview> reviews;
  final bool reviewsFailed;
}

/// Preserve the server's person identity; do not invent an ID from a name.
List<MediaRole> detailDirectors(MediaItem item) {
  final people = item.raw?['People'] ?? item.raw?['Director'];
  if (people is List) {
    final result = <MediaRole>[];
    for (final person in people.whereType<Map>()) {
      if (item.raw?['People'] != null && '${person['Type']}'.toLowerCase() != 'director') continue;
      final name = person['Name'] ?? person['tag'];
      final id = person['Id'] ?? person['id'];
      if (name is! String || name.trim().isEmpty) continue;
      result.add(MediaRole(id: id?.toString(), tag: name, role: 'Director'));
    }
    if (result.isNotEmpty) return result;
  }
  return [for (final name in item.directors ?? const <String>[]) MediaRole(tag: name, role: 'Director')];
}
