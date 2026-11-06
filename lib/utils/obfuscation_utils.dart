/// Blur all artwork (for store screenshots). Compile-time switch: run with
/// `--dart-define=LUROKA_BLUR_ARTWORK=true`; const-folded out of normal builds.
const kBlurArtwork = bool.fromEnvironment('LUROKA_BLUR_ARTWORK');
