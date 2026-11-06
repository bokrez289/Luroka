package com.bokrez.luroka

import android.app.Activity
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Build
import android.os.Process
import android.provider.Settings
import androidx.core.content.FileProvider
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.io.File
import java.security.MessageDigest

/** Never hands an arbitrary download to the installer: identity, monotonically
 * increasing version and the installed signing identity are checked first. */
class UpdateChannel(private val activity: Activity) {
  fun register(engine: FlutterEngine) {
    MethodChannel(engine.dartExecutor.binaryMessenger, "com.bokrez.luroka/updates").setMethodCallHandler { call, result ->
      try {
        val pm = activity.packageManager
        val flags = if (Build.VERSION.SDK_INT >= 28) PackageManager.GET_SIGNING_CERTIFICATES else PackageManager.GET_SIGNATURES
        val installed = pm.getPackageInfo(activity.packageName, flags)
        fun version(info: android.content.pm.PackageInfo): Long = if (Build.VERSION.SDK_INT >= 28) info.longVersionCode else info.versionCode.toLong()
        when (call.method) {
          "installerPackage" -> {
            val installer = if (Build.VERSION.SDK_INT >= 30) {
              pm.getInstallSourceInfo(activity.packageName).installingPackageName
            } else {
              @Suppress("DEPRECATION")
              pm.getInstallerPackageName(activity.packageName)
            }
            result.success(installer)
          }
          "deviceInfo" -> result.success(mapOf("version" to installed.versionName, "versionCode" to version(installed), "sdk" to Build.VERSION.SDK_INT,
            "abi" to if (Build.VERSION.SDK_INT >= 23 && Process.is64Bit() && Build.SUPPORTED_ABIS.contains("arm64-v8a")) "arm64-v8a"
              else if (Build.SUPPORTED_ABIS.contains("armeabi-v7a")) "armeabi-v7a" else Build.SUPPORTED_ABIS.firstOrNull()))
          "install" -> {
            val file = File(call.argument<String>("path") ?: error("Missing APK")).canonicalFile
            val root = File(activity.cacheDir, "luroka-updates").canonicalFile
            require(file.parentFile == root && file.name == "update.apk" && file.isFile) { "Invalid APK path" }
            val archive = pm.getPackageArchiveInfo(file.path, flags) ?: error("Invalid APK")
            fun signatures(info: android.content.pm.PackageInfo): Set<String> {
              val signers = if (Build.VERSION.SDK_INT >= 28) info.signingInfo?.apkContentsSigners else info.signatures
              return signers?.map { MessageDigest.getInstance("SHA-256").digest(it.toByteArray()).joinToString("") { b -> "%02x".format(b) } }?.toSet() ?: emptySet()
            }
            UpdatePolicy.requireCompatible(activity.packageName, archive.packageName, version(installed), version(archive),
              call.argument<Number>("versionCode")?.toLong(), signatures(installed), signatures(archive))
            if (Build.VERSION.SDK_INT >= 26 && !pm.canRequestPackageInstalls()) {
              activity.startActivity(Intent(Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES, Uri.parse("package:${activity.packageName}")))
              result.success(false)
            } else {
              val uri = FileProvider.getUriForFile(activity, "${activity.packageName}.fileprovider", file)
              activity.startActivity(Intent(Intent.ACTION_VIEW).setDataAndType(uri, "application/vnd.android.package-archive").addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION))
              result.success(true)
            }
          }
          else -> result.notImplemented()
        }
      } catch (error: Exception) { result.error("UPDATE_FAILED", error.message, null) }
    }
  }
}
