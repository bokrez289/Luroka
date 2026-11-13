# Contributing to Luroka

Thank you for considering a contribution! This document explains how to set up a development environment, build the project, and submit changes.

## Development environment

- **Flutter 3.47.1** — see [flutter.dev](https://docs.flutter.dev/get-started/install)
- **Dart SDK** 3.x (bundled with Flutter)
- **JDK 21 and Android SDK** (for Android builds)
- **Platform build tools** — Android Studio or Xcode, depending on the target

### Setup

```bash
git clone https://github.com/bokrez289/Luroka.git
cd Luroka
flutter pub get --enforce-lockfile --no-example
dart run slang                    # generate translations
dart run build_runner build       # generate Drift/freezed code
```

The checked-in generated files may show comment or whitespace changes after
generation. Review generated diffs before including them in a contribution.

### Running

```bash
flutter run                       # on the connected device/emulator
flutter devices                   # list connected testing devices
```

## Code style

- Follow the existing patterns in the file you're editing
- Run `flutter analyze` before submitting — the project uses strict lint rules
- Write tests for new features and regression fixes
- Translations live in `lib/i18n/*.i18n.json` — add missing keys to `en.i18n.json` first, then run `dart run slang`

## Project structure

```
lib/
  main.dart            — app entry point and startup bootstrap
  screens/             — page-level widgets
  widgets/             — reusable UI components
  services/            — business logic and API clients
  providers/           — ChangeNotifier state providers
  models/              — data models
  database/            — Drift database schema and queries
  theme/               — theming system (MonoTheme, MonoPalette)
  i18n/                — translation source files and generated code
  utils/               — helpers and utilities
  focus/               — D-pad/focus navigation system
  media/               — media abstractions (items, hubs, clients)
android/               — Android native (Kotlin)
ios/                   — iOS native (Swift)
tvos/                  — Apple TV native (Swift)
```

## Submitting changes

Android phone, Android TV, iOS/iPadOS and tvOS are being tested. Please describe
the devices or simulators used when verifying a platform-specific change.

The canonical repository is the private [bokrez289/Luroka](https://github.com/bokrez289/Luroka).
Ask the owner for access and use a separate clone of this repository; don't push
from an older Plezy or Luroka working tree. Coordinate if others are editing the
same files.

1. Update your local `main` with `git pull --ff-only` and create a descriptive
   feature or fix branch from it.
2. Make the intended changes. Before staging, check `git status` and `git diff`;
   stage specific files and review `git diff --cached`. Don't include unrelated
   changes from another developer.
3. Run `flutter analyze`, relevant tests and platform checks for your change.
   Run the full test suite where practical; report any failures or checks you
   couldn't run in the pull request. List devices or simulators used.
4. Push your branch, then open a pull request into `main` describing the change,
   verification and any remaining issues. Don't force-push or rewrite shared
   history. Coordinate any direct change to `main` with the owner.

### Before committing or pushing

- Keep passwords, user credentials, access tokens, API secrets, signing keys,
  provisioning profiles, private server details and local build configuration
  out of Git. Use test accounts and fictional data in tests and examples.
  If a secret is committed or pushed, notify the owner promptly so it can be
  revoked or rotated; removing a later copy doesn't erase Git history.
- Don't commit APKs, AABs, IPAs, build outputs, local backups, or the website
  and screenshot collections. Those are maintained separately. Check the
  staged file list even when `.gitignore` appears to cover them.
- Keep `LICENSE`, upstream copyright and modification notices, and third-party
  attribution intact. Discuss dependency or license changes with the owner.
- The repository targets Android, Android TV, iOS/iPadOS and tvOS. Check with
  the owner before adding desktop projects, changing release/signing settings,
  publishing artifacts, or making the repository public.

See [repository setup](docs/repository-setup.md) for dependency and release
context. Coding assistants should also follow [AGENTS.md](AGENTS.md).

## Reporting bugs

Open an [issue](https://github.com/bokrez289/Luroka/issues) with:
- What you expected vs. what happened
- Steps to reproduce
- Platform (Android, Android TV, iPhone, iPad or Apple TV)
- Server type and version (Plex/Jellyfin/Emby)
