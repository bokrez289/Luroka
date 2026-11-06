import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/online_subtitle_transport.dart';

void main() {
  test('online subtitle result has value equality across all transport fields', () {
    const first = OnlineSubtitleSearchResult(
      id: 'subtitle-1',
      codec: 'srt',
      language: 'English',
      languageCode: 'eng',
      score: 4.5,
      providerTitle: 'Open Subtitles',
      title: 'Release',
      displayTitle: 'Release (SRT)',
      hearingImpaired: true,
      perfectMatch: true,
      downloaded: true,
      forced: true,
    );
    const same = OnlineSubtitleSearchResult(
      id: 'subtitle-1',
      codec: 'srt',
      language: 'English',
      languageCode: 'eng',
      score: 4.5,
      providerTitle: 'Open Subtitles',
      title: 'Release',
      displayTitle: 'Release (SRT)',
      hearingImpaired: true,
      perfectMatch: true,
      downloaded: true,
      forced: true,
    );

    expect(first, same);
    expect(first.hashCode, same.hashCode);
    expect(const OnlineSubtitleSearchResult(id: 'subtitle-1'), isNot(first));
  });
}
