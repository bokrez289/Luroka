package com.bokrez.luroka.watchnext

import android.content.Intent
import android.net.Uri
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class WatchNextDeepLinkTest {
  private fun route(link: String): String? =
    WatchNextPlugin.handleIntent(Intent(Intent.ACTION_VIEW, Uri.parse(link)))

  @Test fun routesLurokaShelfAndLiveLinks() {
    assertEquals("luroka_server_item", route("luroka://play?content_id=luroka_server_item"))
    assertEquals("luroka://live?channel=4.1", route("luroka://live?channel=4.1"))
    assertEquals("luroka://watch?code=K7MQ2X", route("luroka://watch?code=K7MQ2X"))
  }

  @Test fun rejectsOldAndUnknownLinks() {
    assertNull(route("plezy://play?content_id=old"))
    assertNull(route("luroka://unknown?content_id=x"))
    assertNull(route("luroka://play"))
  }
}
