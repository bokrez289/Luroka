import '../i18n/strings.g.dart';
import '../media/media_item.dart';

/// displayTitle intentionally resolves containers to the series name. Season
/// navigation must use the season's own title, with a localized number fallback.
String seasonLabel(MediaItem season) {
  final title = season.title?.trim();
  if (title != null && title.isNotEmpty && title != season.parentTitle && title != season.grandparentTitle) {
    return title;
  }
  return t.common.seasonNumber(number: season.index ?? '');
}
