package com.hope4you.refuel.af

import com.example.my_project.HealthDataPlugin
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val channel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            "healthData"
        )

        val plugin = HealthDataPlugin(this)
        channel.setMethodCallHandler(plugin)
    }
}
