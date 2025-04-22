package com.hope4you.refuel.af

import android.content.Context
import android.os.Bundle
import androidx.activity.result.ActivityResultLauncher
import androidx.core.os.BuildCompat
import androidx.health.connect.client.HealthConnectClient
import androidx.health.connect.client.PermissionController
import androidx.health.connect.client.permission.HealthPermission
import androidx.health.connect.client.records.BasalMetabolicRateRecord
import androidx.health.connect.client.records.DistanceRecord
import androidx.health.connect.client.records.ExerciseSessionRecord
import androidx.health.connect.client.records.HeartRateRecord
import androidx.health.connect.client.records.HeightRecord
import androidx.health.connect.client.records.SleepSessionRecord
import androidx.health.connect.client.records.StepsRecord
import androidx.health.connect.client.records.TotalCaloriesBurnedRecord
import androidx.health.connect.client.records.Vo2MaxRecord
import androidx.health.connect.client.records.WeightRecord
import androidx.health.connect.client.request.AggregateRequest
import androidx.health.connect.client.request.ReadRecordsRequest
import androidx.health.connect.client.time.TimeRangeFilter
import androidx.lifecycle.lifecycleScope
import io.flutter.Log
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.launch
import org.json.JSONArray
import org.json.JSONObject
import java.time.Duration
import java.time.Instant
import java.time.format.DateTimeFormatter
import java.time.temporal.ChronoUnit

const val HEALTH_DATA_PLATFORM_CHANNEL = "healthData"

@OptIn(BuildCompat.PrereleaseSdkCheck::class)
class MainActivity : FlutterFragmentActivity() {

    private var pendingResult: MethodChannel.Result? = null

    private val permissions = setOf(
        HealthPermission.getReadPermission(ExerciseSessionRecord::class),
        HealthPermission.getReadPermission(StepsRecord::class),
        HealthPermission.getReadPermission(Vo2MaxRecord::class),
        HealthPermission.getReadPermission(BasalMetabolicRateRecord::class),
        HealthPermission.getReadPermission(TotalCaloriesBurnedRecord::class),
        HealthPermission.getReadPermission(DistanceRecord::class),
        HealthPermission.getReadPermission(HeartRateRecord::class),
        HealthPermission.getReadPermission(HeightRecord::class),
        HealthPermission.getReadPermission(WeightRecord::class),
        HealthPermission.getReadPermission(SleepSessionRecord::class)
    )

    private lateinit var permissionLauncher: ActivityResultLauncher<Set<String>>

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // Register the result launcher using the new contract
        permissionLauncher = registerForActivityResult(
            PermissionController.createRequestPermissionResultContract()
        ) { grantedPermissions ->
            val granted = permissions.all { it in grantedPermissions }
            val missing = permissions - grantedPermissions.toSet()
            Log.i("Permissions", "Missing permissions: $missing")

            pendingResult?.success(granted)
            pendingResult = null
        }
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val methodChannel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            HEALTH_DATA_PLATFORM_CHANNEL
        )

        methodChannel.setMethodCallHandler { call, result ->
            when (call.method) {
                "requestAuthorization" -> {
                    pendingResult = result
                    permissionLauncher.launch(permissions)
                }

                "getRunningData" -> {
                    lifecycleScope.launch {
                        getRunningWorkoutData(baseContext, result)
                    }
                }

                "getSleepData" -> {
                    lifecycleScope.launch {
                        getSleepData(baseContext, result)
                    }
                }

                "getWorkoutData" -> {
                    lifecycleScope.launch {
                        getAllWorkoutData(baseContext, result)
                    }
                }

                else -> result.success("[]")
            }
        }
    }

    private suspend fun getRunningWorkoutData(context: Context, result: MethodChannel.Result) {
        val client = HealthConnectClient.getOrCreate(context)

        val endTime = Instant.now()
        val startTime = endTime.minus(30, ChronoUnit.DAYS)

        val formatter = DateTimeFormatter.ISO_INSTANT

        try {
            // 1. Query running exercise sessions
            val sessionResponse = client.readRecords(
                ReadRecordsRequest(
                    recordType = ExerciseSessionRecord::class,
                    timeRangeFilter = TimeRangeFilter.between(startTime, endTime)
                )
            )

            val runningSessions = sessionResponse.records.filter {
                it.exerciseType == ExerciseSessionRecord.EXERCISE_TYPE_RUNNING
            }

            val runningArray = JSONArray()

            // 2. For each session, fetch aggregates
            for (session in runningSessions) {
                val timeRange = TimeRangeFilter.between(session.startTime, session.endTime)

                val distanceAggregate = client.aggregate(
                    AggregateRequest(
                        metrics = setOf(DistanceRecord.DISTANCE_TOTAL),
                        timeRangeFilter = timeRange
                    )
                )
                val energyAggregate = client.aggregate(
                    AggregateRequest(
                        metrics = setOf(TotalCaloriesBurnedRecord.ENERGY_TOTAL),
                        timeRangeFilter = timeRange
                    )
                )

                val distance = distanceAggregate[DistanceRecord.DISTANCE_TOTAL]?.inMeters ?: 0.0
                val energy =
                    energyAggregate[TotalCaloriesBurnedRecord.ENERGY_TOTAL]?.inKilocalories ?: 0.0

                val runningObject = JSONObject()
                runningObject.put("startDate", formatter.format(session.startTime))
                runningObject.put("endDate", formatter.format(session.endTime))
                runningObject.put("durationMinutes", Duration.between(session.startTime, session.endTime).toMinutes().toDouble())
                runningObject.put("distanceMeters", distance)
                runningObject.put("energyBurned", energy)

                runningArray.put(runningObject)
            }

            result.success(runningArray.toString())

        } catch (e: Exception) {
            result.error("HEALTH_CONNECT_ERROR", "Error reading running data", e.localizedMessage)
        }
    }

    private suspend fun getAllWorkoutData(context: Context, result: MethodChannel.Result) {
        val client = HealthConnectClient.getOrCreate(context)

        val endTime = Instant.now()
        val startTime = endTime.minus(30, ChronoUnit.DAYS)
        val formatter = DateTimeFormatter.ISO_INSTANT

        try {
            val sessionResponse = client.readRecords(
                ReadRecordsRequest(
                    recordType = ExerciseSessionRecord::class,
                    timeRangeFilter = TimeRangeFilter.between(startTime, endTime)
                )
            )

            val workoutsArray = JSONArray()

            for (session in sessionResponse.records) {
                val timeRange = TimeRangeFilter.between(session.startTime, session.endTime)

                val energyAggregate = client.aggregate(
                    AggregateRequest(
                        metrics = setOf(TotalCaloriesBurnedRecord.ENERGY_TOTAL),
                        timeRangeFilter = timeRange
                    )
                )

                val energy = energyAggregate[TotalCaloriesBurnedRecord.ENERGY_TOTAL]?.inKilocalories

                val workoutObject = JSONObject()
                workoutObject.put("androidActivityType", session.exerciseType)
                workoutObject.put("startDate", formatter.format(session.startTime))
                workoutObject.put("endDate", formatter.format(session.endTime))
                workoutObject.put("durationMinutes", Duration.between(session.startTime, session.endTime).toMinutes().toDouble())
                workoutObject.put("energyBurned", energy ?: JSONObject.NULL)

                workoutsArray.put(workoutObject)
            }

            result.success(workoutsArray.toString())

        } catch (e: Exception) {
            result.error("HEALTH_CONNECT_ERROR", "Error reading workout data", e.localizedMessage)
        }
    }

    private suspend fun getSleepData(context: Context, result: MethodChannel.Result) {
        val client = HealthConnectClient.getOrCreate(context)

        val endTime = Instant.now()
        val startTime = endTime.minus(30, ChronoUnit.DAYS)
        val formatter = DateTimeFormatter.ISO_INSTANT

        try {
            val sessionsResponse = client.readRecords(
                ReadRecordsRequest(
                    recordType = SleepSessionRecord::class,
                    timeRangeFilter = TimeRangeFilter.between(startTime, endTime)
                )
            )

            val sleepArray = JSONArray()

            sessionsResponse.records.map { record ->
                val sleepObject = JSONObject()
                sleepObject.put("startDate", formatter.format(record.startTime))
                sleepObject.put("endDate", formatter.format(record.endTime))
                sleepObject.put("title", record.title ?: "")
                sleepObject.put("notes", record.notes ?: "")
                sleepObject.put("stage", "") // If you want to populate sleep stage later
                sleepArray.put(sleepObject)
            }

            result.success(sleepArray.toString())

        } catch (e: Exception) {
            result.error("HEALTH_CONNECT_ERROR", "Failed to fetch sleep data", e.localizedMessage)
        }
    }
}