package com.bokrez.luroka.libass

import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith

/** Run against the minified app to exercise the production JNI keep rules. */
@RunWith(AndroidJUnit4::class)
class AssNativeReachabilityTest {
  @Test fun renamedNativeEntryPointsRemainReachable() {
    val ass = Ass()
    val track = ass.createTrack()
    val renderer = ass.createRender()
    try {
      assertTrue(track.nativeAssTrack != 0L)
      renderer.setFrameSize(1280, 720)
      renderer.setTrack(track)
      assertTrue(renderer.hasTrack)
      assertTrue(track.nextEventStartMs(0) < 0)
    } finally {
      renderer.release()
      track.release()
      ass.release()
    }
  }
}
