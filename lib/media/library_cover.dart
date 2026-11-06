import 'media_backend.dart';

/// A stable artwork recipe; image bytes stay in the app's normal image cache.
class LibraryCoverImage {
  const LibraryCoverImage({required this.path, required this.poster, double? aspectRatio})
    : aspectRatio = aspectRatio ?? (poster ? 2 / 3 : 1.6);
  final String path;
  final bool poster;
  final double aspectRatio;

  Map<String, Object?> toJson() => {'path': path, 'poster': poster, 'aspectRatio': aspectRatio};

  static LibraryCoverImage? fromJson(Object? json) {
    if (json is! Map || json['path'] is! String || (json['path'] as String).isEmpty || json['poster'] is! bool) {
      return null;
    }
    final ratio = json['aspectRatio'];
    if (ratio != null && (ratio is! num || !ratio.isFinite || ratio <= 0 || ratio > 5)) return null;
    return LibraryCoverImage(
      path: json['path'] as String,
      poster: json['poster'] as bool,
      aspectRatio: ratio is num ? ratio.toDouble() : null,
    );
  }
}

class LibraryCoverRecipe {
  const LibraryCoverRecipe({required this.createdAt, required this.images});
  final DateTime createdAt;
  final List<LibraryCoverImage> images;

  bool freshAt(DateTime now) {
    final age = now.difference(createdAt);
    return !age.isNegative && age < (images.isEmpty ? const Duration(minutes: 30) : const Duration(days: 7));
  }

  Map<String, Object?> toJson() => {
    'createdAt': createdAt.millisecondsSinceEpoch,
    'images': images.map((image) => image.toJson()).toList(),
  };

  static LibraryCoverRecipe? fromJson(Object? json) {
    if (json is! Map || json['createdAt'] is! int || json['images'] is! List) return null;
    final raw = json['images'] as List;
    if (raw.length > 4) return null;
    final images = raw.map(LibraryCoverImage.fromJson).whereType<LibraryCoverImage>().toList();
    if (images.length != raw.length) return null;
    return LibraryCoverRecipe(createdAt: DateTime.fromMillisecondsSinceEpoch(json['createdAt'] as int), images: images);
  }
}

/// Keep persisted recipes endpoint-independent and free of authentication
/// query parameters. The live client adds its current endpoint and credentials.
String? libraryCoverImagePath(String? path, MediaBackend backend) {
  if (path == null || path.isEmpty) return null;
  final uri = Uri.tryParse(path);
  if (uri == null) return null;
  final params = Map<String, String>.from(uri.queryParameters)
    ..removeWhere((key, _) => {'api_key', 'x-plex-token', 'token', 'access_token'}.contains(key.toLowerCase()));
  var relative = uri.path;
  if (uri.hasScheme) {
    final marker = backend == MediaBackend.plex ? '/library/' : '/items/';
    final start = uri.path.toLowerCase().indexOf(marker);
    if (start < 0) {
      if (uri.userInfo.isNotEmpty || params.length != uri.queryParameters.length) return null;
      return path;
    }
    relative = uri.path.substring(start);
  }
  return Uri(path: relative, queryParameters: params.isEmpty ? null : params).toString();
}
