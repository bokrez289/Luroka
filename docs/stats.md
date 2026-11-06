# Viewing Activity Statistics — Dev Plan

## Direction
Turn Viewing Activity from three numbers into a local-first stats experience worth
screenshotting, in the spirit of absorb's stats screen (pounat/absorb) but built for video:
**real sections over real data** — no fake categories, nothing server-tracked by default,
nothing invented we don't log. Device-local stays the identity.

## Final IA
```
Settings → Profiles & Family                    (unchanged)
  └── People row: "+ today chip"                (Phase 4)
  └── Viewing activity row                      (subtitle: "Today 1h 20m · 12-day streak")
        └── ViewingActivityScreen
              Hero summary                     30-day chart
              Streak & records                 Weekday split
              Time-of-day strip                By category
              Top titles                       Top studios
              Recent sessions (paged)
```
One entry, all platforms. TV hub keeps the family category; the screen renders its TV variant.

## Current grounding (verified)
- Schema v26 at `lib/database/app_database.dart:372`; `ScreenTimeDaily(profileId, localDate,
  durationMs, updatedAt)` at `lib/database/tables.dart:378` — day totals only.
- `ScreenTimeService` (`lib/services/screen_time_service.dart`) is lease-based, buckets
  elapsed time by local date (`splitScreenTimeByLocalDate`), injectable wall/monotonic clocks.
- Player wire-in: `_updateScreenTimeAccounting` at `lib/screens/video_player/parts/playback_services.dart:829`.
- Shared loader `lib/services/viewing_activity_summary.dart` feeds the family hub and screen.

## Phase 1 — Session ledger (schema + service, no UI)
**Schema v27** (`tables.dart`, bump `app_database.dart` `schemaVersion`, extend `onUpgrade`):
```
ScreenTimeSessions:
  id           IntColumn autoincrement pk
  profileId    Text
  localDate    Text (ISO day, bucketed at close — midnight split like daily)
  startUtcMs   Int
  endUtcMs     Int
  durationMs   Int
  mediaKind    Int enum: 0 movie, 1 episode, 2 liveTv, 3 music, 4 other
  serverKey    Text?  (machineIdentifier / jellyfin device key, no names in text)
  itemKey      Text?  (itemId)
  itemTitle    Text?
```
Indexes: `(profileId, localDate)`, `(profileId, mediaKind)`. Rows are ~1KB; 4h/day user ≈ 12
sessions/day ≈ 4.4k rows/year — no pruning. Confirm-first **Clear history** wipes sessions,
never the daily totals.

**Recording (`screen_time_service.dart`, tests: `test/services/screen_time_service_test.dart`):**
- New constructor param `sessionKeySource` — callable, evaluated at start and on each
  `_checkpoint`, so the player returns current metadata lazily.
- `acquireLease()` opens a session row on first lease (kind/identity from the source, else
  `other`). `_checkpoint` in `continueInterval: false` mode closes it; identity change since
  open → close + open new row (title changes are natural session boundaries).
- Midnight split: checkpoint spanning two dates closes the row at the boundary and reopens.
- Daily totals remain the single source of truth; sessions never feed today/week/month chips.

**Player wiring:** adapter exposes `{mediaKind, itemKey, itemTitle, serverKey}` from the
player's current media item. Live TV reports kind `2` with the channel name. Music lease
adoption reserved (`kind 3`, not counted in v1 charts).

No UI in this phase; data accumulates silently behind tests.

## Phase 2 — Analytics query layer (pure SQL, no widgets)
New `lib/services/screen_time_analytics.dart`, functions take `(AppDatabase, String profileId,
DateRange)`:
- `dailySeries(range) → List<(date, ms)>` (forward-filled zero days from `ScreenTimeDaily`)
- `totals()`, `streaks()` (current/longest), `records()` (longest day/week, busiest day)
- `weekdayBreakdown()`, `hourOfDayBins(range, binMinutes = 120)` from sessions
- `kindBreakdown(range)`, `topTitles(range, limit)` — `topStudios` deferred to Phase 5
- `sessions(range, page)` for history

`loadViewingActivitySummary` stays authoritative for hub chips.

## Phase 3 — Charts + phone/desktop screen rebuild
New `lib/screens/settings/widgets/viewing_activity_charts.dart` (all `CustomPainter`, colors
from `tokens(context)`; zero new packages):

| Section | Widget | Notes |
|---|---|---|
| Hero | existing summary + all-time/avg | reuse `formatViewingDuration` |
| Streak & record | `StatsBadgeRow` | current, longest streak, best day |
| 30-day chart | `StatsDailyBars` | tappable day → detail footer; today accented |
| Weekday | `StatsWeekdayBars` | 7 bars, peak silhouetted |
| Time of day | `StatsHourStrip` | 12 × 2h bins, am/pm labels |
| By category | `StatsKindChips` | Movie/TV/Live TV share |
| Sessions | paged list | "2h 05m · title" |

- Period chips via existing `ExpressiveButtonGroup` (7d/30d/90d/Year/All).
- Rebuild `screen_time_screen.dart` into sectioned `SettingsGroup`s; empty state designed.
- 150–200ms entrance fade, first render only, respect reduced-motion.
- 200% text / 320px: charts keep min row height, wrap 1-per-row below 600dp.
- Settings-row subtitle gets live "Today Xh Ym"; optional 30-day sparkline trailing.

## Phase 4 — TV + family integration
- **TV**: D-pad-focusable day list (per-day focus targets, same pattern as content strips),
  single-column, TV-typography sized; hide hour strip + studios on TV.
- **Family hub**: per-person "Today Xh" trailing chip — single SQL group-by
  `loadPerProfileToday`.
- Other people's stats route through the shared profile-management PIN helper (extracted
  from `profile_switch_screen.dart:363`); kids profiles never see stats screens.

## Phase 5 — Top titles & Top studios
- `topTitles`: poster row via existing imagery cache; cap 5.
- `topStudios`: map item identity through `studios_provider` / `studio_brands` logos.
- Honest fallback when linkage is lossy (e.g. live TV) — never mislabeled cards.

## i18n
New `activityStats` block (~40 en keys); reuse `family.*` where present. Run
`dart run slang` **after** `scripts/codegen/generate_custom_branding.py` so key
preservation holds.

## Tests
1. Session lifecycle: lease open→flush→close, item-switch split, midnight split,
   unknown-identity fallback kind.
2. Migration 26→27 keeps daily rows intact; sessions empty.
3. Analytics: streaks/records/weekday/hour from handcrafted inputs.
4. UI: empty/populated states, period chips, 200% text wrap, kids routing excludes stats.
5. TV focus: day-list traversal, hub chip focus restore.

## Acceptance criteria
- Today/week/month identical before/after the feature for any profile (daily table untouched).
- Watching across midnight produces two dated rows and a segmented session.
- Clearing history removes sessions, never the chips.
- Charts themable across the 8 palettes, readable at 200% text scale, 320px-safe, TV-safe.
- No network calls, no new dependencies, no new assets; analyze clean; new tests green.
- No commit unless explicitly requested.

## Out of scope (explicit)
Server-side play-history import, title-level top lists from servers, goals/limits (Viewing
activity = statistics only), year-review card, section reordering UI, music-kind charts,
per-day poster art, per-profile exports.

## Suggested start
Phase 1 + 2 in one PR (schema + collector + queries + tests, zero UI). UI lands in Phase 3
once real days of data exist.
