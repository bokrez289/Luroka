# Mobile and TV build inputs

This records selected pinned build inputs used by the current Android and Apple
projects. It is not a complete dependency inventory or proof of complete
corresponding source. See `dependency-notice-audit-20261106.md` and
`license-source-review-20261106.md` for remaining provenance and notice work.

## Native packages and engine

| Input | Source and pin | Verification in this project |
| --- | --- | --- |
| Android mpv AAR | `https://github.com/edde746/mpv-build`, asset `mpv-android-5e70f9120a14.aar`; builder checkout revision `582f6d6e748a87a1536bf5cdad0af97b75725ffb` | SHA-256 `cc1d41945496eb1f93abba7955a766c134c748b804ea67225ac24802db612b8b` in `mpv-build.lock.json` and Gradle verification metadata |
| Android libass | `https://github.com/edde746/libass`, release `0.18.3` archive `libass-android-0.18.3.zip` | SHA-256 `fc98637752695d7cf9e26b02befaa634dd4cad25a2f38fba80de814bfd310a17` in `android/libass/src/main/cpp/CMakeLists.txt` |
| Android libdovi | `https://github.com/edde746/libdovi-builds`, release `v2.3.1` | Per-architecture archive digests in `android/app/build.gradle.kts` |
| FFmpeg headers | `https://ffmpeg.org/releases/ffmpeg-8.0.1.tar.xz` | SHA-256 `05ee0b03119b45c0bdb4df654b96802e909e0a752f72e4fe3794f487229e5a41`; optional local path through `LUROKA_FFMPEG_SOURCE_ARCHIVE` is checked against the same digest |
| Apple mpv package | `https://github.com/edde746/mpv-build`, revision `582f6d6e748a87a1536bf5cdad0af97b75725ffb` | Resolved in the iOS and tvOS SwiftPM lock files; native transitive build provenance remains under review |
| tvOS Flutter engine | `https://github.com/edde746/flutter-plezy`, release `v3.47.1` | SHA-256 `1cc6e4f1441ea2288512036f46589057eb54228732a27baf2e1419354d173c7c` in `tvos/engine.sha256` |

## Dart Git dependencies

The complete resolved graph and checksums are in `pubspec.lock`:

| Dependency | Repository | Resolved revision |
| --- | --- | --- |
| background_downloader | `https://github.com/edde746/background_downloader` | `7c341be73df8a6a5ddccb06124807ac250a32bc1` |
| os_media_controls | `https://github.com/edde746/media_controls` | `a27208e641790029ac54d825b97508575caee1a7` |
| auto_updater and platform packages | `https://github.com/edde746/auto_updater` | `9e150f71e17495b7361aedbe6df22e89ad52c254` |
| connectivity_plus | `https://github.com/fluttercommunity/plus_plugins` | `bf04cdf66598dc3fca274b8b1db2b92b0bf6b73e` |

Before changing a dependency URL, verify the replacement serves the same
revision or archive digest and retain the notices and corresponding-source
materials. A matching binary digest identifies the downloaded artifact; it does
not on its own prove which source, build flags or transitive inputs produced it.
