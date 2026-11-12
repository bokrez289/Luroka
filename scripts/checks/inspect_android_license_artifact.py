#!/usr/bin/env python3
"""Report APK notice bytes against this checkout; not license clearance.

Usage: python3 scripts/checks/inspect_android_license_artifact.py APK [APK ...]
Outputs JSON only. Does not extract credentials or modify APKs.
"""
import gzip
import hashlib
import json
from pathlib import Path
import sys
import zipfile


def digest_file(path):
    digest = hashlib.sha256()
    with path.open('rb') as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b''):
            digest.update(chunk)
    return digest.hexdigest()


def inspect(path, root):
    with zipfile.ZipFile(path) as archive:
        names = set(archive.namelist())
        prefix = 'assets/flutter_assets/'
        notices = []
        for source in [root / 'LICENSE', *sorted((root / 'assets/licenses').glob('*.txt'))]:
            relative = str(source.relative_to(root))
            entry = prefix + relative
            data = archive.read(entry) if entry in names else None
            notices.append(dict(path=relative, present=data is not None,
                                matches_current_source=data == source.read_bytes(),
                                sha256=hashlib.sha256(data).hexdigest() if data is not None else None))
        flutter_entry = prefix + 'NOTICES.Z'
        flutter = gzip.decompress(archive.read(flutter_entry)).decode() if flutter_entry in names else ''
        return dict(artifact=path.name, sha256=digest_file(path),
                    notice_assets=notices,
                    flutter_notices_present=flutter_entry in names,
                    flutter_notices_contains_mobile_scanner='mobile_scanner' in flutter,
                    flutter_notices_contains_qr_code_scanner_plus='qr_code_scanner_plus' in flutter,
                    native_libraries=sorted(n for n in names if n.startswith('lib/') and n.endswith('.so')),
                    scanner_entries=sorted(n for n in names if any(s in n.lower() for s in ('mlkit', 'barcode'))))


if __name__ == '__main__':
    if len(sys.argv) < 2:
        sys.exit('Usage: inspect_android_license_artifact.py APK [APK ...]')
    root = Path(__file__).resolve().parents[2]
    print(json.dumps([inspect(Path(p), root) for p in sys.argv[1:]], indent=2))
