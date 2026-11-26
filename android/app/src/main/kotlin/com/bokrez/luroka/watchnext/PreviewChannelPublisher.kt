package com.bokrez.luroka.watchnext

import android.content.ContentProviderOperation
import android.content.ContentUris
import android.content.ContentValues
import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.os.Build
import android.util.Log
import androidx.tvprovider.media.tv.Channel
import androidx.tvprovider.media.tv.ChannelLogoUtils
import androidx.tvprovider.media.tv.TvContractCompat
import java.security.MessageDigest

/**
 * App-owned channel; all calls are made under SystemShelfLifecycle's operation lock.
 * Program mutations are appended to the same provider batch as Watch Next.
 */
internal class PreviewChannelPublisher(private val context: Context) {
  private val prefs = context.getSharedPreferences("preview_channel", Context.MODE_PRIVATE)

  companion object {
    private const val TAG = "PreviewChannel"
    private const val CHANNEL_ID = "channel_id"
    private const val OWNER = "owner"
    private const val CREATED = "created"
  }

  internal data class Pending(
    val ownerKey: String,
    val plan: PreviewChannelReconciliation.Plan
  )

  private fun ownerKey(owner: String): String =
    MessageDigest.getInstance("SHA-256").digest(owner.toByteArray(Charsets.UTF_8))
      .joinToString("") { "%02x".format(it.toInt() and 0xff) }

  private fun publishedKey(owner: String) = "published_$owner"
  private fun dismissedKey(owner: String) = "dismissed_$owner"

  /** Never recreate a channel a user has removed or request visibility repeatedly. */
  private fun channelId(create: Boolean): Long? {
    if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) return null
    val stored = prefs.getLong(CHANNEL_ID, -1)
    if (stored >= 0) {
      val cursor = context.contentResolver.query(
        TvContractCompat.buildChannelUri(stored),
        arrayOf(TvContractCompat.Channels._ID), null, null, null
      ) ?: throw IllegalStateException("Channel query failed")
      cursor.use { if (it.moveToFirst()) return stored }
      return null
    }
    if (!create || prefs.getBoolean(CREATED, false)) return null
    val launchIntent = context.packageManager.getLaunchIntentForPackage(context.packageName)
      ?: throw IllegalStateException("Launch activity unavailable")
    val channel = Channel.Builder()
      .setType(TvContractCompat.Channels.TYPE_PREVIEW)
      .setDisplayName("Luroka Continue Watching")
      .setAppLinkIntent(launchIntent)
      .setInternalProviderId("luroka_continue_watching")
      .build()
    // Some TV-derived systems implement Watch Next but not preview channels.
    // An initial channel-creation failure must not disable existing Watch Next.
    val uri = try {
      context.contentResolver.insert(TvContractCompat.Channels.CONTENT_URI, channel.toContentValues())
    } catch (_: Exception) {
      Log.w(TAG, "Preview channel unavailable")
      null
    } ?: return null
    val id = ContentUris.parseId(uri)
    // Persist the identity before any later operation can fail. Do not create
    // a second default channel if the process stops during logo installation.
    if (!prefs.edit().putLong(CHANNEL_ID, id).putBoolean(CREATED, true).commit()) {
      throw IllegalStateException("Channel identity not persisted")
    }
    runCatching {
      val icon = context.packageManager.getApplicationIcon(context.packageName)
      val bitmap = Bitmap.createBitmap(160, 160, Bitmap.Config.ARGB_8888)
      try {
        val canvas = Canvas(bitmap)
        canvas.drawColor(Color.BLACK)
        icon.setBounds(0, 0, 160, 160)
        icon.draw(canvas)
        check(ChannelLogoUtils.storeChannelLogo(context, id, bitmap))
      } finally {
        bitmap.recycle()
      }
    }.onFailure { Log.w(TAG, "Channel logo could not be stored") }
    runCatching { TvContractCompat.requestChannelBrowsable(context, id) }
      .onFailure { Log.w(TAG, "Default channel visibility request failed") }
    return id
  }

  private fun rows(id: Long): List<PreviewChannelReconciliation.Row> {
    val cursor = context.contentResolver.query(
      TvContractCompat.buildPreviewProgramsUriForChannel(id),
      arrayOf(
        TvContractCompat.PreviewPrograms._ID,
        TvContractCompat.PreviewPrograms.COLUMN_INTERNAL_PROVIDER_ID,
        TvContractCompat.PreviewPrograms.COLUMN_BROWSABLE
      ), null, null, null
    ) ?: throw IllegalStateException("Preview program query failed")
    return cursor.use {
      val result = ArrayList<PreviewChannelReconciliation.Row>()
      while (it.moveToNext()) {
        val contentId = it.getString(1) ?: throw IllegalStateException("Preview row has no identity")
        result.add(PreviewChannelReconciliation.Row(it.getLong(0), contentId, it.isNull(2) || it.getInt(2) != 0))
      }
      result
    }
  }

  fun appendSync(
    ownerId: String,
    items: List<WatchNextProvider.PreparedWatchNextItem>,
    operations: MutableList<ContentProviderOperation>,
    valuesFor: (WatchNextProvider.PreparedWatchNextItem) -> ContentValues
  ): Pending? {
    val id = channelId(create = items.isNotEmpty()) ?: return null
    val owner = ownerKey(ownerId)
    val existing = rows(id)
    val sameOwner = prefs.getString(OWNER, null) == owner
    val plan = PreviewChannelReconciliation.plan(
      items.map { it.metadata.contentId },
      if (sameOwner) existing else emptyList(),
      if (sameOwner) prefs.getStringSet(publishedKey(owner), emptySet()).orEmpty() else emptySet(),
      prefs.getStringSet(dismissedKey(owner), emptySet()).orEmpty()
    )
    if (!sameOwner) existing.forEach {
      operations.add(ContentProviderOperation.newDelete(TvContractCompat.buildPreviewProgramUri(it.id)).build())
    }
    plan.delete.forEach {
      operations.add(ContentProviderOperation.newDelete(TvContractCompat.buildPreviewProgramUri(it)).build())
    }
    items.distinctBy { it.metadata.contentId }.forEachIndexed { index, item ->
      val contentId = item.metadata.contentId
      val rowId = plan.update[contentId]
      if (rowId == null && contentId !in plan.insert) return@forEachIndexed
      val values = valuesFor(item).apply {
        remove(TvContractCompat.WatchNextPrograms.COLUMN_WATCH_NEXT_TYPE)
        remove(TvContractCompat.WatchNextPrograms.COLUMN_LAST_ENGAGEMENT_TIME_UTC_MILLIS)
        put(TvContractCompat.PreviewPrograms.COLUMN_CHANNEL_ID, id)
        put(TvContractCompat.PreviewPrograms.COLUMN_WEIGHT, items.size - index)
      }
      val operation = if (rowId == null) {
        ContentProviderOperation.newInsert(TvContractCompat.PreviewPrograms.CONTENT_URI)
      } else {
        ContentProviderOperation.newUpdate(TvContractCompat.buildPreviewProgramUri(rowId)).withExpectedCount(1)
      }
      operations.add(operation.withValues(values).build())
    }
    return Pending(owner, plan)
  }

  fun commit(pending: Pending?) {
    if (pending == null) return
    if (!prefs.edit()
        .putString(OWNER, pending.ownerKey)
        .putStringSet(publishedKey(pending.ownerKey), pending.plan.published)
        .putStringSet(dismissedKey(pending.ownerKey), pending.plan.dismissed)
        .commit()) {
      Log.e(TAG, "Could not persist channel reconciliation")
    }
  }

  /** Delete cards, not the channel, so the user's channel visibility remains intact. */
  fun appendClear(operations: MutableList<ContentProviderOperation>): Pending? {
    val id = channelId(create = false) ?: return null
    val existing = rows(id)
    existing.forEach {
      operations.add(ContentProviderOperation.newDelete(TvContractCompat.buildPreviewProgramUri(it.id)).build())
    }
    val owner = prefs.getString(OWNER, null) ?: return null
    val plan = PreviewChannelReconciliation.plan(
      emptyList(), existing,
      prefs.getStringSet(publishedKey(owner), emptySet()).orEmpty(),
      prefs.getStringSet(dismissedKey(owner), emptySet()).orEmpty()
    )
    return Pending(owner, plan)
  }

  fun appendRemove(ownerId: String, contentId: String, operations: MutableList<ContentProviderOperation>): Pending? {
    val id = channelId(create = false) ?: return null
    val owner = ownerKey(ownerId)
    if (prefs.getString(OWNER, null) != owner) return null
    val existing = rows(id)
    val published = prefs.getStringSet(publishedKey(owner), emptySet()).orEmpty() - contentId
    val plan = PreviewChannelReconciliation.plan(
      published.toList(), existing,
      published, prefs.getStringSet(dismissedKey(owner), emptySet()).orEmpty()
    )
    plan.delete.forEach {
      operations.add(ContentProviderOperation.newDelete(TvContractCompat.buildPreviewProgramUri(it)).build())
    }
    return Pending(owner, plan)
  }
}
