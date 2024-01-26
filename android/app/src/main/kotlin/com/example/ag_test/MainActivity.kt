package com.example.ag_test

import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant
import org.json.JSONObject

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.example.ag_test/custom_channel"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        GeneratedPluginRegistrant.registerWith(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            .setMethodCallHandler { call: MethodCall, result: MethodChannel.Result ->
                if (call.method == "transmitObject") {
                    try {
                        result.success("Message received from Kotlin")
                    } catch (e: Exception) {
                        result.error("ERROR", "Error handling transmitted object", null)
                    }
                } else {
                    result.notImplemented()
                }
            }
    }
}
