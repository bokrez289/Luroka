# Lumora mobile design language

## Navigation

The phone dock is a floating, rounded surface with custom-drawn geometric line
icons, theme-colored selection lozenges and compact labels. Home, Favorites,
Libraries, Discover and Search retain their existing destinations; the library
long-press picker remains available. Kids Movies/Shows have distinct film and
television glyphs. Accessibility exposes a single selected/button announcement
per destination.

## Movie and show pages

The mobile title header is an editorial composition: an artwork banner with a
small Lumora wordmark, an uncropped portrait poster beside the title and factual
metadata, independent rating badges, genre tags and a separate action console.
Existing playback/version, watch-state, trailer, download and More actions remain
owned by the detail screen. Offline artwork candidates are passed through the
same existing download-artwork resolver. The remainder of the page retains its
real seasons/episodes, cast, extras and related-library content.

## Catalogs and option sheets

All-title library browsing gains a collection heading, known-title count and
direct grouping/filter/sort controls in spacious rounded buttons. This header
scrolls away with the catalog. Filter and sort sheets use inset option surfaces,
with theme accent indicating staged/selected fields; the backend-specific filter
operators, staged commit and direction handlers remain intact. Mobile media
posters use a 14px corner radius and stronger title weight.

## Player

The handheld player uses a slim title/wordmark row over a fade and centered
rewind / Play-Pause / forward controls. A thin continuous timeline has separate
elapsed and labeled remaining timestamps. Audio/subtitle/settings and available
previous/next actions are revealed by a bottom text control rather than shown
permanently. Expanded tools hold the chrome visible; Back collapses them before
exiting playback. Seek callbacks, chapter/queue browsing and first-frame/host
guards remain connected. See `player-comparison-review.md` for the subsequent
JellyCine/Plezy review and supporting detail-page refinements.

## Session behavior

Returning from app switching or phone sleep retains the selected profile.
Fresh-launch profile selection still uses the startup/household policy, and
explicit adult/kids switching retains its existing PIN checks. The shared
adult/kids featured poster has a 12px inner top/side inset.

## Verification

Targeted checks exercise navigation taps/long presses, enlarged text and light
themes, mobile movie/show headers, library browsing and filter/sort transactions,
playback transport/tool accessibility, profile startup/resume and PIN switching.
No physical phone is connected to ADB for this release; phone-size widget
verification is recorded separately from device testing.

The final focused run passed 257 tests across these surfaces and shared playback,
profile and media-card behavior. Static analysis of sixteen changed/key files
reported no issues.
