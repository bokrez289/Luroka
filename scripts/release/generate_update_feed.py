#!/usr/bin/env python3
"""Generate a Luroka HTTPS update feed from the signed release APKs.

Run after both build_custom_android.py and its --tcl-universal build. Upload
the APKs and generated feed to the same trusted HTTPS release directory.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
from urllib.parse import urlparse


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--base-url', required=True, help='HTTPS directory containing the APKs')
    parser.add_argument('--notes', default='', help='Plain-text release notes')
    args = parser.parse_args()
    url = urlparse(args.base_url)
    if url.scheme != 'https' or not url.netloc or url.username or url.fragment or url.query:
        parser.error('--base-url must be an HTTPS directory URL')
    root = Path(__file__).resolve().parents[2]
    local = root / 'android/local.properties'
    settings = dict(line.split('=', 1) for line in local.read_text().splitlines() if '=' in line)
    sdk = os.environ.get('ANDROID_SDK_ROOT') or os.environ.get('ANDROID_HOME') or settings.get('sdk.dir')
    aapt = Path(sdk) / 'build-tools/36.1.0/aapt'
    apksigner = aapt.parent / 'apksigner'
    folder = root / 'build/custom-android'
    artifacts = {}
    version = None
    build = None
    certificate = None
    for variant in ['arm64-phone', 'arm32-firestick', 'tcl-universal']:
        filename = 'luroka-tcl-75c6k-universal.apk' if variant == 'tcl-universal' else f'luroka-{variant}.apk'
        apk = folder / filename
        signing = subprocess.check_output([str(apksigner), 'verify', '--print-certs', str(apk)], text=True)
        digest_match = re.search(r'Signer #1 certificate SHA-256 digest: ([a-fA-F0-9]+)', signing)
        if not digest_match:
            raise SystemExit(f'Cannot verify signing identity: {filename}')
        current_certificate = digest_match.group(1).lower()
        if certificate is not None and certificate != current_certificate:
            raise SystemExit('Release APKs do not share the same signing certificate')
        certificate = current_certificate
        info = subprocess.check_output([str(aapt), 'dump', 'badging', str(apk)], text=True)
        match = re.search(r"package: name='com.bokrez.luroka' versionCode='(\d+)' versionName='([^']+)'", info)
        if not match:
            raise SystemExit(f'Unexpected APK identity: {filename}')
        code, name = match.groups()
        current_build = int(code) - (1000 if variant == 'arm32-firestick' else 2000)
        if build is not None and build != current_build:
            raise SystemExit('Release APKs have different build numbers; rebuild stale APKs')
        build = current_build
        if version is not None and version != name:
            raise SystemExit('All artifacts must have the same version name; rebuild stale APKs')
        version = name
        minimum = re.search(r"sdkVersion:'(\d+)'", info)
        digest = hashlib.sha256()
        with apk.open('rb') as stream:
            for block in iter(lambda: stream.read(1024 * 1024), b''):
                digest.update(block)
        artifacts[variant] = {
            'url': f'{args.base_url.rstrip("/")}/{filename}',
            'versionCode': int(code),
            'minSdk': int(minimum.group(1)) if minimum else 23,
            'size': apk.stat().st_size,
            'sha256': digest.hexdigest(),
        }
    output = folder / 'luroka.json'
    output.write_text(json.dumps({'version': version, 'notes': args.notes, 'artifacts': artifacts}, indent=2) + '\n')
    print(f'Generated {output}')


if __name__ == '__main__':
    main()
