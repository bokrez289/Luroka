import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/media/media_extra.dart';
import 'package:luroka/media/media_item.dart';
import 'package:luroka/media/media_kind.dart';
import 'package:luroka/media/media_browser_dialect.dart';

void main() {
  test('maps Plex extra subtypes into presentation categories', () {
    MediaItem extra(String subtype) => MediaItem.plex(id: subtype, kind: MediaKind.clip, subtype: subtype);

    expect(mediaExtraCategory(extra('trailer')), MediaExtraCategory.trailers);
    expect(mediaExtraCategory(extra('featurette')), MediaExtraCategory.featurettes);
    expect(mediaExtraCategory(extra('interview')), MediaExtraCategory.interviews);
    expect(mediaExtraCategory(extra('deletedScene')), MediaExtraCategory.deletedScenes);
    expect(mediaExtraCategory(extra('behindTheScenes')), MediaExtraCategory.behindTheScenes);
    expect(mediaExtraCategory(extra('scene')), MediaExtraCategory.scenesAndClips);
    expect(mediaExtraCategory(extra('short')), MediaExtraCategory.other);
  });

  test('maps Jellyfin and Emby ExtraType without consulting titles', () {
    MediaItem extra(MediaBrowserDialect dialect, String id, String? extraType, {String? type}) => MediaItem.jellyfin(
      dialect: dialect,
      id: id,
      kind: MediaKind.clip,
      title: 'Trailer words do not determine the category',
      raw: {'ExtraType': ?extraType, 'Type': ?type},
    );

    expect(
      mediaExtraCategory(extra(MediaBrowserDialect.jellyfin, 'jf', 'DeletedScene')),
      MediaExtraCategory.deletedScenes,
    );
    expect(
      mediaExtraCategory(extra(MediaBrowserDialect.emby, 'emby', 'BehindTheScenes')),
      MediaExtraCategory.behindTheScenes,
    );
    expect(
      mediaExtraCategory(extra(MediaBrowserDialect.jellyfin, 'typed', null, type: 'Trailer')),
      MediaExtraCategory.trailers,
    );
    expect(
      mediaExtraCategory(extra(MediaBrowserDialect.jellyfin, 'unknown', null, type: 'Video')),
      MediaExtraCategory.other,
    );
  });

  test('grouping preserves server order within each category', () {
    const first = MediaItem.plex(id: 'first', kind: MediaKind.clip, subtype: 'interview');
    const trailer = MediaItem.plex(id: 'trailer', kind: MediaKind.clip, subtype: 'trailer');
    const second = MediaItem.plex(id: 'second', kind: MediaKind.clip, subtype: 'interview');

    final groups = categorizeMediaExtras([first, trailer, second]);

    expect(groups[MediaExtraCategory.interviews]!.map((item) => item.id), ['first', 'second']);
    expect(groups[MediaExtraCategory.trailers]!.single.id, 'trailer');
  });
}
