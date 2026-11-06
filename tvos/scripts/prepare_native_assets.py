#!/usr/bin/env python3
"""Build the tvOS native assets required by the pinned Dart dependencies.

Flutter's stock native-asset build hooks do not target tvOS. Build the two
required frameworks with the tvOS SDK instead of shipping iOS/macOS binaries.
"""
import hashlib
import json
import plistlib
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path
from urllib.parse import unquote, urlparse
from urllib.request import urlopen
from zipfile import ZipFile

ROOT = Path(__file__).resolve().parents[2]
OUTPUT = ROOT / 'build/tvos-native-assets/device'
SQLITE_URL = 'https://sqlite.org/2026/sqlite-amalgamation-3530300.zip'
SQLITE_SHA256 = '646421e12aac110282ef8cc68f1a62d4bb15fc7b8f09da0b53e29ee690500431'
SQLITE_FLAGS = (
    'SQLITE_ENABLE_DBSTAT_VTAB', 'SQLITE_ENABLE_FTS5', 'SQLITE_ENABLE_RTREE',
    'SQLITE_ENABLE_MATH_FUNCTIONS', 'SQLITE_DQS=0', 'SQLITE_DEFAULT_MEMSTATUS=0',
    'SQLITE_TEMP_STORE=2', 'SQLITE_MAX_EXPR_DEPTH=0', 'SQLITE_STRICT_SUBTYPE=1',
    'SQLITE_OMIT_AUTHORIZATION', 'SQLITE_OMIT_DECLTYPE', 'SQLITE_OMIT_DEPRECATED',
    'SQLITE_OMIT_PROGRESS_CALLBACK', 'SQLITE_OMIT_SHARED_CACHE', 'SQLITE_OMIT_TCL_VARIABLE',
    'SQLITE_OMIT_TRACE', 'SQLITE_USE_ALLOCA', 'SQLITE_ENABLE_SESSION',
    'SQLITE_ENABLE_PREUPDATE_HOOK', 'SQLITE_UNTESTABLE', 'SQLITE_HAVE_ISNAN',
    'SQLITE_HAVE_LOCALTIME_R',
)
EXPECTED_ASSETS = {
    'package:objective_c/objective_c.dylib': ['absolute', 'objective_c.framework/objective_c'],
    'package:sqlite3/src/ffi/libsqlite3.g.dart': ['absolute', 'sqlite3.framework/sqlite3'],
}


def check_manifest(path):
    data = json.loads(Path(path).read_text(encoding='utf-8'))
    if data.get('format-version') != [1, 0, 0] or data.get('native-assets') != {'ios_arm64': EXPECTED_ASSETS}:
        raise SystemExit('Unexpected native asset manifest; audit the tvOS native asset recipe before rebuilding')
    print('Native asset manifest matches the tvOS framework recipe')


def package_root(name, expected_version):
    config = ROOT / '.dart_tool/package_config.json'
    data = json.loads(config.read_text(encoding='utf-8'))
    item = next((entry for entry in data['packages'] if entry['name'] == name), None)
    if item is None:
        raise SystemExit(f'Missing {name}; run flutter pub get first')
    uri = item['rootUri']
    root = Path(unquote(urlparse(uri).path)) if uri.startswith('file:') else (config.parent / uri).resolve()
    pubspec = (root / 'pubspec.yaml').read_text(encoding='utf-8')
    if f'version: {expected_version}\n' not in pubspec:
        raise SystemExit(f'{name} changed; audit the tvOS native asset recipe before rebuilding')
    return root


def framework_info(directory, name):
    data = {
        'CFBundleIdentifier': f'com.bokrez.luroka.native.{name.replace("_", "-")}',
        'CFBundleExecutable': name, 'CFBundleName': name, 'CFBundlePackageType': 'FMWK',
        'CFBundleVersion': '1', 'CFBundleShortVersionString': '1.0',
        'MinimumOSVersion': '15.0', 'CFBundleSupportedPlatforms': ['AppleTVOS'],
    }
    with (directory / 'Info.plist').open('wb') as f:
        plistlib.dump(data, f)


def main():
    objc = package_root('objective_c', '9.4.1') / 'src'
    package_root('sqlite3', '3.5.0')
    sdk = subprocess.check_output(['xcrun', '--sdk', 'appletvos', '--show-sdk-path'], text=True).strip()
    base = ['xcrun', '--sdk', 'appletvos', 'clang', '-target', 'arm64-apple-tvos15.0', '-isysroot', sdk, '-fPIC']
    OUTPUT.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory(prefix='native-build-', dir=OUTPUT.parent) as tmp:
        work = Path(tmp)
        objects = []
        for index, source in enumerate(sorted([*objc.rglob('*.c'), *objc.rglob('*.m')])):
            obj = work / f'objc-{index:02d}.o'
            flags = ['-x', 'objective-c', '-fobjc-arc'] if source.suffix == '.m' else []
            subprocess.run([*base, *flags, f'-I{objc}', f'-I{objc / "include"}', '-c', str(source), '-o', str(obj)], check=True)
            objects.append(str(obj))
        framework = work / 'objective_c.framework'
        framework.mkdir()
        subprocess.run([*base, '-dynamiclib', '-Wl,-encryptable', '-undefined', 'dynamic_lookup',
                        '-install_name', '@rpath/objective_c.framework/objective_c',
                        '-framework', 'Foundation', *objects, '-o', str(framework / 'objective_c')], check=True)
        framework_info(framework, 'objective_c')

        with urlopen(SQLITE_URL, timeout=60) as response:
            payload = response.read()
        if hashlib.sha256(payload).hexdigest() != SQLITE_SHA256:
            raise SystemExit('SQLite source digest does not match the pinned archive')
        source_zip = work / 'sqlite.zip'
        source_zip.write_bytes(payload)
        with ZipFile(source_zip) as z:
            sqlite_source = work / 'sqlite3.c'
            sqlite_source.write_bytes(z.read('sqlite-amalgamation-3530300/sqlite3.c'))
        framework = work / 'sqlite3.framework'
        framework.mkdir()
        subprocess.run([*base, '-O2', '-dynamiclib', '-install_name', '@rpath/sqlite3.framework/sqlite3',
                        *(f'-D{flag}' for flag in SQLITE_FLAGS), str(sqlite_source), '-o', str(framework / 'sqlite3')], check=True)
        framework_info(framework, 'sqlite3')

        # Only replace our dedicated, generated build output after both succeed.
        if OUTPUT.exists():
            shutil.rmtree(OUTPUT)
        OUTPUT.mkdir()
        for name in ('objective_c.framework', 'sqlite3.framework'):
            shutil.copytree(work / name, OUTPUT / name)
    print(f'Prepared tvOS native frameworks in {OUTPUT}')


if __name__ == '__main__':
    if len(sys.argv) == 3 and sys.argv[1] == '--check-manifest':
        check_manifest(sys.argv[2])
    elif len(sys.argv) == 1:
        main()
    else:
        raise SystemExit('Usage: prepare_native_assets.py [--check-manifest PATH]')
