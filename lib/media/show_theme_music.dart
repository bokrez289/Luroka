/// A server-owned theme track. Headers are passed directly to the player and
/// never stored as part of the item's metadata.
typedef ShowThemeSource = ({String url, Map<String, String> headers});

abstract interface class ShowThemeMusicClient {
  Future<ShowThemeSource?> fetchShowTheme(String showId);
}
