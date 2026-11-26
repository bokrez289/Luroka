package com.bokrez.luroka

import org.junit.Assert.assertEquals
import org.junit.Test

class TrailerQualityPolicyTest {
  @Test fun prefersHighQualityCombined() {
    assertEquals(TrailerStreamKind.COMBINED, chooseTrailerStream(720, true, 1080))
  }

  @Test fun avoidsLowQualityCombinedWhenAlternativesExist() {
    assertEquals(TrailerStreamKind.MANIFEST, chooseTrailerStream(360, true, 1080))
    assertEquals(TrailerStreamKind.SEPARATE, chooseTrailerStream(360, false, 1080))
  }

  @Test fun keepsPlayableFallbacks() {
    assertEquals(TrailerStreamKind.COMBINED, chooseTrailerStream(360, false, 480))
    assertEquals(TrailerStreamKind.SEPARATE, chooseTrailerStream(null, false, 480))
    assertEquals(TrailerStreamKind.UNAVAILABLE, chooseTrailerStream(null, false, null))
  }
}
