//
//  HealthKitPlugin.swift
//  Runner
//
//  Created by Sam Harris on 4/10/25.
//
import Foundation

import Flutter
import UIKit
import HealthKit

struct WorkoutEntry {
    let type: HKWorkoutActivityType
    let durationMinutes: Int
    let energyBurned: Double
    let distanceMeters: Double
}

class HealthKitPlugin: NSObject, FlutterPlugin {
    let healthStore = HKHealthStore()

    static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "healthData", binaryMessenger: registrar.messenger())
        let instance = HealthKitPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if call.method == "requestAuthorization" {
            self.requestAuthorization(result: result)
        } else if call.method == "getRunningData" {
            self.getRunningWorkoutData(call: call, result: result)
        } else if call.method == "getWorkoutData" {
            self.getAllWorkoutData(result: result)
        } else if call.method == "populateRunningData" {
            self.addTestRunWorkout(result: result)
        } else if call.method == "populateWorkoutData" {
            self.addTestWorkouts(result: result)
        } else if call.method == "getSleepData" {
            self.fetchSleepDataLast30Days(result: result)
        } else if call.method == "addTestSleepData" {
            self.addTestSleepData(result: result)
        } else {
            result(FlutterMethodNotImplemented)
        }
    }

    private func requestAuthorization(result: @escaping flutterResult) {
        let writeTypes: Set<HKSampleType> = [
            HKObjectType.workoutType(),
            HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!,
            HKObjectType.quantityType(forIdentifier: .distanceWalkingRunning)!,
            HKObjectType.categoryType(forIdentifier: .sleepAnalysis)!
        ]

        let readTypes: Set<HKObjectType> = [
            //Activity & Workout
            HKObjectType.activitySummaryType(),
            HKObjectType.workoutType(),

            // Activity & Workout
            HKObjectType.activitySummaryType(),
            HKObjectType.workoutType(),

            // Steps & Energy
            HKObjectType.quantityType(forIdentifier: .stepCount)!,
            HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!,
            HKObjectType.quantityType(forIdentifier: .basalEnergyBurned)!,
            HKObjectType.quantityType(forIdentifier: .distanceWalkingRunning)!,

            // Exercise & VO2 Max
            HKObjectType.quantityType(forIdentifier: .appleExerciseTime)!,
            HKObjectType.quantityType(forIdentifier: .vo2Max)!,

            // Heart & Vital Signs
            HKObjectType.quantityType(forIdentifier: .heartRate)!,

            // Sleep
            HKObjectType.categoryType(forIdentifier: .sleepAnalysis)!,

            // Body Metrics
            HKObjectType.quantityType(forIdentifier: .height)!,
            HKObjectType.quantityType(forIdentifier: .bodyMass)!,

            // Demographics
            HKObjectType.characteristicType(forIdentifier: .biologicalSex)!,
            HKObjectType.characteristicType(forIdentifier: .dateOfBirth)!
        ]

        healthStore.requestAuthorization(toShare: writeTypes, read: readTypes) { success, error in
            if let error = error {
                result(FlutterError(code: "AUTH ERROR", message: "Authorization failed", details: error.localizedDescription))
            } else {
                result(success)
            }
        }
    }
    
    // Currently not used
    private func getVo2Max(result: @escaping FlutterResult) {
        guard let vo2MaxType = HKObjectType.quantityType(forIdentifier: .vo2Max) else {
            result(FlutterError(code: "UNAVAILABLE", message: "VO2 Max data is not available", details: nil))
            return
        }

        let query = HKSampleQuery(sampleType: vo2MaxType, predicate: nil, limit: 1, sortDescriptors: [NSSortDescriptor(key: HKSampleSortIdentifierStartDate, ascending: false)]) { (_, samples, error) in
            if let error = error {
                result(FlutterError(code: "ERROR", message: error.localizedDescription, details: nil))
                return
            }

            if let quantitySample = samples?.first as? HKQuantitySample {
                let vo2Max = quantitySample.quantity.doubleValue(for: HKUnit(from: "ml/kg*min"))
                result(vo2Max)
            } else {
                result(FlutterError(code: "NO_DATA", message: "No VO2 Max data available", details: nil))
            }
        }

        healthStore.execute(query)
    }

    func getAllWorkoutData(result: @escaping FlutterResult) {
        let healthStore = HKHealthStore()
        let workoutType = HKObjectType.workoutType()

        let predicate = HKQuery.predicateForSamples(withStart: Date.distantPast, end: Date(), options: [])

        let query = HKSampleQuery(sampleType: workoutType,
                                  predicate: predicate,
                                  limit: HKObjectQueryNoLimit,
                                  sortDescriptors: nil) { (query, samples, error) in
            guard let workouts = samples as? [HKWorkout], error == nil else {
                result(FlutterError(code: "QUERY_FAILED", message: "Failed to fetch workouts", details: error?.localizedDescription))
                return
            }

            let workoutData: [[String: Any]] = workouts.map { workout in
                return [
                    "activityType": workout.workoutActivityType.rawValue,
                    "duration": workout.duration,
                    "totalEnergyBurned": workout.totalEnergyBurned?.doubleValue(for: .kilocalorie()) ?? 0,
                    "startDate": ISO8601DateFormatter().string(from: workout.startDate),
                    "endDate": ISO8601DateFormatter().string(from: workout.endDate)
                ]
            }

            do {
                let jsonData = try JSONSerialization.data(withJSONObject: workoutData, options: [])
                let jsonString = String(data: jsonData, encoding: .utf8)
                result(jsonString)
            } catch {
                result(FlutterError(code: "SERIALIZATION_ERROR", message: "Failed to serialize workout data", details: error.localizedDescription))
            }
        }

        healthStore.execute(query)
    }

    func fetchSleepDataLast30Days(result: @escaping FlutterResult) {
        let healthStore = HKHealthStore()
        guard let sleepType = HKObjectType.categoryType(forIdentifier: .sleepAnalysis) else {
            result(FlutterError(code: "SLEEP_TYPE_ERROR", message: "SleepAnalysis type not available", details: nil))
            return
        }

        let startDate = Calendar.current.date(byAdding: .day, value: -30, to: Date())!
        let endDate = Date()
        let predicate = HKQuery.predicateForSamples(withStart: startDate, end: endDate)

        let sortDescriptor = NSSortDescriptor(key: HKSampleSortIdentifierEndDate, ascending: false)

        let stateMap = [
            0: "InBed",
            1: "Asleep",
            2: "Awake",
            3: "CoreSleep",
            4: "DeepSleep",
            5: "REM"
        ]

        let query = HKSampleQuery(sampleType: sleepType, predicate: predicate, limit: HKObjectQueryNoLimit, sortDescriptors: [sortDescriptor]) { _, samples, error in

            guard let categorySamples = samples as? [HKCategorySample], error == nil else {
                result(FlutterError(code: "QUERY_ERROR", message: "Failed to fetch sleep data", details: error?.localizedDescription))
                return
            }

            let formatter = ISO8601DateFormatter()
            let serialized: [[String: Any]] = categorySamples.map { sample in
                return [
                    "start": formatter.string(from: sample.startDate),
                    "end": formatter.string(from: sample.endDate),
                    "value": sample.value, // raw int value
                    "state": stateMap[sample.value]
                ]
            }

            do {
                let jsonData = try JSONSerialization.data(withJSONObject: serialized, options: [])
                if let jsonString = String(data: jsonData, encoding: .utf8) {
                    result(jsonString)
                } else {
                    result(FlutterError(code: "ENCODING_ERROR", message: "Could not encode JSON", details: nil))
                }
            } catch {
                result(FlutterError(code: "SERIALIZATION_ERROR", message: "Failed to serialize sleep data", details: error.localizedDescription))
            }
        }

        healthStore.execute(query)
    }

    private func getRunningWorkoutData(call: FlutterMethodCall, result: @escaping FlutterResult) {
        let workoutType = HKObjectType.workoutType()

        let startDate = Calendar.current.date(byAdding: .day, value: -30, to: Date())!
        let predicate = NSCompoundPredicate(andPredicateWithSubpredicates: [
            HKQuery.predicateForWorkouts(with: .running),
            HKQuery.predicateForSamples(withStart: startDate, end: Date())
        ])

        let sortDescriptor = NSSortDescriptor(key: HKSampleSortIdentifierEndDate, ascending: false)

        let query = HKSampleQuery(sampleType: workoutType, predicate: predicate, limit: HKObjectQueryNoLimit, sortDescriptors: [sortDescriptor]) { _, samples, error in
            guard let workouts = samples as? [HKWorkout], error == nil else {
                result(FlutterError(code: "QUERY_ERROR", message: error?.localizedDescription, details: nil))
                return
            }

            let formatter = ISO8601DateFormatter()
            let dataArray: [[String: Any]] = workouts.map { workout in
                return [
                    "start": formatter.string(from: workout.startDate),
                    "end": formatter.string(from: workout.endDate),
                    "durationMinutes": workout.duration / 60,
                    "distanceMeters": workout.totalDistance?.doubleValue(for: .meter()) ?? 0.0,
                    "energyBurned": workout.totalEnergyBurned?.doubleValue(for: .kilocalorie()) ?? 0.0
                ]
            }

            do {
                let jsonData = try JSONSerialization.data(withJSONObject: dataArray, options: [])
                if let jsonString = String(data: jsonData, encoding: .utf8) {
                    result(jsonString)
                } else {
                    result(FlutterError(code: "ENCODING_ERROR", message: "Could not encode JSON string", details: nil))
                }
            } catch {
                result(FlutterError(code: "SERIALIZATION_ERROR", message: "Failed to serialize workouts to JSON", details: error.localizedDescription))
            }
        }

        healthStore.execute(query)
    }

    private func addTestRunWorkout(result: @escaping FlutterResult) {
        deleteAllWorkouts {
            let healthStore = HKHealthStore()

            let startDate = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
            let endDate = Calendar.current.date(byAdding: .minute, value: 30, to: startDate)!

            let distanceQuantity = HKQuantity(unit: HKUnit.meter(), doubleValue: 5000)
            let energyQuantity = HKQuantity(unit: HKUnit.kilocalorie(), doubleValue: 300)

            let workout = HKWorkout(
                activityType: .running,
                start: startDate,
                end: endDate,
                duration: endDate.timeIntervalSince(startDate),
                totalEnergyBurned: energyQuantity,
                totalDistance: distanceQuantity,
                device: .local(),
                metadata: nil
            )

            healthStore.save(workout) { success, error in
                if let error = error {
                    result(FlutterError(code: "SAVE_FAILED", message: "Could not save test workout", details: error.localizedDescription))
                } else {
                    result(success)
                }
            }
        }
    }

    private func addTestWorkouts(result: @escaping FlutterResult) {
        deleteAllWorkouts {

            let testWorkouts: [WorkoutEntry] = [
                WorkoutEntry(type: .running, durationMinutes: 30, energyBurned: 300, distanceMeters: 5000),
                WorkoutEntry(type: .walking, durationMinutes: 45, energyBurned: 200, distanceMeters: 3000),
                WorkoutEntry(type: .cycling, durationMinutes: 60, energyBurned: 500, distanceMeters: 20000),
                WorkoutEntry(type: .yoga, durationMinutes: 60, energyBurned: 150, distanceMeters: 0),
                WorkoutEntry(type: .traditionalStrengthTraining, durationMinutes: 40, energyBurned: 250, distanceMeters: 0),
                WorkoutEntry(type: .highIntensityIntervalTraining, durationMinutes: 30, energyBurned: 400, distanceMeters: 0),
                WorkoutEntry(type: .coreTraining, durationMinutes: 20, energyBurned: 180, distanceMeters: 0),
                WorkoutEntry(type: .swimming, durationMinutes: 45, energyBurned: 450, distanceMeters: 1000),
                WorkoutEntry(type: .rowing, durationMinutes: 30, energyBurned: 300, distanceMeters: 5000)
            ]

            let dispatchGroup = DispatchGroup()
            var anyFailed = false
            var errors: [String] = []

            for (index, workout) in testWorkouts.enumerated() {
                dispatchGroup.enter()
                self.insertWorkout(workout, offsetDays: index + 1) { insertResult in
                    if let flutterError = insertResult as? FlutterError {
                        anyFailed = true
                        errors.append(flutterError.message ?? "Unknown error")
                    }
                    dispatchGroup.leave()
                }
            }

            dispatchGroup.notify(queue: .main) {
                if anyFailed {
                    result(FlutterError(code: "MULTI_INSERT_FAILED", message: "Some workouts failed to insert", details: errors.joined(separator: "\n")))
                } else {
                    result(true)
                }
            }
        }
    }


    private func insertWorkout(_ workout: WorkoutEntry, offsetDays: Int, result: @escaping FlutterResult) {
        let healthStore = HKHealthStore()

        let startDate = Calendar.current.date(byAdding: .day, value: -offsetDays, to: Date())!
        let endDate = Calendar.current.date(byAdding: .minute, value: workout.durationMinutes, to: startDate)!

        let distanceQuantity = HKQuantity(unit: .meter(), doubleValue: workout.distanceMeters)
        let energyQuantity = HKQuantity(unit: .kilocalorie(), doubleValue: workout.energyBurned)

        let hkWorkout = HKWorkout(
            activityType: workout.type,
            start: startDate,
            end: endDate,
            duration: endDate.timeIntervalSince(startDate),
            totalEnergyBurned: energyQuantity,
            totalDistance: distanceQuantity,
            device: .local(),
            metadata: nil
        )

        healthStore.save(hkWorkout) { success, error in
            if let error = error {
                result(FlutterError(code: "SAVE_FAILED", message: "Failed to save workout", details: error.localizedDescription))
            } else {
                result(success)
            }
        }
    }

    private func addTestSleepData(result: @escaping FlutterResult) {
        let healthStore = HKHealthStore()

        guard let sleepType = HKObjectType.categoryType(forIdentifier: .sleepAnalysis) else {
            result(FlutterError(code: "SLEEP_TYPE_ERROR", message: "SleepAnalysis type not available", details: nil))
            return
        }

        // Example: Insert 3 nights of sleep data
        let calendar = Calendar.current
        var samples: [HKCategorySample] = []

        for dayOffset in 1...3 {
            guard let sleepStart = calendar.date(byAdding: .day, value: -dayOffset, to: Date()),
                  let sleepEnd = calendar.date(byAdding: .hour, value: 7, to: sleepStart) else {
                continue
            }

            let inBedSample = HKCategorySample(
                type: sleepType,
                value: HKCategoryValueSleepAnalysis.inBed.rawValue,
                start: sleepStart,
                end: sleepEnd
            )

            let asleepSample = HKCategorySample(
                type: sleepType,
                value: HKCategoryValueSleepAnalysis.asleep.rawValue,
                start: calendar.date(byAdding: .minute, value: 15, to: sleepStart)!,
                end: calendar.date(byAdding: .minute, value: -15, to: sleepEnd)!
            )

            samples.append(contentsOf: [inBedSample, asleepSample])
        }

        healthStore.save(samples) { success, error in
            if let error = error {
                result(FlutterError(code: "SAVE_ERROR", message: "Failed to save sleep samples", details: error.localizedDescription))
            } else {
                result(success)
            }
        }
    }

    private func deleteAllWorkouts(completion: @escaping () -> Void) {
        let healthStore = HKHealthStore()
        let workoutType = HKObjectType.workoutType()
        let predicate = HKQuery.predicateForSamples(withStart: .distantPast, end: Date())

        let query = HKSampleQuery(sampleType: workoutType, predicate: predicate, limit: HKObjectQueryNoLimit, sortDescriptors: nil) { _, samples, _ in
            guard let workouts = samples, !workouts.isEmpty else {
                completion()
                return
            }

            healthStore.delete(workouts) { _, _ in
                // Ignore errors for now — move on
                completion()
            }
        }

        healthStore.execute(query)
    }
}
