package com.bokrez.luroka.watchnext

import org.junit.Assert.assertEquals
import org.junit.Test

class PreviewChannelReconciliationTest {
  private fun row(id: Long, content: String, browsable: Boolean = true) =
    PreviewChannelReconciliation.Row(id, content, browsable)

  @Test
  fun `existing rows update in place and duplicates and stale rows are removed`() {
    val plan = PreviewChannelReconciliation.plan(
      listOf("a", "b", "a"),
      listOf(row(1, "a"), row(2, "a"), row(3, "old")),
      setOf("a", "old"),
      emptySet()
    )
    assertEquals(mapOf("a" to 1L), plan.update)
    assertEquals(setOf("b"), plan.insert)
    assertEquals(setOf(2L, 3L), plan.delete)
    assertEquals(setOf("a", "b"), plan.published)
  }

  @Test
  fun `missing previously published item remains dismissed`() {
    val plan = PreviewChannelReconciliation.plan(
      listOf("a", "b"), emptyList(), setOf("a"), emptySet()
    )
    assertEquals(setOf("a"), plan.dismissed)
    assertEquals(setOf("b"), plan.insert)
  }

  @Test
  fun `non browsable item is treated as dismissed even without history`() {
    val plan = PreviewChannelReconciliation.plan(
      listOf("a"), listOf(row(1, "a", false)), emptySet(), emptySet()
    )
    assertEquals(setOf("a"), plan.dismissed)
    assertEquals(setOf(1L), plan.delete)
    assertEquals(emptySet<String>(), plan.insert)
  }

  @Test
  fun `persisted dismissal wins over an existing row`() {
    val plan = PreviewChannelReconciliation.plan(
      listOf("a"), listOf(row(1, "a")), setOf("a"), setOf("a")
    )
    assertEquals(setOf(1L), plan.delete)
    assertEquals(emptySet<String>(), plan.published)
  }

  @Test
  fun `clear removes every row and retains a previously hidden card`() {
    val plan = PreviewChannelReconciliation.plan(
      emptyList(), listOf(row(1, "visible"), row(2, "hidden", false)),
      setOf("visible", "hidden", "already-removed"), emptySet()
    )
    assertEquals(setOf(1L, 2L), plan.delete)
    assertEquals(setOf("hidden", "already-removed"), plan.dismissed)
    assertEquals(emptySet<String>(), plan.published)
  }

  @Test
  fun `returning item may be inserted after a normal removal from desired items`() {
    val cleared = PreviewChannelReconciliation.plan(
      emptyList(), listOf(row(1, "a")), setOf("a"), emptySet()
    )
    val restored = PreviewChannelReconciliation.plan(
      listOf("a"), emptyList(), cleared.published, cleared.dismissed
    )
    assertEquals(setOf("a"), restored.insert)
    assertEquals(emptySet<String>(), restored.dismissed)
  }
}
