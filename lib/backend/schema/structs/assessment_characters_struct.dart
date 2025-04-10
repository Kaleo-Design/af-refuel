// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssessmentCharactersStruct extends BaseStruct {
  AssessmentCharactersStruct({
    int? min,
    int? max,
  })  : _min = min,
        _max = max;

  // "min" field.
  int? _min;
  int get min => _min ?? 0;
  set min(int? val) => _min = val;

  void incrementMin(int amount) => min = min + amount;

  bool hasMin() => _min != null;

  // "max" field.
  int? _max;
  int get max => _max ?? 0;
  set max(int? val) => _max = val;

  void incrementMax(int amount) => max = max + amount;

  bool hasMax() => _max != null;

  static AssessmentCharactersStruct fromMap(Map<String, dynamic> data) =>
      AssessmentCharactersStruct(
        min: castToType<int>(data['min']),
        max: castToType<int>(data['max']),
      );

  static AssessmentCharactersStruct? maybeFromMap(dynamic data) => data is Map
      ? AssessmentCharactersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'min': _min,
        'max': _max,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'min': serializeParam(
          _min,
          ParamType.int,
        ),
        'max': serializeParam(
          _max,
          ParamType.int,
        ),
      }.withoutNulls;

  static AssessmentCharactersStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AssessmentCharactersStruct(
        min: deserializeParam(
          data['min'],
          ParamType.int,
          false,
        ),
        max: deserializeParam(
          data['max'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AssessmentCharactersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssessmentCharactersStruct &&
        min == other.min &&
        max == other.max;
  }

  @override
  int get hashCode => const ListEquality().hash([min, max]);
}

AssessmentCharactersStruct createAssessmentCharactersStruct({
  int? min,
  int? max,
}) =>
    AssessmentCharactersStruct(
      min: min,
      max: max,
    );
