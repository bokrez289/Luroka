# Experimental tvOS build evidence — 2026-11-05

The Apple TV build remains experimental and has not been run on a physical
Apple TV. Apple validation is not a distribution license review.

## Prototype and validation

The initial prototype was exported locally as an App Store-signed IPA, version
1.0.2 (8), SHA-256
`c8bf0f8c6da8bac0182d627e8bd95f6a30c9da4c732167bcadd3754d1528ed6e`.
Although its provisioning profiles allowed the app group, subsequent inspection
found that the prototype's signed app and extension lacked that entitlement;
do not use that prototype to test Top Shelf.
The Xcode validation log reports that account credentials expired and
**validation was skipped**. Its final `EXPORT SUCCEEDED` message does not
establish successful App Store Connect validation. That prototype was not uploaded.
Xcode also reported missing dSYMs for the Flutter, native, and media framework
shells.

## Repository build experiment

`tvos/scripts/xcode_appletv.sh` now generates the Apple asset manifest in a
separate build directory, checks the exact native-asset mapping, and compiles
and embeds tvOS device frameworks using `prepare_native_assets.py`. The helper
pins the package versions, the SQLite source archive digest, and its compile
flags. Any additional or changed asset mapping requires review. It still uses
the Flutter iOS-arm64 asset ID mapping, because the Flutter tool does not
directly support tvOS native-asset hooks; runtime behavior must be tested.

In an isolated Mac workspace with a new Xcode derived-data directory, the
unsigned Release archive built after the locked Dart packages and CocoaPods
were installed. The archive contains Runner, App, Flutter, objective_c, and
sqlite3 binaries marked for tvOS; it includes the Top Shelf extension and the
expected native-asset manifest. Both generated native frameworks exported all
symbols exported by their corresponding iOS hook outputs. The tvOS mpv and Top
Shelf wiring tests passed (6 tests / 138 assertions and 1 test / 34 assertions).
A subsequent archive verified the manifest check runs in the build path.

The first clean build failed because the SQLite hook downloaded an iOS input
whose SHA-256 did not match the package's pinned digest. A previously cached
input with the exact expected SHA-256 was copied into the isolated workspace;
the hook accepted it and the build succeeded. This input is used to generate
the asset mapping, not as the bundled tvOS SQLite framework. A genuinely
cache-independent build remains unresolved; do not bypass the checksum check.
The tvOS Objective-C link uses `-undefined dynamic_lookup`, which Xcode warns is
deprecated on tvOS, and SQLite warns that `gethostuuid()` is disabled.

## Evidence and remaining work

`build/tvos-evidence-20261105/` holds copies of both workspaces, archives,
the prototype IPA, dependency sources, source archive, commands, and logs.
This ignored local build directory is not an independent backup and may contain
Apple provisioning profiles; preserve it securely outside the temporary Mac and
workspace before cleanup.

Still needed: solve the fresh SQLite hook download, test launch, SQLite, media
playback, navigation and Top Shelf on a real Apple TV, verify signing and App
Store Connect platform/version requirements, resolve missing symbol files, and
complete media dependency source/provenance and distribution-license review.
Development signing previously failed because the team had no registered tvOS
device. No success is implied for iOS build 8 processing or device testing.

## Simulator smoke test

The tvOS 27.2 simulator runtime was installed on the Mac and the 1080p Apple TV
simulator booted. The standard debug build initially failed because
`flutter build bundle` defaulted to Android. An isolated, remote-only prototype
instead generated iOS simulator assets and built tvOS simulator native
frameworks. It built, installed, and launched; the first frame and database
startup completed, and the welcome/sign-in screen appeared. This is a debug
simulator build, not the device IPA. Simulator scripts, build log, app, and a
welcome-screen screenshot are preserved in the local evidence directory.

The user later signed in with Plex and reported the simulator app works well.
The unsigned simulator app was denied access to the
app group, so it cannot establish that Top Shelf works. The remote simulator
workaround is experimental and is not integrated into the repository scripts.

## tvOS 1.0.2 (10) upload

A new release snapshot, including the simulator fixes, was saved in
`build/tvos-evidence-20261105/source-release10/` and built on the Mac in a
separate workspace with a fresh derived-data directory. The snapshot overrides
the pubspec build number to 10; the working-tree pubspec remains unchanged.
The locked SQLite hook input was seeded from the existing cache and checked
against its pinned SHA-256 before the build. The first export lacked the app
group because the archive was built with signing disabled; it was not uploaded.

To prepare the validated archive, a copy of the unsigned archive was changed
as follows:

1. The 23 `com.mpvkit.*` framework shells were ad-hoc signed with their actual
   bundle identifiers before export. Without this, the final distribution
   signature retained a mismatched designated requirement inherited from the
   linker signature, and Apple rejected the frameworks.
2. The extension and main app were ad-hoc signed with their respective app-group
   entitlement files, so Xcode's App Store export retained the entitlement.
3. Xcode produced an iOS-style dictionary for `CFBundleAlternateIcons` in the
   tvOS app. In a further archive copy it was converted to the corresponding
   list of 23 icon names, and the main app was re-signed ad hoc. The App Store
   export then signed the app and extension with the distribution identity.

Apple validation succeeded for that modified archive. The final local export
verified with `codesign --verify --deep --strict`; app and extension both had
`group.com.bokrez.luroka`, team A69DRJHAW7, and `get-task-allow=false`. The
exported IPA SHA-256 is
`959b6b99784ae0ad5f73eb25752ad5ddabc89e33b566185d8b6e12939688b5d8`.
Xcode reported that the upload succeeded and Apple started processing. Final
processing, TestFlight availability, and operation on a physical Apple TV have
not been independently verified. Xcode reported missing framework dSYMs.

The release archive, local IPA, source snapshot, link maps, logs, and scripts
are in the ignored evidence directory. The post-archive fixes above are not
yet integrated into a reproducible project build path; preserve the evidence and
resolve that before rebuilding. App Store validation does not resolve the
native dependency source/provenance and distribution-license review.
