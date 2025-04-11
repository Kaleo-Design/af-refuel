import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/custom_auth/auth_util.dart';
import 'package:n_c_u_i_web_template_01_ls0zpd/flutter_flow/custom_functions.dart'
    as n_c_u_i_web_template_01_ls0zpd_functions;

List<int>? returnDynamicItems(int? numberOfItems) {
  // take in the numberOfItems and return that amount of items in list.
  if (numberOfItems == null || numberOfItems <= 0) {
    return null;
  }

  List<int> items = List.generate(numberOfItems, (index) => index + 1);
  return items;
}

Color? returnColor30Opacity(Color? currentColor) {
  // take the currentColor and return the hex value of the color at 30 alpha.
  if (currentColor != null) {
    int alpha = (currentColor.alpha * 255 * 0.3).round();
    int red = currentColor.alpha;
    int green = currentColor.green;
    int blue = currentColor.blue;
    return Color.fromARGB(alpha, red, green, blue);
  }
  return null;
}

List<DateTime>? getCurrentWeek(DateTime? selectedDay) {
  // take the selectedDay and return the list of dates in a week format.
  if (selectedDay == null) {
    return null;
  }

  List<DateTime> weekDates = [];
  DateTime startOfWeek =
      selectedDay.subtract(Duration(days: selectedDay.weekday - 1));

  for (int i = 0; i < 7; i++) {
    weekDates.add(startOfWeek.add(Duration(days: i)));
  }

  return weekDates;
}

List<DateTime>? getNextWeek(DateTime? selectedDate) {
  // take the selectedDate and return the next week in a list of date times.
  if (selectedDate == null) {
    return null;
  }

  List<DateTime> nextWeek = [];
  for (int i = 1; i <= 7; i++) {
    DateTime nextDay = selectedDate.add(Duration(days: i));
    nextWeek.add(nextDay);
  }

  return nextWeek;
}

dynamic saveChatHistory(
  dynamic chatHistory,
  dynamic newChat,
) {
  // If chatHistory isn't a list, make it a list and then add newChat
  if (chatHistory is List) {
    chatHistory.add(newChat);
    return chatHistory;
  } else {
    return [newChat];
  }
}

dynamic convertToJSON(String prompt) {
  // take the prompt and return a JSON with form [{"role": "user", "content": prompt}]
  return json.decode('{"role": "user", "content": "$prompt"}');
}

String retrieveUnitTitle(UnitStruct? unit) {
  if (unit == null) return "No Unit";

  if (unit.unitId == "other") return "Other Unit";

  List<String> lines = [];

  if (unit.title != null && unit.title!.isNotEmpty) lines.add(unit.title!);
  if (unit.subtitle != null && unit.subtitle!.isNotEmpty)
    lines.add(unit.subtitle!);
  if (unit.subtitle2 != null && unit.subtitle2!.isNotEmpty)
    lines.add(unit.subtitle2!);
  if (unit.subtitle3 != null && unit.subtitle3!.isNotEmpty)
    lines.add(unit.subtitle3!);

  if (lines.isEmpty) return "No Unit";
  if (lines.length == 1) return lines.first;

  return lines.join("\n");
}

List<DateTime>? getLast7Days(DateTime? currentDay) {
  // take in the currentDay and return the last 7 days in a list of dateTimes.
  if (currentDay == null) {
    return null;
  }

  List<DateTime> last7Days = [];
  for (int i = 0; i < 7; i++) {
    last7Days.add(currentDay.subtract(Duration(days: i)));
  }

  return last7Days;
}

List<AssessmentItemType> createItemTypeEnumList(dynamic assessmentJson) {
  List<dynamic> items = assessmentJson['assessment']['items'];

  return items.map((item) {
    String typeKey =
        item.keys.first; // Get the first key, which represents the type
    switch (typeKey) {
      case 'fixed':
        return AssessmentItemType.fixed;
      case 'scale':
        return AssessmentItemType.scale;
      case 'free':
        return AssessmentItemType.free;
      case 'introduction':
        return AssessmentItemType.introduction;
      default:
        return AssessmentItemType.unknown;
    }
  }).toList();
}

AssessmentItemType? getItemTypeEnum(
  dynamic assessmentJson,
  int loopIndex,
) {
  List<dynamic> items = assessmentJson['assessment']['items'];

  // Safety check: Ensure loopIndex is within bounds
  if (loopIndex >= 0 && loopIndex < items.length) {
    dynamic item = items[loopIndex];
    String typeKey = item.keys.first; // Extract the type from the key

    // Map the extracted typeKey to the appropriate enum
    switch (typeKey) {
      case 'fixed':
        return AssessmentItemType.fixed;
      case 'scale':
        return AssessmentItemType.scale;
      case 'free':
        return AssessmentItemType.free;
      case 'introduction':
        return AssessmentItemType.introduction;
      default:
        return AssessmentItemType.unknown;
    }
  } else {
    // If the index is out of bounds, return unknown
    return AssessmentItemType.unknown;
  }
}

AssessmentFixedStruct? mapAssessmentDataFixed(
  dynamic assessmentJson,
  int? loopIndex,
) {
  // Extract items list from the JSON response
  List<dynamic> items = assessmentJson['assessment']['items'];

  // Safety check to ensure index is valid
  if (loopIndex != null && loopIndex >= 0 && loopIndex < items.length) {
    dynamic item = items[loopIndex];

    // Extract 'fixed' type object from the item
    if (item.containsKey('fixed')) {
      dynamic fixedObject = item['fixed'];

      // Extract relevant fields from the fixed object
      int? selectMin = fixedObject['select']?['min'];
      int? selectMax = fixedObject['select']?['max'];

      // Extract response options and map them to assessment_response
      List<AssessmentResponseStruct> responseOptions = [];
      if (fixedObject['responses'] != null &&
          fixedObject['responses'] is List) {
        responseOptions = (fixedObject['responses'] as List).map((response) {
          String label = response['label'] ?? '';
          String responseId = response['response_id'] ?? '';
          return AssessmentResponseStruct(
            label: label,
            responseId: responseId,
          );
        }).toList();
      }

      // Return mapped data as AssessmentFixedStruct instance
      return AssessmentFixedStruct(
        selectMin: selectMin,
        selectMax: selectMax,
        responsesOptions: responseOptions,
      );
    }
  }

  return null;
}

String createMultipleResponseIdValue(List<String> responseIdValues) {
  return responseIdValues.join(',');
}

String? convertMillisecondsToTIme(int? totalTime) {
  // Take the current milliseconds and divide by 60000 and return the time value in a string like this: mm:ss
  if (totalTime == null) {
    return null;
  }

  int minutes = (totalTime ~/ 60000);
  int seconds = ((totalTime % 60000) ~/ 1000);

  String minutesStr = minutes.toString().padLeft(2, '0');
  String secondsStr = seconds.toString().padLeft(2, '0');

  return '$minutesStr:$secondsStr';
}

ResultDataStruct? parseResultsJson(dynamic resultsJson) {
  if (resultsJson == null) {
    return null;
  }

  final resultData = ResultDataStruct();

  // Helper function to map the JSON key to your enum.
  JmlRenderType mapToEnum(String key) {
    switch (key) {
      case 'h1':
        return JmlRenderType.h1;
      case 'h2':
        return JmlRenderType.h2;
      case 'p':
        return JmlRenderType.p;
      case 'img':
        return JmlRenderType.img;
      case 'button':
        return JmlRenderType.button;
      default:
        return JmlRenderType.p; // Default to 'p' if type is unknown
    }
  }

  // Function to parse the button color based on style.
  Color parseButtonColor(String? style) {
    if (style == null)
      return const Color(0xFF007AFF); // Default to normal color
    switch (style.toLowerCase()) {
      case 'normal':
      case 'default':
        return const Color(0xFF007AFF); // Normal & Default: #007AFF
      case 'warning':
        return const Color(0xFFFF9501); // Warning: #FF9501
      default:
        return const Color(0xFF007AFF); // Fallback to normal color
    }
  }

  // Function to parse a list of items from JSON into JmlWrapperStruct.
  List<JmlWrapperStruct> parseSection(List<dynamic>? section) {
    if (section == null) return [];

    return section.map((item) {
      if (item is Map<String, dynamic>) {
        final key = item.keys.first; // e.g., "h1", "h2", "p", "img", "button"
        final content = item[key];

        // Check if the item is a button type to parse additional fields.
        if (key == 'button') {
          return JmlWrapperStruct(
            type: mapToEnum(key),
            textValue: content?['text'],
            imageUrl: content?['url'],
            buttonColor: parseButtonColor(content?['style']),
            buttonSubtitle: content?['subtitle'],
            buttonTitle: content?['title'],
            buttonUrl: content?['url'],
          );
        } else {
          // For other types, only parse text and image URL.
          return JmlWrapperStruct(
            type: mapToEnum(key),
            textValue: content?['text'],
            imageUrl: content?['url'],
          );
        }
      }
      return JmlWrapperStruct();
    }).toList();
  }

  // Assign parsed data to the respective fields in ResultDataStruct.
  resultData.heading = parseSection(resultsJson['heading']);
  resultData.meaning = parseSection(resultsJson['meaning']);
  resultData.save = parseSection(resultsJson['save']);
  resultData.scoring = parseSection(resultsJson['scoring']);

  return resultData;
}

AssessmentScaleStruct? mapAssessmentDataScale(
  dynamic assessmentJson,
  int loopIndex,
) {
  try {
    final List<dynamic> items = assessmentJson['assessment']['items'];

    if (loopIndex < 0 || loopIndex >= items.length) {
      return null; // Invalid index
    }

    final item = items[loopIndex];
    if (item.containsKey('scale')) {
      final scale = item['scale'];
      return AssessmentScaleStruct(
        min: AssessmentMinMaxStruct(
          value: scale['min']['value'] as int,
          label: scale['min']['label'] as String,
          emoji: scale['min']['emoji'] as String,
        ),
        max: AssessmentMinMaxStruct(
          value: scale['max']['value'] as int,
          label: scale['max']['label'] as String,
          emoji: scale['max']['emoji'] as String,
        ),
      );
    }

    return null; // Not a scale-type item
  } catch (e) {
    print("Error parsing JSON: $e");
    return null;
  }
}

AssessmentFreeStruct? mapAssessmentDataFree(
  dynamic assessmentJson,
  int loopIndex,
) {
  try {
    final List<dynamic> items = assessmentJson['assessment']['items'];

    if (loopIndex < 0 || loopIndex >= items.length) {
      return null; // Invalid index
    }

    final item = items[loopIndex];

    if (item.containsKey('free')) {
      final free = item['free'];

      final textData = free['options']?['text'];
      final audioData = free['options']?['audio'];

      return AssessmentFreeStruct(
        options: AssessmentFreeOptionsStruct(
          text: textData != null
              ? AssessmentTextStruct(
                  characters: AssessmentCharactersStruct(
                    min: (textData['characters']?['min'] as int?) ?? 0,
                    max: (textData['characters']?['max'] as int?) ?? 0,
                  ),
                )
              : null, // If "text" is missing, set it to null
          audio: audioData != null
              ? AssessmentAudioStruct(
                  time: AssessmentTimeStruct(
                    max: (audioData['time']?['max'] as int?) ?? 0,
                  ),
                )
              : null, // If "audio" is missing, set it to null
        ),
      );
    }

    return null; // Not a free-type item
  } catch (e) {
    print("Error parsing JSON: $e");
    return null;
  }
}

AssessmentResponseActionType getAssesementResponseType(dynamic actionJson) {
  if (actionJson is! Map<String, dynamic>) {
    return AssessmentResponseActionType.next;
  }

  final action = actionJson['action'];
  if (action is! Map<String, dynamic>) {
    return AssessmentResponseActionType.next;
  }

  if (action.containsKey('next')) {
    return AssessmentResponseActionType.next;
  } else if (action.containsKey('jump')) {
    return AssessmentResponseActionType.jump_to;
  } else if (action.containsKey('mark_completed')) {
    return AssessmentResponseActionType.complete;
  } else if (action.containsKey('results')) {
    return AssessmentResponseActionType.results;
  } else {
    return AssessmentResponseActionType.next;
  }
}

IntroductionDataStruct? parseIntroductionJson(
  dynamic assessmentJson,
  int? loopIndex,
) {
  // Extract items list from the JSON response
  List<dynamic> items = assessmentJson['assessment']['items'];

  // Safety check to ensure index is valid
  if (loopIndex != null && loopIndex >= 0 && loopIndex < items.length) {
    dynamic item = items[loopIndex];

    // Extract 'introduction' type object from the item
    if (item.containsKey('introduction')) {
      dynamic introJson = item['introduction'];
      final introductionData = IntroductionDataStruct();

      // Convert string key to enum
      JmlRenderType mapToEnum(String key) {
        switch (key) {
          case 'h1':
            return JmlRenderType.h1;
          case 'h2':
            return JmlRenderType.h2;
          case 'p':
            return JmlRenderType.p;
          case 'img':
            return JmlRenderType.img;
          case 'button':
            return JmlRenderType.button;
          default:
            return JmlRenderType.p;
        }
      }

      // Parse section array to list of JmlWrapperStructs
      List<JmlWrapperStruct> parseSection(List<dynamic>? section) {
        if (section == null) return [];

        return section.map((item) {
          if (item is Map<String, dynamic>) {
            final key = item.keys.first;
            final content = item[key];

            if (content is String) {
              return JmlWrapperStruct(
                type: mapToEnum(key),
                textValue: content,
              );
            }

            return JmlWrapperStruct(
              type: mapToEnum(key),
              textValue: content?['text'],
              imageUrl: content?['url'],
              buttonTitle: content?['title'],
              buttonSubtitle: content?['subtitle'],
              buttonUrl: content?['url'],
            );
          }
          return JmlWrapperStruct();
        }).toList();
      }

      introductionData.heading = parseSection(introJson['heading']);
      introductionData.privacy = parseSection(introJson['privacy']);
      introductionData.process = parseSection(introJson['process']);
      introductionData.purpose = parseSection(introJson['purpose']);

      return introductionData;
    }
  }

  return null;
}

String? convertImageUrlToPath(String? imageUrl) {
  // Just return the full image URL if it's valid
  if (imageUrl == null || imageUrl.isEmpty) return null;
  return imageUrl;
}
