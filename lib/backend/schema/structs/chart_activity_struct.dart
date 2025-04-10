// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartActivityStruct extends BaseStruct {
  ChartActivityStruct({
    int? index,
    double? value,
  })  : _index = index,
        _value = value;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  set value(double? val) => _value = val;

  void incrementValue(double amount) => value = value + amount;

  bool hasValue() => _value != null;

  static ChartActivityStruct fromMap(Map<String, dynamic> data) =>
      ChartActivityStruct(
        index: castToType<int>(data['index']),
        value: castToType<double>(data['value']),
      );

  static ChartActivityStruct? maybeFromMap(dynamic data) => data is Map
      ? ChartActivityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'index': _index,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
        'value': serializeParam(
          _value,
          ParamType.double,
        ),
      }.withoutNulls;

  static ChartActivityStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChartActivityStruct(
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ChartActivityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChartActivityStruct &&
        index == other.index &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([index, value]);
}

ChartActivityStruct createChartActivityStruct({
  int? index,
  double? value,
}) =>
    ChartActivityStruct(
      index: index,
      value: value,
    );
