part of '../../jellyfin_client.dart';

mixin _JellyfinOnlineSubtitleMethods on _JellyfinClientInternals {
  bool get supportsSubtitleUpload => dialect == MediaBrowserDialect.jellyfin;

  Future<void> uploadSubtitle(
    String itemId, {
    required String language,
    required String format,
    required List<int> bytes,
  }) async {
    if (!supportsSubtitleUpload) throw UnsupportedError('Subtitle upload is unavailable on this server');
    final code = LanguageCodes.getIso6392Code(language);
    final normalized = format.toLowerCase();
    if (code == null ||
        !const {'srt', 'ass', 'ssa', 'vtt'}.contains(normalized) ||
        bytes.isEmpty ||
        bytes.length > 5 * 1024 * 1024) {
      throw ArgumentError('Invalid subtitle file');
    }
    final response = await _http.post(
      '/Videos/${_segment(itemId)}/Subtitles',
      body: {
        'Language': code,
        'Format': normalized,
        'IsForced': false,
        'IsHearingImpaired': false,
        'Data': base64Encode(bytes),
      },
    );
    _requireSubtitleSuccess(response);
  }

  String? _subtitleMediaSourceId(String? mediaSourceId) {
    if (dialect != MediaBrowserDialect.emby) return null;
    if (mediaSourceId == null || mediaSourceId.trim().isEmpty) {
      throw ArgumentError.value(mediaSourceId, 'mediaSourceId', 'is required for Emby subtitle operations');
    }
    return mediaSourceId;
  }

  Future<List<OnlineSubtitleSearchResult>> searchOnlineSubtitles(
    String itemId, {
    required String language,
    String? mediaSourceId,
    String? title,
  }) async {
    final languageCode = LanguageCodes.getIso6392Code(language);
    if (languageCode == null) {
      throw ArgumentError.value(language, 'language', 'must be an ISO 639 language code');
    }
    final sourceId = _subtitleMediaSourceId(mediaSourceId);
    final response = await _http.get(
      '/Items/${_segment(itemId)}/RemoteSearch/Subtitles/${_segment(languageCode)}',
      queryParameters: {'MediaSourceId': ?sourceId},
    );
    _requireSubtitleSuccess(response);
    final data = response.data;
    if (data is! List) {
      throw const FormatException('Remote subtitle search response must be a JSON array');
    }
    return [for (var i = 0; i < data.length; i++) _parseRemoteSubtitle(data[i], i)];
  }

  OnlineSubtitleSearchResult _parseRemoteSubtitle(Object? value, int index) {
    if (value is! Map<String, dynamic>) {
      throw FormatException('Remote subtitle result $index must be a JSON object');
    }
    final id = value['Id']?.toString().trim();
    if (id == null || id.isEmpty) {
      throw FormatException('Remote subtitle result $index has no Id');
    }
    final name = value['Name']?.toString();
    return OnlineSubtitleSearchResult(
      id: id,
      codec: value['Format']?.toString(),
      languageCode: value['ThreeLetterISOLanguageName']?.toString(),
      score: flexibleDouble(value['CommunityRating']),
      providerTitle: value['ProviderName']?.toString(),
      title: name,
      displayTitle: name,
      hearingImpaired: flexibleBool(value['HearingImpaired'] ?? value['IsHearingImpaired']),
      perfectMatch: flexibleBool(value['IsHashMatch']),
      forced: flexibleBool(value['Forced'] ?? value['IsForced']),
    );
  }

  Future<bool> downloadOnlineSubtitle(
    String itemId, {
    required OnlineSubtitleSearchResult subtitle,
    String? mediaSourceId,
  }) async {
    final sourceId = _subtitleMediaSourceId(mediaSourceId);
    final response = await _http.post(
      '/Items/${_segment(itemId)}/RemoteSearch/Subtitles/${_segment(subtitle.id)}',
      queryParameters: {'MediaSourceId': ?sourceId},
    );
    _requireSubtitleSuccess(response);
    return true;
  }

  void _requireSubtitleSuccess(MediaServerResponse response) {
    if (response.statusCode >= 200 && response.statusCode < 300) return;
    throw MediaServerHttpException(
      type: MediaServerHttpErrorType.unknown,
      statusCode: response.statusCode,
      responseData: response.data,
      requestUri: response.requestUri,
      message: 'HTTP ${response.statusCode}',
    );
  }

  Future<MediaSourceInfo?> fetchFreshOnlineSubtitleSource(String itemId, {String? mediaSourceId}) async {
    final item = await fetchItem(itemId);
    final raw = item?.raw;
    if (raw is! Map<String, dynamic>) return null;
    final sources = raw['MediaSources'];
    if (sources is! List || sources.isEmpty) return null;
    Object? selected;
    if (mediaSourceId == null) {
      selected = sources.first;
    } else {
      selected = sources.cast<Object?>().firstWhere(
        (source) => source is Map && source['Id']?.toString() == mediaSourceId,
        orElse: () => null,
      );
    }
    if (selected is! Map<String, dynamic>) return null;
    return jellyfinMediaSourceToMediaSourceInfo(selected, chapters: raw['Chapters'], trickplay: raw['Trickplay']);
  }
}
