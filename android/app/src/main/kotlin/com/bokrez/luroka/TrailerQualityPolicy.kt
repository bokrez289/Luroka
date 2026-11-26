package com.bokrez.luroka

internal enum class TrailerStreamKind { COMBINED, MANIFEST, SEPARATE, UNAVAILABLE }

/** Prefer at least 720p without sacrificing a playable combined fallback. */
internal fun chooseTrailerStream(combinedHeight: Int?, hasManifest: Boolean, separateHeight: Int?): TrailerStreamKind =
  when {
    combinedHeight != null && combinedHeight >= 720 -> TrailerStreamKind.COMBINED
    hasManifest -> TrailerStreamKind.MANIFEST
    separateHeight != null && separateHeight >= 720 -> TrailerStreamKind.SEPARATE
    combinedHeight != null -> TrailerStreamKind.COMBINED
    separateHeight != null -> TrailerStreamKind.SEPARATE
    else -> TrailerStreamKind.UNAVAILABLE
  }
