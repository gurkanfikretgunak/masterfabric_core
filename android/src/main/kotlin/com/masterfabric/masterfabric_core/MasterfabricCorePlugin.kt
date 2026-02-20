package com.masterfabric.masterfabric_core

import android.Manifest
import android.app.Activity
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Build
import android.provider.Settings
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.PluginRegistry
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** MasterfabricCorePlugin */
class MasterfabricCorePlugin : FlutterPlugin, MethodCallHandler, ActivityAware {

    private lateinit var channel: MethodChannel
    private var applicationContext: Context? = null
    private var activity: Activity? = null
    private var pendingResult: Result? = null

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        applicationContext = binding.applicationContext
        channel = MethodChannel(binding.binaryMessenger, "com.masterfabric.permission_helper")
        channel.setMethodCallHandler(this)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        applicationContext = null
        channel.setMethodCallHandler(null)
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activity = binding.activity
        binding.addRequestPermissionsResultListener(
            PluginRegistry.RequestPermissionsResultListener { requestCode, _, grantResults ->
                if (requestCode == REQUEST_CODE && pendingResult != null) {
                    val granted = grantResults.isNotEmpty() &&
                        grantResults[0] == PackageManager.PERMISSION_GRANTED
                    pendingResult?.success(granted)
                    pendingResult = null
                    true
                } else {
                    false
                }
            }
        )
    }

    override fun onDetachedFromActivityForConfigChanges() {
        activity = null
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        activity = binding.activity
    }

    override fun onDetachedFromActivity() {
        activity = null
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            "checkPermission" -> {
                val key = call.arguments as? String
                if (key != null) {
                    result.success(checkPermission(key))
                } else {
                    result.error("INVALID_ARGS", "Permission key required", null)
                }
            }
            "requestPermission" -> {
                val key = call.arguments as? String
                if (key != null) {
                    requestPermission(key, result)
                } else {
                    result.error("INVALID_ARGS", "Permission key required", null)
                }
            }
            "openAppSettings" -> {
                result.success(openAppSettings())
            }
            else -> result.notImplemented()
        }
    }

    private fun permissionKeyToAndroid(key: String): String {
        return when (key) {
            "camera" -> Manifest.permission.CAMERA
            "location", "locationWhenInUse" -> Manifest.permission.ACCESS_FINE_LOCATION
            "storage" -> if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                Manifest.permission.READ_MEDIA_IMAGES
            } else {
                Manifest.permission.READ_EXTERNAL_STORAGE
            }
            "photos" -> if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                Manifest.permission.READ_MEDIA_IMAGES
            } else {
                Manifest.permission.READ_EXTERNAL_STORAGE
            }
            "microphone" -> Manifest.permission.RECORD_AUDIO
            "contacts" -> Manifest.permission.READ_CONTACTS
            "notification" -> if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                Manifest.permission.POST_NOTIFICATIONS
            } else {
                "" // No runtime permission for notifications before Android 13
            }
            else -> ""
        }
    }

    private fun checkPermission(key: String): Boolean {
        val ctx = activity ?: applicationContext ?: return false
        val perm = permissionKeyToAndroid(key)
        if (perm.isEmpty()) return true
        return ContextCompat.checkSelfPermission(ctx, perm) == PackageManager.PERMISSION_GRANTED
    }

    private fun requestPermission(key: String, result: Result) {
        val act = activity
        if (act == null) {
            result.success(false)
            return
        }

        val perm = permissionKeyToAndroid(key)
        if (perm.isEmpty()) {
            result.success(true)
            return
        }

        if (ContextCompat.checkSelfPermission(act, perm) == PackageManager.PERMISSION_GRANTED) {
            result.success(true)
            return
        }

        pendingResult = result
        ActivityCompat.requestPermissions(act, arrayOf(perm), REQUEST_CODE)
    }

    private fun openAppSettings(): Boolean {
        val act = activity ?: return false
        return try {
            val intent = Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS).apply {
                data = Uri.fromParts("package", act.packageName, null)
            }
            act.startActivity(intent)
            true
        } catch (e: Exception) {
            false
        }
    }

    companion object {
        private const val REQUEST_CODE = 3847
    }
}
