#!/usr/bin/env python3
"""Bundle the notices shipped in the pinned Android libass distribution."""

import argparse
import hashlib
from pathlib import Path
import zipfile

ROOT = Path(__file__).resolve().parents[2]
SHA256 = 'fc98637752695d7cf9e26b02befaa634dd4cad25a2f38fba80de814bfd310a17'
PREFIX = 'libass-android-0.18.3/licenses/'
FILES = (
    'libass/COPYING',
    'harfbuzz/AUTHORS', 'harfbuzz/COPYING',
    'fribidi/AUTHORS', 'fribidi/COPYING',
    'fontconfig/AUTHORS', 'fontconfig/COPYING',
    'expat/AUTHORS', 'expat/COPYING', 'expat/LICENSE.build',
    'freetype/LICENSE.TXT', 'freetype/FTL.TXT', 'freetype/GPLv2.TXT',
    'libunibreak/AUTHORS', 'libunibreak/LICENSE.build',
)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('archive', type=Path, help='Pinned libass-android-0.18.3.zip')
    parser.add_argument('--check', action='store_true', help='Compare without modifying the bundled notice')
    args = parser.parse_args()
    if hashlib.sha256(args.archive.read_bytes()).hexdigest() != SHA256:
        raise SystemExit('The libass archive does not match the pinned SHA-256')
    sections = [
        'Notices from libass-android 0.18.3; archive SHA-256: ' + SHA256,
        'Source: https://github.com/edde746/libass/releases/tag/0.18.3',
    ]
    with zipfile.ZipFile(args.archive) as archive:
        for name in FILES:
            text = archive.read(PREFIX + name).decode('utf-8').replace('\r\n', '\n').rstrip()
            sections.append(f'===== {name} =====\n\n{text}')
    output = ROOT / 'assets/licenses/libass-android-0.18.3-notices.txt'
    generated = '\n\n'.join(sections) + '\n'
    if args.check:
        if output.read_text(encoding='utf-8') != generated:
            raise SystemExit('Bundled libass notices do not match the pinned archive')
    else:
        output.write_text(generated, encoding='utf-8')
    print(f'Verified {len(FILES)} notices from the pinned libass archive')


if __name__ == '__main__':
    main()
