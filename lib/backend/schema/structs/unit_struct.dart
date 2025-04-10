// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UnitStruct extends BaseStruct {
  UnitStruct({
    String? unitId,
    String? title,
    String? subtitle,
    String? subtitle2,
    String? subtitle3,
  })  : _unitId = unitId,
        _title = title,
        _subtitle = subtitle,
        _subtitle2 = subtitle2,
        _subtitle3 = subtitle3;

  // "unit_id" field.
  String? _unitId;
  String get unitId => _unitId ?? '';
  set unitId(String? val) => _unitId = val;

  bool hasUnitId() => _unitId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  set subtitle(String? val) => _subtitle = val;

  bool hasSubtitle() => _subtitle != null;

  // "subtitle_2" field.
  String? _subtitle2;
  String get subtitle2 => _subtitle2 ?? '';
  set subtitle2(String? val) => _subtitle2 = val;

  bool hasSubtitle2() => _subtitle2 != null;

  // "subtitle_3" field.
  String? _subtitle3;
  String get subtitle3 => _subtitle3 ?? '';
  set subtitle3(String? val) => _subtitle3 = val;

  bool hasSubtitle3() => _subtitle3 != null;

  static UnitStruct fromMap(Map<String, dynamic> data) => UnitStruct(
        unitId: data['unit_id'] as String?,
        title: data['title'] as String?,
        subtitle: data['subtitle'] as String?,
        subtitle2: data['subtitle_2'] as String?,
        subtitle3: data['subtitle_3'] as String?,
      );

  static UnitStruct? maybeFromMap(dynamic data) =>
      data is Map ? UnitStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'unit_id': _unitId,
        'title': _title,
        'subtitle': _subtitle,
        'subtitle_2': _subtitle2,
        'subtitle_3': _subtitle3,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'unit_id': serializeParam(
          _unitId,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'subtitle': serializeParam(
          _subtitle,
          ParamType.String,
        ),
        'subtitle_2': serializeParam(
          _subtitle2,
          ParamType.String,
        ),
        'subtitle_3': serializeParam(
          _subtitle3,
          ParamType.String,
        ),
      }.withoutNulls;

  static UnitStruct fromSerializableMap(Map<String, dynamic> data) =>
      UnitStruct(
        unitId: deserializeParam(
          data['unit_id'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        subtitle: deserializeParam(
          data['subtitle'],
          ParamType.String,
          false,
        ),
        subtitle2: deserializeParam(
          data['subtitle_2'],
          ParamType.String,
          false,
        ),
        subtitle3: deserializeParam(
          data['subtitle_3'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UnitStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UnitStruct &&
        unitId == other.unitId &&
        title == other.title &&
        subtitle == other.subtitle &&
        subtitle2 == other.subtitle2 &&
        subtitle3 == other.subtitle3;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([unitId, title, subtitle, subtitle2, subtitle3]);
}

UnitStruct createUnitStruct({
  String? unitId,
  String? title,
  String? subtitle,
  String? subtitle2,
  String? subtitle3,
}) =>
    UnitStruct(
      unitId: unitId,
      title: title,
      subtitle: subtitle,
      subtitle2: subtitle2,
      subtitle3: subtitle3,
    );
