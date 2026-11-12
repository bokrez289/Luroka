#!/usr/bin/env python3
"""Extract embedded runtime notices from digest-verified Maven artifacts.

This supplements source notices, not a complete licensing determination.
Resolve a new runtime inventory before changing dependency versions.
"""
import argparse
import hashlib
import io
import json
from pathlib import Path
import re
import zipfile

ROOT = Path(__file__).resolve().parents[2]
OUTPUT = ROOT / 'assets/licenses/android-runtime-embedded-notices.txt'
NOTICE = re.compile(r'(^|/)(license|notice|copying|copyright|authors)([._-]|$)', re.I)


def render(inventory, cache):
    parts = ['Embedded notices from the Android runtime Maven artifacts resolved on 2026-11-12.\n'
             'Not a complete source/license inventory: many artifacts do not embed notices.\n']
    for row in json.loads(inventory.read_text()):
        base = cache / row['group'] / row['name'] / row['version']
        matches = [p for p in base.glob('*/' + row['file'])
                   if hashlib.sha256(p.read_bytes()).hexdigest() == row['sha256']]
        if len(matches) != 1:
            raise ValueError(f"Expected one hash-matching artifact: {row['group']}:{row['name']}:{row['version']}")
        observed = []

        def collect(archive, prefix=''):
            for name in sorted(archive.namelist()):
                if not NOTICE.search(name) or name.endswith('/'):
                    continue
                try:
                    text = '\n'.join(line.rstrip() for line in archive.read(name).decode('utf-8').splitlines())
                except UnicodeDecodeError:
                    continue
                observed.append(prefix + name)
                parts.append(f"===== {row['group']}:{row['name']}:{row['version']} / {prefix}{name} =====\n\n{text.strip()}\n")

        if zipfile.is_zipfile(matches[0]):
            with zipfile.ZipFile(matches[0]) as archive:
                collect(archive)
                if 'classes.jar' in archive.namelist():
                    with zipfile.ZipFile(io.BytesIO(archive.read('classes.jar'))) as nested:
                        collect(nested, 'classes.jar!/')
        if observed != row['embedded_notice_paths']:
            raise ValueError('Embedded notice paths differ from inventory')
    return '\n'.join(parts).encode('utf-8')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--inventory', type=Path, default=ROOT / 'docs/android-runtime-artifacts-zxing-20261112.json')
    parser.add_argument('--cache', type=Path, default=Path.home() / '.gradle/caches/modules-2/files-2.1')
    parser.add_argument('--check', action='store_true')
    args = parser.parse_args()
    data = render(args.inventory, args.cache)
    if args.check:
        if OUTPUT.read_bytes() != data:
            raise SystemExit('Embedded runtime notices differ from verified inputs')
    else:
        OUTPUT.write_bytes(data)
    print('Verified embedded runtime notices against artifact hashes')
