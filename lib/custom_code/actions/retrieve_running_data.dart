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
Future<dynamic> retrieveRunningData() async {
  final useRealHealthData = kReleaseMode || FFAppConstants.HealthDataEnabled;

  if (!useRealHealthData) {
    return [
      {
        "durationMinutes": 30,
        "start": "2025-04-08T18:24:25Z",
        "distanceMeters": 5000,
        "energyBurned": 300,
        "end": "2025-04-08T18:54:25Z"
      }
    ];
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
