/// App identity and links shared across the interface.
abstract final class AppIdentity {
  static const name = 'Luroka';
  static const logoAsset = 'assets/luroka.png';
  static const markAsset = 'assets/luroka-mark.svg';
  static const sourceUrl = 'https://github.com/bokrez289/Luroka';
  static const androidUpdateFeedUrl = '';
  static const privacyUrl = 'https://luroka.app/privacy.html';
  static const licenseUrl = 'https://www.gnu.org/licenses/gpl-3.0.html';

  static String get issuesUrl => '$sourceUrl/issues';
  static String get documentationUrl => '$sourceUrl#readme';
}
