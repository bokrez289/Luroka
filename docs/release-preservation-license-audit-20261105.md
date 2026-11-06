# Preservation and release-artifact audit — 2026-11-05

Status: **partial technical evidence, not a completed corresponding-source offer
or legal clearance**. License and source obligations apply to existing test
distributions as well as future production releases.

## Private preservation copy

An access-controlled preservation copy contains selected build workspaces,
dependency inputs, release evidence, and the signed build 9 and build 10 link
maps. Checksum comparisons completed without content changes for the copied
trees. Public-key certificate fingerprints were compared without exposing
passwords or private key bytes.

The exported Android signing certificate's SHA-256 is
`16e05958247449a2f27c2f9c50258696292b7e20964d518134e83c1ad141c086`,
matching the three inspected Luroka APK signatures. Local Apple development
private keys were not exported; the App Store distribution certificate used for
these exports is cloud managed. The preservation copy may contain sensitive
build metadata and is not part of this repository.

## Artifact identity and scope

| Artifact | Inspected file and SHA-256 | Source evidence and limitations |
| --- | --- | --- |
| Android universal `1.0.2` / `2008` | `build/custom-android/luroka-tcl-75c6k-universal.apk`: `163377948f62355345c3bb59b03ba728850a9e213e71c8232b0626518cc6a5b1` | Exact build-time Luroka snapshot and complete Gradle/NDK dependency resolution have not been established. The path once held build 2007 and earlier 2006; don't treat them as this artifact. |
| Android arm64 phone `1.0.0` / `2004` | `luroka-arm64-phone.apk`: `0583a3d94e7809263549e49824717c90a976e13624bd0e93271c277da564156c` | The existing `SHA256SUMS` phone entry does not match the current file. Exact build-time source is not established. |
| Android arm32 `1.0.0` / `1002` | `luroka-arm32-firestick.apk`: `c8c85201e44a48c72c1e6dd410816a09d46da44138cc0545e1ae6387a1b274bc` | Existing checksum matches; exact build-time source is not established. |
| iOS `1.0.2` / `9` | Separate local distribution export: `b561ebbe6b5197f99dde792f662ffe3e4d1796cd2748e55ae62c8b65eee5036b` | Snapshot `source-current-20261105-build9`, lockfiles and build 9 link map preserved. Upload was separately exported/re-signed; this hash is not asserted to identify the uploaded bytes. |
| tvOS `1.0.2` / `10` | Separate local distribution export: `959b6b99784ae0ad5f73eb25752ad5ddabc89e33b566185d8b6e12939688b5d8` | Snapshot `source-release10`, lockfiles, post-archive correction description and link map preserved. Upload was separately exported/re-signed; this hash is not asserted to identify the uploaded bytes. |

The actual recipients and installed artifacts should be confirmed. Earlier
builds 2006/2007 and Apple builds 7/8 are documented separately; older binaries
or their exact source snapshots may be missing. Do not infer byte-for-byte or
corresponding-source equivalence from names, versions or current source alone.
For each Apple IPA, 91 bundled assets that exist at corresponding paths in its
preserved snapshot were byte-compared with zero mismatches. Flutter's two
generated shader outputs have no same-path project-source counterpart. This is
useful partial evidence, not proof of Dart/AOT executable correspondence.

## Android 2008 findings

The universal APK contains 21 shared-object names for each ARM ABI and Flutter
`NOTICES.Z`, root license, and bundled notice assets. It contains Cronet,
Sentry, SQLite, Dart JNI, libass/libdovi/Media3 bridges, and the mpv/FFmpeg
stack. Its `META-INF` includes Sentry third-party notices, `DEPENDENCIES`,
several AndroidX license files and jsoup's license. Their presence does not
establish complete transitive notices or in-app presentation.

All 20 applicable `libmpv`, `libplayer`, `libav*`, `libsw*`, and
`libc++_shared` files across the two ABIs byte-match the preserved
`mpv-android-5e70f9120a14.aar` (SHA-256
`cc1d41945496eb1f93abba7955a766c134c748b804ea67225ac24802db612b8b`).
That AAR's corresponding full build inputs and transitive dependencies are
not proven by the binary match. The preserved libass archive matches the
current pinned digest, but linkage to this particular APK is not proven.
Current extracted libdovi static archives were also preserved without claiming
they are the inputs used for APK 2008.

The APK's arm64 FFmpeg configuration string includes `--enable-openssl`,
`--enable-libdav1d`, `--enable-libdovi`, `--enable-shared`, `--enable-gpl`,
and `--enable-version3`. The LGPL-only checklist at
<https://ffmpeg.org/legal.html> is not sufficient for this GPL-enabled build.
Audit exact FFmpeg patches, IJG-derived file use/change status, libplacebo,
OpenSSL, Cronet third-party notices, Rust crates, Media3/Gradle dependencies,
and any source, relinking and installation-information obligations applicable
to the shipped combination.

## Apple build 9 and build 10 findings

The local iOS IPA contains 29 framework bundles; tvOS contains 30. Exact build
link maps show static objects from `Libmpv`, FFmpeg (`Libav*`, `Libsw*`),
OpenSSL (`Libcrypto`, `Libssl`), libass, libbluray, dav1d, libdovi, FreeType,
FriBidi, HarfBuzz, libplacebo, shaderc, uavs3d, uchardet, libunibreak and lcms2.
The iOS map also includes Sentry objects. Both maps include FFmpeg's
`jfdctfst.o`, `jfdctint.o`, and `jrevdct.o`; source/change provenance remains
to be established. Shell framework names do not imply these static objects
are dynamically relinkable.

The signed iOS build's eight SwiftPM checkouts matched `Package.resolved`
revisions on the Mac, had clean Git working trees when inspected, and were
preserved. The tvOS build's mpv-build checkout was also clean. This verifies
checkout state, not the source provenance of downloaded binary artifacts.
Selected MIT notices for DKCamera,
DKImagePickerController, DKPhotoGallery, SDWebImage, Sentry Cocoa, SwiftyGif
and TOCropViewController are now registered in source for a future build via
`generate_ios_spm_notices.py`. Those seven texts match pinned source and the
preserved checkouts; they were **not** in already-uploaded builds. This is not
a complete audit of nested notices or other plugins.
The iOS build 9 local export's Flutter-generated `NOTICES.Z` was decompressed
and searched: it contained no literal package-name matches for DKCamera,
DKImagePickerController, DKPhotoGallery, SDWebImage, SwiftyGif,
TOCropViewController, `sentry-cocoa` or `Sentry Cocoa`. This is evidence that
they are not separately indexed by those names; it does not prove their license
text cannot appear under a different name. The new source-level notice bundle
must be built and its on-device registry checked before relying on it.

The media notice bundle is partial. Actual prebuilt provenance for all Apple
transitive libraries, build-generated changes and the tvOS Flutter engine source
remain unresolved. The two Apple build snapshots omit some repository/build
inputs and have not been proven to reproduce the uploaded executables. Preserve
the exact post-archive operations and validate complete corresponding source,
notices, any installation/relinking materials and Apple distribution-term
compatibility with appropriate qualified advice.

**Startup registration correction:** the preserved iOS build 9 and tvOS build
10 source snapshots contain `app_license_registry.dart`, but their `main.dart`
does not call `registerAppLicenseAssets()`. Therefore the presence of the
bundled Android/Apple supplemental notice assets does not establish that those
notices were accessible through the app's license screen. The current working
source was corrected to register them through `registerAppLicenses()`; this
requires a new build and verification on each platform. It does not change the
already-distributed builds or complete the underlying notices audit.

The tvOS engine `.installed` stamp and repository pin identify release archive
SHA-256 `1cc6e4f1441ea2288512036f46589057eb54228732a27baf2e1419354d173c7c`;
GitHub's release metadata reports the same digest. The extracted engine was
preserved and checksum-compared with the Mac, but the original downloaded
archive was not retained in this preservation run. The `v3.47.1` Git tag
points to `2f3e6cbba5475a287424e01c777441fb1d601f2d`, which predates the
repository's 3.47.1 patch series. The complete upstream Git repository was
preserved with checkout `7308c0617dbef63722b8b2421c4b09d2f94b8d41`, the
3.47.1 rebase commit that existed at release-publication time. Its `sdk.lock`
records Flutter `6655482ec06e547f90abf8ae7590466f4415978d`, Dart
`852b3e3608906afbe6102573cfd4407aeedd1b78`, Skia
`8df24be66531469e576a806749a0202ae26b8d08` and Perfetto
`13ce0c9e13b0940d2476cd0cff2301708a9a2e2b`. This is a plausible source
candidate, **not proof** that these exact sources and patches produced the
release binary. Independently establish the build recipe and preserve the
remaining pinned engine dependencies before claiming correspondence.

## Verification completed

- Verified the 13 existing upstream source snapshot SHA-256 entries.
- Verified the 18 pinned Apple media notice texts, four Android native notice
  texts, 15 libass archive notices, and seven iOS Swift package license texts.
- The in-app license registry test passes after the new source notice bundle.
- A complete Android Java/native transitive inventory, provenance review, and
  functional on-device notice-screen audit are **still required**. No source
  offer has been published or provided to binary recipients by these steps.
