# iOS 1.0.2 (9) build — 2026-11-05

The current local source was copied to the isolated Mac workspace
`~/luroka-ios-current9` and to
`build/ios-evidence/source-current-20261105-build9/`. The snapshot includes
the Apple TV Provider-context and catalog-cache fixes. It is a build-source
snapshot, not a complete native corresponding-source package or legal review.

Flutter dependencies were resolved with `flutter pub get --enforce-lockfile
--no-example`; Flutter's generated iOS configuration specifies version 1.0.2
and build 9. The source pubspec remains 1.0.2+8; the build overrides the number.
The previously obtained iOS SQLite hook input was seeded only after verifying
its SHA-256 against the package's pinned digest
`14ddadc35d7e92e58e219a34dc4a9b66fd5b195c9e144dcfed06978a65dfaba9`.

The signed archive attempt failed at code signing with `errSecInternalComponent`;
the Mac login keychain reported that user interaction was not allowed. An
unsigned archive subsequently succeeded, with bundle `com.bokrez.luroka`,
version 1.0.2 (9), and a camera usage description. Its app executable SHA-256 is
`9fae6086e23230b3c07ad9cc4a0e0a97d1efa6f85a66d88a44b6287a34d4c484`.

After the login keychain was unlocked, a desktop-session retry produced a
development-signed archive. Xcode then exported an App Store distribution IPA;
its signature verified, its provisioning profile belongs to team A69DRJHAW7,
and its `get-task-allow` entitlement is false. The exported IPA SHA-256 is
`b561ebbe6b5197f99dde792f662ffe3e4d1796cd2748e55ae62c8b65eee5036b`.

Xcode reported successful validation and upload to App Store Connect. The
upload log said the package was processing; final processing and TestFlight
availability have not been independently confirmed. Xcode reported 24 missing
native framework dSYMs, so crash reports may lack symbolication. The Apple
native-license and provenance questions remain open.

The source snapshot, unsigned and signed archives, distribution IPA, scripts,
and logs are copied under `build/ios-evidence/`. That ignored directory is not
an independent backup and can contain provisioning information.
