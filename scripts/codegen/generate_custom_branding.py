#!/usr/bin/env python3
"""Generate Luroka artwork (requires Pillow and CairoSVG).

The editable master is assets/branding/lumora-symbol.svg. Use --artwork-only
for branding updates, or run without flags before `dart run slang` after
importing upstream translations to also normalize translated product copy.
Keys, URLs, storage identifiers and explicit upstream attribution are preserved.
"""

import argparse
from io import BytesIO
from pathlib import Path
import json
import re
import xml.etree.ElementTree as ET

import cairosvg
from PIL import Image, ImageDraw, ImageFont

ROOT = Path(__file__).resolve().parents[2]
RES = ROOT / "android/app/src/main/res"
SYMBOL = ROOT / "assets/branding/lumora-symbol.svg"


def symbol_svg(*, tight=False, color=None):
    source = SYMBOL.read_text()
    if tight:
        source = source.replace('viewBox="0 0 1024 1024"', 'viewBox="230 190 590 630"')
    if color:
        source = re.sub(r'fill="url\(#[^"]+\)"', f'fill="{color}"', source)
    return source


def icon_svg(*, rounded=True):
    source = symbol_svg()
    body = source[source.index('>') + 1:source.rindex('</svg>')]
    radius = 224 if rounded else 0
    return f'''<svg xmlns="http://www.w3.org/2000/svg" width="1024" height="1024" viewBox="0 0 1024 1024">
  <defs>
    <linearGradient id="plate" x1="80" y1="0" x2="900" y2="1024" gradientUnits="userSpaceOnUse">
      <stop stop-color="#1A2641"/><stop offset="0.55" stop-color="#10182B"/><stop offset="1" stop-color="#0A101D"/>
    </linearGradient>
    <radialGradient id="bloom" cx="0.72" cy="0.24" r="0.8">
      <stop stop-color="#FF927B" stop-opacity="0.10"/><stop offset="1" stop-color="#FF927B" stop-opacity="0"/>
    </radialGradient>
  </defs>
  <rect width="1024" height="1024" rx="{radius}" fill="url(#plate)"/>
  <rect width="1024" height="1024" rx="{radius}" fill="url(#bloom)"/>
  {body}
</svg>
'''


def render(svg, size):
    return Image.open(BytesIO(cairosvg.svg2png(bytestring=svg.encode(), output_width=size, output_height=size))).convert('RGBA')


def logo(size, *, rounded=True):
    return render(icon_svg(rounded=rounded), size)


def tv_banner():
    banner = Image.new('RGB', (1280, 720), '#10182B')
    mark = render(symbol_svg(tight=True), 350)
    banner.paste(mark, (120, 185), mark)
    draw = ImageDraw.Draw(banner)
    font = ImageFont.truetype(str(ROOT / 'assets/fonts/Inter-SemiBold.ttf'), 120)
    draw.text((510, 355), 'Luroka', font=font, fill='#F5F5FA', anchor='lm')
    return banner


def preview(path):
    board = Image.new('RGB', (1600, 1040), '#0A101D')
    draw = ImageDraw.Draw(board)
    font_path = str(ROOT / 'assets/fonts/Inter-SemiBold.ttf')
    font = lambda size: ImageFont.truetype(font_path, size)
    draw.text((80, 60), 'LUROKA  /  A NEW LIGHT', font=font(20), fill='#AAB5CE')
    master = logo(512)
    board.paste(master, (80, 150), master)
    draw.text((672, 184), 'Luroka', font=font(104), fill='#F6F5FA')
    draw.text((678, 324), 'An L. A beam of light. Forward motion.', font=font(25), fill='#AAB5CE')
    for x, fill, color, label in [(672, '#162139', None, 'IN-APP MARK'), (1080, '#F1F2F6', '#172238', 'SINGLE-COLOR MARK')]:
        draw.rounded_rectangle((x, 410, x + 368, 640), radius=28, fill=fill)
        mark = render(symbol_svg(tight=True, color=color), 180)
        board.paste(mark, (x + 94, 435), mark)
        draw.text((x, 665), label, font=font(15), fill='#AAB5CE')
    draw.text((80, 700), 'TV LAUNCHER', font=font(15), fill='#AAB5CE')
    banner = tv_banner().resize((512, 288), Image.Resampling.LANCZOS)
    board.paste(banner, (80, 738))
    draw.text((672, 758), 'ACTUAL ICON SIZES', font=font(15), fill='#AAB5CE')
    x = 672
    for size in [24, 32, 48, 64, 96, 128]:
        tile = master.resize((size, size), Image.Resampling.LANCZOS)
        board.paste(tile, (x, 930 - size), tile)
        draw.text((x, 952), f'{size}px', font=font(14), fill='#AAB5CE')
        x += size + 28
    board.save(path)


def android_mark(*, monochrome=False, splash=False):
    """Vector paths and gradients come from the same SVG as the raster assets.

    Android's adaptive/splash masks get an inset version whose complete
    silhouette stays within the central safe circle. Never bake the plate
    into the foreground: launchers provide the mask and background layer.
    """
    ns = {'svg': 'http://www.w3.org/2000/svg'}
    source = ET.fromstring(symbol_svg())
    gradients = {node.attrib['id']: node for node in source.findall('.//svg:linearGradient', ns)}
    paths = []
    for node in source.findall('svg:path', ns):
        data = node.attrib['d']
        if monochrome:
            paths.append(f'    <path android:fillColor="#FFFFFF" android:pathData="{data}" />')
            continue
        gradient = gradients[node.attrib['fill'][5:-1]]
        stops = gradient.findall('svg:stop', ns)
        items = '\n'.join(
            f'          <item android:offset="{stop.attrib.get("offset", "0")}" android:color="{stop.attrib["stop-color"]}" />'
            for stop in stops
        )
        paths.append(f'''    <path android:pathData="{data}">
      <aapt:attr name="android:fillColor">
        <gradient android:type="linear" android:startX="{gradient.attrib['x1']}" android:startY="{gradient.attrib['y1']}"
            android:endX="{gradient.attrib['x2']}" android:endY="{gradient.attrib['y2']}">
{items}
        </gradient>
      </aapt:attr>
    </path>''')
    dimension = 288 if splash else 108
    return f'''<?xml version="1.0" encoding="utf-8"?>
<!-- Generated from assets/branding/lumora-symbol.svg. -->
<vector xmlns:android="http://schemas.android.com/apk/res/android" xmlns:aapt="http://schemas.android.com/aapt"
    android:width="{dimension}dp" android:height="{dimension}dp" android:viewportWidth="1024" android:viewportHeight="1024">
  <group android:scaleX="0.8" android:scaleY="0.8" android:translateX="102.4" android:translateY="102.4">
{chr(10).join(paths)}
  </group>
</vector>
'''


def write(path, text):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text)


def apple_icons():
    for platform in ['ios']:
        folder = ROOT / platform / 'luroka.icon'
        write(folder / 'Assets/luroka-symbol.svg', symbol_svg())
        path = folder / 'icon.json'
        data = json.loads(path.read_text())
        data['fill'] = {'solid': 'srgb:0.06275,0.09412,0.16863,1.00000'}
        for group in data['groups']:
            group['specular'] = False
            group['shadow'] = {'kind': 'neutral', 'opacity': 0.12}
            for layer in group['layers']:
                layer['image-name'] = 'luroka-symbol.svg'
                layer['name'] = 'Luroka'
                layer['glass'] = False
                layer['position'] = {'scale': 1, 'translation-in-points': [0, 0]}
        write(path, json.dumps(data, indent=2) + '\n')

    # Keep existing asset-catalog names and image dimensions: Xcode's primary
    # icon and top-shelf references remain intact, including parallax layers.
    assets = ROOT / 'tvos/Runner/Assets.xcassets/AppIcon.brandassets'
    for path in assets.rglob('*.png'):
        with Image.open(path) as current:
            width, height = current.size
        if 'Top Shelf Image' in str(path):
            banner = tv_banner()
            scale = min(width / banner.width, height / banner.height)
            fitted = banner.resize((round(banner.width * scale), round(banner.height * scale)), Image.Resampling.LANCZOS)
            image = Image.new('RGB', (width, height), '#10182B')
            image.paste(fitted, ((width - fitted.width) // 2, (height - fitted.height) // 2))
            image.save(path)
            continue
        image = Image.new('RGBA', (width, height), (0, 0, 0, 0))
        if path.name.startswith('Back'):
            image.paste('#10182B', (0, 0, width, height))
        elif path.name.startswith('Front'):
            size = round(height * 0.72)
            mark = render(symbol_svg(tight=True), size)
            image.paste(mark, ((width - size) // 2, (height - size) // 2), mark)
        image.save(path)


def generate_artwork():
    master = logo(1024)
    master.save(ROOT / 'assets/lumora.png')
    write(ROOT / 'assets/lumora-mark.svg', symbol_svg(tight=True))
    write(ROOT / 'assets/branding/lumora-icon.svg', icon_svg())
    write(ROOT / 'assets/branding/lumora-monochrome.svg', symbol_svg(tight=True, color='#172238'))
    logo(1024, rounded=False).convert('RGB').save(ROOT / 'assets/branding/lumora-icon-square.png')
    preview(ROOT / 'assets/branding/lumora-brand-board.png')
    for density, size in [('mdpi', 48), ('hdpi', 72), ('xhdpi', 96), ('xxhdpi', 144), ('xxxhdpi', 192)]:
        destination = RES / f'mipmap-{density}'
        destination.mkdir(parents=True, exist_ok=True)
        icon = master.resize((size, size), Image.Resampling.LANCZOS)
        icon.save(destination / 'ic_launcher_custom.png')
        icon.save(destination / 'ic_launcher.png')

    write(RES / 'drawable/lumora_icon_foreground.xml', android_mark())
    write(RES / 'drawable/lumora_icon_monochrome.xml', android_mark(monochrome=True))
    write(RES / 'drawable/splash_icon_custom.xml', android_mark(splash=True))
    render(symbol_svg(tight=True, color='#FFFFFF'), 96).save(RES / 'drawable-xxxhdpi/ic_stat_notification.png')
    write(RES / 'drawable/lumora_icon_background.xml', '''<?xml version="1.0" encoding="utf-8"?>
<shape xmlns:android="http://schemas.android.com/apk/res/android" android:shape="rectangle">
  <solid android:color="#10182B" />
</shape>
''')
    adaptive = '''<?xml version="1.0" encoding="utf-8"?>
<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">
  <background android:drawable="@drawable/lumora_icon_background" />
  <foreground android:drawable="@drawable/lumora_icon_foreground" />
  <monochrome android:drawable="@drawable/lumora_icon_monochrome" />
</adaptive-icon>
'''
    for name in ['ic_launcher', 'ic_launcher_custom']:
        write(RES / f'mipmap-anydpi-v26/{name}.xml', adaptive)

    banner = tv_banner()
    banner.save(ROOT / 'assets/branding/lumora-tv-banner.png')
    banner.resize((320, 180), Image.Resampling.LANCZOS).save(RES / 'drawable/tv_banner_custom.png')
    for density in ['xhdpi', 'xxxhdpi']:
        destination = RES / f'drawable-{density}'
        destination.mkdir(parents=True, exist_ok=True)
        size = (320, 180) if density == 'xhdpi' else (1280, 720)
        banner.resize(size, Image.Resampling.LANCZOS).save(destination / 'tv_banner.png')
    previews = ROOT / 'assets/app_icons/previews'
    for name in ['default-androidtv', 'default-tvos']:
        # A centered mark reads correctly inside the picker's square tiles.
        master.resize((216, 216), Image.Resampling.LANCZOS).save(previews / f'{name}.webp', quality=95)

    apple_icons()


def check_artwork():
    """Catch stale exports and mask clipping before shipping generated assets."""
    with Image.open(ROOT / 'assets/lumora.png') as master:
        assert master.size == (1024, 1024)
        assert master.convert('RGBA').tobytes() == logo(1024).tobytes(), 'Stale primary icon'
    with Image.open(ROOT / 'assets/branding/lumora-icon-square.png') as square:
        assert square.size == (1024, 1024) and square.mode == 'RGB', 'Store icon must be opaque'
    for density, size in [('mdpi', 48), ('hdpi', 72), ('xhdpi', 96), ('xxhdpi', 144), ('xxxhdpi', 192)]:
        with Image.open(RES / f'mipmap-{density}/ic_launcher_custom.png') as image:
            assert image.size == (size, size), f'Wrong launcher dimensions: {density}'
    with Image.open(RES / 'drawable/tv_banner_custom.png') as banner:
        assert banner.size == (320, 180)

    # Adaptive icons may be circular. The complete mark must fit Android's
    # 61%-diameter safe circle after the foreground's 0.8 inset transform.
    alpha = render(symbol_svg(), 1024).getchannel('A')
    pixels = alpha.load()
    for y in range(1024):
        for x in range(1024):
            if pixels[x, y] > 128:
                assert (0.8 * (x - 512)) ** 2 + (0.8 * (y - 512)) ** 2 <= (1024 * 0.305) ** 2, 'Adaptive mark clips its safe circle'
    android_ns = '{http://schemas.android.com/apk/res/android}'
    svg_ns = {'svg': 'http://www.w3.org/2000/svg'}
    expected = [node.attrib['d'] for node in ET.fromstring(symbol_svg()).findall('svg:path', svg_ns)]
    for name in ['lumora_icon_foreground', 'lumora_icon_monochrome', 'splash_icon_custom']:
        root = ET.parse(RES / f'drawable/{name}.xml').getroot()
        assert [node.attrib[f'{android_ns}pathData'] for node in root.iter('path')] == expected, f'Stale native vector: {name}'
    for platform in ['ios']:
        folder = ROOT / platform / 'luroka.icon'
        data = json.loads((folder / 'icon.json').read_text())
        for group in data['groups']:
            for layer in group['layers']:
                assert (folder / 'Assets' / layer['image-name']).read_text() == symbol_svg()
                assert layer['position']['scale'] == 1
    print('Luroka artwork verified: vector consistency, adaptive safe area, opaque store export, launcher sizes, and Apple assets.')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--preview', type=Path, help='Render a design board only, without changing app assets.')
    parser.add_argument('--artwork-only', action='store_true', help='Generate artwork without normalizing translations.')
    parser.add_argument('--check', action='store_true', help='Verify generated artwork without changing files.')
    args = parser.parse_args()
    if args.check:
        check_artwork()
        return
    if args.preview:
        preview(args.preview)
        print(f'Rendered {args.preview}')
        return
    generate_artwork()
    if args.artwork_only:
        print('Generated Luroka artwork.')
        return
    # Translation IDs remain stable across upstream merges. Only display values
    # are normalized, keeping each locale's wording and the upstream credit.
    entry = re.compile(r'^(\s*"(?P<key>[^"\\]+)"\s*:\s*)(?P<value>"(?:[^"\\]|\\.)*")', re.MULTILINE)
    for source in (ROOT / "lib/i18n").glob("*.i18n.json"):
        def rebrand(match):
            if match.group("key") in {"basedOnPlezy", "basedOnLomivo"}:
                return match.group(0)
            value = (match.group("value").replace("Plezy Custom", "Luroka")
                     .replace("Lumora", "Luroka").replace("Lomivo", "Luroka")
                     .replace("LUMORA", "LUROKA").replace("LOMIVO", "LUROKA")
                     .replace("Plezy", "Luroka"))
            if match.group("key") == "inviteMessage":
                value = value.replace('lumora://watch', 'luroka://watch').replace('lomivo://watch', 'luroka://watch')
            prefix = (match.group(1).replace('lumora', 'luroka').replace('Lumora', 'Luroka')
                      .replace('lomivo', 'luroka').replace('Lomivo', 'Luroka'))
            return prefix + value
        original = source.read_text()
        updated = entry.sub(rebrand, original)
        # Namespace entries have object values and are not matched above.
        updated = re.sub(r'^(\s*")(?:lumora|lomivo)([^"\\]*"\s*:)', r'\1luroka\2', updated, flags=re.MULTILINE)
        if updated != original:
            source.write_text(updated)
    print("Generated Luroka logo, launcher icons, TV banner, and translated branding.")


if __name__ == "__main__":
    main()
