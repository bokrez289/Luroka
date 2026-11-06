package com.bokrez.luroka.libass

import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class AssNativeIntegrationTest {
  @Test fun renamedJniCreatesTrackAndRenderer() {
    val ass = Ass()
    val track = ass.createTrack()
    val renderer = ass.createRender()
    try {
      assertTrue(track.nativeAssTrack != 0L)
      renderer.setFrameSize(1280, 720)
      renderer.setStorageSize(1280, 720)
      renderer.setFontScale(1f)
      renderer.setTrack(track)
      assertTrue(renderer.hasTrack)
      assertFalse(ass.released)
      assertTrue(track.nextEventStartMs(0) < 0)
    } finally {
      renderer.release()
      track.release()
      ass.release()
    }
    assertTrue(ass.released)
  }
}
