# iOS unsigned build: 2026-11-05

This is a development build and a preliminary artifact inventory, **not a
license clearance or a TestFlight release**. The application and native
dependency licenses and corresponding-source requirements still need review.

## Build evidence

- Build host: Scaleway Apple M4, macOS 27.2 (26B123), Xcode 27.0 (27A266a).
- Flutter 3.47.1 (framework `6655482ec0`, engine `5d53178869`), Dart 3.13.1,
  CocoaPods 1.17.0. Dependencies were resolved using `pubspec.lock` with
  `flutter pub get --enforce-lockfile --no-example`.
- Built with `flutter build ios --release --no-codesign --no-pub`; the output
  was `build/ios/iphoneos/Luroka.app`, bundle `com.bokrez.luroka`, version
  `1.0.1` build `7`, minimum iOS 15.5. It is unsigned and cannot be installed
  or uploaded as-is.
- Main executable SHA-256:
  `d52b2255250e6e1aec99a32eac0fdacdf17dff462ebf0e14f727a365fa6964be`.
  This is the **executable**, not a hash of the entire `.app` bundle.
- `pubspec.yaml` SHA-256 `6ea8f0f71ad2924b36f1dad8a92db5409541c38ffe49754a01941fb541d83b21`;
  `pubspec.lock` SHA-256 `b1bd7d2b7830a6bbc969a6b33f379c9c1fe7af4fb6aad9b6dd2b2d8fade08397`;
  resulting `ios/Podfile.lock` SHA-256 `106dd8a2c9f4b8296d9e23db6a03805220277c9b3e15cf6fbb432681b6214492`;
  Xcode project `Package.resolved` SHA-256
  `e7309ce1583969d98ced159325d99ac77a11f09ff31f0c6cea6d7340c9ae4e3b`.
- Source was transferred from the uncommitted local working tree. Those file
  hashes do **not** establish a complete corresponding-source snapshot.
  A private copy of the Mac work tree's non-generated source was later saved
  at `build/ios-evidence/source-20261105/`, excluding build outputs, generated
  configuration, caches, credentials and provisioning files. It is not a full
  corresponding-source package; identify and preserve the native build inputs,
  generated sources and scripts before distributing a binary.
- Xcode subsequently reported version 27.2 (27B52). A later signed archive
  attempt using that version did not succeed: Apple returned `PLA Update
  available` and would not issue a provisioning profile until the account
  holder accepted the updated program agreement. After acceptance, a further
  attempt in an unlocked SSH keychain session reported an existing Apple
  Development certificate without its private key and no provisioning profile.
  After the account holder created an additional Apple Development identity,
  the missing Apple WWDR G3 intermediate was installed and the identity became
  valid. Following a stuck parallel signing attempt and a host reboot, a
  single-job archive succeeded with Xcode 27.2. No certificate was revoked and
  no archive was uploaded.

## Signed development archive

`Luroka-retry.xcarchive` succeeded with `xcodebuild ... -jobs 1 archive` on
2026-11-05. `codesign --verify --deep --strict` passed. Its app is signed with
Apple Development and uses the iOS Team Provisioning Profile with
`get-task-allow=true` and one registered device. It is **not an App Store /
TestFlight distribution archive**. A copy is retained at
`build/ios-evidence/Luroka-retry.xcarchive/`, along with the source copy.

## Frameworks observed in the unsigned app

`App`, `Flutter`, `Libass`, `Libavcodec`, `Libavdevice`, `Libavfilter`,
`Libavformat`, `Libavutil`, `Libbluray`, `Libcrypto`, `Libdav1d`, `Libdovi`,
`Libfreetype`, `Libfribidi`, `Libharfbuzz`, `Libmpv`, `Libplacebo`,
`Libshaderc_combined`, `Libssl`, `Libswresample`, `Libswscale`, `Libuavs3d`,
`Libuchardet`, `Libunibreak`, `Sentry`, `lcms2`, `objective_c`, `sqlite3`,
and `universal_gamepad`.

These names are only a starting inventory. Identify exact versions, source,
patches, static and transitive dependencies, notices, and applicable license
terms against a final signed archive before TestFlight distribution. Verify
Apple distribution compatibility separately.
