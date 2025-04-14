package com.hope4you.refuel.af

import android.os.Bundle
import androidx.activity.result.ActivityResultLauncher
import androidx.core.os.BuildCompat
import androidx.health.connect.client.HealthConnectClient
import androidx.health.connect.client.PermissionController
import androidx.health.connect.client.permission.HealthPermission
import androidx.health.connect.client.records.DistanceRecord
import androidx.health.connect.client.records.ExerciseSessionRecord
import androidx.health.connect.client.records.HeartRateRecord
import androidx.health.connect.client.records.SleepSessionRecord
import androidx.health.connect.client.records.StepsRecord
import com.example.my_project.HealthDataPlugin
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

@OptIn(BuildCompat.PrereleaseSdkCheck::class)
class MainActivity : FlutterFragmentActivity() {

    private val PERMISSIONS_CHANNEL = "health_connect_permissions"

    private var pendingResult: MethodChannel.Result? = null

    private val healthConnectClient by lazy { HealthConnectClient.getOrCreate(context = this.baseContext) }

    private val permissions = setOf(
        HealthPermission.getReadPermission(ExerciseSessionRecord::class),
        HealthPermission.getReadPermission(SleepSessionRecord::class),
        HealthPermission.getReadPermission(StepsRecord::class),
        HealthPermission.getReadPermission(DistanceRecord::class),
        HealthPermission.getReadPermission(HeartRateRecord::class)
    )

    private lateinit var permissionLauncher: ActivityResultLauncher<Set<String>>

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // Register the result launcher using the new contract
        permissionLauncher = registerForActivityResult(
            PermissionController.createRequestPermissionResultContract()
        ) { grantedPermissions ->
            val granted = permissions.all { it in grantedPermissions }
            pendingResult?.success(granted)
            pendingResult = null
        }

        MethodChannel(
            flutterEngine!!.dartExecutor.binaryMessenger,
            PERMISSIONS_CHANNEL
        ).setMethodCallHandler { call, result ->
            when (call.method) {
                "requestPermissions" -> {
                    permissionLauncher.launch(permissions)
                    pendingResult = result
                }

                else -> {
                    pendingResult = result
                    pendingResult?.notImplemented()
                }
            }
        }
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val channel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            "healthData"
        )

        val plugin = HealthDataPlugin(this)
        channel.setMethodCallHandler(plugin)
    }

    suspend fun hasAllPermissions(permissions: Set<String>): Boolean {
        return healthConnectClient.permissionController.getGrantedPermissions()
            .containsAll(permissions)
    }
}
