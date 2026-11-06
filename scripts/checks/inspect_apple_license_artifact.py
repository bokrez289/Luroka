#!/usr/bin/env python3
"""Inventory a local IPA's bundled notices and frameworks without extracting it.

This is an evidence-gathering tool, not a license-compliance determination.
The IPA may be a separate export rather than the byte stream uploaded to Apple.
"""

import argparse
import gzip
import hashlib
import json
import plistlib
import re
import zipfile
from pathlib import Path

ASSETS = (
    'LICENSE',
    'assets/licenses/apple-media-source-notices.txt',
    'assets/licenses/ios-swift-package-notices.txt',
    'assets/licenses/SpatialAudioBridge.txt',
    'assets/licenses/libdovi-rust-candidate-notices.txt',
)
FRAMEWORK_PATH = re.compile(r'^Payload/[^/]+\.app/Frameworks/([^/]+\.framework)/')


def sha256_file(path):
    digest = hashlib.sha256()
    with path.open('rb') as source:
        for block in iter(lambda: source.read(1024 * 1024), b''):
            digest.update(block)
    return digest.hexdigest()


def inspect(ipa):
    with zipfile.ZipFile(ipa) as archive:
        names = archive.namelist()
        plists = [name for name in names if re.fullmatch(r'Payload/[^/]+\.app/Info\.plist', name)]
        if len(plists) != 1:
            raise ValueError('Expected one top-level application Info.plist')
        info = plistlib.loads(archive.read(plists[0]))
        frameworks = sorted({match.group(1) for name in names if (match := FRAMEWORK_PATH.match(name))})
        assets = {}
        for asset in ASSETS:
            matches = [name for name in names if name.endswith('/flutter_assets/' + asset)]
            if len(matches) > 1:
                raise ValueError(f'Multiple copies of {asset}')
            assets[asset] = hashlib.sha256(archive.read(matches[0])).hexdigest() if matches else None
        notices = [name for name in names if name.endswith('/flutter_assets/NOTICES.Z')]
        if len(notices) != 1:
            raise ValueError('Expected one Flutter NOTICES.Z')
        notice_text = gzip.decompress(archive.read(notices[0])).decode('utf-8')
        return {
            'ipa_sha256': sha256_file(ipa),
            'bundle_id': info.get('CFBundleIdentifier'),
            'version': info.get('CFBundleShortVersionString'),
            'build': info.get('CFBundleVersion'),
            'frameworks': frameworks,
            'notice_assets_sha256': assets,
            'flutter_notices_uncompressed_bytes': len(notice_text.encode('utf-8')),
            'flutter_notice_names_present': {
                name: name.lower() in notice_text.lower()
                for name in ('Luroka', 'Plezy', 'DKCamera', 'DKImagePickerController', 'DKPhotoGallery',
                             'SDWebImage', 'Sentry Cocoa', 'SwiftyGif', 'TOCropViewController')
            },
        }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('ipa', type=Path)
    args = parser.parse_args()
    print(json.dumps(inspect(args.ipa), indent=2, sort_keys=True))


if __name__ == '__main__':
    main()
