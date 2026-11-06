#!/usr/bin/env python3
"""Save Google's version-specific Cronet license bundle and verify its digest."""
import argparse
import hashlib
from pathlib import Path
from urllib.request import urlopen

URL = 'https://storage.googleapis.com/chromium-cronet/android/143.0.7445.0/Release/cronet/LICENSE'
SHA256 = 'be9838eb10695d40d337a442d1c1921bdfe2d3df44f3827c350e810bb0670e65'
OUTPUT = Path(__file__).resolve().parents[2] / 'assets/licenses/cronet-143.7445.0-notices.txt'


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check', action='store_true')
    args = parser.parse_args()
    with urlopen(URL, timeout=60) as response:
        data = response.read()
    if hashlib.sha256(data).hexdigest() != SHA256:
        raise SystemExit('Cronet upstream license digest changed; review before updating')
    if args.check:
        if OUTPUT.read_bytes() != data:
            raise SystemExit('Bundled Cronet notices differ from verified upstream bytes')
    else:
        OUTPUT.write_bytes(data)
    print(f'Verified Cronet 143.7445.0 license bundle ({len(data)} bytes)')


if __name__ == '__main__':
    main()
