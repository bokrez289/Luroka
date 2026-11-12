# Luroka naming migration

This is a development record, not a claim that every platform build or upgrade
has been verified. The recovery copy made before this work is private and must
not be published. The current development worktree has not been synchronized
to the private mobile/TV GitHub repository as part of this migration.

## App-owned names migrated

- Android's activity and player renderer factory use Luroka names. The
  application ID remains `com.bokrez.luroka`, so the rename does not change
  the installation identity or release signing key.
- The app-owned Android libass Kotlin package, JNI exports and shrinker rules
  use `com.bokrez.luroka.libass`. This is separate from the upstream mpv AAR.
- The iOS primary Icon Composer asset uses `luroka.icon`, and the Apple app-icon
  and audio-player method channels match the corresponding Luroka Dart names.
- Newly generated Android Watch Next and tvOS Top Shelf links and shelf item
  identifiers use Luroka. Existing `plezy://` shelf/live links and `plezy_`
  shelf IDs remain accepted. These are compatibility paths for previously
  generated launcher entries, not names used for new entries.

## References that must remain for now

- `com.edde746.mpv` is the Kotlin API supplied by the pinned third-party
  mpv-android AAR. Its compiled class names are part of that dependency's
  interface; renaming imports without rebuilding or replacing the AAR breaks
  playback. The upstream repository URLs and pins identify where those exact
  dependencies and corresponding source originate.
- Copyright, license and modification notices retain upstream names to identify
  the actual authors and component provenance. Branding must not erase them.
- Existing `plezy://` and `lumora://` links, older preference keys and storage
  migrations remain supported so existing shortcuts and device data can still
  be interpreted. They can be removed only after an explicit compatibility
  decision and a tested upgrade path.
- Apple TV currently retains the older `PlezySystemShelfCacheData`,
  `PlezySystemShelfSources` and Keychain service identifiers. They name existing
  shared persisted data and tokens. A coordinated migration must move or safely
  invalidate them across both Runner and Top Shelf, handle sign-out and failed
  Keychain writes, and be validated on a Mac and Apple TV before they are renamed.
- Some generator master filenames and historical test fixtures retain previous
  names; these are not the Android application ID or displayed branding and
  still need individual review before changing.

## Verification and limitations

The Android debug app, libass unit tests, and Android instrumentation-test
sources compile. The packaged debug native libraries export the 22 expected
Luroka JNI names. A device-level libass integration test exists but was not run:
no Android device was attached. Focused Flutter shelf/link/channel tests and
branding checks passed. Apple source changes need an Xcode build and physical
device validation. GitHub has its own previously reviewed snapshot; further
alignment and a release build from an immutable commit are still required.
