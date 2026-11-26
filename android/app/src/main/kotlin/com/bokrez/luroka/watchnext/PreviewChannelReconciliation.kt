package com.bokrez.luroka.watchnext

/**
 * Plans a channel update without touching the provider. The caller must scope
 * [previouslyPublished] and [dismissed] to the same profile as [desired], and
 * persist the returned state only after the provider batch commits.
 *
 * A formerly published row missing from the provider is treated as dismissed
 * by the user, not as an invitation to recreate it. [existing] also includes
 * rows the provider reports as no longer browsable.
 */
internal object PreviewChannelReconciliation {
  data class Row(val id: Long, val contentId: String, val browsable: Boolean)

  data class Plan(
    val update: Map<String, Long>,
    val insert: Set<String>,
    val delete: Set<Long>,
    val published: Set<String>,
    val dismissed: Set<String>
  )

  fun plan(
    desired: List<String>,
    existing: List<Row>,
    previouslyPublished: Set<String>,
    dismissed: Set<String>
  ): Plan {
    val desiredIds = desired.filter(String::isNotBlank).toCollection(LinkedHashSet())
    val byContent = existing.groupBy(Row::contentId)
    val newlyDismissed = previouslyPublished.filterTo(LinkedHashSet()) { id ->
      val rows = byContent[id]
      rows.isNullOrEmpty() || rows.none(Row::browsable)
    }
    val hidden = (dismissed + newlyDismissed).toCollection(LinkedHashSet())
    val update = linkedMapOf<String, Long>()
    val insert = linkedSetOf<String>()
    val delete = linkedSetOf<Long>()

    for (id in desiredIds) {
      val rows = byContent[id].orEmpty()
      if (id in hidden) {
        rows.forEach { delete.add(it.id) }
        continue
      }
      val visible = rows.firstOrNull(Row::browsable)
      if (visible == null) {
        // A non-browsable existing row is an explicit user dismissal, even
        // if it was created by an older version without tracking state.
        if (rows.isNotEmpty()) {
          hidden.add(id)
          rows.forEach { delete.add(it.id) }
        } else {
          insert.add(id)
        }
      } else {
        update[id] = visible.id
        rows.filter { it.id != visible.id }.forEach { delete.add(it.id) }
      }
    }
    existing.filter { it.contentId !in desiredIds }.forEach { delete.add(it.id) }
    return Plan(update, insert, delete, update.keys + insert, hidden)
  }
}
