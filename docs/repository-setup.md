# Luroka repository setup

The canonical repository is <https://github.com/bokrez289/Luroka>. The source is public;
binary releases are published separately after their release checks. See [CONTRIBUTING.md](../CONTRIBUTING.md)
for the branch, review and push workflow.

## Ongoing repository and release checks

- Retain required upstream license, copyright, modification, and third-party
  notices. Review the complete set of proposed changes; local working trees may
  contain captures, APKs, and in-progress work. Do not stage blindly.
- Scan the exact proposed commit and its history for credentials, signing keys,
  private server addresses, personal data, and large unintended files. Preserve
  Android signing credentials privately so existing installations can update.
- Confirm source dependencies, build instructions, and corresponding-source
  requirements for any distributed binaries. Review bundled component licenses.
  See [license-review.md](license-review.md) for outstanding platform-specific
  work; Flutter's generated notices do not cover the complete native stack.
- Review GitHub Actions and permissions before enabling releases. Do not publish
  or modify upstream Plezy package listings for Luroka.
- Review ownership and disclosure of third-party application keys. Trakt is
  disabled pending production access and an appropriate authentication design;
  the inherited client credentials have been removed. Do not embed a client
  secret or claim an app-bundled credential is confidential.
- Review website-hosted README images for private account or library data.
  The privacy policy is maintained separately at https://luroka.app/privacy.html.

## Platform rollout

Android phone and Android TV are in closed testing. iOS/iPadOS and tvOS are in
TestFlight testing, and the Apple TV app is available on the App Store. Further
Apple hardware validation is still needed. Fire TV and desktop platforms
require further testing before being presented as supported releases. This
repository excludes desktop platform projects while retaining shared app and
dependency code.

## Optional TMDb build configuration

Without a build-time TMDb key, discovery falls back to Cinemeta; each profile
can also add its own TMDb credential in the app. To include a distributor key,
keep a JSON file outside the repository with the form
`{"LUROKA_TMDB_API_KEY":"your-key"}` and pass it to Flutter with
`--dart-define-from-file=/path/to/private-defines.json`. For the custom Android
sideload script, set `LUROKA_DART_DEFINES_FILE` to that path. Dart defines keep
the key out of source control, but the key is extractable from built apps.

The Android updater has no default feed configured. See
[luroka-updates.md](luroka-updates.md) before publishing any update artifacts.
