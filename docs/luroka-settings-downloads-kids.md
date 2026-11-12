# Settings, updates, kids Home and downloads — build 205

## Delivered

- Dedicated TV Settings workspace with theme-aware header, categories, independent
  focus/selection, Everyday/Advanced mode, searchable controls and retained visited
  page state. Main TV navigation is hidden while Settings is open. No help footer.
- Mobile category pages use the same visual language. Appearance has Theme &
  Effects, Library Layout, Home Screen and Navigation sections.
- Library Layout includes a bounded, non-interactive preview of already-loaded
  current-profile media, or neutral placeholders. Density, gaps, view mode,
  poster details and supported progress indicators read the real preferences.
  Existing controls remain connected to their existing storage/effects; no
  unsupported mockup-only settings were introduced.
- Show Live TV is device-local, defaults on, and controls navigation visibility
  without changing server capabilities. Location: Appearance → Navigation.
- Items per shelf defaults to 16 with 32/48 choices. The fetch budget applies to
  Continue Watching (including its extra-item probe), Home recommendation rows
  and library recommendations. Location: Appearance → Home Screen.
- About presents Lumora, supported backends, features and actual package version.
  Licenses retain GPL, upstream provenance and metadata/trademark attribution.
- Android sideload updates support compatible-build selection, opt-in transfer,
  cancellation, size/SHA-256 verification, release notes, unknown-source
  permission handoff and Android installation confirmation. Native validation
  requires the installed package/signing identity and a higher matching version
  code. See [publishing instructions](lumora-updates.md).
- Kids restrictions now honor Jellyfin/Emby CustomRating, reject permissive
  descendant ratings under a known mature series/season, and prevent stale
  records from downgrading stricter session metadata. Mixed-shelf ordering,
  cached search results/copy pickers and feature hydration are checked too.
- Kids Home includes the child's character, For you/Movies/Shows/Keep watching
  filters, accessible remote controls and a manually controlled phone carousel.
  Adult Home retains its existing layout. Restrictions still depend on accurate
  server classification. Unrecognized classifications are blocked; missing or
  unrated classifications follow the parent's existing unrated-content opt-in.
- Downloads has an offline/transfer dashboard, responsive transfer cards,
  percentage, transferred bytes and live speed. Existing retry, pause, resume,
  deletion, grouping and offline browsing are retained. Android's native
  notification interpolation supplies percentage, speed and time remaining.

## Main implementation files

### Settings and navigation

- `lib/widgets/tv_settings_hub.dart`
- `lib/widgets/appearance_workspace.dart`
- `lib/widgets/{setting_tile,settings_surface,settings_section}.dart`
- `lib/screens/settings/{settings_screen,appearance_settings_screen,about_screen,licenses_screen}.dart`
- `lib/screens/{main_screen,discover_screen}.dart`
- `lib/services/{settings_service,settings_mutation_service}.dart`

### Android updates

- `lib/services/{android_update_service,update_service}.dart`
- `lib/utils/{app_identity,update_dialog}.dart`
- `android/app/src/main/kotlin/com/edde746/plezy/{UpdateChannel,UpdatePolicy,LumoraActivity}.kt`
- `android/app/src/main/AndroidManifest.xml`
- `scripts/release/{build_custom_android,generate_update_feed}.py`

### Kids and downloads

- `lib/services/{kids_profile_service,jellyfin_mappers,jellyfin_client,home_preview_controller}.dart`
- `lib/services/jellyfin_client/parts/browse.dart`
- `lib/screens/search_screen.dart`
- `lib/widgets/{home_dashboard,mobile_home_carousel}.dart`
- `lib/providers/discover_provider.dart`
- `lib/media/media_server_client.dart`
- `lib/screens/libraries/tabs/library_recommended_tab.dart`
- `lib/screens/downloads/downloads_screen.dart`
- `lib/widgets/{download_tree_view,downloads_dashboard_summary}.dart`
- `lib/services/download_manager_service.dart`
- English translations and generated translation files; `pubspec.yaml` build number.

## Verification

- Combined settings/kids/downloads regression run: **287 tests passed**.
- Additional preview/search/update regression run: **74 tests passed**.
- Final settings/focus/mobile-search verification: **14 tests passed**.
- Android `UpdatePolicyTest`: passed, including wrong package, wrong/empty signing
  identity, downgrade/reinstall and feed/archive version mismatch cases.
- Analyzer checks on changed feature files: clean. Whitespace check: clean.
- Test-rendered Settings previews cover dark, forest and light palettes, using
  neutral artwork placeholders. They are UI previews, not device screenshots.
- Signed phone ARM64, Fire Stick ARM32 and TCL universal APKs were built and
  verified. Release metadata contains actual per-artifact version codes, minimum
  SDK, size and checksums, with consistent build/signing identity checked.

## Deployment and device checks

The APKs and `build/custom-android/lumora.json` are ready for the
`v2.24.0-build205` GitHub Release. Uploading/publishing is a separate release
operation; no release was published by the build scripts. The default feed uses
the latest release's `lumora.json` asset. End-to-end download/install and phone
notification appearance still need real-device verification after publication.
