#!/usr/bin/env python3
"""Create a persistent, ignored signing identity for local Plezy Custom builds."""

import os
from pathlib import Path
import secrets
import subprocess


def main():
    root = Path(__file__).resolve().parents[2]
    properties = root / "android/key.properties"
    keystore = root / "android/app/plezy-custom-release.jks"
    if properties.exists() or keystore.exists():
        raise SystemExit("Signing files already exist; reuse them rather than replacing the update identity.")

    password = secrets.token_hex(32)
    env = {**os.environ, "PLEZY_KEY_PASSWORD": password}
    previous_umask = os.umask(0o077)
    try:
        subprocess.run(
            [
                "keytool", "-genkeypair", "-noprompt", "-storetype", "PKCS12",
                "-keystore", str(keystore), "-alias", "plezy-custom",
                "-keyalg", "RSA", "-keysize", "3072", "-validity", "10000",
                "-dname", "CN=Plezy Custom, OU=Android, O=Bokrez",
                "-storepass:env", "PLEZY_KEY_PASSWORD", "-keypass:env", "PLEZY_KEY_PASSWORD",
            ],
            env=env,
            check=True,
        )
        with properties.open("x") as output:
            output.write(
                "storeFile=plezy-custom-release.jks\n"
                "keyAlias=plezy-custom\n"
                f"storePassword={password}\nkeyPassword={password}\n"
            )
    finally:
        os.umask(previous_umask)
    print("Created android/key.properties and android/app/plezy-custom-release.jks.")
    print("Back up both files privately together; all future updates must reuse this key.")


if __name__ == "__main__":
    main()
