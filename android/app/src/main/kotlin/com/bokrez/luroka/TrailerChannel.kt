package com.bokrez.luroka

import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.*
import okhttp3.OkHttpClient
import okhttp3.RequestBody.Companion.toRequestBody
import org.schabi.newpipe.extractor.NewPipe
import org.schabi.newpipe.extractor.downloader.Downloader
import org.schabi.newpipe.extractor.downloader.Request
import org.schabi.newpipe.extractor.downloader.Response
import org.schabi.newpipe.extractor.stream.StreamInfo
import org.schabi.newpipe.extractor.services.youtube.YoutubeStreamHelper
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper
import org.schabi.newpipe.extractor.localization.Localization
import org.schabi.newpipe.extractor.localization.ContentCountry
import java.util.concurrent.TimeUnit
import android.util.Log
import android.app.Activity
import android.content.Intent

/** Resolves only explicit YouTube preview selections, never library playback. */
class TrailerChannel(private val activity: Activity) {
  private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main)
  private var channel: MethodChannel? = null
  private var embeddedResult: MethodChannel.Result? = null

  fun register(engine: FlutterEngine) {
    channel = MethodChannel(engine.dartExecutor.binaryMessenger, "com.luroka/trailers").also { ch ->
      ch.setMethodCallHandler { call, result ->
        if (call.method == "closeEmbedded") {
          if (embeddedResult != null) activity.finishActivity(EMBED_REQUEST)
          result.success(null)
          return@setMethodCallHandler
        }
        if (call.method == "openEmbedded") {
          val key = call.argument<String>("key")
          if (key == null || !Regex("^[A-Za-z0-9_-]{11}$").matches(key) || embeddedResult != null) {
            result.error("invalid_video", "Preview unavailable", null)
            return@setMethodCallHandler
          }
          embeddedResult = result
          try {
            activity.startActivityForResult(Intent(activity, TrailerEmbedActivity::class.java).apply {
              putExtra("key", key)
              putExtra("title", call.argument<String>("title"))
              putExtra("playLabel", call.argument<String>("playLabel"))
              putExtra("pauseLabel", call.argument<String>("pauseLabel"))
              putExtra("closeLabel", call.argument<String>("closeLabel"))
              putExtra("accent", call.argument<Number>("accent")?.toInt() ?: 0xFFFF8066.toInt())
            }, EMBED_REQUEST)
          } catch (_: Exception) {
            embeddedResult = null
            result.success(false)
          }
          return@setMethodCallHandler
        }
        if (call.method != "resolve") { result.notImplemented(); return@setMethodCallHandler }
        val key = call.argument<String>("key")
        if (key == null || !Regex("^[A-Za-z0-9_-]{11}$").matches(key)) {
          result.error("invalid_video", "Invalid trailer", null)
          return@setMethodCallHandler
        }
        scope.launch {
          try {
            val stream = withContext(Dispatchers.IO) {
              initialize()
              val info = try {
                StreamInfo.getInfo(NewPipe.getService(0), "https://www.youtube.com/watch?v=$key")
              } catch (error: Exception) {
                // Extractor 0.26.5 aborts on its initial Android response,
                // before trying the other clients it already supports.
                resolveAlternateManifest(key)?.let { return@withContext it }
                throw error
              }
              // Combined streams are portable to both existing playback engines;
              // they do not need a second native audio/video merging pipeline.
              val combined = info.videoStreams.orEmpty().filter {
                !it.isVideoOnly && it.isUrl && !it.url.isNullOrBlank() && it.height <= 1080
              }.maxByOrNull { it.height }
              val manifest = info.hlsUrl?.takeIf { it.isNotBlank() }
                ?: info.dashMpdUrl?.takeIf { it.isNotBlank() }
              when {
                manifest != null -> mapOf("url" to manifest)
                combined != null -> mapOf("url" to combined.url)
                else -> {
                  val video = info.videoOnlyStreams.orEmpty().filter {
                    it.isUrl && !it.url.isNullOrBlank() && it.height <= 1080
                  }.maxByOrNull { it.height } ?: throw IllegalStateException("No trailer video")
                  val audio = info.audioStreams.orEmpty().filter { it.isUrl && !it.url.isNullOrBlank() }
                    .maxByOrNull { it.averageBitrate } ?: throw IllegalStateException("No trailer audio")
                  mapOf("url" to video.url, "audioUrl" to audio.url)
                }
              }
            }
            result.success(stream)
          } catch (_: CancellationException) {
            result.error("cancelled", "Trailer cancelled", null)
          } catch (error: Exception) {
            // Exceptions can include expiring signed URLs; never send or log them.
            val kinds = generateSequence<Throwable>(error) { it.cause }.take(4)
              .joinToString(" -> ") { it.javaClass.simpleName }
            Log.w("LumoraTrailers", "Resolution failed: $kinds")
            result.error("unavailable", "Trailer is unavailable", null)
          }
        }
      }
    }
  }

  fun onActivityResult(requestCode: Int, resultCode: Int): Boolean {
    if (requestCode != EMBED_REQUEST) return false
    val pending = embeddedResult
    embeddedResult = null
    pending?.success(resultCode == Activity.RESULT_OK)
    return true
  }

  fun dispose() {
    if (embeddedResult != null) activity.finishActivity(EMBED_REQUEST)
    embeddedResult?.success(false)
    embeddedResult = null
    channel?.setMethodCallHandler(null)
    scope.cancel()
  }

  companion object {
    private const val EMBED_REQUEST = 5821
    private var ready = false
    private fun resolveAlternateManifest(key: String): Map<String, Any>? {
      val locale = Localization("en", "US")
      val country = ContentCountry("US")
      for (vision in listOf(true, false)) {
        try {
          val nonce = YoutubeParsingHelper.generateContentPlaybackNonce()
          val response = if (vision) YoutubeStreamHelper.getVisionOsPlayerResponse(country, locale, key, nonce)
            else YoutubeStreamHelper.getIosPlayerResponse(country, locale, key, nonce, null)
          val status = response.getObject("playabilityStatus").getString("status", "UNKNOWN")
          Log.i("LumoraTrailers", "Alternate ${if (vision) "visionOS" else "iOS"} response: $status")
          if (status != "OK" || response.getObject("videoDetails").getString("videoId") != key) continue
          val url = response.getObject("streamingData").getString("hlsManifestUrl") ?: continue
          if (!url.startsWith("https://")) continue
          val agent = if (vision) YoutubeParsingHelper.getVisionOsUserAgent(locale)
            else YoutubeParsingHelper.getIosUserAgent(locale)
          return mapOf("url" to url, "headers" to mapOf("User-Agent" to agent))
        } catch (_: Exception) { /* Try the remaining supported client. */ }
      }
      return null
    }
    @Synchronized private fun initialize() {
      if (ready) return
      NewPipe.init(object : Downloader() {
        private val client = OkHttpClient.Builder().connectTimeout(15, TimeUnit.SECONDS)
          .readTimeout(20, TimeUnit.SECONDS).callTimeout(30, TimeUnit.SECONDS).build()
        override fun execute(request: Request): Response {
          val body = request.dataToSend()?.toRequestBody()
            ?: if (request.httpMethod() in listOf("POST", "PUT", "PATCH")) ByteArray(0).toRequestBody() else null
          val builder = okhttp3.Request.Builder().url(request.url()).method(request.httpMethod(), body)
          Request.getHeadersFromLocalization(request.localization()).forEach { (name, values) ->
            values.forEach { builder.addHeader(name, it) }
          }
          request.headers().forEach { (name, values) -> values.forEach { builder.addHeader(name, it) } }
          return client.newCall(builder.build()).execute().use {
            Response(it.code, it.message, it.headers.toMultimap(), it.body?.string().orEmpty(), it.request.url.toString())
          }
        }
      })
      ready = true
    }
  }
}
