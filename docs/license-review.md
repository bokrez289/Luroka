# License review for mobile and TV

Status: **incomplete release audit**, not a legal determination. Recheck the
exact dependencies and notices for every Android, iOS, and tvOS release.
See [license-source-review-20261106.md](license-source-review-20261106.md)
for the current 1.0.3 artifact findings and platform-terms review; the 2026-11-05
status section below is historical.
See [release-preservation-license-audit-20261105.md](release-preservation-license-audit-20261105.md)
for the latest preservation record and the actual Android 2008 / Apple build 9
and 10 evidence. Older artifact paths and release-status statements below are
historical and can be superseded by that record.
See [android-build-2006-license-inventory.md](android-build-2006-license-inventory.md)
for the inspected Android APK and concrete source evidence.

## Status check: 2026-11-05

- The private `bokrez289/Luroka` GitHub repository has no default branch yet.
  A private source-only push and a binary release are different decisions:
  inspect the exact contents and preserve applicable notices for either, and
  separately satisfy distribution obligations for every binary recipient.
- The root license includes GPLv3, the upstream project attribution, and a
  modification notice. Plezy's upstream README and GitHub license metadata say
  GPL-3.0; neither inspected statement establishes an "or later" grant for the
  entire combined project. The Luroka README, root notice, and website now say
  GPLv3 without asserting that additional permission. Verify the precise grant
  and individual third-party licenses before making a more specific claim.
- The file currently at `build/custom-android/luroka-tcl-75c6k-universal.apk`
  is build **2007**, not the 2006 APK previously inspected. Its SHA-256 is
  `b97409ccc8dfb433aa0054f2e394c8f583919e87cf71ec1dfa70a74572072fd4`;
  `aapt` reports `com.bokrez.luroka`, version `1.0.1` / code `2007`.
  Its APK contains the listed added license assets and Flutter's `NOTICES.Z`,
  plus 21 native `.so` files per ARM ABI. This presence check does not verify
  the contents, runtime registration, full dependency graph, or corresponding
  source for that binary. Build 2007 needs its own artifact-specific audit.
- The checked-in local `origin` points to `bokrez289/plezy`, not the intended
  `bokrez289/Luroka`; explicitly verify the destination before any future push.
  `.github/FUNDING.yml` still points to the upstream author's funding accounts
  and needs an owner decision before enabling that repository feature.

## Implemented in the app

- The Licenses screen reads Flutter's `LicenseRegistry`, including Flutter's
  generated Dart/Flutter package notices. In current source, Plezy is an
  alphabetical entry sharing the project license and upstream attribution.
  The current source calls the supplemental registry at startup; the preserved
  iOS build 9 and tvOS build 10 snapshots did not call it, so their supplemental
  native notices should not be assumed accessible from the license screen.
- The app registers its bundled `LICENSE`, including the GPL text and Plezy
  attribution, plus explicit notices for Inter, Go Noto fonts, Anime4K,
  ArtCNN, NVIDIA Image Scaling, and NewPipeExtractor. SpatialAudioBridge's
  bundled notices are registered on iOS/tvOS.
- Additional Android notices were added after build 2006 for mpv Android's JNI
  glue, libass and the notices in its pinned combined archive, libdovi, dav1d,
  Lua, Chromium's top-level license, and pinned mpv/FFmpeg/libplacebo/OpenSSL
  license documents. The full native and Gradle dependency audit remains open.
- ArtCNN's MIT notice matches the headers in the bundled shaders. The Go Noto
  copyright and SIL OFL 1.1 reference are taken from the bundled font metadata;
  the Hangul subset is generated from the related Go Noto release.
- These additions are source changes and must be rebuilt to appear in an app.

## Release work still required

1. Inventory the actual Android APK/AAB, including Gradle-transitive libraries,
   AndroidX Media3, bundled libass, the mpv Android AAR and every static or
   dynamic library in it (including FFmpeg and its enabled dependencies). The
   inspected mpv AAR does not itself contain a license/notice inventory. Do not
   assume Flutter's package notices include those native components.
2. Independently inventory each iOS and tvOS archive, including CocoaPods,
    frameworks, the pinned mpv-build configuration and its static dependencies.
    Compare against every applicable copyright, license and notice requirement.
    A first unsigned iOS framework inventory is recorded in
    [ios-unsigned-build-20261105.md](ios-unsigned-build-20261105.md); it is not
    an audit of a signed archive or a license clearance.
    See [ios-media-license-evidence-20261105.md](ios-media-license-evidence-20261105.md)
    for the preserved Apple media inputs, actual FFmpeg build flags, and
    remaining distribution blockers.
3. Verify the exact Go Noto source release and its component notices; embedded
   font metadata alone is not proof that the entire combined font's notices are
   complete. Check all other bundled fonts, icons, images and shaders too.
4. Provide complete corresponding source, build scripts, modifications,
   notices and any other required material for the exact released binaries.
   Confirm that pinned external source and patches remain accessible to users.
5. Review Apple distribution terms and the precise licenses of bundled native
   components before any App Store or TestFlight distribution.
6. Inspect the actual release artifact and test the Licenses screen with a
   remote and touch input, including long notices and scrolling.

The existing build 2006 predates the Luroka, ArtCNN and Go Noto registry
additions and has not been re-audited as a complete compliance package.
