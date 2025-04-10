import 'dart:convert';
import '../schema/structs/index.dart';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_commons/api_requests/api_manager.dart';


export 'package:ff_commons/api_requests/api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI ChatGPT Group Code

class OpenAIChatGPTGroup {
  static String getBaseUrl() => 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static SendFullPromptCall sendFullPromptCall = SendFullPromptCall();
}

class SendFullPromptCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
    dynamic promptJson,
  }) async {
    final baseUrl = OpenAIChatGPTGroup.getBaseUrl();

    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "model": "gpt-4",
  "messages": ${prompt}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Full Prompt',
      apiUrl: '${baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? createdTimestamp(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
  String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.role''',
      ));
  String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

/// End OpenAI ChatGPT Group Code

class SignInCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sign In',
      apiUrl: 'https://refuel-backend.d10.us.swri.org/v1/sign_in',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account.token''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account.email''',
      ));
  static String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account.first_name''',
      ));
  static String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account.last_name''',
      ));
  static String? unitId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account.unit.unit_id''',
      ));
  static AccountStruct? account(dynamic response) =>
      AccountStruct.maybeFromMap(getJsonField(
        response,
        r'''$.account''',
      ));
  static String? errorDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.error.description''',
      ));
  static String? errorMessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  static int? errorCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.error.code''',
      ));
}

class CreateAccountCall {
  static Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}",
  "first_name": "${escapeStringForJson(firstName)}",
  "last_name": "${escapeStringForJson(lastName)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Account',
      apiUrl: 'https://refuel-backend.d10.us.swri.org/v1/create_account',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static AccountStruct? account(dynamic response) =>
      AccountStruct.maybeFromMap(getJsonField(
        response,
        r'''$.account''',
      ));
  static String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account.first_name''',
      ));
  static String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account.last_name''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account.token''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account.email''',
      ));
  static int? errorCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.error.code''',
      ));
  static String? errorDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.error.description''',
      ));
  static String? errorMessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
}

class SetUnitCall {
  static Future<ApiCallResponse> call({
    String? unit = '',
  }) async {
    final ffApiRequestBody = '''
{
  "unit_id": "${escapeStringForJson(unit)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Set Unit',
      apiUrl: 'https://refuel-backend.d10.us.swri.org/v1/set_unit',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static AccountStruct? account(dynamic response) =>
      AccountStruct.maybeFromMap(getJsonField(
        response,
        r'''$.account''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account.token''',
      ));
}

class GetUnitsCall {
  static Future<ApiCallResponse> call({
    String? searchQuery,
  }) async {
    searchQuery ??= FFAppConstants.DefaultUnitQuery;

    return ApiManager.instance.makeApiCall(
      callName: 'Get Units',
      apiUrl: 'https://refuel-backend.d10.us.swri.org/v1/units',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'search': searchQuery,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<UnitStruct>? units(dynamic response) => (getJsonField(
        response,
        r'''$.units.results''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => UnitStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

class RequestPasswordResetCall {
  static Future<ApiCallResponse> call({
    String? emailToReset = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(emailToReset)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Request Password Reset',
      apiUrl:
          'https://refuel-backend.d10.us.swri.org/v1/request_password_reset',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ExampleSpiritualFitnessCheckInCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Example Spiritual Fitness CheckIn',
      apiUrl:
          'https://refuel-backend.d10.us.swri.org/v1/content/8-8404434e116f4ab18f82a1240d559955-07',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token oEda3Uo1xqLml_a7Je_3Vy_ASTZPCLyWcF8ZowU11mI',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? items(dynamic response) => getJsonField(
        response,
        r'''$.assessment.items''',
        true,
      ) as List?;
}

class ExampleMentallWellBeingCheckInCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Example Mentall Well Being Check In',
      apiUrl:
          'https://refuel-backend.d10.us.swri.org/v1/content/128-bfd70889edd84353b996dab8ef74378d-07',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token oEda3Uo1xqLml_a7Je_3Vy_ASTZPCLyWcF8ZowU11mI',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? items(dynamic response) => getJsonField(
        response,
        r'''$.assessment.items''',
        true,
      ) as List?;
  static String? assessmentId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.assessment.assessment_id''',
      ));
  static String? resumeItemId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.assessment.resume_item_id''',
      ));
}

class ScaleAssessmentResponseCall {
  static Future<ApiCallResponse> call({
    String? assessmentId = '',
    String? itemId = '',
    String? responseId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "assessment_id": "${escapeStringForJson(assessmentId)}",
  "item_id": "${escapeStringForJson(itemId)}",
  "response": "${escapeStringForJson(responseId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Scale Assessment Response',
      apiUrl: 'https://refuel-backend.d10.us.swri.org/v1/assessment/response',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token oEda3Uo1xqLml_a7Je_3Vy_ASTZPCLyWcF8ZowU11mI',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SkipAssessmentResponseCall {
  static Future<ApiCallResponse> call({
    String? assessmentId = '',
    String? itemId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "assessment_id": "${escapeStringForJson(assessmentId)}",
  "item_id": "${escapeStringForJson(itemId)}",
  "skip":true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Skip Assessment Response',
      apiUrl: 'https://refuel-backend.d10.us.swri.org/v1/assessment/response',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token oEda3Uo1xqLml_a7Je_3Vy_ASTZPCLyWcF8ZowU11mI',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FixedAssessmentResponseCall {
  static Future<ApiCallResponse> call({
    String? assessmentId = '',
    String? itemId = '',
    String? responseId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "assessment_id": "${escapeStringForJson(assessmentId)}",
  "item_id": "${escapeStringForJson(itemId)}",
  "response_id": "${escapeStringForJson(responseId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Fixed Assessment Response',
      apiUrl: 'https://refuel-backend.d10.us.swri.org/v1/assessment/response',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token oEda3Uo1xqLml_a7Je_3Vy_ASTZPCLyWcF8ZowU11mI',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FixedOtherTextAudioAssessmentResponseCall {
  static Future<ApiCallResponse> call({
    String? assessmentId = '',
    String? itemId = '',
    String? responseId = '',
    String? text = '',
    String? audio = '',
  }) async {
    final ffApiRequestBody = '''
{
  "assessment_id": "${escapeStringForJson(assessmentId)}",
  "item_id": "${escapeStringForJson(itemId)}",
  "response_id": "${escapeStringForJson(responseId)}",
  "text": "${escapeStringForJson(text)}",
  "audio": {
    "data": "${escapeStringForJson(audio)}",
    "encoding": "base64"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Fixed  Other Text Audio Assessment Response',
      apiUrl: 'https://refuel-backend.d10.us.swri.org/v1/assessment/response',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token oEda3Uo1xqLml_a7Je_3Vy_ASTZPCLyWcF8ZowU11mI',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FixedAndOtherTextAssessmentResponseCopyCall {
  static Future<ApiCallResponse> call({
    String? assessmentId = '',
    String? itemId = '',
    String? responseId = '',
    String? text = '',
  }) async {
    final ffApiRequestBody = '''
{
  "assessment_id": "${escapeStringForJson(assessmentId)}",
  "item_id": "${escapeStringForJson(itemId)}",
  "response_id": "${escapeStringForJson(responseId)}",
  "text": "${escapeStringForJson(text)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Fixed  And Other Text Assessment Response Copy',
      apiUrl: 'https://refuel-backend.d10.us.swri.org/v1/assessment/response',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token oEda3Uo1xqLml_a7Je_3Vy_ASTZPCLyWcF8ZowU11mI',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FreeTextOnlyAssessmentResponseCall {
  static Future<ApiCallResponse> call({
    String? assessmentId = '',
    String? itemId = '',
    String? text = '',
  }) async {
    final ffApiRequestBody = '''
{
  "assessment_id": "${escapeStringForJson(assessmentId)}",
  "item_id": "${escapeStringForJson(itemId)}",
  "text": "${escapeStringForJson(text)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Free Text Only Assessment Response',
      apiUrl: 'https://refuel-backend.d10.us.swri.org/v1/assessment/response',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token oEda3Uo1xqLml_a7Je_3Vy_ASTZPCLyWcF8ZowU11mI',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FreeAudioAssessmentResponseCall {
  static Future<ApiCallResponse> call({
    String? assessmentId = '',
    String? itemId = '',
    String? text = '',
    String? audio = '',
  }) async {
    final ffApiRequestBody = '''
{
  "assessment_id": "${escapeStringForJson(assessmentId)}",
  "item_id": "${escapeStringForJson(itemId)}",
  "text": "${escapeStringForJson(text)}",
  "audio": {
    "data": "${escapeStringForJson(audio)}",
    "encoding": "base64"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Free Audio Assessment Response',
      apiUrl: 'https://refuel-backend.d10.us.swri.org/v1/assessment/response',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token oEda3Uo1xqLml_a7Je_3Vy_ASTZPCLyWcF8ZowU11mI',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MockAssessmentResponseCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Mock Assessment Response',
      apiUrl: 'https://rms-gfv9.onrender.com/api/assessment',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? assessmentId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.assessment.assessment_id''',
      ));
  static List? items(dynamic response) => getJsonField(
        response,
        r'''$.assessment.items''',
        true,
      ) as List?;
  static bool? reminder(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.assessment.options.reminder''',
      ));
  static bool? skip(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.assessment.options.skip''',
      ));
}

class MockSubmitAssessmentItemCallCall {
  static Future<ApiCallResponse> call({
    String? type = '',
    String? id = '-1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Mock Submit Assessment Item Call',
      apiUrl: 'https://rms-gfv9.onrender.com/api/action',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'type': type,
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SubmitAssessmentResponseCall {
  static Future<ApiCallResponse> call({
    String? itemId = '',
    bool? skip,
    String? assessmentId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Submit Assessment Response',
      apiUrl: 'https://rms-gfv9.onrender.com/api/response',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'item_id': itemId,
        'skip': skip,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AssessmentsIntroductionCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Assessments Introduction',
      apiUrl: 'https://rms-gfv9.onrender.com/api/introduction',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AssessmentsResultsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Assessments Results',
      apiUrl: 'https://rms-gfv9.onrender.com/api/results',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ContentActionCall {
  static Future<ApiCallResponse> call({
    String? contentId = '',
    String? contentAction = '',
  }) async {
    final ffApiRequestBody = '''
{
  "content": "${escapeStringForJson(contentId)}",
  "action": "${escapeStringForJson(contentAction)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Content Action',
      apiUrl: 'https://rms-gfv9.onrender.com/api/content_actions',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MockExploreCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Mock Explore',
      apiUrl: 'https://rms-gfv9.onrender.com/api/explore',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? contentPreviewItems(dynamic response) => getJsonField(
        response,
        r'''$.explore.content[:].group.content[:].preview''',
        true,
      ) as List?;
}

class ContentDetailMockCall {
  static Future<ApiCallResponse> call({
    String? contentId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Content Detail Mock',
      apiUrl: 'https://rms-gfv9.onrender.com/api/content/${contentId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? items(dynamic response) => getJsonField(
        response,
        r'''$.assessment.items''',
        true,
      ) as List?;
  static String? assessmentID(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.assessment.assessment_id''',
      ));
  static dynamic introductionJSON(dynamic response) => getJsonField(
        response,
        r'''$.assessment.items[:].introduction''',
      );
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
