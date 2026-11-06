package com.bokrez.luroka

import android.app.Activity
import android.content.res.ColorStateList
import android.graphics.Color
import android.graphics.Typeface
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.KeyEvent
import android.view.View
import android.view.WindowManager
import android.webkit.JavascriptInterface
import android.webkit.WebChromeClient
import android.webkit.WebResourceRequest
import android.webkit.WebView
import android.webkit.WebViewClient
import android.widget.Button
import android.widget.LinearLayout
import android.widget.ProgressBar
import android.widget.SeekBar
import android.widget.TextView
import java.util.Locale

/** Official YouTube iframe fallback, kept inside Lumora. No library session or
 * server credentials are passed into the web player. */
class TrailerEmbedActivity : Activity() {
  private lateinit var web: WebView
  private lateinit var play: Button
  private lateinit var seek: SeekBar
  private lateinit var clock: TextView
  private lateinit var loading: ProgressBar
  private val handler = Handler(Looper.getMainLooper())
  private var started = false
  private var playing = false
  private var tracking = false
  private var duration = 0.0
  private var position = 0.0
  private var destroyed = false
  private var watchPage = false
  private var videoKey = ""
  private val timeout = Runnable {
    if (!started && !isFinishing) {
      if (!watchPage) openWatchPage() else fail(0)
    }
  }

  @Suppress("SetJavaScriptEnabled", "DEPRECATION")
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    val key = intent.getStringExtra("key")
    if (key == null || !Regex("^[A-Za-z0-9_-]{11}$").matches(key)) { finish(); return }
    videoKey = key
    setResult(RESULT_OK)
    window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
    window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or
      View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
    val accent = intent.getIntExtra("accent", 0xFFFF8066.toInt())
    val root = LinearLayout(this).apply {
      orientation = LinearLayout.VERTICAL
      setBackgroundColor(Color.BLACK)
    }
    val header = LinearLayout(this).apply { setPadding(dp(16), dp(8), dp(16), dp(8)); gravity = android.view.Gravity.CENTER_VERTICAL }
    header.addView(button("‹", accent) { finish() }.apply { contentDescription = intent.getStringExtra("closeLabel") })
    header.addView(TextView(this).apply {
      text = intent.getStringExtra("title").orEmpty()
      textSize = 19f; setTextColor(Color.WHITE); setPadding(dp(16), 0, 0, 0)
      maxLines = 1; ellipsize = android.text.TextUtils.TruncateAt.END
    }, LinearLayout.LayoutParams(0, dp(48), 1f))
    root.addView(header)
    loading = ProgressBar(this).apply { isIndeterminate = true; indeterminateTintList = ColorStateList.valueOf(accent) }
    root.addView(loading, LinearLayout.LayoutParams(dp(36), dp(36)).apply { gravity = android.view.Gravity.CENTER_HORIZONTAL })
    web = WebView(this).apply {
      setBackgroundColor(Color.BLACK)
      settings.javaScriptEnabled = true
      settings.domStorageEnabled = true
      settings.mediaPlaybackRequiresUserGesture = false
      settings.allowFileAccess = false
      settings.allowContentAccess = false
      // Flutter/native transport owns TV key navigation, not the iframe.
      isFocusable = false
      webChromeClient = WebChromeClient()
      webViewClient = object : WebViewClient() {
        override fun shouldOverrideUrlLoading(view: WebView, request: WebResourceRequest): Boolean {
          if (!request.isForMainFrame) return false
          if (!watchPage) return true
          val host = request.url.host.orEmpty()
          if (host != "youtube.com" && !host.endsWith(".youtube.com") && host != "accounts.google.com") return true
          val selectedKey = request.url.getQueryParameter("v")
          return selectedKey != null && selectedKey != videoKey
        }
        override fun onPageFinished(view: WebView, url: String) {
          if (watchPage) attachWatchPageTransport()
        }
      }
      addJavascriptInterface(Bridge(), "LumoraPreview")
    }
    root.addView(web, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f))
    val transport = LinearLayout(this).apply { orientation = LinearLayout.VERTICAL; setPadding(dp(20), dp(4), dp(20), dp(12)) }
    val buttons = LinearLayout(this).apply { gravity = android.view.Gravity.CENTER }
    buttons.addView(button("−10 s", accent) { seekTo(position - 10) })
    play = button(intent.getStringExtra("playLabel") ?: "Play", accent) { toggle() }
    buttons.addView(play, LinearLayout.LayoutParams(dp(150), dp(48)).apply { setMargins(dp(12), 0, dp(12), 0) })
    buttons.addView(button("+10 s", accent) { seekTo(position + 10) })
    transport.addView(buttons)
    seek = SeekBar(this).apply {
      max = 1000; progressTintList = ColorStateList.valueOf(accent); thumbTintList = ColorStateList.valueOf(accent)
      setOnSeekBarChangeListener(object : SeekBar.OnSeekBarChangeListener {
        override fun onStartTrackingTouch(bar: SeekBar) { tracking = true }
        override fun onStopTrackingTouch(bar: SeekBar) { tracking = false; seekTo(duration * bar.progress / 1000) }
        override fun onProgressChanged(bar: SeekBar, progress: Int, user: Boolean) {}
      })
    }
    transport.addView(seek, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, dp(40)))
    clock = TextView(this).apply { setTextColor(Color.LTGRAY); gravity = android.view.Gravity.CENTER; textSize = 12f }
    transport.addView(clock)
    root.addView(transport)
    setContentView(root)
    // Android's documented loadDataWithBaseURL referrer identifies this app to
    // the iframe and avoids YouTube error 153 (missing client identity).
    val origin = "https://$packageName"
    val html = """<!doctype html><html><head><meta name="viewport" content="width=device-width,initial-scale=1"><style>
      html,body,#player{margin:0;width:100%;height:100%;background:#000;overflow:hidden}</style></head><body>
      <div id="player"></div><script src="https://www.youtube.com/iframe_api"></script><script>
      var player;
      function onYouTubeIframeAPIReady(){player=new YT.Player('player',{width:'100%',height:'100%',videoId:'$key',
        playerVars:{autoplay:1,controls:1,playsinline:1,fs:0,rel:0,origin:'$origin'},events:{
          onReady:function(){LumoraPreview.ready();player.playVideo();},
          onStateChange:function(e){LumoraPreview.state(e.data);},
          onError:function(e){LumoraPreview.error(e.data);}
        }});}
      setInterval(function(){if(player&&player.getCurrentTime){LumoraPreview.progress(player.getCurrentTime(),player.getDuration());}},500);
      </script></body></html>"""
    web.loadDataWithBaseURL(origin, html, "text/html", "UTF-8", null)
    handler.postDelayed(timeout, 45000)
    play.requestFocus()
  }

  private fun button(label: String, accent: Int, action: () -> Unit) = Button(this).apply {
    text = label; isAllCaps = false; textSize = 15f; typeface = Typeface.DEFAULT_BOLD
    setTextColor(Color.WHITE)
    backgroundTintList = ColorStateList(arrayOf(intArrayOf(android.R.attr.state_focused), intArrayOf()),
      intArrayOf(accent, 0xFF24212D.toInt()))
    setOnClickListener { action() }
  }
  private fun dp(value: Int) = (value * resources.displayMetrics.density).toInt()
  private fun javascript(code: String) {
    if (destroyed || !::web.isInitialized) return
    val script = if (watchPage) code.replace("player.", "window.lumoraWatchPlayer.") else code
    val name = if (watchPage) "window.lumoraWatchPlayer" else "window.player"
    web.evaluateJavascript("if($name&&$name.playVideo){$script;}", null)
  }
  /** Some uploaders disable iframe playback (YouTube errors 101/150). A
   * normal YouTube watch page can still be viewed in this in-app browser. */
  private fun openWatchPage() {
    if (watchPage || destroyed) return
    watchPage = true; started = false
    loading.visibility = View.VISIBLE
    web.isFocusable = true; web.isFocusableInTouchMode = true
    // The system TV WebView advertises an embedded "wv" browser. Use its
    // standard Chrome identity for the ordinary watch page, which is not an
    // iframe and otherwise receives YouTube's unsupported-WebView response.
    web.settings.userAgentString = web.settings.userAgentString
      .replace("; wv", "").replace("Version/4.0 ", "")
    handler.removeCallbacks(timeout); handler.postDelayed(timeout, 60000)
    android.util.Log.i("LumoraTrailers", "Opening in-app YouTube watch page")
    web.loadUrl("https://m.youtube.com/watch?v=$videoKey")
  }
  private fun attachWatchPageTransport() {
    if (destroyed) return
    // This is the normal YouTube page, including its own consent/account UI.
    // Transport only controls its HTML video element; it does not extract URLs.
    web.evaluateJavascript("""(function(){
      if(window.lumoraWatchTimer)return;
      var attached=null;
      window.lumoraWatchTimer=setInterval(function(){
        var v=document.querySelector('video');if(!v)return;
        if(v!==attached){attached=v;v.setAttribute('playsinline','');
          window.lumoraWatchPlayer={playVideo:function(){v.play().catch(function(){});},pauseVideo:function(){v.pause();},
            seekTo:function(s){v.currentTime=s;}};
          v.addEventListener('playing',function(){LumoraPreview.state(1);});
          v.addEventListener('pause',function(){LumoraPreview.state(2);});
          v.addEventListener('ended',function(){LumoraPreview.state(0);});
          LumoraPreview.ready();v.play().catch(function(){});
        }
        if(isFinite(v.duration))LumoraPreview.progress(v.currentTime,v.duration);
        if(!v.paused)LumoraPreview.state(1);
      },500);
    })();""", null)
  }
  private fun toggle() { javascript(if (playing) "player.pauseVideo()" else "player.playVideo()") }
  private fun seekTo(seconds: Double) { javascript("player.seekTo(${seconds.coerceIn(0.0, duration.coerceAtLeast(0.0))},true)") }
  private fun format(seconds: Double): String {
    val total = seconds.toInt().coerceAtLeast(0)
    return String.format(Locale.US, "%d:%02d", total / 60, total % 60)
  }
  private fun fail(code: Int) {
    android.util.Log.w("LumoraTrailers", "Embedded player unavailable (YouTube code $code)")
    setResult(RESULT_CANCELED); finish()
  }
  override fun onKeyDown(keyCode: Int, event: KeyEvent): Boolean {
    if (watchPage && !started) return super.onKeyDown(keyCode, event)
    when (keyCode) {
      KeyEvent.KEYCODE_DPAD_LEFT, KeyEvent.KEYCODE_MEDIA_REWIND -> { seekTo(position - 10); return true }
      KeyEvent.KEYCODE_DPAD_RIGHT, KeyEvent.KEYCODE_MEDIA_FAST_FORWARD -> { seekTo(position + 10); return true }
      KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE -> { toggle(); return true }
    }
    return super.onKeyDown(keyCode, event)
  }
  override fun onPause() { javascript("player.pauseVideo()"); super.onPause() }
  @Suppress("DEPRECATION")
  override fun onDestroy() {
    destroyed = true; handler.removeCallbacksAndMessages(null)
    if (::web.isInitialized) { web.removeJavascriptInterface("LumoraPreview"); web.stopLoading(); web.destroy() }
    super.onDestroy()
  }
  inner class Bridge {
    @JavascriptInterface fun ready() { handler.post {
      if (destroyed) return@post
      loading.visibility = View.GONE
      android.util.Log.i("LumoraTrailers", "Embedded player ready")
    } }
    @JavascriptInterface fun state(value: Int) { handler.post {
      if (destroyed) return@post
      val wasPlaying = playing
      playing = value == 1
      play.text = intent.getStringExtra(if (playing) "pauseLabel" else "playLabel") ?: if (playing) "Pause" else "Play"
      if (playing) {
        started = true
        handler.removeCallbacks(timeout)
        if (!wasPlaying) android.util.Log.i("LumoraTrailers", "YouTube preview playing")
      }
      if (value == 0) finish()
    } }
    @JavascriptInterface fun progress(seconds: Double, length: Double) { handler.post {
      if (destroyed || !seconds.isFinite() || !length.isFinite()) return@post
      position = seconds; duration = length
      if (!tracking && length > 0) seek.progress = (seconds / length * 1000).toInt().coerceIn(0, 1000)
      clock.text = "${format(seconds)} / ${format(length)}"
    } }
    @JavascriptInterface fun error(code: Int) { handler.post {
      if (destroyed) return@post
      if (!watchPage) openWatchPage() else fail(code)
    } }
  }
}
