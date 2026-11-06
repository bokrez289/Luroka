# Dependency and notice audit — 2026-11-06

Status: **improved, not complete release clearance**. This documents the
evidence and new notice assets; see `license-source-review-20261106.md` for
corresponding source and store-term issues. Changes to app assets require a new
build and do not alter already distributed binaries. Apple 1.0.3 (13/14) was
built after the earlier Apple notice changes; the Android Maven notice addition
below still requires a new Android build.

## Android Gradle and Cronet

The current working tree's `:app:dependencies --configuration
releaseRuntimeClasspath` resolved successfully. A separate Gradle artifact
view filtered to external Maven modules identified **141 unique artifacts**
(145 resolved entries before deduplication); each artifact was reread and
SHA-256 hashed. `android-runtime-artifacts-20261106.json` lists coordinates,
hashes, cached POM license declarations and identifiable embedded notice
paths. 128 artifacts have cached POM license declarations; 13 do not. These are
metadata observations, not a complete licensing conclusion. The list excludes
project modules, native components inside prebuilts, Dart assets and final R8
reachability. It is a snapshot of the **current** configuration, not proof of
the graph used for historical APK 2008 or a future Play AAB. POM declarations
do not replace examination of the actual source, packages and NOTICE files.

Both `arm64-v8a` and `armeabi-v7a` Cronet native files in preserved universal
APK 2008 match byte-for-byte the corresponding files in the cached Maven
`org.chromium.net:cronet-embedded:143.7445.0` AAR, SHA-256
`afdd7af7568e9758e3690c3a4a228f30993ac3e4ef0f94c72bb68503c0167697`.
Neither the AAR's top-level files nor its `classes.jar` contain an identifiable
license/notice file. Google's version-specific
[`cronet/LICENSE`](https://storage.googleapis.com/chromium-cronet/android/143.0.7445.0/Release/cronet/LICENSE)
includes Chromium and built-in dependencies and has SHA-256
`be9838eb10695d40d337a442d1c1921bdfe2d3df44f3827c350e810bb0670e65`.
`generate_cronet_notices.py` verifies and bundles the full 326,255-byte file
for the Android in-app license screen. Recheck this pinned version and notice
when the actual release artifact or Cronet version changes. This notice is not
itself complete corresponding source for Cronet or the whole app.

APK 2008's `META-INF/SENTRY_THIRD_PARTY_NOTICES.md` byte-matches the same file
in `io.sentry:sentry:8.56.0` (JAR SHA-256
`8d0d0e6b36d82f16c82ca9dfd44c43f2b139c14243890c74b0c64751308b7724`).
`generate_sentry_android_notices.py` verifies and copies that text for the
Android in-app license screen. Presence of these files is not evidence that all
other Sentry native and transitive notices have been resolved.

### Follow-up on missing cached POM declarations

The original inventory correctly recorded that 13 artifacts lacked a directly
available cached POM license declaration; that is not the same as proving they
have no declared license. On 2026-11-06 the published child and parent POMs were
inspected. Maven inheritance identifies the following metadata:

| Artifacts in the current graph | Published parent POM declaration |
| --- | --- |
| `failureaccess:1.0.2`, `listenablefuture:9999.0-empty-to-avoid-conflict-with-guava` | `com.google.guava:guava-parent:26.0-android`, Apache-2.0; SHA-256 `f8698ab46ca996ce889c1afc8ca4f25eb8ac6b034dc898d4583742360016cc04` |
| `guava:33.3.1-android` | `com.google.guava:guava-parent:33.3.1-android`, Apache-2.0; SHA-256 `6e11986ea7250b51f847157e2dc937f32a306804dfce0007a5e81ddb9b95c579` |
| `protobuf-javalite:4.35.1` | `com.google.protobuf:protobuf-parent:4.35.1`, BSD-3-Clause; SHA-256 `bbbd819c1306e227b766f4f0231f6d5d918673154e7d6ceed06bbbaca415c15b` |
| `commons-io:2.20.0`, `tika-core:3.2.3` | Their respective parent POMs inherit `org.apache:apache:35`, Apache-2.0; SHA-256 `ea297dcd114136e8b8e8b630230d52a76c2fc69f6c5db25d672b1857000728b8` |
| `slf4j-api:2.0.17` | Its parent inherits `org.slf4j:slf4j-bom:2.0.17`, MIT; SHA-256 `f78d27b642b4b886eb839fc102b5cd9fe7f30f37599ffe68185be4e1609031e9` |

These are POM declarations, not a substitute for a complete transitive audit.
The published POM explicitly describes the 9999.0 listenablefuture artifact
as empty. The pinned nanojson source's `JsonParser.java` carries an Apache-2.0
header, but the cached JAR's exact build correspondence and complete source
notices remain to be verified. The four Flutter engine/embedding artifacts and
mpv-android require separate native and source provenance review.

`generate_android_maven_notices.py` verifies the exact cached JAR digests and
extracts Commons IO's and Tika's LICENSE and NOTICE files plus SLF4J's LICENSE
for the Android in-app license screen. The resulting
`android-maven-selected-notices.txt` SHA-256 is
`75a3286a3944cebbab246b76f6b9cc5cba07644596988e27090295ab1705900f`.
These three JARs were in the current runtime graph; inspect the actual final AAB
and update the generated notices if the resolved versions change. Guava,
protobuf, nanojson and Flutter component notices need further artifact/source
review; the above metadata does not claim those have been fully addressed.

## Candidate libdovi Rust notices

Two preserved source candidates were inspected with `cargo tree --locked`
for `aarch64-apple-ios` and `aarch64-linux-android`, restricting the displayed
tree to normal/build dependencies. The resulting union contains 15 distinct
crate/version pairs. Each `.crate` archive was checked against its candidate
`dolby_vision/Cargo.lock` SHA-256. Their bundled license files are reproduced in
`assets/licenses/libdovi-rust-candidate-notices.txt` and registered on Android
and Apple in source. `crc-catalog` omitted standalone license files from its
crate archive; its VCS metadata identifies an upstream commit, whose two
license texts were fetched and digest-checked separately. The source candidate
and crate archives were preserved under the private backup's
`android-inputs/libdovi-candidate-audit/`.

This is deliberately labelled **candidate**: neither the iOS nor Android
prebuilt's exact Rust graph, feature flags, target-specific crates, and builder
checkout have been demonstrated by these lockfiles. In particular, the
historical Android builder did not prove use of `--locked`. Verify the real
prebuilt provenance or rebuild from a fully pinned, preserved source graph;
do not describe this bundle as the complete compiled dependency inventory.

## Font and remaining native work

The main Go Noto font was already byte-matched against its upstream v7.0
release; the sibling Kurrent input for the Hangul subset also matches its
documented v7.0 SHA-256. The combined Go Noto build pulls many Noto fonts,
and its source describes scheduled builds against moving upstream inputs. The
complete set of component copyright and license notices and the exact Hangul
output provenance remain open. Copies of both upstream v7.0 font files were
preserved and hash-verified under the private backup's `evidence/font-v7-inputs/`.

Still needed: complete the follow-up on Maven artifacts and project modules;
determine native transitive graphs, including compiled
Rust and Android libass WrapDB inputs; verify final Apple/Android build
artifacts and rendered license screens; assemble exact corresponding source
and resolve store terms with qualified advice. None of the new source assets
retroactively fixes a previously uploaded build.
