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

/// Retrieve sleep data from HealthKit
Future<dynamic> retrieveWorkoutData() async {
  final useRealHealthData = kReleaseMode || FFAppConstants.HealthDataEnabled;

  if (!useRealHealthData) {
    return [
      {
        "activityType": 35,
        "totalEnergyBurned": 300,
        "duration": 1800,
        "endDate": "2025-03-30T18:55:13Z",
        "startDate": "2025-03-30T18:25:13Z"
      },
      {
        "totalEnergyBurned": 450,
        "startDate": "2025-03-31T18:25:13Z",
        "duration": 2700,
        "endDate": "2025-03-31T19:10:13Z",
        "activityType": 46
      },
      {
        "startDate": "2025-04-01T18:25:13Z",
        "totalEnergyBurned": 350,
        "endDate": "2025-04-01T19:15:13Z",
        "activityType": 14,
        "duration": 3000
      },
      {
        "activityType": 59,
        "duration": 1200,
        "totalEnergyBurned": 180,
        "endDate": "2025-04-02T18:45:13Z",
        "startDate": "2025-04-02T18:25:13Z"
      },
      {
        "startDate": "2025-04-03T18:25:13Z",
        "totalEnergyBurned": 400,
        "activityType": 63,
        "duration": 1800,
        "endDate": "2025-04-03T18:55:13Z"
      },
      {
        "duration": 2400,
        "startDate": "2025-04-04T18:25:13Z",
        "endDate": "2025-04-04T19:05:13Z",
        "totalEnergyBurned": 250,
        "activityType": 50
      }
    ];
  }

  // Add your function code here!
  try {
    const platform = MethodChannel('healthData');
    // Get sleep data as JSON string from platform channel
    String data = await platform.invokeMethod('getWorkoutData');
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
