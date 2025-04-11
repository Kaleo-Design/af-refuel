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
Future<dynamic> retrieveRunningData() async {
  final useRealHealthData = kReleaseMode || FFAppConstants.HealthDataEnabled;

  if (!useRealHealthData) {
    return createMockRuns();
  }

  // Add your function code here!
  try {
    const platform = MethodChannel('healthData');
    // Get sleep data as JSON string from platform channel
    String data = await platform.invokeMethod('getRunningData');
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

List<Map<String, dynamic>> createMockRuns() {
  final now = DateTime.now();
  final rand = Random();
  final Set<int> usedDays = {};

  List<Map<String, dynamic>> runs = [];

  while (runs.length < 12) {
    // Pick a unique random day within the last 30
    int daysAgo = rand.nextInt(30);
    if (usedDays.contains(daysAgo)) continue;
    usedDays.add(daysAgo);

    // Generate start time
    DateTime baseDate = now.subtract(Duration(days: daysAgo));
    int hour = rand.nextInt(15) + 5; // Start between 5 AM and 8 PM
    int minute = rand.nextInt(60);
    int second = rand.nextInt(60);
    DateTime start = DateTime(
        baseDate.year, baseDate.month, baseDate.day, hour, minute, second);

    // Duration between 20 and 60 minutes
    int durationMinutes = 20 + rand.nextInt(41);

    // Average speed: 8–12 km/h (in m/s)
    double speedMetersPerSecond = 2.2 + rand.nextDouble() * 1.1;
    int distanceMeters = (durationMinutes * 60 * speedMetersPerSecond).round();

    // Energy burned estimate (0.9 kcal * kg * km, 70kg person)
    double distanceKm = distanceMeters / 1000.0;
    int energyBurned = (0.9 * 70 * distanceKm).round();

    DateTime end = start.add(Duration(minutes: durationMinutes));

    runs.add({
      "durationMinutes": durationMinutes,
      "start": start.toUtc().toIso8601String(),
      "distanceMeters": distanceMeters,
      "energyBurned": energyBurned,
      "end": end.toUtc().toIso8601String()
    });
  }

  // Sort runs chronologically
  runs.sort((a, b) => a["start"].compareTo(b["start"]));

  return runs;
}
