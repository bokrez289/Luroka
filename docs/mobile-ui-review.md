# Mobile UI pass

Reviewed `Screen_Recording_20261031_000832.mp4` (18 seconds, portrait phone).

## Implemented

- **Home:** the phone toolbar, cinematic hero, and shelves share one lazy
  scroll view. The hero artwork scrolls out with its content; later shelves
  use the full viewport. Pull-to-refresh remains available even on a short
  page. The hero's public-source attribution becomes a compact, library-first
  caption on handheld layouts.
- **Home toolbar:** Home title, More, and profile avatar. More contains layout
  editing, Watch Together, companion remote, and a refresh fallback. Downloads
  and available Live TV are accessible in the profile menu.
- **Navigation:** online adult phones show Home, Favorites (when supported),
  Libraries, Discover (when connected), and Search. A utility selected by a
  startup preference or remote command remains represented without exceeding
  five destinations. Offline and kids navigation keep their dedicated policies.
  The portrait bar and landscape rail hide while the keyboard is visible.
- **Search:** keyboard-open phone rows use small artwork, title, and one compact
  metadata line. Synopsis and source lines return when typing ends. A keyboard
  scope preserves visibility after the outer scaffold consumes its inset,
  avoiding nested-screen keyboard detection failures.
- **Loading:** first-load phone catalogs use poster-shaped placeholders in
  Favorites, Discover, Home, and shared library content states. Loaded library
  rows remain visible during same-library refresh and on refresh failure;
  library changes still clear the previous library immediately. Favorites
  suppresses unknown counts rather than flashing `0 titles` while loading.
- **Favorites:** phone filters have their own wrapping row. Sort and view
  controls sit underneath, so All / Movies / TV Shows remain reachable at
  narrow widths and enlarged text sizes.
- **Shelves:** mobile Home cards are wider and show a partial next card to
  advertise horizontal scrolling. Continue Watching retains wide artwork.

## Verification

163 targeted checks passed across Home, Favorites, Search, Discover, library
refresh/focus behavior, startup/navigation, main-shell layout and media-card
geometry/provenance. New checks cover the scrolling phone hero, larger shelf
cards, profile/overflow menus, keyboard-consumed Search layout, grouped Favorites
controls, unknown-count placeholders and selected utility destinations.
Static analysis of the touched implementation and key tests reported no issues.

Physical-device mobile verification is pending; no ADB device was connected
when the phone release was packaged.

## Mobile featured-poster carousel

The static handheld billboard is replaced with a horizontally swipeable poster
carousel. Popular/trending movie and show candidates come from the existing
Home spotlight provider, which resolves actual online, visible library copies.
Verified matches now publish progressively. If the public feed is unavailable,
Home can feature its existing server-backed movie/show shelves instead.

- Poster cards show a neighboring-page peek, title, movie/show type, year,
  available ratings, and title-specific actions. Movies play their selected
  library item; shows open their series details. Swiping never plays a title.
- Automatic advancement is every seven seconds, with a twelve-second reading
  interval after a manual swipe. Touch/drag gestures, hidden Home tabs,
  off-screen hero content, backgrounding and covering routes pause rotation.
- Reduced motion and accessible navigation disable automatic advancement;
  manual swiping remains available. Page indicators offer direct selection.
- The carousel scrolls away with the mobile Home page. Desktop and TV keep
  their separate billboard controls.

48 focused carousel/Home checks passed, including swipe action identity,
auto-advance and wraparound, off-screen pause/resume, covering-route pause,
reduced motion, enlarged text, light/dark layouts and existing Home navigation.
Static analysis of the carousel, dashboard and spotlight provider is clean.

## Kids mobile and poster-fit follow-up

- Kids Home uses the same swipe/auto-rotation/pause behavior, with kids palette
  colors, large Play and More info buttons, classification metadata and a
  shorter greeting. The existing kids show-playback handler resolves an allowed
  episode. Only allowed server-backed movie/show records populate its feature
  list; public adult recommendations are not substituted into kids Home.
- First-load kids Home uses poster placeholders, while shared phone navigation,
  keyboard-open compact Search and retained library refresh behavior apply to
  kids sessions too. Search suggestions explicitly apply the active kids policy.
- The supplied Obsession/Carrie screenshots exposed poster cropping caused by
  viewport-height cards with cover-fit artwork. Both adult and kids carousels
  now reserve portrait proportions, use contain-fit artwork, and put metadata
  and controls in a separate palette-aware caption panel. Poster titles and
  faces are not cropped or covered by the controls.

## Mobile Studios

Home → More → Studios opens a searchable studio-card directory backed by the
same visible-library studio facets as TV. Existing Home studio tiles open the
same destination. On phones, a studio opens a scrollable featured preview and
curated shelves (Continue Watching, Recently Added, Top Rated, Most Watched),
then Browse all opens its filterable/sortable catalog. Filters and other controls
occupy separate wrapping rows. Android Back returns from the catalog to the
studio landing before leaving the studio. Studio title matching, duplicate-copy
selection, and server/library scoping keep their existing provider behavior.

Final follow-up verification: 134 tests passed across mobile Studios navigation,
TV studio shelves, kids Home and policy filtering, adult/kids poster geometry,
carousel timing, mobile Search, Home and navigation. Static analysis of the
changed implementation and key tests reported no issues; `git diff --check`
was clean.

The subsequent `Screenshot_20261031_020914.jpg` / `020923.jpg` review showed
that the uncropped hero was too tall to expose its buttons before scrolling.
Cards now occupy 76% of the carousel width, and carousel height is bounded by
the actual Home body viewport after toolbar/greeting space, with a shelf peek
reserved below. Contain-fit artwork and the separate rounded caption panel
are retained. Adult and kids layouts share this sizing policy. Forty-two
focused Home/carousel/kids checks passed, including complete initial-screen
action visibility at 360×640 and 390×740 body sizes.

The final poster inset adds 12 logical pixels above and beside the contained
artwork, leaving breathing room inside the rounded card without increasing its
height. The profile-resume follow-up keeps an existing adult/kids session when
switching apps or waking the phone. Fresh-launch selection still follows the
startup preference/household rule, and explicit profile switching retains its
existing parent PIN checks. Ninety-two targeted startup, resume, profile-switch,
binding and carousel tests passed; focused static analysis reported no issues.
