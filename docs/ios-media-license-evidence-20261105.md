# iOS media license evidence: 2026-11-05

Status: **incomplete investigation, not distribution clearance**. This record
relates to the development archive described in
`ios-unsigned-build-20261105.md`; no TestFlight build has been audited.

## Preserved inputs

- The signed development archive is retained at
  `build/ios-evidence/Luroka-retry.xcarchive/`. A partial project snapshot is
  at `build/ios-evidence/source-20261105/`. These ignored local copies must be
  backed up before deleting the rented Mac or cleaning the build directory.
- The resolved mpv-build checkout was verified at commit
  `582f6d6e748a87a1536bf5cdad0af97b75725ffb` and copied, including build
  scripts and patches, to `build/ios-evidence/mpv-build-582f6d6/`.
- iOS-device slices and XCFramework manifests from the Mac's resolved
  mpv-build artifacts were copied to `build/ios-evidence/apple-framework-inputs/`.
  The iOS Libavcodec input is an arm64 **static archive**, SHA-256
  `82f05f21d9b8e3b7c76ecaaf1ac054461ad9dd359fab15f17c8a0293abcdb614`.
  The installed app also contains small framework shells; their names alone
  do not imply that the underlying media libraries are dynamically relinkable.
  `otool -L` on the app executable does not list those media frameworks.
  A later `LD_GENERATE_MAP_FILE=YES` single-job development build produced
  `build/ios-evidence/Luroka-evidence-LinkMap-normal-arm64.txt`. Its object
  list confirms that the app executable links objects from mpv, FFmpeg,
  OpenSSL, libass, FreeType, FriBidi, HarfBuzz, libunibreak, libbluray,
  libdovi, dav1d, libuavs3d, uchardet, libplacebo, shaderc-combined and
  lcms2. No MoltenVK or LuaJIT archive objects were matched in this link map;
  do not infer this for other builds. The map is from the later evidence
  archive, not proof of the original development archive's exact link.
- Immutable source snapshots identified by commit are preserved with a
  SHA-256 manifest at `build/ios-evidence/upstream-source-snapshots/`. They
  include mpv, FFmpeg, libass and several dependencies; libbluray and uchardet
  were cloned at the upstream release commits. Source from third-party builders
  and dependencies is still incomplete. A codeload archive hash identifies
  the downloaded copy; it is not independent proof of the original prebuilt.

## FFmpeg and mpv

The embedded build configuration string in the preserved iOS Libavcodec and
Libavutil static archives includes `--enable-static`, `--enable-gpl`,
`--enable-version3`, and `--enable-openssl`. The pinned mpv-build Apple script
also specifies these flags. Its `versions.json` pins mpv v0.41.0 at
`41f6a645068483470267271e1d09966ca3b9f413`, FFmpeg n8.0.1 at
`894da5ca7d742e4429ffb2af534fcda0103ef593`, and libass 0.17.5 at
`4a05d8127f525943ebf45fdc6497c9e665947f0d`. Its Swift package points to
OpenSSL 3.3.5 prebuilts and other separately built XCFrameworks.

The pinned FFmpeg `LICENSE.md` describes the effects of GPL and version-3
configuration and contains an OpenSSL compatibility warning. Verify that
warning against the exact OpenSSL 3.3.5 license, the actual linked files and
patches; do not assume either compatibility or incompatibility from that
general text alone. FFmpeg also requires examining whether its IJG-derived
files were included and changed. The later evidence link map contains
`jfdctfst.o`, `jfdctint.o` and `jrevdct.o` from `Libavcodec`; the app notice
now includes the requested Independent JPEG Group acknowledgement. No patch
in the preserved mpv-build FFmpeg patch pool names those three files, but that
does not establish a complete history of changes from original IJG sources.
The mpv/FFmpeg GPL terms, Apple's current
TestFlight/App Store terms, and the means of delivering corresponding source
and any applicable installation/relinking materials need review before
distribution. This requires a qualified legal assessment where appropriate.

## Notices and unresolved dependencies

`assets/licenses/apple-media-source-notices.txt` now includes the Independent
JPEG Group acknowledgement and 18 verified source documents, including mpv,
FFmpeg, libass, OpenSSL 3.3.5, FreeType, FriBidi, HarfBuzz, libdovi, dav1d,
lcms2, libplacebo, shaderc, SPIRV-Cross and shaderc's glslang/SPIRV-Tools
notices. Versions for the additional prebuilt components are those named by
their respective builder release scripts; actual prebuilt correspondence still
needs verification. This is a **partial** bundle, registered for Apple platforms
in source. A later local development archive contains the latest version; the
previous local distribution-signed exports do not contain all of these updates.

The complete notices and corresponding source for the exact Apple builds of
FreeType, FriBidi, HarfBuzz, libunibreak, libbluray, libdovi and Rust crates,
dav1d, libplacebo, shaderc and its dependencies, uavs3d, uchardet, lcms2,
Flutter, SQLite, Sentry, all plugins, and build-specific modifications remain
to be audited. The preserved libuavs3d builder explicitly pulls a moving
branch, and shaderc's build script modifies a vendored SPIRV-Tools file after
fetching dependencies. More than top-level license files are needed.
Several Apple prebuilt `-all.zip` provenance entries in the upstream lock
are explicitly marked TODO. Hashing a retained input identifies it; it does
not prove its exact source or establish a complete corresponding-source offer.

## Signing

The successful archive is development signed (`get-task-allow=true`) and is
not itself a TestFlight distribution archive. Xcode 27.2 exported that archive
locally with `method=app-store-connect`, `destination=export`, and automatic
signing. It succeeded without revoking the existing Expo credentials or
importing their private key. The resulting `Luroka.ipa` is signed with an
Apple Distribution identity; `codesign --verify --deep --strict` passed, and
its embedded store provisioning profile has `get-task-allow=false` and no
device list. IPA SHA-256:
`3b2a7d1553db475ce5688f5567aa67d604af3e5a44566b475584310b5d8197a7`.

The IPA and export records are copied to
`build/ios-evidence/export-local-check/`. This export derives from the earlier
archive and **does not include the newly added Apple notice bundle**.

Following the notice addition, a second development archive was built and
exported locally via automatic App Store signing. `codesign --verify --deep
--strict` passed on the unpacked IPA; its store profile reports
`get-task-allow=false`, and its Flutter assets contain the partial Apple media
notice bundle. The IPA SHA-256 is
`31f595160f966cc6091c937c2a155ff2c3c1046ef8b3d98e21e1f5468faae210`.
The archive, export, and partial source snapshot are retained locally under
`build/ios-evidence/Luroka-notices.xcarchive/`, `export-notices-check/`, and
`source-notices-20261105/`, respectively. Neither IPA is license-cleared, and
neither has been uploaded or installed. The license review and corresponding-
source package remain incomplete.

A subsequent local development archive, `Luroka-evidence.xcarchive`, contains
the expanded notice bundle (SHA-256
`b9b886d9b36e7f0bf3c88a706cb8f5754c2aee571ae9417ba6206a7f2ccc1a94`)
and was signature-verified. Its app executable SHA-256 is
`9f733d3ba5c5b02d581a2aed8a8d277bd7938b40a4ab017a3d9b50dee99534d1`.
That archive and a partial matching project snapshot are retained locally in
`build/ios-evidence/`; they are not a complete corresponding-source package.
An updated local App Store export from that archive contains the expanded notice
bundle, has a store profile with `get-task-allow=false`, and passed deep strict
code-signature verification. Its IPA SHA-256 is
`34519181eb62e97e75a0937e38e8e93e8b752660e05ba9bb25ca76b715c4b5f3`,
retained at `build/ios-evidence/export-evidence/Luroka.ipa`. It has not been
tested on a device. After the account owner created the matching App Store
Connect record, Xcode validated the evidence archive and reported a successful
upload on 2026-11-05. App Store Connect processing and TestFlight installation
were not independently verified at that time. Xcode reported 24 missing dSYM
warnings for framework shells, which may limit crash-symbolication detail.
The preserved IPA is a separate export; its hash is not claimed to identify the
separately re-signed upload. Open license and provenance questions above still
apply; successful validation and upload are not a legal determination.

## Build 8: camera purpose string

Apple rejected build 7 during processing with ITMS-90683 because
`NSCameraUsageDescription` was missing. The iOS Swift Package Manager build
resolves `file_picker`'s DKImagePickerController / DKCamera dependencies, whose
code references camera APIs. Luroka calls the image picker for existing profile
photos and artwork; this does not establish a Luroka camera-capture feature.
The iOS plist now describes this dependency and the existing-photo use.

An archive built as version `1.0.1` / build `8` was signature-verified and
inspected to confirm the purpose string and Apple media notice bundle. The
archive and a partial source snapshot are retained under
`build/ios-evidence/Luroka-camera8.xcarchive/` and
`build/ios-evidence/source-camera8-20261105/`. Xcode validation succeeded and
reported successful upload of build 8. The 24 native framework-shell dSYM
warnings remained. App Store Connect processing, TestFlight availability, and
device behavior were not yet independently verified.
