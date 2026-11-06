#!/usr/bin/env python3
"""Collect verified license texts for the iOS Swift packages linked by build 9."""

import argparse
import hashlib
from pathlib import Path
from urllib.request import urlopen

ROOT = Path(__file__).resolve().parents[2]
SOURCES = (
    ('DKCamera', 'zhangao0086/DKCamera', '5c691d11014b910aff69f960475d70e65d9dcc96', 'LICENSE', '5b2ac8951f9a39dacd520aefebd266ad1ced0066ac1d397ceaa0c45c4072a2fe'),
    ('DKImagePickerController', 'zhangao0086/DKImagePickerController', '0bdfeacefa308545adde07bef86e349186335915', 'LICENSE', '5b2ac8951f9a39dacd520aefebd266ad1ced0066ac1d397ceaa0c45c4072a2fe'),
    ('DKPhotoGallery', 'zhangao0086/DKPhotoGallery', '311c1bc7a94f1538f82773a79c84374b12a2ef3d', 'LICENSE', '5b2ac8951f9a39dacd520aefebd266ad1ced0066ac1d397ceaa0c45c4072a2fe'),
    ('SDWebImage', 'SDWebImage/SDWebImage', '2de3a496eaf6df9a1312862adcfd54acd73c39c0', 'LICENSE', 'db5ae21958ad3871339a53acfabc7e9c20553a35761878dfd304573de1e88740'),
    ('Sentry Cocoa', 'getsentry/sentry-cocoa', 'f196cbb98e0388381d57908f2f5a9bdc385cde68', 'LICENSE.md', '1784335a04bbe8014b9bf0f6a373f7b3804855792545702199dbdd6e2c5b6ad1'),
    ('SwiftyGif', 'alexiscreuzot/SwiftyGif', '4430cbc148baa3907651d40562d96325426f409a', 'LICENSE', 'ca136c5ebb10cf8ee95b08222ee6acc92da0bd67ff6633abbde614c28ad07634'),
    ('TOCropViewController', 'TimOliver/TOCropViewController', 'd4a6d8100f4b886fdbc8ae399bf144ff3e9afb7e', 'LICENSE', 'fa13e446b712520f35bf36b66e055fa72874cde0e2061589a561e162a36fbe31'),
)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check', action='store_true')
    parser.add_argument('--checkouts', type=Path, help='Use a preserved SwiftPM checkouts directory instead of downloading')
    args = parser.parse_args()
    sections = ['Selected iOS Swift package licenses. Other native and transitive notices require separate review.']
    for name, repo, revision, filename, expected in SOURCES:
        url = f'https://raw.githubusercontent.com/{repo}/{revision}/{filename}'
        if args.checkouts:
            path = args.checkouts / repo.split('/')[-1] / filename
            data = path.read_bytes()
        else:
            with urlopen(url, timeout=30) as response:
                data = response.read()
        if hashlib.sha256(data).hexdigest() != expected:
            raise SystemExit(f'Unexpected license digest: {name}')
        sections.append(f'===== {name} =====\nSource: {url}\nSHA-256: {expected}\n\n{data.decode("utf-8").rstrip()}')
    result = '\n\n'.join(sections) + '\n'
    output = ROOT / 'assets/licenses/ios-swift-package-notices.txt'
    if args.check:
        if output.read_text(encoding='utf-8') != result:
            raise SystemExit('iOS Swift package notice bundle differs from pinned sources')
    else:
        output.write_text(result, encoding='utf-8')
    print(f'Verified {len(SOURCES)} iOS Swift package license texts')


if __name__ == '__main__':
    main()
