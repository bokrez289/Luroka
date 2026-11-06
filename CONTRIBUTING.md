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
flutter pub get
dart run slang                    # generate translations
dart run build_runner build --delete-conflicting-outputs  # generate Drift/freezed code
```

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

1. Create a branch for your change
2. Make your changes with clear commit messages
3. Run `flutter analyze` and `flutter test` — both must pass
4. Open a pull request with a description of what changed and why

## Reporting bugs

Open an [issue](https://github.com/bokrez289/Luroka/issues) with:
- What you expected vs. what happened
- Steps to reproduce
- Platform (Android, Android TV, iPhone, iPad or Apple TV)
- Server type and version (Plex/Jellyfin/Emby)
