<p align="center">
  <img src="https://luroka.app/assets/readme-luroka-mark.webp" alt="Luroka" width="112" />
</p>

<h1 align="center">Luroka</h1>

<p align="center"><strong>Your media, beautifully at home.</strong></p>

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

## The experience

**Your collection is personal. Your media app should feel that way, too.**
Luroka brings your connected libraries into a single home, with artwork-led
browsing, thoughtful playback controls and layouts designed for touch and TV
remotes.

| | |
| :--- | :--- |
| **A home for your library** | Browse movies, series, music, collections and favorites across supported servers. |
| **Made for the big screen** | Find your way from the couch with remote-friendly navigation and clear focus states. |
| **A space for everyone** | Create profiles, set up a Kids space, and make the experience your own. |
| **Watch together** | Invite friends into a room and keep playback in sync, even from different sofas. |

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

## Make it yours

<details>
<summary><strong>Playback &amp; subtitles</strong></summary>

- Choose media versions, audio tracks and subtitles, with support for styled ASS/SSA subtitles.
- Navigate chapters, adjust playback speed and sync, and use intro and credits skip where supported.
- Enjoy HDR, Dolby Vision and multichannel audio on compatible hardware and player backends.

</details>

<details>
<summary><strong>Profiles, Kids &amp; Watch Together</strong></summary>

- Create personal profiles with their own connections and optional integrations.
- Configure Kids profiles with a parent PIN, library choices and viewing controls.
- Share a Watch Together room code and synchronize playback with others who have access to the media.

</details>

<details>
<summary><strong>Downloads, music &amp; live TV</strong></summary>

- Download supported media for offline viewing on supported devices.
- Browse artists and albums, build a music queue and follow synced lyrics.
- Explore a channel guide and manage recordings with supported Live TV and DVR servers.

</details>

<details>
<summary><strong>Discovery &amp; integrations</strong></summary>

- Search connected libraries, browse studios and collections, and explore people and filmographies.
- Connect optional services including AniList, MyAnimeList, SIMKL, MDBList and Seerr.
- Personalize your Home, themes and supported settings for the way you watch.

</details>

Feature, codec, HDR, passthrough and download availability varies by device,
player backend, server and configuration. Kids restrictions and viewing activity
are stored on the device. Luroka is a client: it does not provide media or a
media-server subscription.

## Platforms

| Screen | Platform | Status |
| :--- | :--- | :--- |
| Phone &amp; tablet | Android | In testing |
| TV | Android TV | In testing |
| iPhone &amp; iPad | iOS / iPadOS | In testing |
| Apple TV | tvOS | In testing |

Luroka is actively being developed. Follow the [website](https://luroka.app) or
[community](https://discord.gg/YerMrFBM5T) for testing and release updates.

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

## License

Licensed under [GPL-3.0](LICENSE). See [third-party notices](THIRD_PARTY_NOTICES.md)
for component licenses and credits.

<p align="center"><sub>Made for the stories you already love.</sub></p>
