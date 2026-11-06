# Lumora identity

The mark pairs a softly sculpted **L** with a forward-facing beam of light.
Coral, peach, and warm highlights sit on a deep navy plate; a single-color
silhouette serves light backgrounds and themed launchers.

## Source and exports

- `lumora-symbol.svg`: editable vector master; paths and gradients originate here.
- `lumora-icon.svg`: scalable launcher tile.
- `../lumora.png`: 1024px rounded launcher tile, used by authentication and About.
- `lumora-icon-square.png`: opaque square export for store submissions.
- `../lumora-mark.svg`: tight, transparent in-app mark.
- `lumora-monochrome.svg`: single-color mark for light surfaces.
- `lumora-tv-banner.png`: 1280 × 720 TV launcher lockup.
- `lumora-brand-board.png`: design presentation, including small-size examples.

The presentation and source files in this directory are not bundled into the
Flutter app. Only the primary PNG and in-app SVG are included.

## Regeneration

Requires Pillow and CairoSVG:

```sh
python3 scripts/codegen/generate_custom_branding.py --artwork-only
python3 scripts/codegen/generate_custom_branding.py --check
```

This generates the shared assets, Android legacy/adaptive/themed icons and
splash vector, TV banners, Apple primary icon assets, Windows ICO, and default
icon-picker previews. Android foregrounds are inset for circular masks.

To render a presentation without updating app assets:

```sh
python3 scripts/codegen/generate_custom_branding.py --preview /tmp/opencode/lumora-preview.png
```
