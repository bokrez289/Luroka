# Mobile and TV source update — 2026-11-12

Prepared from the active development checkout in an isolated clone of private
`bokrez289/Luroka`, based on `66a8f89`. The owner explicitly requested updating
`main`. No force push, repository visibility change, APK build or release is
part of this update.

## Included

- Current 1.0.8 application version and local backup/restore/profile changes.
- QR-secret-bound pairing and phone-assisted recovery; ZXing/AVFoundation QR
  scanner replacement, with pinned dependencies and notices.
- Existing-install compatibility for shelf links and persisted identifiers,
  plus profile setup focus and parental-policy restoration changes.
- Current license audit evidence, notice generators and artifact inspectors.
- Vendored shared-preferences libraries required by the local lockfile and
  their tests/provenance; no desktop platform projects are included.
- Offline privacy policy refreshed from the live November 12 page, with
  scanner and existing ML Kit-build disclosures; explicit README attribution.

## Preserved repository improvements

The repository's README layout, contribution/agent rules, exclusions, in-app
privacy screen, local FFmpeg source option, mobile-only Apple build checks,
and GitHub-only tests remain. Older local copies were not allowed to overwrite
those. Website files, screenshots, backend deployment sources, signing material,
local configuration, binaries and build caches remain outside this repository.

## Verification

- Locked dependency resolution passed in the isolated clone.
- Full static analysis reports 229 diagnostics, exactly identical to the
  unchanged `66a8f89` baseline: 76 errors, 5 warnings and 148 informational
  diagnostics. No new diagnostics; this does not constitute a clean analysis
  pass. Existing stale test references and lint work remain.
- Affected Flutter checks initially reported 173 passes, one root-permission
  skip and two failures. The policy-date expectation and old iOS bundle-name
  fixture were corrected; all 25 tests in their rerun suites passed.
  The Windows-only preferences test cannot run on this Linux host.
- Seven Apple package-lock/icon-generator checks passed; privacy generation
  and hash-verified runtime notice reproduction passed.
- Broad Python discovery ran 110 checks with 17 errors: unavailable server
  sources in this app-only repository, Python 3.10 lacking TestCase.enterContext,
  and Dart absent from that process's PATH. It is not reported as passing.
- Secret scan and explicit file review found no new credentials in the upload.
  Changed-file flags were dependency/artifact hashes, dependency revisions,
  a preference-key constant and a deliberately invalid test password.
- Android scanner compilation passed during the preceding local implementation.
  No APK build was requested for this upload. Apple and physical-device camera
  validation remain pending. See license-review.md for remaining provenance,
  corresponding-source delivery and distribution-term work.

The active development checkout was not reset, pulled over or replaced.
