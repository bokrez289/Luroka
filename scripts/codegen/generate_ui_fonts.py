#!/usr/bin/env python3
"""Create predictable static Inter UI weights from the licensed variable source.

Requires fonttools. Generated TTFs are bundled directly; release builds do not
need Python/fonttools or a network connection to obtain their UI font.
"""
from pathlib import Path
from fontTools.ttLib import TTFont
from fontTools.varLib.instancer import instantiateVariableFont

ROOT = Path(__file__).resolve().parents[2]
FONTS = ROOT / "assets/fonts"
WEIGHTS = [(100, "Thin"), (200, "ExtraLight"), (300, "Light"),
           (400, "Regular"), (500, "Medium"), (600, "SemiBold"),
           (700, "Bold"), (800, "ExtraBold"), (900, "Black")]

def main():
    for weight, name in WEIGHTS:
        destination = FONTS / f"Inter-{name}.ttf"
        if destination.exists() and destination.stat().st_mtime >= (FONTS / "Inter-Variable.ttf").stat().st_mtime:
            with TTFont(destination) as existing:
                if existing["OS/2"].usWeightClass == weight and "fvar" not in existing:
                    print(f"Verified existing {destination.name} ({weight})")
                    continue
        font = TTFont(FONTS / "Inter-Variable.ttf")
        instantiateVariableFont(font, {"wght": weight, "opsz": 14},
                                inplace=True, updateFontNames=True, optimize=False)
        assert font["OS/2"].usWeightClass == weight
        assert "fvar" not in font
        font.save(destination)
        font.close()
        print(f"Generated {destination.name} ({weight})")

if __name__ == "__main__":
    main()
