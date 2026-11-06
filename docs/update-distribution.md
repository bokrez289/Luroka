# Update distribution

Google Play and Apple's App Store own updates for their respective builds.
Build Play releases with `--dart-define=LUROKA_DISTRIBUTION=play`; this keeps
the GitHub updater disabled even if Android cannot identify the installer.
The runtime also recognises Google Play installations by installer package.
Do not publish the sideload build to Google Play.

`scripts/release/build_custom_android.py` marks its builds as `sideload`.
These builds check the latest **published, non-prerelease** GitHub Release in
`bokrez289/luroka`, compare the release tag (for example `v1.0.3`) to the
installed version, and offer the GitHub releases page. No automatic APK download
or archive extraction is involved. On TV the prompt also displays a QR code.
Create a GitHub Release containing the intended `.tar.gz` archives and matching
source before expecting update notifications. Until the repository and a
release are publicly accessible the GitHub check cannot succeed.

Android updates require the same application ID and compatible signing
certificate as the installed copy. Google Play App Signing can use a different
certificate from sideload releases: switching distribution channels may then
require uninstalling the existing app, which also removes its local app data.
Keep release signing keys private and make a backup before migration.

One-time store pricing is set in Play Console and App Store Connect, not in
the source code. Confirm pricing, store listings, signing and license
requirements before publishing.
