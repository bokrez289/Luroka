# Mobile library redesign

Based on `Screen_Recording_20261101_003311.mp4` (18.6848 seconds).

- Tapping the current library opens a searchable, artwork-led grid with a
  selected indicator and server names when more than one server is present.
  Only the profile-visible list is passed to it; selection returns the same
  server/library key used by the existing loader. A keyboard inset keeps the
  grid usable while searching.
- Mobile library tabs use the compact editorial treatment. A More action
  contains library management, refresh and advanced browse/grouping options.
- The Browse header is shorter; direct Filters and Sort actions receive fixed,
  unequal space so the sort label can show more text. Active filter fields
  appear as individually removable chips, with Clear for the full selection.
  Field summaries use the existing backend value-name cache and represent
  unavailable Plex value names by count rather than displaying opaque IDs.
- The phone sort sheet prioritizes common sorts, uses a selected checkmark and
  exposes explicit Ascending/Descending choices. It retains every supported
  server sort, applies the backend's default direction on field selection and
  preserves the existing staged commit-on-close behavior.
- Mobile unwatched counts use smaller dark translucent pills and an explicit
  accessibility label. TV and desktop retain their existing badge appearance.

Verification: 51 focused tests passed across the searchable picker, mobile
sort/order behavior, filter and sort transactions, active-filter controls,
library browsing and badges. Static analysis of nine changed/key files was
clean. No phone was connected via ADB for a physical-device review.
