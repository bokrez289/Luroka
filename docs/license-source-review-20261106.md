# License and corresponding-source review — 2026-11-06

**Release assessment: not yet cleared.** This record distinguishes observed
facts from unverified provenance and legal questions. It supplements
`release-preservation-license-audit-20261105.md`. A previous private repository
was deleted and recreated during preparation of this mobile/TV snapshot. At the
time of this review, the replacement was private and had no commits; it had not
been established as a source delivery mechanism for binary recipients.
For further Cronet, Sentry, Gradle and candidate Rust evidence see
`dependency-notice-audit-20261106.md`.

## Artifacts and verified evidence

| Artifact | What is established | Still unresolved |
| --- | --- | --- |
| iOS 1.0.3 (11) | A separately exported IPA SHA-256 `5b16fcd8ebb09c138da76f5913f0ec16fce03b3a9043cc05858cc091270c29c9`; its bundle ID and version were inspected. | Uploaded bytes were separately re-signed. Actual tester recipients, exact full native provenance, complete source/notice delivery and store-terms compatibility are not established. |
| tvOS 1.0.3 (12) | A separately exported IPA SHA-256 `50d87c8ce7ed26d771156355e0930a2967d53443f5957cafc4a2da96253d050c`; its bundle ID and version were inspected. | As for iOS; additionally, build-local Dart-define and post-archive fixes must accompany any accurate build instructions. |
| iOS 1.0.3 (13) | Separate App Store export SHA-256 `30ae98efe6ca7f26c758543438744a8860e669cea99d37fd023f174d02289cd4`; Apple validation and upload succeeded. | Uploaded bytes were separately signed; actual TestFlight processing and installation, full native provenance and source delivery remain unverified. |
| tvOS 1.0.3 (14) | Separate App Store export SHA-256 `7ad35ef1b40f1d459dcb525c3ce8a07329b2090129f959df9bba24e9d5a9c823`; Apple validation and upload succeeded. | As for iOS (13); build-local Dart-define, native-asset and post-archive steps are preserved in the private backup. |
| iOS 1.0.4 (2015) | Separate App Store export SHA-256 `c01a7a8b070296b26dd4ffb7d294a6d2ba10545ac513088f7360db54aa6743b7`; Apple validation and upload succeeded. | Final processing, recipient delivery, exact native provenance and complete source delivery are not established. |
| tvOS 1.0.4 (2016) | Separate App Store export SHA-256 `fa18eb4a942e3af4d402d0c7b8484050a52f951aa67fb406a545c3c765a43dcb`; Apple validation and upload succeeded. | As for iOS (2015); build-local tvOS preparation and archive corrections require preservation. |
| Android Play bundle 1.0.4 (2020) | SHA-256 `af8f25c189776b01242e2e9f1efef1cdc2260f110966e714573b7ccf1df864bc`; its signed manifest excludes `REQUEST_INSTALL_PACKAGES`. | Play processing, recipient delivery, exact native provenance and complete source delivery remain unverified. |
| Android universal 1.0.2 (2008) | APK SHA-256 `163377948f62355345c3bb59b03ba728850a9e213e71c8232b0626518cc6a5b1`; 20 mpv/FFmpeg-related objects across ARM ABIs match the pinned AAR. | Exact build-time Luroka source, Gradle graph, complete native provenance and notices are not proven. No current Play AAB was supplied for inspection. |

For the two local Apple exports, `scripts/checks/inspect_apple_license_artifact.py`
reports 29 iOS and 30 tvOS framework bundles, and confirms that `LICENSE`,
`apple-media-source-notices.txt`, `ios-swift-package-notices.txt`, and
`SpatialAudioBridge.txt` are present. Their bytes match the preserved build
workspaces. The startup path in the source used for these builds invokes the
supplemental registry, and the startup test passes; this is not an independent
inspection of the rendered license screen on each device. Flutter's generated
`NOTICES.Z` was also present. Literal searches for the seven selected Swift
package names did not find those names in `NOTICES.Z`; their separate selected
notice bundle is present. A literal absence is not proof the same text never
appears under another name.

For the separate build 13/14 exports, the inspection script identifies 29 iOS
and 30 tvOS framework bundles and confirms the same four selected asset paths
and `libdovi-rust-candidate-notices.txt` are present. Their SHA-256 values
match the source snapshot used for these builds. The Apple media notice bundle
includes the later uchardet, libunibreak and uavs3d additions described below.
This confirms inclusion in the separate exports, not exact equivalence to the
uploaded byte streams, tester delivery, completeness of the license inventory,
or the rendered license screen on a device.

The 1.0.3 Apple link maps identify objects from mpv, FFmpeg, OpenSSL, libass,
libbluray, libunibreak, uchardet, uavs3d, libdovi and libplacebo. Both maps
include `jfdctfst.o`, `jfdctint.o`, and `jrevdct.o`. At the pinned FFmpeg
source, `jfdctint.c` includes the IJG-derived `jfdctint_template.c`; `jfdctfst.c`
and `jrevdct.c` also carry the IJG notice. This confirms those files warrant
review, not the complete history of their modifications. Current Apple notices
already include the IJG acknowledgement; the accompanying source and clear
change documentation still need to be established.

## Notices improved after the earlier 1.0.3 builds

The Apple bundle generator now includes the **uchardet 0.0.8** combined
license text and **libunibreak 6.1 candidate** authors and license texts, each
checked against a recorded SHA-256. It also includes a candidate BSD notice for
uavs3d. The generator also identifies the preserved
libbluray 1.4.0 LGPL-2.1 text as byte-identical to the LGPL-2.1 text already
present in the bundle. The 6.1 libunibreak source is a candidate, not proof
of the version in the Apple prebuilt. The uchardet checkout is clean at release
tag `v0.0.8`; the libbluray checkout matches the upstream `1.4.0` tag. Neither
fact proves the downloaded Apple binaries were built from those exact trees.
The new text is present in the separate 1.0.3 (13/14) exports; it does not change
previously uploaded 1.0.3 (11/12) builds or make the inventory complete.

For uavs3d, the release `1.2.1-fix` XCFramework ZIP's SHA-256
`bd5256081486d16c51c868d755bf70266c424b54c895269580de44ec6707f789`
matches the pinned Swift package checksum and GitHub's release metadata. Its
iOS and tvOS framework binary files match the preserved 1.0.3 iOS workspace
inputs. The build script at builder tag commit
`bfb5c5a79de03711af8407a040baefe38a74d9b9` says it pulls the latest master;
the upstream master commit before the release publication time was
`0e20d2c291853f196c68922a264bcd8471d75b68`. Its BSD license text is included
as a candidate. Publication time is not proof of the checkout actually built,
and this does not verify the full dependency graph or supplied source.

The main Go Noto font's SHA-256
`882afbab965608c2d2bc627fd8016b962aa5a6be2d358f9de24a7b5967c5632e`
matches the actual `GoNotoCurrent-Regular.ttf` release asset from
[`satbyy/go-noto-universal` v7.0](https://github.com/satbyy/go-noto-universal/releases/tag/v7.0).
The companion's documented upstream `GoNotoKurrent-Regular.ttf` v7.0 source
matches its recorded SHA-256. The shipped companion is a modified/subset font;
its generation script and coverage checks are preserved, but the upstream
project notes that combined fonts draw on many Noto sources. Complete component
attribution and exact output reproduction remain to be established.

## License and platform terms: issues for a qualified reviewer

1. **Source access and completeness.** GPLv3 sections 1 and 6 define
   Corresponding Source and describe delivery for non-source forms. Section
   6(d) describes equivalent network access and clear directions next to the
   object-code offer. The repository currently is private, and current evidence
   does not establish an accessible, complete corresponding-source package for
   recipients. A public copy of the app source alone would not establish that
   native scripts, patches, dependencies and other required inputs are complete.
   GPLv3's installation-information condition is specific to the transactions
   described in section 6; it should not be asserted to apply automatically to
   every separately downloaded app, or dismissed automatically.
2. **TestFlight terms.** Apple's published
   [TestFlight terms](https://www.apple.com/legal/internet-services/itunes/testflight/)
   dated 2023-06-21 describe a limited, non-sublicensable beta license and
   restrictions on modification and redistribution to the maximum extent
   permitted by law. Compare those provisions to GPLv3 sections 5, 6, 10 and
   12 for these actual beta distributions. We cannot resolve their legal effect
   or the applicable agreements merely from Xcode validation.
3. **App Store terms.** Apple's published
   [standard app EULA](https://www.apple.com/legal/internet-services/itunes/dev/stdeula/)
   restricts transfer, redistribution and sublicensing. Its separate restriction
   on reverse engineering and modification includes an express exception for
   rights permitted by open-source component licenses. A custom EULA is possible,
   but it is not established that a custom EULA would override all applicable
   Apple terms or technical restrictions. Review the developer's accepted
   agreements, relevant countries, distribution mechanism and actual app.
4. **Google Play.** The published
   [developer distribution agreement](https://play.google.com/about/developer-distribution-agreement.html)
   permits a developer-provided end-user license subject to the agreement and
   requires rights to third-party materials. This is not a blanket GPL
   compatibility determination. Review the accepted regional terms, the actual
   signing/distribution configuration and the final binary alongside source
   access and applicable requirements.
5. **Third-party terms.** FFmpeg's
   [legal page](https://ffmpeg.org/legal.html) expressly says its familiar
   checklist addresses an LGPL configuration without `--enable-gpl`. The
   examined configurations enable GPL and version 3. The use of OpenSSL,
   IJG-derived files, static LGPL components, Rust crates and other native
   inputs must be analyzed against the actual build and corresponding source;
   no conclusion follows merely from top-level licenses or framework names.

## Remaining actions

- Obtain a qualified open-source licensing review of the Apple/TestFlight and
  Play terms and actual distribution arrangements; assess the previous beta
  distributions and whether any remediation is required. Do not invent a
  blanket additional permission: only the relevant rightsholders can grant it.
- Establish exact modified sources, source revisions, patches, dependencies,
  build/installation scripts and applicable notices for every distributed
  artifact; obtain missing build provenance from the upstream builders or
  produce new auditable artifacts. Keep historical missing evidence marked
  unknown rather than substituting current source.
- Decide and implement a recipient-accessible source distribution, preserving
  notices and the required rights. Publishing or changing the visibility of the
  private repository requires an explicit owner decision and security review.
- Finish the Android Gradle/Cronet and native transitive notice inventory, Rust
  dependencies, font component notices, and per-platform notice-screen checks.
  Rebuild and inspect the final store artifacts after adding verified notices.
- Review the exact accepted developer agreements and any applicable regional
  terms. Record the reviewer, evidence, conclusions and any necessary changes.

Sources: [GPLv3](https://www.gnu.org/licenses/gpl-3.0.en.html),
[GNU GPL FAQ](https://www.gnu.org/licenses/gpl-faq.html), Apple and Google
links above, and the privately preserved artifact evidence. Those backups
include build metadata and must not be published wholesale.
