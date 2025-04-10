// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PillerStruct extends BaseStruct {
  PillerStruct({
    Color? primaryColor,
    Color? accent1,
    String? pillar,
    double? pillerBreakdown,
  })  : _primaryColor = primaryColor,
        _accent1 = accent1,
        _pillar = pillar,
        _pillerBreakdown = pillerBreakdown;

  // "primary_color" field.
  Color? _primaryColor;
  Color? get primaryColor => _primaryColor;
  set primaryColor(Color? val) => _primaryColor = val;

  bool hasPrimaryColor() => _primaryColor != null;

  // "accent_1" field.
  Color? _accent1;
  Color? get accent1 => _accent1;
  set accent1(Color? val) => _accent1 = val;

  bool hasAccent1() => _accent1 != null;

  // "pillar" field.
  String? _pillar;
  String get pillar => _pillar ?? '';
  set pillar(String? val) => _pillar = val;

  bool hasPillar() => _pillar != null;

  // "piller_breakdown" field.
  double? _pillerBreakdown;
  double get pillerBreakdown => _pillerBreakdown ?? 0.0;
  set pillerBreakdown(double? val) => _pillerBreakdown = val;

  void incrementPillerBreakdown(double amount) =>
      pillerBreakdown = pillerBreakdown + amount;

  bool hasPillerBreakdown() => _pillerBreakdown != null;

  static PillerStruct fromMap(Map<String, dynamic> data) => PillerStruct(
        primaryColor: getSchemaColor(data['primary_color']),
        accent1: getSchemaColor(data['accent_1']),
        pillar: data['pillar'] as String?,
        pillerBreakdown: castToType<double>(data['piller_breakdown']),
      );

  static PillerStruct? maybeFromMap(dynamic data) =>
      data is Map ? PillerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'primary_color': _primaryColor,
        'accent_1': _accent1,
        'pillar': _pillar,
        'piller_breakdown': _pillerBreakdown,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'primary_color': serializeParam(
          _primaryColor,
          ParamType.Color,
        ),
        'accent_1': serializeParam(
          _accent1,
          ParamType.Color,
        ),
        'pillar': serializeParam(
          _pillar,
          ParamType.String,
        ),
        'piller_breakdown': serializeParam(
          _pillerBreakdown,
          ParamType.double,
        ),
      }.withoutNulls;

  static PillerStruct fromSerializableMap(Map<String, dynamic> data) =>
      PillerStruct(
        primaryColor: deserializeParam(
          data['primary_color'],
          ParamType.Color,
          false,
        ),
        accent1: deserializeParam(
          data['accent_1'],
          ParamType.Color,
          false,
        ),
        pillar: deserializeParam(
          data['pillar'],
          ParamType.String,
          false,
        ),
        pillerBreakdown: deserializeParam(
          data['piller_breakdown'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PillerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PillerStruct &&
        primaryColor == other.primaryColor &&
        accent1 == other.accent1 &&
        pillar == other.pillar &&
        pillerBreakdown == other.pillerBreakdown;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([primaryColor, accent1, pillar, pillerBreakdown]);
}

PillerStruct createPillerStruct({
  Color? primaryColor,
  Color? accent1,
  String? pillar,
  double? pillerBreakdown,
}) =>
    PillerStruct(
      primaryColor: primaryColor,
      accent1: accent1,
      pillar: pillar,
      pillerBreakdown: pillerBreakdown,
    );
