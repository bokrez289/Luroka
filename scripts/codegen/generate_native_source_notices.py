#!/usr/bin/env python3
"""Collect upstream notices from the Android mpv-build's pinned commits."""

import argparse
import hashlib
from pathlib import Path
from urllib.request import urlopen

ROOT = Path(__file__).resolve().parents[2]
NOTICES = (
    ('mpv/Copyright', 'https://raw.githubusercontent.com/mpv-player/mpv/41f6a645068483470267271e1d09966ca3b9f413/Copyright', 'bfe9ee4cceabcb8ecbfadf208d04156f73d801e6a57369a5606bb8341e204a23'),
    ('FFmpeg/LICENSE.md', 'https://raw.githubusercontent.com/FFmpeg/FFmpeg/894da5ca7d742e4429ffb2af534fcda0103ef593/LICENSE.md', '2e1d16c72fd74e12063776371da757322f8b77589386532f4fd8634bde7de1af'),
    ('libplacebo/LICENSE', 'https://raw.githubusercontent.com/haasn/libplacebo/cee9b076f2c63104ccfd497fa79c39a867293ec4/LICENSE', 'b3aa400aca6d2ba1f0bd03bd98d03d1fe7489a3bbb26969d72016360af8a5c9d'),
    ('OpenSSL/LICENSE.txt', 'https://raw.githubusercontent.com/openssl/openssl/af1775b60dfa141a4ad762585052cabeb9f37e9e/LICENSE.txt', '7d5450cb2d142651b8afa315b5f238efc805dad827d91ba367d8516bc9d49e7a'),
)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check', action='store_true', help='Compare with the bundled notice')
    args = parser.parse_args()
    sections = ['Source notices from the pinned Android mpv-build dependencies. This is not a complete native inventory.']
    for name, url, expected in NOTICES:
        with urlopen(url, timeout=30) as response:
            data = response.read()
        if hashlib.sha256(data).hexdigest() != expected:
            raise SystemExit(f'Unexpected source notice digest: {name}')
        sections.append(f'===== {name} =====\nSource: {url}\nSHA-256: {expected}\n\n{data.decode("utf-8").rstrip()}')
    output = ROOT / 'assets/licenses/mpv-native-source-notices.txt'
    contents = '\n\n'.join(sections) + '\n'
    if args.check:
        if output.read_text(encoding='utf-8') != contents:
            raise SystemExit('Bundled native source notices differ from the pinned sources')
    else:
        output.write_text(contents, encoding='utf-8')
    print(f'Verified {len(NOTICES)} pinned source notices')


if __name__ == '__main__':
    main()
