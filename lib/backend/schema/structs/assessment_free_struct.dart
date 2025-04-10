// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssessmentFreeStruct extends BaseStruct {
  AssessmentFreeStruct({
    AssessmentFreeOptionsStruct? options,
    String? responseText,
  })  : _options = options,
        _responseText = responseText;

  // "options" field.
  AssessmentFreeOptionsStruct? _options;
  AssessmentFreeOptionsStruct get options =>
      _options ?? AssessmentFreeOptionsStruct();
  set options(AssessmentFreeOptionsStruct? val) => _options = val;

  void updateOptions(Function(AssessmentFreeOptionsStruct) updateFn) {
    updateFn(_options ??= AssessmentFreeOptionsStruct());
  }

  bool hasOptions() => _options != null;

  // "response_text" field.
  String? _responseText;
  String get responseText => _responseText ?? '';
  set responseText(String? val) => _responseText = val;

  bool hasResponseText() => _responseText != null;

  static AssessmentFreeStruct fromMap(Map<String, dynamic> data) =>
      AssessmentFreeStruct(
        options: data['options'] is AssessmentFreeOptionsStruct
            ? data['options']
            : AssessmentFreeOptionsStruct.maybeFromMap(data['options']),
        responseText: data['response_text'] as String?,
      );

  static AssessmentFreeStruct? maybeFromMap(dynamic data) => data is Map
      ? AssessmentFreeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'options': _options?.toMap(),
        'response_text': _responseText,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'options': serializeParam(
          _options,
          ParamType.DataStruct,
        ),
        'response_text': serializeParam(
          _responseText,
          ParamType.String,
        ),
      }.withoutNulls;

  static AssessmentFreeStruct fromSerializableMap(Map<String, dynamic> data) =>
      AssessmentFreeStruct(
        options: deserializeStructParam(
          data['options'],
          ParamType.DataStruct,
          false,
          structBuilder: AssessmentFreeOptionsStruct.fromSerializableMap,
        ),
        responseText: deserializeParam(
          data['response_text'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AssessmentFreeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssessmentFreeStruct &&
        options == other.options &&
        responseText == other.responseText;
  }

  @override
  int get hashCode => const ListEquality().hash([options, responseText]);
}

AssessmentFreeStruct createAssessmentFreeStruct({
  AssessmentFreeOptionsStruct? options,
  String? responseText,
}) =>
    AssessmentFreeStruct(
      options: options ?? AssessmentFreeOptionsStruct(),
      responseText: responseText,
    );
