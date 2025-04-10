// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssessmentResponseStruct extends BaseStruct {
  AssessmentResponseStruct({
    String? label,
    String? responseId,
  })  : _label = label,
        _responseId = responseId;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;

  bool hasLabel() => _label != null;

  // "response_id" field.
  String? _responseId;
  String get responseId => _responseId ?? '';
  set responseId(String? val) => _responseId = val;

  bool hasResponseId() => _responseId != null;

  static AssessmentResponseStruct fromMap(Map<String, dynamic> data) =>
      AssessmentResponseStruct(
        label: data['label'] as String?,
        responseId: data['response_id'] as String?,
      );

  static AssessmentResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? AssessmentResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'label': _label,
        'response_id': _responseId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'response_id': serializeParam(
          _responseId,
          ParamType.String,
        ),
      }.withoutNulls;

  static AssessmentResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AssessmentResponseStruct(
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        responseId: deserializeParam(
          data['response_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AssessmentResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssessmentResponseStruct &&
        label == other.label &&
        responseId == other.responseId;
  }

  @override
  int get hashCode => const ListEquality().hash([label, responseId]);
}

AssessmentResponseStruct createAssessmentResponseStruct({
  String? label,
  String? responseId,
}) =>
    AssessmentResponseStruct(
      label: label,
      responseId: responseId,
    );
