# Search and discovery review

Reference: [JellyCine](https://github.com/sureshfizzy/JellyCine), revision
`3980c2fc448eb4712b8d611b6d8e0510519d7a01` (reviewed against GitHub main).

## What makes JellyCine feel responsive

- Search's ViewModel starts loading suggestions immediately, before a query.
  Its live search uses a 300ms debounce and cancels superseded jobs.
- Suggestions are an actual media feed, not just completed query history.
- Discovery restores cached recommendation sections and refreshes them separately.
- Awards caches membership references and title metadata separately, hydrates a
  small preview (12 entries), and resolves local IDs in batches of 20.
- Award membership is queried from Wikidata: P166 for winners, P1411 for nominees,
  and the work's TMDb movie/TV identifier. Each award can contain several
  categories, with additional year/decade filtering in its UI.

Reviewed files:

- `phone/.../dashboard/search/SearchViewModel.kt`
- `phone/.../dashboard/search/Suggestions.kt`
- `phone/.../dashboard/media/Discover.kt`
- `data/src/androidMain/.../repository/AwardsRepository.kt`
- `data/src/androidMain/.../repository/MediaRepository.kt`
- `data/src/commonMain/.../api/WikidataAwardsClient.kt`

## Lumora implementation

- Search first uses already loaded, profile-visible Home titles. A bounded,
  library-scoped latest-title query supplies suggestions when Home is not warm.
  Matching suggestions can appear before any live-query request is made.
- Live search uses a 250ms debounce. Available title results are published before
  other servers/people finish. The optional people leg has a shorter budget in
  this progressive mode. Superseded queries still abort, and generation guards
  remain authoritative.
- Repeated queries reuse a bounded, short-lived session cache. Explicit refresh,
  hidden-library changes, and server-scope changes invalidate/recheck it.
- TV Search uses the studio cinematic title/ratings treatment, editorial filter
  tabs, and lazy poster grids. People retain their dedicated result rows and
  routes instead of being discarded or rendered as movie posters.
- Discovery uses sliding availability workers and coalesces identical catalog
  lookups across shelves. Verified positive library projections remain visible
  while refreshing public lists.
- Emby can warm catalog matches through its indexed `AnyProviderIdEquals`
  filter in batches of 20. Every returned row is ID-verified, duplicates remain
  separate library copies, and a failed or unsupported server never becomes an
  authoritative negative.
- Modern Jellyfin removed that filter. Lumora builds a reusable, library-scoped
  movie/series ID index instead (slim metadata, two workers, a 15-second build
  budget, 15-minute session cache), verifies IDs locally, and hydrates only the
  matches with summaries and user state. Unsupported/failed batches retain the
  existing title-search plus external-ID verification fallback, also used on Plex.
- A dedicated Awards & collections browser offers award families and individual
  categories, with independently cached Wikidata winner/nominee membership.
  Artwork and playable library items remain separate; each selected category
  projects verified library matches incrementally.
- Discover now defaults to 17 award/chart shelves, including International,
  Animated and Documentary Oscars, Emmy Limited Series, Berlin, Venice,
  Golden Globes drama/comedy, Sundance and Toronto, plus its popularity or
  trending rows. Empty library projections are still omitted.
- Visible **Awards** and **Customize** actions replace the icon-only entry on
  TV. The awards browser also exposes Customize (including on narrow phones).
  The grouped chooser offers every award category, IMDb chart and supported
  popularity/trending row; Save applies the staged choices once. Preferences
  persist per profile across both public sources, with Restore defaults and
  an explicitly empty selection supported.
- Selected shelves load independently with at most three membership workers.
  Cached charts publish before slow categories; removed shelves cannot return
  when an older in-flight load completes. Disabled categories are not fetched.

## Scope of the awards browser

The browser includes Oscars (including International/Animated Feature and
acting/directing), Emmy drama/comedy/limited-series categories, BAFTA, Berlin,
Cannes, Venice, Golden Globes, Sundance, Toronto, Independent Spirit and Saturn.
Winners and nominees use separate P166/P1411 queries and cache entries. Acting
and directing statements use the `for work` qualifier, so result posters name
the awarded film/show, not the person's IMDb record. The release-decade filter
uses the earliest known release year, explicitly not the ceremony year.

Family/category navigation is immediate and does not wait on Wikidata. The
selected category fetches membership on demand, caches it for 14 days, and can
fall back to stale cached membership. Existing bundled headline winner
snapshots are also retained as cold/offline fallbacks, but are never substituted
for nominees or unrelated categories. Wikidata coverage is not exhaustive;
the category screen explains this. A live International Feature query returned
293 raw release-date bindings in approximately 2.7 seconds during review; that
is an observed endpoint response, not a whole-library loading benchmark.

The Kotlin implementation was reviewed as an architectural reference; Lumora's
implementation remains native to its Dart providers, media-server adapters,
multi-profile scope, and TV focus/navigation components.

## Installed-build verification

- The customizable-shelves release was built, signature-verified and installed
  on the TCL. D-pad navigation verified the labeled Awards/Customize toolbar,
  grouped category switches, and Save returning to Discover. International
  Feature and Animated Feature shelves rendered library matches directly on
  Discover with cinematic previews. Expanded chooser tests also passed at
  TV and 360px phone widths, including staged edits and Restore defaults.
- On the TCL, D-pad navigation reached Discover → Awards & collections →
  Oscars → Best International Feature. Both Winners and Nominees loaded
  library-matched poster grids and cinematic artwork/ratings.
- The final focused regression run passed the awards category screen,
  collections screen, Wikidata service, discovery batch lookup, and catalog
  library matcher suites. Static analysis of the two awards screens and two
  awards services reported no issues; `git diff --check` passed.
- Remaining device checks: release-decade selection, Animated Feature, acting,
  Emmy Comedy, and Berlin. Remote navigation was paused after the TV moved to
  an unrelated discovery/copy-picker screen between commands. These paths are
  not yet claimed as end-to-end device verified, and no whole-library timing
  benchmark has been established.
