package com.example.my_project

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.embedding.android.FlutterActivity


class HealthDataPlugin(private val activity: FlutterActivity) : MethodChannel.MethodCallHandler {

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "requestAuthorization" -> requestPermissions(result)
            "getWorkoutData" -> getWorkoutData(result)
            "getRunningData" -> getRunningData(result)
            "populateWorkoutData" -> populateWorkoutData(result)
            "populateRunningData" -> populateRunningWorkout(result)
            "getSleepData" -> getSleepData(result)
            "addTestSleepData" -> addTestSleepData(result)
            else -> result.notImplemented()
        }
    }

    private fun requestPermissions(result: MethodChannel.Result) {
        result.success(true)
    }

    private fun getWorkoutData(result: MethodChannel.Result) { /* ... */
    }

    private fun getRunningData(result: MethodChannel.Result) { /* ... */
    }

    private fun populateWorkoutData(result: MethodChannel.Result) { /* ... */
    }

    private fun populateRunningWorkout(result: MethodChannel.Result) { /* ... */
    }

    private fun getSleepData(result: MethodChannel.Result) { /* ... */
    }

    private fun addTestSleepData(result: MethodChannel.Result) { /* ... */
    }
}