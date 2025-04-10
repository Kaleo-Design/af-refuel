// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Holds an x label id and y numeric value
class ChartDataStruct extends BaseStruct {
  ChartDataStruct({
    String? xLabel,
    double? yValue,

    /// Optional color field used in only some of the custom charting widgets
    Color? color,
  })  : _xLabel = xLabel,
        _yValue = yValue,
        _color = color;

  // "x_label" field.
  String? _xLabel;
  String get xLabel => _xLabel ?? '';
  set xLabel(String? val) => _xLabel = val;

  bool hasXLabel() => _xLabel != null;

  // "y_value" field.
  double? _yValue;
  double get yValue => _yValue ?? 0.0;
  set yValue(double? val) => _yValue = val;

  void incrementYValue(double amount) => yValue = yValue + amount;

  bool hasYValue() => _yValue != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  set color(Color? val) => _color = val;

  bool hasColor() => _color != null;

  static ChartDataStruct fromMap(Map<String, dynamic> data) => ChartDataStruct(
        xLabel: data['x_label'] as String?,
        yValue: castToType<double>(data['y_value']),
        color: getSchemaColor(data['color']),
      );

  static ChartDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ChartDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'x_label': _xLabel,
        'y_value': _yValue,
        'color': _color,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'x_label': serializeParam(
          _xLabel,
          ParamType.String,
        ),
        'y_value': serializeParam(
          _yValue,
          ParamType.double,
        ),
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
      }.withoutNulls;

  static ChartDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChartDataStruct(
        xLabel: deserializeParam(
          data['x_label'],
          ParamType.String,
          false,
        ),
        yValue: deserializeParam(
          data['y_value'],
          ParamType.double,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'ChartDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChartDataStruct &&
        xLabel == other.xLabel &&
        yValue == other.yValue &&
        color == other.color;
  }

  @override
  int get hashCode => const ListEquality().hash([xLabel, yValue, color]);
}

ChartDataStruct createChartDataStruct({
  String? xLabel,
  double? yValue,
  Color? color,
}) =>
    ChartDataStruct(
      xLabel: xLabel,
      yValue: yValue,
      color: color,
    );
