// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssessmentTimeStruct extends BaseStruct {
  AssessmentTimeStruct({
    int? max,
  }) : _max = max;

  // "max" field.
  int? _max;
  int get max => _max ?? 0;
  set max(int? val) => _max = val;

  void incrementMax(int amount) => max = max + amount;

  bool hasMax() => _max != null;

  static AssessmentTimeStruct fromMap(Map<String, dynamic> data) =>
      AssessmentTimeStruct(
        max: castToType<int>(data['max']),
      );

  static AssessmentTimeStruct? maybeFromMap(dynamic data) => data is Map
      ? AssessmentTimeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'max': _max,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'max': serializeParam(
          _max,
          ParamType.int,
        ),
      }.withoutNulls;

  static AssessmentTimeStruct fromSerializableMap(Map<String, dynamic> data) =>
      AssessmentTimeStruct(
        max: deserializeParam(
          data['max'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AssessmentTimeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssessmentTimeStruct && max == other.max;
  }

  @override
  int get hashCode => const ListEquality().hash([max]);
}

AssessmentTimeStruct createAssessmentTimeStruct({
  int? max,
}) =>
    AssessmentTimeStruct(
      max: max,
    );
