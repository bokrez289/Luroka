#!/usr/bin/env python3
"""Extract Sentry Android's verified third-party notice from its Maven JAR."""
import argparse
import hashlib
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
JAR_SHA256 = '8d0d0e6b36d82f16c82ca9dfd44c43f2b139c14243890c74b0c64751308b7724'
NOTICE_SHA256 = 'a2ea6ba8658edd12f4601e7351c2e6fc9eb85f7c1a234b04945ca4fa194a395e'
OUTPUT = ROOT / 'assets/licenses/sentry-android-8.56.0-notices.txt'


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('jar', type=Path)
    parser.add_argument('--check', action='store_true')
    args = parser.parse_args()
    if hashlib.sha256(args.jar.read_bytes()).hexdigest() != JAR_SHA256:
        raise SystemExit('Unexpected Sentry JAR digest')
    with zipfile.ZipFile(args.jar) as archive:
        notice = archive.read('META-INF/SENTRY_THIRD_PARTY_NOTICES.md')
    if hashlib.sha256(notice).hexdigest() != NOTICE_SHA256:
        raise SystemExit('Unexpected Sentry third-party notice digest')
    if args.check:
        if OUTPUT.read_bytes() != notice:
            raise SystemExit('Bundled Sentry notices differ from the verified JAR')
    else:
        OUTPUT.write_bytes(notice)
    print('Verified Sentry Android 8.56.0 third-party notices')


if __name__ == '__main__':
    main()
