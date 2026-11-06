# Android build 2006: native inventory and source evidence

This is an evidence record, **not a completed license clearance**. It concerns
`com.bokrez.luroka`, version `1.0.0`, version code `2006`, universal APK SHA-256
`7e6e7680c3db6e93248f65bf83358796d0ca6c006ac60e45393a1ddf7baa73bd`.
The APK was inspected directly. A current Gradle dependency report is useful
context but is not proof of build 2006's exact resolved Java dependencies:
the uncommitted workspace may have changed since that APK was made.

**Path update, 2026-11-05:** the file at the previous build-2006 output path
has since been replaced by build 2007. Its SHA-256 is
`b97409ccc8dfb433aa0054f2e394c8f583919e87cf71ec1dfa70a74572072fd4`,
which differs from the historical 2006 hash above. Do not use that path as
proof of build 2006; see `license-review.md` for the limited 2007 check.

## APK native objects

Both `arm64-v8a` and `armeabi-v7a` contain these 21 names:

| Objects | Investigated provenance / status |
| --- | --- |
| `libapp.so`, `libflutter.so` | Flutter application and engine; Flutter-generated Dart package notices are bundled separately. Pin and audit the exact engine and its native third-party notices. |
| `libmpv.so`, `libplayer.so`, `libavcodec.so`, `libavdevice.so`, `libavfilter.so`, `libavformat.so`, `libavutil.so`, `libswresample.so`, `libswscale.so`, `libc++_shared.so` | mpv Android AAR. Both ABI copies of `libmpv.so` and the ARM64 `libavformat.so` hash-match the pinned AAR; the other entries are not individually hash-verified. The AAR includes no notice files. |
| `libasskt.so` | Local JNI wrapper over a combined static libass archive. Current build configuration pins libass Android 0.18.3; its archive contains libass, FreeType, FriBidi, HarfBuzz, libunibreak, Fontconfig and Expat notices. Its exact inclusion in build 2006 needs reproducible-build evidence. |
| `libdovi_bridge.so` | Local JNI bridge linked with a separately downloaded libdovi 2.3.1 static archive. The current build pins archive digests; the Rust dependency graph and original build inputs require further verification. |
| `libffmpegJNI.so` | Local Media3 FFmpeg JNI bridge linked against the AAR's FFmpeg libraries. Review copied source notices and patches. |
| `libcronet.143.0.7445.0.so` | Chromium Cronet 143.7445.0; verify the full Chromium/third-party notice set, not just Chromium's top-level BSD notice. |
| `libdartjni.so`, `libdatastore_shared_counter.so`, `libsentry-android.so`, `libsentry.so`, `libsqlite3.so` | Flutter plugin / AndroidX / Sentry / SQLite native objects. Resolve exact artifacts and include applicable native and transitive notices. Sentry's third-party notice file is present under APK `META-INF`. |

The APK also contains `META-INF/DEPENDENCIES`, Sentry notices, several AndroidX
license files, jsoup's license, OkHttp's public-suffix notice and Flutter's
compressed `NOTICES.Z`. Presence of those files does not prove that all required
notices are present or accessible in the app's Licenses screen.

## Source evidence checked

- The cached mpv AAR SHA-256 matches both `mpv-build.lock.json` and the GitHub
  release asset digest: `cc1d41945496eb1f93abba7955a766c134c748b804ea67225ac24802db612b8b`.
  The pinned [mpv-build commit](https://github.com/edde746/mpv-build/tree/582f6d6e748a87a1536bf5cdad0af97b75725ffb)
  is reachable and its `artifacts.json` records that same content-addressed
  AAR key and digest. Its Android scripts, patches, `versions.json`, and build
  instructions are available at that commit.
- That checkout pins [mpv](https://github.com/mpv-player/mpv/commit/41f6a645068483470267271e1d09966ca3b9f413),
  [FFmpeg](https://github.com/FFmpeg/FFmpeg/commit/894da5ca7d742e4429ffb2af534fcda0103ef593),
  and other components. The Android driver explicitly enables FFmpeg GPL,
  version 3, OpenSSL, dav1d and libdovi. Audit exact patches and component
  licenses rather than assuming the entire native graph has one license.
- The cached libass 0.18.3 archive matches current CMake's pinned SHA-256
  `fc98637752695d7cf9e26b02befaa634dd4cad25a2f38fba80de814bfd310a17`.
  Its [release tag](https://github.com/edde746/libass/tree/76cdb2bc174828aac74a458d38a0786cb7af922d)
  and build script are reachable. The build script uses a live Meson WrapDB
  update and installs missing wraps dynamically, so the exact dependency
  revisions and relinkable build inputs are **not yet proven** by the tag alone.
- The current separate libdovi release points to
  [libdovi-builds v2.3.1](https://github.com/edde746/libdovi-builds/tree/b3ad76582796df9474589468faef124443e167f8)
  and [dovi_tool 2.3.1](https://github.com/quietvoid/dovi_tool/tree/b25558062e4a56973482ec70133bd7b891320e48).
  Its workflow downloads Rust dependencies at build time without an enforced
  lock flag; exact compiled dependencies remain to be established.
- `bokrez289/Luroka` is private and empty. Build 2006 was produced from an
  uncommitted, subsequently modified working tree: **a complete, exact
  corresponding Luroka source snapshot has not been demonstrated**. Publicly
  reachable upstream repos do not substitute for the actual modified source.

## Notices added locally after build 2006

The source now registers the upstream mpv Android JNI MIT notice, libass ISC,
the pinned libass archive's 15 license/author files, libdovi MIT, dav1d BSD,
Lua MIT, Chromium's top-level BSD notice and pinned mpv/FFmpeg/libplacebo/OpenSSL
source license documents. These are not in build 2006 and do not complete
Chromium, Rust-crate, FFmpeg, mpv or Gradle dependency notices. The notice
bundles can be checked with
`python3 scripts/codegen/generate_libass_notices.py <pinned-zip> --check` and
`python3 scripts/codegen/generate_native_source_notices.py --check`.

## Still required before distributing a release

1. Capture the exact Luroka source and all build inputs used for the new APK,
   including local changes and generated artifacts; associate that snapshot
   with the binary. Prepare a source distribution accessible to its recipients.
2. Complete the native dependency graph and applicable notices, including mpv's
   statically linked dependencies, FFmpeg's files and libraries, OpenSSL,
   libplacebo, Lua, Rust crates, Chromium Cronet's third-party components,
   SQLite, Sentry, AndroidX/Gradle artifacts, and libass WrapDB sources.
   The pinned FFmpeg `LICENSE.md` specifically calls out Independent JPEG
   Group attribution and change disclosure for certain source files; determine
   whether those files are included and whether the Android patches modify them.
   It also includes a general OpenSSL compatibility warning. Compare that
   upstream text with the exact OpenSSL 4.0.3 license and the build configuration
   as part of the release review rather than assuming compatibility.
3. Obtain or reconstruct pinned WrapDB versions, patches and relinkable inputs;
   verify the exact libdovi Cargo lock, modifications and toolchain. Keep
   source/build artifacts available rather than relying only on mutable URLs.
4. Rebuild and inspect the new APK, exercise all notice entries on device, and
   review the actual combination and distribution terms before release.
