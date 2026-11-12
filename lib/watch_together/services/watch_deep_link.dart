/// A `luroka://watch` deep link that joins a Watch Together room.
///
/// Format: `luroka://watch?code=<code>`
///
/// * `code` (required) is the room code, with or without the `K7M-Q2X` dash
/// and in any letter case; it is normalized before joining.
///
/// Carried in the share invite and the room QR code, so guests join with one
/// tap instead of typing the code.
class WatchTogetherDeepLink {
  const WatchTogetherDeepLink({required this.code});

  static const scheme = 'luroka';
  static const legacyScheme = 'plezy';
  static const host = 'watch';

  /// The room code as the relay writes it: 6 symbols, normalized.
  final String code;

  /// The link to share: `luroka://watch?code=K7MQ2X`.
  String uri() => '$scheme://$host?code=$code';

  /// Parses [link], returning null when it is not a well-formed watch link
  /// with a code.
  static WatchTogetherDeepLink? tryParse(String link) {
    final uri = Uri.tryParse(link);
    if (uri == null || !{scheme, legacyScheme, 'lumora'}.contains(uri.scheme) || uri.host != host) {
      return null;
    }
    final raw = uri.queryParameters['code']?.trim();
    if (raw == null || raw.isEmpty) return null;
    // Accept the dash and any letter case; require the relay's 6-symbol
    // alphabet by round-tripping through the SDK's formatter.
    final compact = raw.replaceAll('-', '').toUpperCase();
    if (compact.length != 6 || !RegExp(r'^[2-9A-HJKMNP-Z]{6}$').hasMatch(compact)) return null;
    return WatchTogetherDeepLink(code: compact);
  }
}
