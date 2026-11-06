/// Trakt integration configuration. The service remains disabled until the
/// Luroka registration is approved and the authentication flow is reviewed.
class TraktConstants {
  TraktConstants._();

  static const bool enabled = false;
  static const String clientId = 'KrqbHsqjd-Whvb9HHehjF8sJoY98LyHB8qi-_6btevc';
  // Do not embed client secrets in the application or its source repository.
  // A reviewed token-exchange design is required before enabling Trakt.
  static const String clientSecret = '';

  static const String apiBase = 'https://api.trakt.tv';
  static const String apiVersion = '2';

  // OAuth endpoints
  static const String deviceCodeUrl = '$apiBase/oauth/device/code';
  static const String deviceTokenUrl = '$apiBase/oauth/device/token';
  static const String tokenUrl = '$apiBase/oauth/token';
  static const String revokeUrl = '$apiBase/oauth/revoke';

  // Scopes — Trakt's OAuth doesn't use granular scopes; "public" is the only value
  static const String scope = 'public';

  /// Headers required on every Trakt API call.
  static Map<String, String> headers({String? accessToken}) {
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'trakt-api-version': apiVersion,
      'trakt-api-key': clientId,
      if (accessToken != null) 'Authorization': 'Bearer $accessToken',
    };
  }
}

/// Catalog list flavor for Trakt's discover/watchlist endpoints, named after
/// the URL path segment (`/movies/trending`, `/sync/watchlist/shows/..`).
enum TraktCatalogType { movies, shows }
