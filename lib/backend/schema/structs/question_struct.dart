// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionStruct extends BaseStruct {
  QuestionStruct({
    String? name,
    String? description,
    List<String>? options,
    QuestionTypes? type,
  })  : _name = name,
        _description = description,
        _options = options,
        _type = type;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "options" field.
  List<String>? _options;
  List<String> get options => _options ?? const [];
  set options(List<String>? val) => _options = val;

  void updateOptions(Function(List<String>) updateFn) {
    updateFn(_options ??= []);
  }

  bool hasOptions() => _options != null;

  // "type" field.
  QuestionTypes? _type;
  QuestionTypes? get type => _type;
  set type(QuestionTypes? val) => _type = val;

  bool hasType() => _type != null;

  static QuestionStruct fromMap(Map<String, dynamic> data) => QuestionStruct(
        name: data['name'] as String?,
        description: data['description'] as String?,
        options: getDataList(data['options']),
        type: data['type'] is QuestionTypes
            ? data['type']
            : deserializeEnum<QuestionTypes>(data['type']),
      );

  static QuestionStruct? maybeFromMap(dynamic data) =>
      data is Map ? QuestionStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'description': _description,
        'options': _options,
        'type': _type?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'options': serializeParam(
          _options,
          ParamType.String,
          isList: true,
        ),
        'type': serializeParam(
          _type,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static QuestionStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestionStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        options: deserializeParam<String>(
          data['options'],
          ParamType.String,
          true,
        ),
        type: deserializeParam<QuestionTypes>(
          data['type'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'QuestionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is QuestionStruct &&
        name == other.name &&
        description == other.description &&
        listEquality.equals(options, other.options) &&
        type == other.type;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, description, options, type]);
}

QuestionStruct createQuestionStruct({
  String? name,
  String? description,
  QuestionTypes? type,
}) =>
    QuestionStruct(
      name: name,
      description: description,
      type: type,
    );
