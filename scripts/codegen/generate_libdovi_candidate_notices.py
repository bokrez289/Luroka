#!/usr/bin/env python3
"""Collect license files for candidate libdovi Rust dependency graphs.

Inputs are preserved source archives and Cargo's downloaded .crate files. The
graphs were inspected with cargo tree for iOS/Android; neither establishes the
dependencies actually compiled into the shipped native prebuilts.
"""
import argparse
import hashlib
import re
import tarfile
from pathlib import Path
from urllib.request import urlopen

ROOT = Path(__file__).resolve().parents[2]
APPLE = [('anyhow','1.0.98'), ('bitvec','1.0.1'), ('funty','2.0.0'), ('radium','0.7.0'),
         ('tap','1.0.1'), ('wyz','0.5.1'), ('bitvec_helpers','3.1.6'), ('bitstream-io','2.6.0'),
         ('crc','3.3.0'), ('crc-catalog','2.4.0'), ('tinyvec','1.9.0')]
ANDROID = [('anyhow','1.0.98'), ('bitvec','1.0.1'), ('funty','2.0.0'), ('radium','0.7.0'),
           ('tap','1.0.1'), ('wyz','0.5.1'), ('bitvec_helpers','4.0.0'), ('bitstream-io','4.3.0'),
           ('core2','0.4.0'), ('memchr','2.7.5'), ('crc','3.3.0'), ('crc-catalog','2.4.0'), ('tinyvec','1.9.0')]


def digest(data):
    return hashlib.sha256(data).hexdigest()


def lock_checksums(path, expected):
    if digest(path.read_bytes()) != expected:
        raise SystemExit(f'Unexpected source archive digest: {path.name}')
    with tarfile.open(path) as archive:
        matches = [m for m in archive.getmembers() if m.name.endswith('/dolby_vision/Cargo.lock')]
        if len(matches) != 1:
            raise SystemExit('Expected one dolby_vision/Cargo.lock')
        text = archive.extractfile(matches[0]).read().decode()
    result = {}
    for section in text.split('[[package]]')[1:]:
        def value(key):
            match = re.search(r'^' + key + r' = "([^"]+)"$', section, re.MULTILINE)
            return match.group(1) if match else None
        if value('checksum'):
            result[(value('name'), value('version'))] = value('checksum')
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--apple-source', type=Path, required=True)
    parser.add_argument('--android-source', type=Path, required=True)
    parser.add_argument('--crate-cache', type=Path, required=True, help='Cargo registry cache directory')
    parser.add_argument('--check', action='store_true')
    args = parser.parse_args()
    apple = lock_checksums(args.apple_source, 'bfbd324c867586968fd9b5df2ee7977acb11097bc098b2a8e261d68b8f3f52d0')
    android = lock_checksums(args.android_source, '2d572b3241608b89becc74319e7ca11ceeadd97598bda7201a26242feff2427a')
    sections = ['Candidate libdovi Rust dependency notices from source-lock graphs, not proof of the dependencies or versions in any distributed prebuilt. Additional notices and complete source provenance are still required.']
    for name, version in sorted(set(APPLE + ANDROID)):
        key = (name, version)
        hashes = {graph[key] for graph in (apple, android) if key in graph}
        if len(hashes) != 1:
            raise SystemExit(f'Missing or inconsistent Cargo lock entry: {name} {version}')
        files = list(args.crate_cache.glob(f'*/{name}-{version}.crate')) + list(args.crate_cache.glob(f'{name}-{version}.crate'))
        if len(files) != 1 or digest(files[0].read_bytes()) not in hashes:
            raise SystemExit(f'Missing or mismatched crate archive: {name} {version}')
        with tarfile.open(files[0]) as archive:
            notices = [m for m in archive.getmembers() if m.isfile() and m.name.count('/') == 1
                       and Path(m.name).name.upper().startswith(('LICENSE', 'LICENCE', 'COPYING', 'NOTICE', 'COPYRIGHT'))]
            lines = [f'===== {name} {version} =====', f'Source: https://crates.io/crates/{name}/{version}', f'Crate SHA-256: {next(iter(hashes))}']
            if not notices:
                lines.append('No separate top-level license text was found in this crate archive; further review is required.')
            if name == 'crc-catalog' and version == '2.4.0':
                # The crate's VCS metadata names this commit; its license files
                # live in LICENSES/ and were not included in the crate archive.
                base = 'https://raw.githubusercontent.com/akhilles/crc-catalog/b500ea693c552f8d946e290722a7b3ee8b9a7ee2/LICENSES/'
                for filename, expected in [('MIT.txt', '5ef8fcfb6cccec8fcae043c834099a60c8b7406408db576e026d2b7e67dc5cf5'),
                                           ('Apache-2.0.txt', 'd3cdb764b98283ee7c3a3cea8d374e2a2957322374378d1f3263f4d512741fc3')]:
                    with urlopen(base + filename, timeout=30) as response:
                        text = response.read()
                    if digest(text) != expected:
                        raise SystemExit(f'Unexpected crc-catalog license digest: {filename}')
                    lines.append(f'--- upstream LICENSES/{filename} ---\nSource: {base + filename}\nSHA-256: {expected}\n\n{text.decode("utf-8").rstrip()}')
            for notice in sorted(notices, key=lambda m: m.name):
                lines.append(f'--- {Path(notice.name).name} ---\n{archive.extractfile(notice).read().decode("utf-8").rstrip()}')
        sections.append('\n'.join(lines))
    result = ('\n\n'.join(sections) + '\n').replace('\r\n', '\n').replace('\r', '\n')
    output = ROOT / 'assets/licenses/libdovi-rust-candidate-notices.txt'
    if args.check:
        if output.read_text(encoding='utf-8') != result:
            raise SystemExit('Candidate notice bundle differs')
    else:
        output.write_text(result, encoding='utf-8')
    print(f'Verified {len(set(APPLE + ANDROID))} locked candidate crate archives')


if __name__ == '__main__':
    main()
