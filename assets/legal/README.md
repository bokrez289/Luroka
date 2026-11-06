# Offline privacy policy

`privacy-policy.json` and `lib/screens/settings/privacy_policy_content.g.dart`
contain the English policy used by the app for offline and TV access.
Regenerate both whenever the website policy changes:

```sh
python3 scripts/codegen/generate_privacy_policy.py --source /path/to/privacy.html
```

Use `--check` to compare the bundled text with the website source. The app
version is a snapshot; policy updates need a new app release.
