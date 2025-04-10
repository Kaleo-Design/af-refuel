// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssessmentScaleStruct extends BaseStruct {
  AssessmentScaleStruct({
    AssessmentMinMaxStruct? min,
    AssessmentMinMaxStruct? max,
    double? responseValue,
  })  : _min = min,
        _max = max,
        _responseValue = responseValue;

  // "min" field.
  AssessmentMinMaxStruct? _min;
  AssessmentMinMaxStruct get min => _min ?? AssessmentMinMaxStruct();
  set min(AssessmentMinMaxStruct? val) => _min = val;

  void updateMin(Function(AssessmentMinMaxStruct) updateFn) {
    updateFn(_min ??= AssessmentMinMaxStruct());
  }

  bool hasMin() => _min != null;

  // "max" field.
  AssessmentMinMaxStruct? _max;
  AssessmentMinMaxStruct get max => _max ?? AssessmentMinMaxStruct();
  set max(AssessmentMinMaxStruct? val) => _max = val;

  void updateMax(Function(AssessmentMinMaxStruct) updateFn) {
    updateFn(_max ??= AssessmentMinMaxStruct());
  }

  bool hasMax() => _max != null;

  // "response_value" field.
  double? _responseValue;
  double get responseValue => _responseValue ?? 0.0;
  set responseValue(double? val) => _responseValue = val;

  void incrementResponseValue(double amount) =>
      responseValue = responseValue + amount;

  bool hasResponseValue() => _responseValue != null;

  static AssessmentScaleStruct fromMap(Map<String, dynamic> data) =>
      AssessmentScaleStruct(
        min: data['min'] is AssessmentMinMaxStruct
            ? data['min']
            : AssessmentMinMaxStruct.maybeFromMap(data['min']),
        max: data['max'] is AssessmentMinMaxStruct
            ? data['max']
            : AssessmentMinMaxStruct.maybeFromMap(data['max']),
        responseValue: castToType<double>(data['response_value']),
      );

  static AssessmentScaleStruct? maybeFromMap(dynamic data) => data is Map
      ? AssessmentScaleStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'min': _min?.toMap(),
        'max': _max?.toMap(),
        'response_value': _responseValue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'min': serializeParam(
          _min,
          ParamType.DataStruct,
        ),
        'max': serializeParam(
          _max,
          ParamType.DataStruct,
        ),
        'response_value': serializeParam(
          _responseValue,
          ParamType.double,
        ),
      }.withoutNulls;

  static AssessmentScaleStruct fromSerializableMap(Map<String, dynamic> data) =>
      AssessmentScaleStruct(
        min: deserializeStructParam(
          data['min'],
          ParamType.DataStruct,
          false,
          structBuilder: AssessmentMinMaxStruct.fromSerializableMap,
        ),
        max: deserializeStructParam(
          data['max'],
          ParamType.DataStruct,
          false,
          structBuilder: AssessmentMinMaxStruct.fromSerializableMap,
        ),
        responseValue: deserializeParam(
          data['response_value'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'AssessmentScaleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssessmentScaleStruct &&
        min == other.min &&
        max == other.max &&
        responseValue == other.responseValue;
  }

  @override
  int get hashCode => const ListEquality().hash([min, max, responseValue]);
}

AssessmentScaleStruct createAssessmentScaleStruct({
  AssessmentMinMaxStruct? min,
  AssessmentMinMaxStruct? max,
  double? responseValue,
}) =>
    AssessmentScaleStruct(
      min: min ?? AssessmentMinMaxStruct(),
      max: max ?? AssessmentMinMaxStruct(),
      responseValue: responseValue,
    );
