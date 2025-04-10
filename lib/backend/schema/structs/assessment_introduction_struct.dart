// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssessmentIntroductionStruct extends BaseStruct {
  AssessmentIntroductionStruct({
    String? holdingText,
  }) : _holdingText = holdingText;

  // "holdingText" field.
  String? _holdingText;
  String get holdingText =>
      _holdingText ??
      'Holding until we know more about introduction data format';
  set holdingText(String? val) => _holdingText = val;

  bool hasHoldingText() => _holdingText != null;

  static AssessmentIntroductionStruct fromMap(Map<String, dynamic> data) =>
      AssessmentIntroductionStruct(
        holdingText: data['holdingText'] as String?,
      );

  static AssessmentIntroductionStruct? maybeFromMap(dynamic data) => data is Map
      ? AssessmentIntroductionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'holdingText': _holdingText,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'holdingText': serializeParam(
          _holdingText,
          ParamType.String,
        ),
      }.withoutNulls;

  static AssessmentIntroductionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AssessmentIntroductionStruct(
        holdingText: deserializeParam(
          data['holdingText'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AssessmentIntroductionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssessmentIntroductionStruct &&
        holdingText == other.holdingText;
  }

  @override
  int get hashCode => const ListEquality().hash([holdingText]);
}

AssessmentIntroductionStruct createAssessmentIntroductionStruct({
  String? holdingText,
}) =>
    AssessmentIntroductionStruct(
      holdingText: holdingText,
    );
