#!/usr/bin/env python3
"""Extract only the illustration from the user-supplied kids Home reference.

The crop excludes navigation, labels, age controls and the media catalog.
Re-run when replacing kids_home.png with the same reference composition.
"""
from pathlib import Path
from PIL import Image

root = Path(__file__).resolve().parents[2]
source = Image.open(root / 'kids_home.png').convert('RGB')
width, height = source.size
art = source.crop((int(width * .43), int(height * .09), width, int(height * .38)))
art.save(root / 'assets/branding/kids-treehouse.webp', 'WEBP', quality=92)
