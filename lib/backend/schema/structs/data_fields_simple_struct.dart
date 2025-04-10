// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataFieldsSimpleStruct extends BaseStruct {
  DataFieldsSimpleStruct({
    String? title,
    String? description,
    int? index,
    DateTime? dateActive,
    String? type,
    RankType? rankType,
  })  : _title = title,
        _description = description,
        _index = index,
        _dateActive = dateActive,
        _type = type,
        _rankType = rankType;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  // "date_active" field.
  DateTime? _dateActive;
  DateTime? get dateActive => _dateActive;
  set dateActive(DateTime? val) => _dateActive = val;

  bool hasDateActive() => _dateActive != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "rank_type" field.
  RankType? _rankType;
  RankType get rankType => _rankType ?? RankType.CO;
  set rankType(RankType? val) => _rankType = val;

  bool hasRankType() => _rankType != null;

  static DataFieldsSimpleStruct fromMap(Map<String, dynamic> data) =>
      DataFieldsSimpleStruct(
        title: data['title'] as String?,
        description: data['description'] as String?,
        index: castToType<int>(data['index']),
        dateActive: data['date_active'] as DateTime?,
        type: data['type'] as String?,
        rankType: data['rank_type'] is RankType
            ? data['rank_type']
            : deserializeEnum<RankType>(data['rank_type']),
      );

  static DataFieldsSimpleStruct? maybeFromMap(dynamic data) => data is Map
      ? DataFieldsSimpleStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'description': _description,
        'index': _index,
        'date_active': _dateActive,
        'type': _type,
        'rank_type': _rankType?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
        'date_active': serializeParam(
          _dateActive,
          ParamType.DateTime,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'rank_type': serializeParam(
          _rankType,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static DataFieldsSimpleStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DataFieldsSimpleStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
        dateActive: deserializeParam(
          data['date_active'],
          ParamType.DateTime,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        rankType: deserializeParam<RankType>(
          data['rank_type'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'DataFieldsSimpleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataFieldsSimpleStruct &&
        title == other.title &&
        description == other.description &&
        index == other.index &&
        dateActive == other.dateActive &&
        type == other.type &&
        rankType == other.rankType;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([title, description, index, dateActive, type, rankType]);
}

DataFieldsSimpleStruct createDataFieldsSimpleStruct({
  String? title,
  String? description,
  int? index,
  DateTime? dateActive,
  String? type,
  RankType? rankType,
}) =>
    DataFieldsSimpleStruct(
      title: title,
      description: description,
      index: index,
      dateActive: dateActive,
      type: type,
      rankType: rankType,
    );
