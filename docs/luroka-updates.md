# Luroka Android updates

Luroka can check an HTTPS release feed, download a compatible APK, verify its
size and SHA-256, then ask Android to install it. Android-side checks also
require the same application ID and signing certificate, and a strictly higher
version code matching the feed. Updating retains application data.

## Publishing

1. Keep the existing private signing keys. Increase the build number in
   `pubspec.yaml` for every release, including fixes with the same version name.
2. There is **no default update feed configured**. For a future release, host
   the feed and artifacts on an HTTPS endpoint accessible to the app. A private
   GitHub repository's release assets are not anonymously accessible, so a
   private release URL alone is not a working feed for testers.
3. Set `LUROKA_UPDATE_FEED_URL=https://YOUR-HOST/releases/luroka.json` when
   running the release build scripts to configure that address in the build.
   Verify accessibility before enabling automatic updates.
4. Build sequentially:

   ```sh
   python3 scripts/release/build_custom_android.py
   python3 scripts/release/build_custom_android.py --tcl-universal
   python3 scripts/release/generate_update_feed.py --base-url https://YOUR-HOST/releases --notes "What's new in this release"
   ```

5. Upload the three signed APKs first, then `build/custom-android/luroka.json`.
   Use atomic replacement of the feed. For versioned release directories, keep
   the public feed address stable and publish the generated artifact URLs.
6. Test the feed on an older signed phone and TV install before announcing it.

The generated feed includes the actual Android version code for each artifact;
split APK offsets differ from the TCL universal package. Luroka selects the
installed build family, not just the device's advertised CPU capabilities.

## User experience

- Startup checks respect the existing automatic-update preference and six-hour
  cooldown. A player or other foreground route is never interrupted by the
  update prompt. About also has a manual check and release notes.
- Downloading is opt-in, shows progress, and can be cancelled by closing the
  dialog. Failed/incomplete downloads are not passed to Android's installer.
- Android may ask the user to allow installs from Luroka once. After returning,
  select Install update again. Installation always requires Android confirmation.
- A skipped release is keyed by its version **and** build number, so a later
  corrective build is eligible again.
- Distribution-managed installations, iOS and tvOS retain their platform update
  mechanisms. Desktop appcasts require an explicitly configured Luroka appcast.

An empty source is reported as unconfigured, never as “you are up to date.”
Before the first release feed is uploaded, a manual check reports a failed
check; it never claims that an unavailable feed is current. Publishing a Release
and uploading its assets requires the distributor's repository credentials;
building the application does not publish anything automatically.
