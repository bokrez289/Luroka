import 'media_source_info.dart';

/// Upload a text subtitle to a server-backed item. Server permissions and
/// write access determine whether the subtitle can be shared across devices.
abstract interface class SubtitleUploadTransport {
  bool get supportsSubtitleUpload;
  Future<void> uploadSubtitle(
    String itemId, {
    required String language,
    required String format,
    required List<int> bytes,
  });
}

/// Backend-neutral subtitle result returned by a media server's online
/// subtitle provider integration.
class OnlineSubtitleSearchResult {
  final String id;
  final String? codec;
  final String? language;
  final String? languageCode;
  final double? score;
  final String? providerTitle;
  final String? title;
  final String? displayTitle;
  final bool hearingImpaired;
  final bool perfectMatch;
  final bool downloaded;
  final bool forced;

  const OnlineSubtitleSearchResult({
    required this.id,
    this.codec,
    this.language,
    this.languageCode,
    this.score,
    this.providerTitle,
    this.title,
    this.displayTitle,
    this.hearingImpaired = false,
    this.perfectMatch = false,
    this.downloaded = false,
    this.forced = false,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OnlineSubtitleSearchResult &&
          id == other.id &&
          codec == other.codec &&
          language == other.language &&
          languageCode == other.languageCode &&
          score == other.score &&
          providerTitle == other.providerTitle &&
          title == other.title &&
          displayTitle == other.displayTitle &&
          hearingImpaired == other.hearingImpaired &&
          perfectMatch == other.perfectMatch &&
          downloaded == other.downloaded &&
          forced == other.forced;

  @override
  int get hashCode => Object.hash(
    id,
    codec,
    language,
    languageCode,
    score,
    providerTitle,
    title,
    displayTitle,
    hearingImpaired,
    perfectMatch,
    downloaded,
    forced,
  );
}

/// Server transport used by future backend-neutral subtitle search UI.
abstract interface class OnlineSubtitleTransport {
  Future<List<OnlineSubtitleSearchResult>> searchOnlineSubtitles(
    String itemId, {
    required String language,
    String? mediaSourceId,
    String? title,
  });

  Future<bool> downloadOnlineSubtitle(
    String itemId, {
    required OnlineSubtitleSearchResult subtitle,
    String? mediaSourceId,
  });

  /// Fetch current item metadata from the server and return the requested
  /// source, including any subtitle stream added by a completed download.
  Future<MediaSourceInfo?> fetchFreshOnlineSubtitleSource(String itemId, {String? mediaSourceId});
}
