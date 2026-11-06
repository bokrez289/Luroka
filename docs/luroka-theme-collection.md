# Lumora theme collection

Appearance → Theme offers eight dark and four light cinema palettes.

| Theme | Canvas | Accent |
| --- | --- | --- |
| Coral | Midnight blue | Sunset coral |
| Ocean | Deep blue | Ice blue |
| Jade | Evergreen | Mint |
| Amethyst | Midnight violet | Lavender |
| Obsidian | Pure black | Champagne |
| Burgundy | Velvet wine | Rose |
| Slate | Graphite | Periwinkle |
| Espresso | Cocoa | Caramel |
| Pearl (light) | Porcelain | Sapphire |
| Linen (light) | Warm ivory | Terracotta |
| Sage (light) | Soft green | Eucalyptus |
| Lavender (light) | Pale lilac | Deep violet |

The picker groups dark and light palettes and applies a choice immediately.
Coral is the fresh-install and unavailable-perk fallback. The original four
System/Light/Dark/OLED choices are retired from the picker; their persisted IDs
remain readable for existing settings. The original four Lumora palettes keep
their IDs and colors. Every Lumora palette is available without an entitlement.

Palette checks require body text contrast of at least 7:1 and muted text,
accent text, and filled-button labels of at least 4.5:1. Light palettes use
deep accents, and the TV Discover spotlight uses pale artwork scrims for dark
text. Obsidian uses Android's black launch-screen mode.

Verification: 141 targeted checks passed across palette contrast, theme
construction, provider persistence/startup resolution, the theme picker,
Discover navigation, and settings storage. The picker checks cover all twelve
options, retiring the old four, light/dark switching, selected-state feedback,
and D-pad focus.
