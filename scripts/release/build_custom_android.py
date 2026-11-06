#!/usr/bin/env python3
"""Build, verify, and label the phone and Fire Stick sideload releases."""

import hashlib
import argparse
import os
import re
from pathlib import Path
import shutil
import subprocess
import zipfile


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    group = parser.add_mutually_exclusive_group()
    group.add_argument('--firestick-only', action='store_true', help='Build and verify only the ARM32 Fire Stick APK')
    group.add_argument('--phone-only', action='store_true', help='Build and verify only the ARM64 phone APK')
    group.add_argument('--tcl-universal', action='store_true', help='Build a TCL TV APK containing ARM32 and ARM64')
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[2]
    if not (root / "android/key.properties").is_file():
        raise SystemExit("Run python3 scripts/release/setup_custom_signing.py first, or restore the existing signing files.")
    local = root / "android/local.properties"
    settings = dict(line.split("=", 1) for line in local.read_text().splitlines() if "=" in line) if local.exists() else {}
    sdk = os.environ.get("ANDROID_SDK_ROOT") or os.environ.get("ANDROID_HOME") or settings.get("sdk.dir")
    if not sdk:
        raise SystemExit("Set ANDROID_SDK_ROOT to your Android SDK.")
    build_tools = Path(sdk) / "build-tools/36.1.0"
    apksigner = build_tools / "apksigner"
    aapt = build_tools / "aapt"
    if not apksigner.is_file() or not aapt.is_file():
        raise SystemExit("Install Android SDK Build-Tools 36.1.0 first.")
    flutter = shutil.which("flutter")
    if not flutter:
        raise SystemExit("Add Flutter to PATH before running this script.")
    env = dict(os.environ)
    env.pop("AMAZON", None)  # Same increasing base build number, plus Flutter's per-ABI offsets.
    env.pop("LUROKA_TCL_UNIVERSAL", None)
    if args.tcl_universal:
        env['LUROKA_TCL_UNIVERSAL'] = '1'
    command = [flutter, "build", "apk", "--release"]
    command += ['--dart-define=LUROKA_DISTRIBUTION=sideload']
    command += ['--dart-define=LUROKA_ANDROID_VARIANT=' + ('tcl-universal' if args.tcl_universal else 'split')]
    defines_file = os.environ.get('LUROKA_DART_DEFINES_FILE')
    if defines_file:
        if not Path(defines_file).is_file():
            raise SystemExit('LUROKA_DART_DEFINES_FILE does not name a readable build configuration file.')
        command += ['--dart-define-from-file=' + defines_file]
    if os.environ.get('LUROKA_UPDATE_FEED_URL'):
        command += ['--dart-define=LUROKA_UPDATE_FEED_URL=' + os.environ['LUROKA_UPDATE_FEED_URL']]
    if args.tcl_universal:
        # Match the ARM64 split's version-code range, allowing an existing
        # installation of either architecture to update to the universal APK.
        version = re.search(r'^version:.*\+(\d+)\s*$', (root / 'pubspec.yaml').read_text(), re.MULTILINE)
        if version is None:
            raise SystemExit('Missing Android build number in pubspec.yaml')
        command += ['--build-number', str(int(version.group(1)) + 2000)]
    else:
        command += ['--split-per-abi']
    command += ['--target-platform', 'android-arm' if args.firestick_only else 'android-arm64' if args.phone_only else 'android-arm,android-arm64']
    subprocess.run(command, cwd=root, env=env, check=True)
    destination = root / "build/custom-android"
    destination.mkdir(parents=True, exist_ok=True)
    checksums = []
    targets = [("armeabi-v7a", "arm32-firestick")] if args.firestick_only else [
        ("arm64-v8a", "arm64-phone"), ("armeabi-v7a", "arm32-firestick")]
    if args.phone_only:
        targets = [('arm64-v8a', 'arm64-phone')]
    if args.tcl_universal:
        targets = [(None, 'tcl-75c6k-universal')]
    for abi, device in targets:
        source = root / 'build/app/outputs/flutter-apk' / (f'app-{abi}-release.apk' if abi else 'app-release.apk')
        subprocess.run([str(apksigner), "verify", "--verbose", "--print-certs", str(source)], check=True)
        badging = subprocess.check_output([str(aapt), "dump", "badging", str(source)], text=True)
        if "package: name='com.bokrez.luroka'" not in badging or "application-label:'Luroka'" not in badging:
            raise SystemExit(f"Unexpected package identity in {source}")
        with zipfile.ZipFile(source) as archive:
            packaged_abis = {name.split('/')[1] for name in archive.namelist() if name.startswith('lib/') and name.endswith('.so')}
        expected_abis = {abi} if abi else {'armeabi-v7a', 'arm64-v8a'}
        if packaged_abis != expected_abis:
            raise SystemExit(f"Unexpected native architectures: {packaged_abis}")
        target = destination / f"luroka-{device}.apk"
        shutil.copy2(source, target)
        checksums.append(f"{hashlib.sha256(target.read_bytes()).hexdigest()}  {target.name}\n")
        print(f"Verified {target} ({target.stat().st_size / 1024 / 1024:.1f} MiB)")
    (destination / ("SHA256SUMS-tcl" if args.tcl_universal else "SHA256SUMS-phone" if args.phone_only else "SHA256SUMS")).write_text(''.join(checksums))


if __name__ == "__main__":
    main()
