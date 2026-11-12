#!/usr/bin/env python3
"""Fingerprint local app/build sources without exporting secrets or Git history.

Run before a release build and retain the output with the artifact hash. This
manifest is evidence, NOT corresponding source or a complete dependency SBOM.
It intentionally excludes local signing/configuration and generated outputs.
"""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parents[2]
ROOT_FILES = {'pubspec.yaml', 'pubspec.lock', 'LICENSE', 'THIRD_PARTY_NOTICES.md',
              'mpv-build.lock.json', 'analysis_options.yaml', 'l10n.yaml', 'relay_protocol.json'}
SOURCE_DIRS = {'lib', 'assets', 'android', 'ios', 'tvos', 'packages', 'scripts'}
EXCLUDED_PARTS = {'.git', '.gradle', '.dart_tool', 'build', 'Pods', '.symlinks',
                  '__pycache__', 'ephemeral', 'DerivedData', '.idea'}
EXCLUDED_NAMES = {'key.properties', 'local.properties', 'google-services.json',
                  'GoogleService-Info.plist', 'Generated.xcconfig', 'flutter_export_environment.sh'}
EXCLUDED_SUFFIXES = {'.jks', '.keystore', '.p12', '.p8', '.mobileprovision', '.apk', '.ipa', '.aab', '.pyc'}


def capture():
    paths = subprocess.check_output(
        ['git', 'ls-files', '-z', '--cached', '--others', '--exclude-standard'], cwd=ROOT
    ).decode().split('\0')
    files = {}
    for name in sorted(set(paths)):
        if not name:
            continue
        relative = Path(name)
        if name not in ROOT_FILES and relative.parts[0] not in SOURCE_DIRS:
            continue
        if (set(relative.parts) & EXCLUDED_PARTS or relative.name in EXCLUDED_NAMES
                or relative.suffix.lower() in EXCLUDED_SUFFIXES or relative.name.startswith('.env')):
            continue
        path = ROOT / relative
        if path.is_symlink() or not path.is_file():
            continue
        files[name] = hashlib.sha256(path.read_bytes()).hexdigest()
    return {'scope': 'Local app and build source fingerprints only; not complete corresponding source. '
                     'Ignored files, local credentials, generated outputs and external dependencies are excluded.',
            'git_head': subprocess.check_output(['git', 'rev-parse', 'HEAD'], cwd=ROOT).decode().strip(),
            'files_sha256': files}


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--verify', type=Path, help='Fail if source fingerprints differ from an earlier manifest')
    args = parser.parse_args()
    result = capture()
    if args.verify:
        expected = json.loads(args.verify.read_text())
        if expected['files_sha256'] != result['files_sha256']:
            raise SystemExit('Source changed since capture; do not associate this manifest with that build')
        print('Source fingerprints unchanged')
    else:
        print(json.dumps(result, indent=2, sort_keys=True))
