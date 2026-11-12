# License review for mobile and TV

Status: **incomplete release audit**, not a legal determination. Recheck the
exact dependencies and notices for every Android, iOS, and tvOS release.

## Current review: 2026-11-12

**Technical recheck completed for the two local Android 1.0.8 (2039) APKs;
distribution clearance remains open.** Historical findings below must not be
read as current build verification. No source publication, APK rebuild, service
change or store submission was performed in this review.

### Follow-up implementation, 2026-11-12

The current source replaces mobile_scanner/ML Kit with pinned
qr_code_scanner_plus 2.3.2 (ZXing Android Embedded 4.3.0 and ZXing core 3.5.2;
AVFoundation on iOS). Android compilation passed. The refreshed release
runtime graph has 146 unique external Maven artifacts and no ML Kit modules;
see `android-runtime-artifacts-zxing-20261112.json`. Scanner source/license
inputs are pinned in `scanner-source-inputs-20261112.json`. ZXing notices and
25 embedded runtime notices, including nested classes.jar notices, are bundled
and registered. The generator verifies artifact hashes before extraction.
The wrapper is maintenance-only; physical camera/permission/lifecycle checks
and inspection of the next packaged release remain required. No APK was built
for this change at the owner's request.

The live privacy policy was updated and verified over HTTPS on 2026-11-12,
including disclosure for existing ML Kit builds. The repository's offline
policy is regenerated from that published page. Older APKs are unchanged.

Seven focused scanner, notice and recovery tests pass with a two-minute timeout;
the existing crypto test exceeded the initial 30-second limit. Three pairing
client tests also passed. Scanner static analysis reported no issues.

The preserved 1.0.8 (2038) iOS/tvOS xcarchive ZIPs were inspected: 29/30
framework bundles respectively and all five selected Apple notice assets match
current files. Evidence is in `ios-license-artifact-evidence-20261112.json`
and `tvos-license-artifact-evidence-20261112.json`. These retained archives are
not the separately signed streams sent to Apple, and predate the scanner change.

The Hangul subtitle companion was regenerated with fontTools 4.63.0 from the
preserved upstream GoNotoKurrent v7.0 input. Both regenerated and shipped files
hash to `1eb9901df47c22443e93526b14efb949757b40d024a0eb19146eee3c40ea83c5`.
This closes subset reproduction, not complete constituent-font attribution.

`capture_release_source_manifest.py` now supports pre-build fingerprints and
post-build comparison. It does not package corresponding source or establish
historical build provenance. Full native source mapping, recipient source access,
final-device checks and distribution-agreement review remain unresolved.

The observations below describe the earlier build-2039 audit, before these fixes.

### Verified now

- `aapt dump badging` identifies both `luroka-1.0.8-2039-arm32.apk` and
  `luroka-1.0.8-2039-arm64.apk` as `com.bokrez.luroka`, version 1.0.8, code
  2039. Their SHA-256 values, 24 native library paths per APK and notice
  comparisons are recorded in
  [artifact evidence](android-license-artifact-evidence-20261112.json).
- Both APKs contain all 18 current root/supplemental license files, matching
  the checkout byte-for-byte. Both contain Flutter `NOTICES.Z` with a literal
  `mobile_scanner` entry. This verifies presence, not completeness or device UI.
  Repeat with `python3 scripts/checks/inspect_android_license_artifact.py APK`.
- The existing `test/services/app_license_registry_test.dart` passed using
  Flutter 3.47.1 with `--no-pub`. It exercises loading the supplemental texts
  and Plezy credit. Current startup calls the registration function. A physical
  phone/TV license-screen navigation check is still required.
- Offline Gradle `releaseRuntimeClasspath` resolution succeeded: 169 entries,
  163 distinct artifacts, versus 141 distinct artifacts in the November 6
  inventory. See [current inventory](android-runtime-artifacts-20261112.json).
  This covers external Maven modules, not project modules or all nested native
  dependencies, and is not proof of the historical build graph. Each resolved
  file was SHA-256 hashed; identifiable top-level embedded notice paths were
  recorded. Absence of a filename is not evidence of an absent license grant.
- 17 of 24 native files in each APK byte-match a current resolved Maven AAR.
  See [native comparisons](android-native-match-evidence-20261112.json).
  The remaining seven include app/project-built libraries, Flutter and SQLite;
  unmatched does not imply a violation. Matching a prebuilt proves binary
  identity, not exact source provenance or complete transitive notices.
- The local README credits Plezy and the root license preserves its project
  attribution and a 2026 modification notice. This is not a file-by-file
  verification of all inherited copyright and modification notices.

### Newly confirmed scanner issue

`mobile_scanner` 7.5.0 uses bundled `com.google.mlkit:barcode-scanning:17.3.0`
by default on Android. The current resolved graph also includes
`play-services-mlkit-barcode-scanning:18.3.1`, ML Kit common/vision components,
CameraX and other transitive additions. Both APKs contain the barcode models;
the plugin's own license does not establish licensing of these SDKs/models.

Google's [ML Kit terms](https://developers.google.com/ml-kit/terms), checked
2026-11-12, incorporate Google API terms, restrict reverse engineering/source
extraction subject to applicable law, and describe performance/usage metrics
sent to Google. Google requires informing users about that metrics processing.
The live `https://luroka.app/privacy.html` fetched in this review contains no
specific ML Kit/scanner metrics disclosure. Its general store diagnostics
paragraph does not explicitly describe this dependency. This review does not
measure the exact runtime traffic or determine consent requirements.

**Action:** review ML Kit's compatibility with this GPLv3 combined application
and the exact Google terms, and resolve disclosure requirements. An engineering
alternative is a scanner with a verified GPL-compatible implementation and
dependency graph. Simply adding an attribution, changing to the unbundled
model, or hiding the scanner behind a feature flag does not establish clearance.
The iOS plugin podspec uses Apple's Vision API and does not declare this Android
ML Kit dependency; verify the actual Apple archive separately.

### Remaining-check disposition

| Earlier outstanding check | Current disposition and evidence needed to close |
| --- | --- |
| Android native and Gradle notices | Current inventory and APK inclusion checked above; review all new SDK terms, nested AAR/JAR/native notices and seven unmatched native outputs. Do not treat POM declarations or selected notices as complete. |
| Apple archive inventory | Not closed by Android evidence. Inspect the exact intended IPA/archive, link maps, source inputs and notices; the November 6 records cover older 1.0.3 exports only. |
| Rust/native prebuilt provenance | Still open: candidate libdovi lockfiles do not prove compiled features/revisions. Obtain builder attestations/source inputs or rebuild from a preserved pinned graph. |
| Go Noto/font and artwork provenance | Earlier matching upstream font hashes remain useful; complete constituent font notices and subset reproduction are still unproven. Audit the actual release assets and screenshot rights separately. |
| Complete corresponding source | Still open: bind each release hash to its exact app source, dependency sources, patches, native build scripts and build configuration. A current checkout or a checksum-pinned prebuilt alone is insufficient. Do not distribute signing secrets. |
| Recipient source access | No recipient-accessible complete release source package was established here. Choose and verify source delivery next to the binary download; a private repository without recipient access does not satisfy that route. Publishing needs owner authorization and a secret scan. |
| Store agreements | Re-read current public Apple Standard EULA and TestFlight terms; the restrictions flagged in the earlier review remain. Qualified review of the actual accepted Apple/Google agreements, distribution arrangement and any permissions is still required. |
| License-screen device checks | Registry test passes; touch and D-pad scrolling/navigation on final Android/iOS/tvOS builds still need device verification. |
| Past release remediation | Current assets do not alter earlier binaries. Retain historical unknowns and assess actual recipients/source availability with the licensing reviewer. |

The [Apple Standard EULA](https://www.apple.com/legal/internet-services/itunes/dev/stdeula/)
and [TestFlight terms](https://www.apple.com/legal/internet-services/itunes/testflight/)
were checked on 2026-11-12. A custom EULA is not by itself proof that all
distribution restrictions have been resolved. For corresponding source and
modified-work conditions see [GPLv3 sections 1, 4–6 and 10](https://www.gnu.org/licenses/gpl-3.0.html).

### Recommended closure order

1. Resolve the Android scanner SDK compatibility/disclosure question first.
2. Complete native dependency provenance and notices; preserve a reproducible
   source manifest before building the next release.
3. Prepare and verify recipient-accessible corresponding source for that build.
4. Inspect final artifacts and exercise the license UI on physical devices.
5. Obtain the platform-terms determination for the intended store distribution.

## Historical review references

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
