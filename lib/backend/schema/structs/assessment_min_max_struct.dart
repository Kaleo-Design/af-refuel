// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssessmentMinMaxStruct extends BaseStruct {
  AssessmentMinMaxStruct({
    int? value,
    String? label,
    String? emoji,
  })  : _value = value,
        _label = label,
        _emoji = emoji;

  // "value" field.
  int? _value;
  int get value => _value ?? 0;
  set value(int? val) => _value = val;

  void incrementValue(int amount) => value = value + amount;

  bool hasValue() => _value != null;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;

  bool hasLabel() => _label != null;

  // "emoji" field.
  String? _emoji;
  String get emoji => _emoji ?? '';
  set emoji(String? val) => _emoji = val;

  bool hasEmoji() => _emoji != null;

  static AssessmentMinMaxStruct fromMap(Map<String, dynamic> data) =>
      AssessmentMinMaxStruct(
        value: castToType<int>(data['value']),
        label: data['label'] as String?,
        emoji: data['emoji'] as String?,
      );

  static AssessmentMinMaxStruct? maybeFromMap(dynamic data) => data is Map
      ? AssessmentMinMaxStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'value': _value,
        'label': _label,
        'emoji': _emoji,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'value': serializeParam(
          _value,
          ParamType.int,
        ),
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'emoji': serializeParam(
          _emoji,
          ParamType.String,
        ),
      }.withoutNulls;

  static AssessmentMinMaxStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AssessmentMinMaxStruct(
        value: deserializeParam(
          data['value'],
          ParamType.int,
          false,
        ),
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        emoji: deserializeParam(
          data['emoji'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AssessmentMinMaxStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssessmentMinMaxStruct &&
        value == other.value &&
        label == other.label &&
        emoji == other.emoji;
  }

  @override
  int get hashCode => const ListEquality().hash([value, label, emoji]);
}

AssessmentMinMaxStruct createAssessmentMinMaxStruct({
  int? value,
  String? label,
  String? emoji,
}) =>
    AssessmentMinMaxStruct(
      value: value,
      label: label,
      emoji: emoji,
    );
