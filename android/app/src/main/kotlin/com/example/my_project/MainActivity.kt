package com.hope4you.refuel.af

import android.content.Context
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
import androidx.health.connect.client.records.TotalCaloriesBurnedRecord
import androidx.health.connect.client.request.AggregateRequest
import androidx.health.connect.client.request.ReadRecordsRequest
import androidx.health.connect.client.time.TimeRangeFilter
import androidx.lifecycle.lifecycleScope
import io.flutter.Log
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.launch
import kotlinx.serialization.Serializable
import kotlinx.serialization.builtins.ListSerializer
import kotlinx.serialization.json.Json
import java.time.Duration
import java.time.Instant
import java.time.format.DateTimeFormatter
import java.time.temporal.ChronoUnit

@OptIn(BuildCompat.PrereleaseSdkCheck::class)
class MainActivity : FlutterFragmentActivity() {

    private val PERMISSIONS_CHANNEL = "healthData"

    private var pendingResult: MethodChannel.Result? = null

    private val healthConnectClient by lazy { HealthConnectClient.getOrCreate(context = this.baseContext) }

    private val permissions = setOf(
        HealthPermission.getReadPermission(ExerciseSessionRecord::class),
        HealthPermission.getReadPermission(SleepSessionRecord::class),
        HealthPermission.getReadPermission(StepsRecord::class),
        HealthPermission.getReadPermission(DistanceRecord::class),
        HealthPermission.getReadPermission(HeartRateRecord::class),
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
            Log.i("Boogie", "Missing permissions: $missing")

            pendingResult?.success(granted)
            pendingResult = null
        }
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val methodChannel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            PERMISSIONS_CHANNEL
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

                "populateRunningData" -> {}

                "getSleepData" -> {
                    lifecycleScope.launch {
                        getSleepData(baseContext, result)
                    }
                }

                "addTestSleepData" -> {}

                "getWorkoutData" -> {
                    lifecycleScope.launch {
                        getAllWorkoutData(baseContext, result)
                    }
                }

                "populateWorkoutData" -> {}

                else -> {
                    Log.i("TOGGLE", "Not implemented")
                    result.success("[]")
                }
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

            val workouts = mutableListOf<WorkoutData>()

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

                workouts.add(
                    WorkoutData(
                        type = 1,
                        start = formatter.format(session.startTime),
                        end = formatter.format(session.endTime),
                        durationMinutes = Duration.between(session.startTime, session.endTime)
                            .toMinutes().toDouble(),
                        distanceMeters = distance,
                        energyBurned = energy
                    )
                )
            }

            val json = Json.encodeToString(ListSerializer(WorkoutData.serializer()), workouts)
            result.success(json)

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

            val workouts = mutableListOf<WorkoutData>()

            for (session in sessionResponse.records) {
                val timeRange = TimeRangeFilter.between(session.startTime, session.endTime)

                val energyAggregate = client.aggregate(
                    AggregateRequest(
                        metrics = setOf(TotalCaloriesBurnedRecord.ENERGY_TOTAL),
                        timeRangeFilter = timeRange
                    )
                )

                val energy = energyAggregate[TotalCaloriesBurnedRecord.ENERGY_TOTAL]?.inKilocalories

                workouts.add(
                    WorkoutData(
                        type = session.exerciseType,
                        start = formatter.format(session.startTime),
                        end = formatter.format(session.endTime),
                        durationMinutes = Duration.between(session.startTime, session.endTime)
                            .toMinutes().toDouble(),
                        energyBurned = energy,
                    )
                )
            }

            val json = Json.encodeToString(ListSerializer(WorkoutData.serializer()), workouts)
            result.success(json)

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
            val response = client.readRecords(
                ReadRecordsRequest(
                    recordType = SleepSessionRecord::class,
                    timeRangeFilter = TimeRangeFilter.between(startTime, endTime)
                )
            )

            val sleepSessions = response.records.map { record ->
                SleepData(
                    start = formatter.format(record.startTime),
                    end = formatter.format(record.endTime),
                    title = record.title,
                    notes = record.notes
                )
            }

            val json = Json.encodeToString(ListSerializer(SleepData.serializer()), sleepSessions)
            result.success(json)

        } catch (e: Exception) {
            result.error("SLEEP_QUERY_ERROR", "Failed to fetch sleep data", e.localizedMessage)
        }
    }
}

@Serializable
data class SleepData(
    val start: String,
    val end: String,
    val title: String? = null,
    val notes: String? = null,
)

@Serializable
data class WorkoutData(
    val type: Int,  // Maps to ExerciseSessionRecord.EXERCISE_TYPE_* constants
    val start: String,
    val end: String,
    val durationMinutes: Double,
    val distanceMeters: Double? = null,
    val energyBurned: Double? = null,
)
