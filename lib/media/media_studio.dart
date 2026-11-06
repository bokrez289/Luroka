import 'library_query.dart';
import 'media_kind.dart';
import '../utils/media_server_http_client.dart';

/// Studio identifiers are scoped to one library/backend; names are display only.
class MediaStudio {
  const MediaStudio({required this.id, required this.name, this.imagePath});
  final String id;
  final String name;
  final String? imagePath;
}

abstract interface class StudioBrowserClient {
  Future<LibraryPage<MediaStudio>> fetchStudios(
    String libraryId, {
    required MediaKind kind,
    int offset = 0,
    int limit = 100,
    AbortController? abort,
  });
}
