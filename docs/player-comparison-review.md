# Compact mobile player review

## References reviewed

- [JellyCine](https://github.com/sureshfizzy/JellyCine), revision
  `3980c2fc448eb4712b8d611b6d8e0510519d7a01`:
  `phone/src/main/java/com/jellycine/app/ui/screens/player/ControlsOverlay.kt`.
  Its useful principles are a lightweight title row, image-first gradient
  chrome, simple centered transport, and a continuous seek track with subtle
  markers and local scrub-preview state.
- [Plezy](https://github.com/edde746/plezy), revision
  `d832b4212ceabc68bfee6785177f40bd2a724723`:
  `lib/widgets/video_controls/mobile_video_controls.dart`. Its useful behavior
  includes chapter/queue browsing, first-frame and host-control guards, live
  time-shift integration and the surrounding Flutter seek/preview pipeline.

These informed the layout and interaction design; the implementation is Dart
integrated with Lumora's player/controller rather than a copied Kotlin screen.

## Lumora decisions

- Remove the large full-width header card. Back, title and a quiet Lumora
  wordmark sit over a top-edge fade.
- Center rewind / Play-Pause / forward on the video viewport itself. Available
  previous/next actions live with the secondary tools, so an asymmetric queue
  cannot shift the main playback button.
- Keep only the timeline and an **Audio, subtitles & more** text action in the
  default footer. Expanding reveals labeled tools and available previous/next
  actions. The tools area scrolls within a bounded height on small screens.
- A dedicated chrome hold keeps expanded tools open. Collapse releases the
  hold; mobile Back collapses tools before exiting playback. Disposal releases
  the hold without triggering a new hide timer or build-time notification.
- Use a three-pixel continuous progress track with small chapter ticks and a
  circular scrub handle. The original seek gesture, thumbnail and chapter-label
  paths remain authoritative.
- Put elapsed time at the leading edge and explicitly labeled remaining time
  at the trailing edge. Estimated finish time is secondary and appears only
  while the tools are expanded, labeled **Ends at …**.
- Expose a clickable Chapters & queue action in addition to its swipe gesture.

## Uploaded comparison recording

Reviewed `Screen_Recording_20261031_084556.mp4` after upload (21.0199 seconds,
1080×2340). It contrasts the new poster/title composition, the older
logo-centered Plezy-style hero and a JellyCine episode page with explicit media
information, round cast portraits and horizontal related-episode cards.

The main remaining similarity was below Lumora's header: dense inline episode
rows and the rectangular cast strip. The follow-up applies focused differences:

- Mobile episodes use inset rounded surfaces, compact runtime/year metadata and
  a shorter synopsis. Codec and file-size diagnostics no longer crowd this list;
  the existing episode context-menu and metadata routes still own those facts.
- Mobile cast uses compact circular portraits with centered names and room for
  enlarged text. Person taps and remote focus callbacks remain connected.
- Mobile Overview starts with three lines and offers a visible Read more / Show
  less action rather than an unexplained ellipsis badge. Text overflow is measured
  with the actual accessibility text scale and text direction.

The player refinements above are also grounded in the supplied landscape player
screenshot and the upstream control implementations. The recording mainly
demonstrates detail-page browsing rather than playback-control interactions.

## Verification

276 combined focused tests passed, covering detail-page and phone player behavior,
including portrait/landscape geometry, enlarged
text, centered transport, independent timestamp alignment, thin continuous
track configuration, expandable tools, hide-timer holds, Back behavior, seeking,
first-frame binding, chapter/track flows and finish-time calculation. Focused
static analysis reported no issues.
