// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'dart:math';

/// Retrieve sleep data from HealthKit
Future<dynamic> retrieveSleepData() async {
  final useRealHealthData = kReleaseMode || FFAppConstants.HealthDataEnabled;

  if (!useRealHealthData) {
    return createMockSleepData();
  }

  // Add your function code here!
  try {
    const platform = MethodChannel('healthData');
    // Get sleep data as JSON string from platform channel
    String data = await platform.invokeMethod('getSleepData');
    print(data);

    // Attempt to parse JSON
    try {
      final parsed = jsonDecode(data);
      if (parsed is List) {
        // Ensure the result is a List of Map<String, dynamic>
        return List<Map<String, dynamic>>.from(parsed);
      } else {
        // If not a list, wrap it in a list or handle gracefully
        return [
          {"error": "Expected a list but got a different structure"}
        ];
      }
    } catch (e) {
      debugPrint("Error parsing JSON: $e");
      return [
        {"error": "JSON parsing failed", "details": e.toString()}
      ];
    }
  } on PlatformException catch (e) {
    return [
      {"error": "PlatformException", "message": e.message ?? "Unknown error"}
    ];
  }
}

List<Map<String, dynamic>> createMockSleepData() {
  final now = DateTime.now().toUtc();
  final rand = Random();
  final List<Map<String, dynamic>> sleepData = [];

  for (int i = 0; i < 10; i++) {
    final date = now.subtract(Duration(days: i));
    final bedtimeHour = 21 + rand.nextInt(3); // 21–23
    final bedtimeMinute = [0, 15, 30, 45][rand.nextInt(4)];
    final bedtime = DateTime.utc(
      date.year,
      date.month,
      date.day,
      bedtimeHour,
      bedtimeMinute,
    );

    final sleepDurationHours = 6.5 + rand.nextDouble() * 2; // 6.5–8.5 hours
    final wakeTime = bedtime.add(
      Duration(milliseconds: (sleepDurationHours * 3600 * 1000).round()),
    );

    // InBed entry
    sleepData.add({
      "start": bedtime.toIso8601String(),
      "end": wakeTime.toIso8601String(),
      "value": 0,
      "state": "InBed",
    });

    // Generate 4–6 sleep cycles
    DateTime cursor = bedtime;
    while (cursor.isBefore(wakeTime.subtract(Duration(minutes: 30)))) {
      final cycleLength = Duration(
        minutes: 80 + rand.nextInt(30),
      ); // 80–110 minutes
      final phaseStart = cursor;
      final phaseEnd = cursor.add(cycleLength);
      if (phaseEnd.isAfter(wakeTime)) break;

      final phases = [
        {"percent": 0.5, "value": 3, "label": "AsleepCore"},
        {"percent": 0.2, "value": 4, "label": "AsleepDeep"},
        {"percent": 0.2, "value": 5, "label": "AsleepREM"},
        {"percent": 0.1, "value": 2, "label": "Awake"},
      ];

      DateTime phaseCursor = phaseStart;
      for (var phase in phases) {
        final durationMinutes =
            (cycleLength.inMinutes * (phase["percent"] as double)).round();
        final nextPhase = phaseCursor.add(Duration(minutes: durationMinutes));
        if (nextPhase.isAfter(wakeTime)) break;

        sleepData.add({
          "start": phaseCursor.toIso8601String(),
          "end": nextPhase.toIso8601String(),
          "value": phase["value"],
          "state": phase["label"],
        });

        phaseCursor = nextPhase;
      }

      cursor = phaseEnd.add(
        Duration(minutes: rand.nextInt(5)),
      ); // small buffer between cycles
    }
  }

  // Sort chronologically
  sleepData.sort((a, b) => a["start"].compareTo(b["start"]));

  return sleepData;
}
