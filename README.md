<p align="center">
  <img src="https://luroka.app/assets/readme-luroka-mark.webp" alt="Luroka" width="112" />
</p>

<h1 align="center">Luroka</h1>

<p align="center"><strong>Your collection. Your space. Your way to watch.</strong></p>

<p align="center">
  Your Plex, Jellyfin and Emby libraries, together in a cinematic experience<br />
  made for the screens you watch on and the people you share them with.
</p>

<p align="center">
  <a href="#the-experience">Explore</a> ·
  <a href="#a-closer-look">Screens</a> ·
  <a href="#getting-started">Get started</a> ·
  <a href="https://luroka.app">Website</a> ·
  <a href="https://luroka.app/privacy.html">Privacy</a> ·
  <a href="https://discord.gg/YerMrFBM5T">Community</a>
</p>

<p align="center"><sub>Android · Android TV · iPhone · iPad · Apple TV</sub></p>

---

## Built on Plezy

Luroka is based on [Plezy](https://github.com/edde746/plezy), created by
edde746 and its contributors. Their open-source work provides the foundation
for this project, and we thank everyone who built and contributed to Plezy.

Luroka continues from that foundation with redesigned screens, additional
features and support for more media servers. It is developed independently and
is not endorsed by or affiliated with the Plezy project.

## The experience

Bring your Plex, Jellyfin and Emby libraries together in a media experience
designed to feel at home on your phone, tablet and TV.

Luroka has its own visual identity, with nearly every screen redesigned or
rebuilt—from home and discovery to profiles, settings and playback. Personalized
browsing, rich media details and layouts tailored to each screen make your
collection easier to explore and more enjoyable to watch.

## A closer look

<p align="center"><strong>In your hands</strong></p>

<p align="center">
  <img src="https://luroka.app/assets/readme-iphone-home.webp" alt="Luroka home on iPhone" width="24%" />
  <img src="https://luroka.app/assets/readme-iphone-favorites.webp" alt="Favorite titles on iPhone" width="24%" />
  <img src="https://luroka.app/assets/readme-iphone-library.webp" alt="Movie library on iPhone" width="24%" />
  <img src="https://luroka.app/assets/readme-iphone-profiles.webp" alt="Profile selection on iPhone" width="24%" />
</p>

<p align="center"><strong>Room to explore</strong></p>

<p align="center">
  <img src="https://luroka.app/assets/readme-ipad-home.webp" alt="Luroka home on iPad" width="49%" />
  <img src="https://luroka.app/assets/readme-ipad-watch-together.webp" alt="Watch Together room on iPad" width="49%" />
</p>

<p align="center"><strong>At home on TV</strong></p>

<p align="center">
  <img src="https://luroka.app/assets/readme-tv-library.webp" alt="Movie library on Apple TV" width="49%" />
  <img src="https://luroka.app/assets/readme-tv-kids.webp" alt="Kids profile on Apple TV" width="49%" />
</p>

<p align="center"><sub>App screens in illustrative frames. Media shown is not included with Luroka.</sub></p>

## Your libraries, beautifully together

Spend more time choosing what to watch and less time navigating between servers.

- **One title, fewer duplicates.** Browse a unified poster for matched titles and choose which available library to watch from.
- **The version you want.** Find and select different versions of a movie.
- **More behind every title.** Explore trailers, cast information, filmographies and upcoming episodes.
- **More ways to discover.** Browse studios, collections and discovery pages alongside your own libraries.

## A home that feels like yours

Shape Luroka around your collection and your habits.

Customize your spotlight, arrange home shelves, choose themes and adjust poster
sizes. Guided setup helps you get started, while layouts designed for touch and
TV remotes keep everyday navigation comfortable.

Your viewing activity brings your history to life through visual statistics—
explore what you have watched and how your viewing habits develop over time.

## Made for the way you watch

### Playback and subtitles

Choose media versions, audio tracks and subtitles, search for subtitles, and
adjust their appearance. Navigate chapters, fine-tune playback speed and
synchronization, and use intro or credits skipping where supported.

HDR, Dolby Vision, multichannel audio and styled ASS/SSA subtitles are available
with compatible devices, media and player backends.

### Downloads, music and live TV

Take supported titles offline with download and automatic sync options. Explore
music libraries, build a queue and follow synced lyrics. Connect supported Live
TV and DVR servers to browse channels, view the guide and manage recordings.

### A space for everyone

Create personal profiles with their own connections and preferences. Set up Kids
spaces with parent authorization, library choices and viewing controls.

Watch Together lets people with access to the media join a shared room and
synchronize playback. Optional integrations include AniList, MyAnimeList, SIMKL,
MDBList and Seerr.

### Easier setup and a way back

Use your phone to help connect a TV to Jellyfin or Emby. Back up and restore
profiles and settings without creating a Luroka account, with these features
available in enabled builds.

Full profile restoration requires an empty profile database. Kids exports have
a separate restore flow. Protect backups that contain connection information.

Features vary by platform, server and configuration. Kids controls and viewing
activity are device-local. Luroka does not include media or a media-server
subscription.

## Platforms

| Screen | Platform | Status |
| :--- | :--- | :--- |
| Phone &amp; tablet | Android | Closed testing |
| TV | Android TV | Closed testing |
| iPhone &amp; iPad | iOS / iPadOS | TestFlight testing |
| Apple TV | tvOS | Available on the App Store; TestFlight testing also continues |

Luroka is actively being developed. Follow the [website](https://luroka.app) or
[community](https://discord.gg/YerMrFBM5T) for testing and release updates.

Official store releases are planned as a one-time purchase to help support
development and running costs.

Compressed Android APK archives (`.tar.gz`) and IPA files are planned for a
future release; no download links are available here yet. An APK or IPA is an
installable build, while the repository contains source code to compile yourself.
Apple installations require an appropriately signed IPA and a supported
installation method.

## Getting started

1. **Bring your server.** Sign in to Plex or connect an accessible Jellyfin or Emby server.
2. **Make a space.** Choose your libraries and set up a profile.
3. **Press play.** Explore your collection on your favorite screen.

### Build from source

Install Flutter **3.47.1** and the platform tools for your target. Android builds
require the Android SDK and JDK 21; Apple builds require macOS and Xcode.

```bash
git clone https://github.com/bokrez289/Luroka.git
cd Luroka
flutter pub get --enforce-lockfile --no-example
flutter run
```

For Apple TV, prepare the pinned tvOS engine and CocoaPods workspace on macOS:

```bash
tvos/scripts/fetch_engine.sh
cd tvos
pod install
open Runner.xcworkspace
```

Android release builds require your own signing configuration. If the FFmpeg
download is unavailable, `LUROKA_FFMPEG_SOURCE_ARCHIVE` can point to the pinned
official source archive; its checksum is verified by the build. See the
[dependency input notes](docs/mobile-dependency-inputs.md) for the pinned
native components. TMDb discovery can use a key provided at build time or
entered in the app; without one, Cinemeta discovery remains available.

## Built with

Flutter and Dart · Kotlin and Swift · mpv · Media3 · Provider · Drift

## Source history and attribution

This repository began with a Luroka source snapshot; it does not include
Plezy’s original commit history. The original authors' work and contributions
can be explored in the [Plezy repository](https://github.com/edde746/plezy) and
its [commit history](https://github.com/edde746/plezy/commits).

Upstream copyright and modification notices are preserved in [LICENSE](LICENSE).

## License

Licensed under [GPL-3.0](LICENSE). See [third-party notices](THIRD_PARTY_NOTICES.md)
for component licenses and credits. A price for an official build does not
remove the GPL rights to use, study, modify and redistribute the covered code
under its terms. Distributors must also meet the applicable source, notice and
other license obligations. Native-component provenance, corresponding source,
notices and store distribution terms remain under review; see the
[license review](docs/license-review.md).

<p align="center"><sub>Made for the stories you already love.</sub></p>
