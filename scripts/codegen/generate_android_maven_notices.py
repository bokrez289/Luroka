#!/usr/bin/env python3
"""Bundle notices from three pinned Android Maven artifacts.

These artifacts were observed in the current release runtime graph; re-audit
the final Android bundle and update this list if its dependencies change.
"""

import argparse
import hashlib
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
OUTPUT = ROOT / 'assets/licenses/android-maven-selected-notices.txt'
ARTIFACTS = (
    ('commons-io', 'commons-io', '2.20.0',
     'df90bba0fe3cb586b7f164e78fe8f8f4da3f2dd5c27fa645f888100ccc25dd72',
     ('META-INF/LICENSE.txt', 'META-INF/NOTICE.txt')),
    ('org.apache.tika', 'tika-core', '3.2.3',
     '4b697ae09a76b50102750816e9bd3ad26d89161ba65ddabdeee7ef3830428fd1',
     ('META-INF/LICENSE', 'META-INF/NOTICE')),
    ('org.slf4j', 'slf4j-api', '2.0.17',
     '7b751d952061954d5abfed7181c1f645d336091b679891591d63329c622eb832',
     ('META-INF/LICENSE.txt',)),
)


def render(cache):
    sections = [
        'Selected Android Maven artifact notices\n'
        'Extracted from the pinned artifacts listed below. This is not a '
        'complete Android dependency inventory.\n'
    ]
    for group, name, version, expected, members in ARTIFACTS:
        directory = cache / group / name / version
        jars = sorted(directory.glob(f'*/{name}-{version}.jar'))
        matches = [jar for jar in jars if hashlib.sha256(jar.read_bytes()).hexdigest() == expected]
        if len(matches) != 1:
            raise SystemExit(f'Expected one digest-matching JAR for {group}:{name}:{version}')
        with zipfile.ZipFile(matches[0]) as jar:
            for member in members:
                text = jar.read(member).decode('utf-8').strip()
                sections.append(f'===== {group}:{name}:{version} / {member} =====\n\n{text}\n')
    return '\n'.join(sections).encode('utf-8')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--cache', type=Path, default=Path.home() / '.gradle/caches/modules-2/files-2.1')
    parser.add_argument('--check', action='store_true')
    args = parser.parse_args()
    output = render(args.cache)
    if args.check:
        if OUTPUT.read_bytes() != output:
            raise SystemExit('Bundled Android Maven notices differ from the pinned JARs')
    else:
        OUTPUT.write_bytes(output)
    print('Verified selected Android Maven artifact notices')


if __name__ == '__main__':
    main()
