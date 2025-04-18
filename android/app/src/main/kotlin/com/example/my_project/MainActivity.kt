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
import androidx.health.connect.client.records.metadata.Metadata
import androidx.health.connect.client.request.AggregateRequest
import androidx.health.connect.client.request.ReadRecordsRequest
import androidx.health.connect.client.time.TimeRangeFilter
import androidx.health.connect.client.units.Energy
import androidx.health.connect.client.units.Length
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
import java.time.ZoneOffset
import java.time.format.DateTimeFormatter
import java.time.temporal.ChronoUnit
import java.time.LocalTime
import java.time.ZoneId

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

        HealthPermission.getWritePermission(ExerciseSessionRecord::class),
        HealthPermission.getWritePermission(DistanceRecord::class),
        HealthPermission.getWritePermission(TotalCaloriesBurnedRecord::class),
        HealthPermission.getWritePermission(SleepSessionRecord::class)
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

//        MethodChannel(
//            flutterEngine!!.dartExecutor.binaryMessenger,
//            PERMISSIONS_CHANNEL
//        ).setMethodCallHandler { call, result ->
//            when (call.method) {
//                "requestAuthorization" -> {
//                    permissionLauncher.launch(permissions)
//                    pendingResult = result
//                }
//
//                else -> {
//                    pendingResult = result
//                    pendingResult?.notImplemented()
//                }
//            }
//        }
    }

    //        val channel = MethodChannel(
//            flutterEngine.dartExecutor.binaryMessenger,
//            "healthData"
//        )
//
//        val plugin = HealthDataPlugin(this)
//        channel.setMethodCallHandler(plugin)

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val methodChannel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            PERMISSIONS_CHANNEL
        )

        methodChannel.setMethodCallHandler { call, result ->
            when (call.method) {
                "requestAuthorization" -> {
                    Log.i("TOGGLE", "requestAuth triggered...")
                    pendingResult = result
                    permissionLauncher.launch(permissions)
                }

                "getRunningData" -> {
                    lifecycleScope.launch {
                        getRunningWorkoutData(baseContext, result)
                    }
                }

                "populateRunningData" -> {
                    lifecycleScope.launch {
                        writeExampleRunningData(baseContext, result)
                    }
                }

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

    private suspend fun writeExampleRunningData(context: Context, result: MethodChannel.Result) {
        val client = HealthConnectClient.getOrCreate(context)

        val startTime = Instant.now().minusSeconds(60 * 30) // 30 minutes ago
        val endTime = Instant.now()

        // Create a Running ExerciseSessionRecord
        val session = ExerciseSessionRecord(
            exerciseType = ExerciseSessionRecord.EXERCISE_TYPE_RUNNING,
            title = "Test Run",
            startTime = startTime,
            startZoneOffset = ZoneOffset.UTC,
            endTime = endTime,
            endZoneOffset = ZoneOffset.UTC,
            notes = "Simulated workout session for testing"
        )

        // Add associated distance
        val distance = DistanceRecord(
            startTime = startTime,
            startZoneOffset = ZoneOffset.UTC,
            endTime = endTime,
            endZoneOffset = ZoneOffset.UTC,
            distance = Length.meters(5000.0) // 5 km
        )

        // Add associated energy burned
        val calories = TotalCaloriesBurnedRecord(
            startTime = startTime,
            startZoneOffset = ZoneOffset.UTC,
            endTime = endTime,
            endZoneOffset = ZoneOffset.UTC,
            energy = Energy.kilocalories(400.0)
        )

        try {
            client.insertRecords(listOf(session, distance, calories))
            Log.d("HealthConnectWrite", "Example running data successfully written.")
            result.success("Successfully wrote example running data")
        } catch (e: Exception) {
            Log.e("HealthConnectWrite", "Failed to insert example data: ${e.localizedMessage}")
            result.error(
                "HEALTH_CONNECT_WRITE_ERROR",
                "Failed to write example data",
                e.localizedMessage
            )
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

    private suspend fun insertMockWorkoutData(context: Context, result: MethodChannel.Result) {
        val client = HealthConnectClient.getOrCreate(context)

        val now = Instant.now()
        val zoneOffset = ZoneOffset.systemDefault().rules.getOffset(now)

        // Define 5 workouts spaced out over the last few days
        val mockWorkouts = listOf(
            Triple(
                ExerciseSessionRecord.EXERCISE_TYPE_RUNNING,
                "Mock Run",
                300.0 // 5 km run ~300 kcal
            ),
            Triple(
                ExerciseSessionRecord.EXERCISE_TYPE_BIKING,
                "Mock Cycling",
                250.0
            ),
            Triple(
                ExerciseSessionRecord.EXERCISE_TYPE_STRENGTH_TRAINING,
                "Mock Strength",
                230.0
            ),
            Triple(
                ExerciseSessionRecord.EXERCISE_TYPE_YOGA,
                "Mock Yoga",
                100.0
            ),
            Triple(
                ExerciseSessionRecord.EXERCISE_TYPE_HIGH_INTENSITY_INTERVAL_TRAINING,
                "Mock HIIT",
                350.0
            ),
            Triple(
                ExerciseSessionRecord.EXERCISE_TYPE_WALKING,
                "Mock Walk",
                350.0
            )
        )

        val sessionRecords = mutableListOf<ExerciseSessionRecord>()
        val energyRecords = mutableListOf<TotalCaloriesBurnedRecord>()

        mockWorkouts.forEachIndexed { index, (exerciseType, title, kcal) ->
            val start = now.minus((index + 1) * 2L, ChronoUnit.DAYS).minus(45, ChronoUnit.MINUTES)
            val end = start.plus(30, ChronoUnit.MINUTES)

            val session = ExerciseSessionRecord(
                startTime = start,
                startZoneOffset = zoneOffset,
                endTime = end,
                endZoneOffset = zoneOffset,
                exerciseType = exerciseType,
                title = title,
                notes = "Inserted for testing $title"
            )

            val energy = TotalCaloriesBurnedRecord(
                startTime = start,
                startZoneOffset = zoneOffset,
                endTime = end,
                endZoneOffset = zoneOffset,
                energy = Energy.kilocalories(kcal),
                metadata = Metadata()
            )

            sessionRecords.add(session)
            energyRecords.add(energy)
        }

        try {
            client.insertRecords(sessionRecords + energyRecords)
            result.success("Inserted 5 mock workouts with energy burned.")
        } catch (e: Exception) {
            result.error("MOCK_INSERT_ERROR", "Failed to insert mock workouts", e.localizedMessage)
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

    private suspend fun insertMockSleepData(context: Context, result: MethodChannel.Result) {
        val client = HealthConnectClient.getOrCreate(context)

        val now = Instant.now()
        val zoneOffset = ZoneOffset.systemDefault().rules.getOffset(now)

        // Create mock sleep sessions over the past few days
        val mockSleepSessions = listOf(
            Triple(3, 23, 7.5), // 3 days ago, 11 PM to 6:30 AM (7.5 hrs)
            Triple(2, 22, 8.0), // 2 days ago, 10 PM to 6 AM (8 hrs)
            Triple(1, 0, 6.0),  // 1 day ago, 12 AM to 6 AM (6 hrs)
        )

        val records = mutableListOf<SleepSessionRecord>()

        mockSleepSessions.forEach { (daysAgo, hour, durationHours) ->
            val start = now.minus(daysAgo.toLong(), ChronoUnit.DAYS)
                .with(LocalTime.of(hour, 0))
                .atZone(ZoneId.systemDefault())
                .toInstant()

            val end = start.plus((durationHours * 60).toLong(), ChronoUnit.MINUTES)

            val session = SleepSessionRecord(
                startTime = start,
                startZoneOffset = zoneOffset,
                endTime = end,
                endZoneOffset = zoneOffset,
                title = "Mock Sleep",
                notes = "Inserted for testing on day $daysAgo"
            )

            records.add(session)
        }

        try {
            client.insertRecords(records)
            result.success("Inserted ${records.size} mock sleep sessions into Health Connect.")
        } catch (e: Exception) {
            result.error(
                "SLEEP_INSERT_ERROR",
                "Failed to insert mock sleep data",
                e.localizedMessage
            )
        }
    }

    suspend fun hasAllPermissions(permissions: Set<String>): Boolean {
        return healthConnectClient.permissionController.getGrantedPermissions()
            .containsAll(permissions)
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
