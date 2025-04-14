package com.example.my_project

import android.app.Activity
import androidx.core.os.BuildCompat
import androidx.health.connect.client.HealthConnectClient
import androidx.health.connect.client.HealthConnectClient.Companion.SDK_AVAILABLE
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

@OptIn(BuildCompat.PrereleaseSdkCheck::class)
class HealthDataPlugin(private val activity: Activity) : MethodChannel.MethodCallHandler {

    private val healthConnectClient by lazy { HealthConnectClient.getOrCreate(activity.baseContext) }

    private var availability = HealthConnectAvailability.NOT_SUPPORTED

    init {
        checkAvailability()
    }

    private fun checkAvailability() {
        availability = when {
            HealthConnectClient.getSdkStatus(activity.baseContext) == SDK_AVAILABLE -> HealthConnectAvailability.INSTALLED
            else -> HealthConnectAvailability.NOT_INSTALLED
        }
    }

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

enum class HealthConnectAvailability {
    INSTALLED,
    NOT_INSTALLED,
    NOT_SUPPORTED
}