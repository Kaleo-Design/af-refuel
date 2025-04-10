// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssessmentItemDataWrapperStruct extends BaseStruct {
  AssessmentItemDataWrapperStruct({
    int? indexInLocal,
    AssessmentItemType? itemType,
    String? itemId,
    String? prompt,
    AssessmentFixedStruct? typeFixedData,
    AssessmentScaleStruct? typeScaleData,
    AssessmentFreeStruct? typeFreeData,
    IntroductionDataStruct? typeIntroductionData,
  })  : _indexInLocal = indexInLocal,
        _itemType = itemType,
        _itemId = itemId,
        _prompt = prompt,
        _typeFixedData = typeFixedData,
        _typeScaleData = typeScaleData,
        _typeFreeData = typeFreeData,
        _typeIntroductionData = typeIntroductionData;

  // "index_in_local" field.
  int? _indexInLocal;
  int get indexInLocal => _indexInLocal ?? 0;
  set indexInLocal(int? val) => _indexInLocal = val;

  void incrementIndexInLocal(int amount) =>
      indexInLocal = indexInLocal + amount;

  bool hasIndexInLocal() => _indexInLocal != null;

  // "item_type" field.
  AssessmentItemType? _itemType;
  AssessmentItemType? get itemType => _itemType;
  set itemType(AssessmentItemType? val) => _itemType = val;

  bool hasItemType() => _itemType != null;

  // "item_id" field.
  String? _itemId;
  String get itemId => _itemId ?? '';
  set itemId(String? val) => _itemId = val;

  bool hasItemId() => _itemId != null;

  // "prompt" field.
  String? _prompt;
  String get prompt => _prompt ?? '';
  set prompt(String? val) => _prompt = val;

  bool hasPrompt() => _prompt != null;

  // "type_fixed_data" field.
  AssessmentFixedStruct? _typeFixedData;
  AssessmentFixedStruct get typeFixedData =>
      _typeFixedData ?? AssessmentFixedStruct();
  set typeFixedData(AssessmentFixedStruct? val) => _typeFixedData = val;

  void updateTypeFixedData(Function(AssessmentFixedStruct) updateFn) {
    updateFn(_typeFixedData ??= AssessmentFixedStruct());
  }

  bool hasTypeFixedData() => _typeFixedData != null;

  // "type_scale_data" field.
  AssessmentScaleStruct? _typeScaleData;
  AssessmentScaleStruct get typeScaleData =>
      _typeScaleData ?? AssessmentScaleStruct();
  set typeScaleData(AssessmentScaleStruct? val) => _typeScaleData = val;

  void updateTypeScaleData(Function(AssessmentScaleStruct) updateFn) {
    updateFn(_typeScaleData ??= AssessmentScaleStruct());
  }

  bool hasTypeScaleData() => _typeScaleData != null;

  // "type_free_data" field.
  AssessmentFreeStruct? _typeFreeData;
  AssessmentFreeStruct get typeFreeData =>
      _typeFreeData ?? AssessmentFreeStruct();
  set typeFreeData(AssessmentFreeStruct? val) => _typeFreeData = val;

  void updateTypeFreeData(Function(AssessmentFreeStruct) updateFn) {
    updateFn(_typeFreeData ??= AssessmentFreeStruct());
  }

  bool hasTypeFreeData() => _typeFreeData != null;

  // "type_introduction_data" field.
  IntroductionDataStruct? _typeIntroductionData;
  IntroductionDataStruct get typeIntroductionData =>
      _typeIntroductionData ?? IntroductionDataStruct();
  set typeIntroductionData(IntroductionDataStruct? val) =>
      _typeIntroductionData = val;

  void updateTypeIntroductionData(Function(IntroductionDataStruct) updateFn) {
    updateFn(_typeIntroductionData ??= IntroductionDataStruct());
  }

  bool hasTypeIntroductionData() => _typeIntroductionData != null;

  static AssessmentItemDataWrapperStruct fromMap(Map<String, dynamic> data) =>
      AssessmentItemDataWrapperStruct(
        indexInLocal: castToType<int>(data['index_in_local']),
        itemType: data['item_type'] is AssessmentItemType
            ? data['item_type']
            : deserializeEnum<AssessmentItemType>(data['item_type']),
        itemId: data['item_id'] as String?,
        prompt: data['prompt'] as String?,
        typeFixedData: data['type_fixed_data'] is AssessmentFixedStruct
            ? data['type_fixed_data']
            : AssessmentFixedStruct.maybeFromMap(data['type_fixed_data']),
        typeScaleData: data['type_scale_data'] is AssessmentScaleStruct
            ? data['type_scale_data']
            : AssessmentScaleStruct.maybeFromMap(data['type_scale_data']),
        typeFreeData: data['type_free_data'] is AssessmentFreeStruct
            ? data['type_free_data']
            : AssessmentFreeStruct.maybeFromMap(data['type_free_data']),
        typeIntroductionData:
            data['type_introduction_data'] is IntroductionDataStruct
                ? data['type_introduction_data']
                : IntroductionDataStruct.maybeFromMap(
                    data['type_introduction_data']),
      );

  static AssessmentItemDataWrapperStruct? maybeFromMap(dynamic data) => data
          is Map
      ? AssessmentItemDataWrapperStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'index_in_local': _indexInLocal,
        'item_type': _itemType?.serialize(),
        'item_id': _itemId,
        'prompt': _prompt,
        'type_fixed_data': _typeFixedData?.toMap(),
        'type_scale_data': _typeScaleData?.toMap(),
        'type_free_data': _typeFreeData?.toMap(),
        'type_introduction_data': _typeIntroductionData?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'index_in_local': serializeParam(
          _indexInLocal,
          ParamType.int,
        ),
        'item_type': serializeParam(
          _itemType,
          ParamType.Enum,
        ),
        'item_id': serializeParam(
          _itemId,
          ParamType.String,
        ),
        'prompt': serializeParam(
          _prompt,
          ParamType.String,
        ),
        'type_fixed_data': serializeParam(
          _typeFixedData,
          ParamType.DataStruct,
        ),
        'type_scale_data': serializeParam(
          _typeScaleData,
          ParamType.DataStruct,
        ),
        'type_free_data': serializeParam(
          _typeFreeData,
          ParamType.DataStruct,
        ),
        'type_introduction_data': serializeParam(
          _typeIntroductionData,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AssessmentItemDataWrapperStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AssessmentItemDataWrapperStruct(
        indexInLocal: deserializeParam(
          data['index_in_local'],
          ParamType.int,
          false,
        ),
        itemType: deserializeParam<AssessmentItemType>(
          data['item_type'],
          ParamType.Enum,
          false,
        ),
        itemId: deserializeParam(
          data['item_id'],
          ParamType.String,
          false,
        ),
        prompt: deserializeParam(
          data['prompt'],
          ParamType.String,
          false,
        ),
        typeFixedData: deserializeStructParam(
          data['type_fixed_data'],
          ParamType.DataStruct,
          false,
          structBuilder: AssessmentFixedStruct.fromSerializableMap,
        ),
        typeScaleData: deserializeStructParam(
          data['type_scale_data'],
          ParamType.DataStruct,
          false,
          structBuilder: AssessmentScaleStruct.fromSerializableMap,
        ),
        typeFreeData: deserializeStructParam(
          data['type_free_data'],
          ParamType.DataStruct,
          false,
          structBuilder: AssessmentFreeStruct.fromSerializableMap,
        ),
        typeIntroductionData: deserializeStructParam(
          data['type_introduction_data'],
          ParamType.DataStruct,
          false,
          structBuilder: IntroductionDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AssessmentItemDataWrapperStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssessmentItemDataWrapperStruct &&
        indexInLocal == other.indexInLocal &&
        itemType == other.itemType &&
        itemId == other.itemId &&
        prompt == other.prompt &&
        typeFixedData == other.typeFixedData &&
        typeScaleData == other.typeScaleData &&
        typeFreeData == other.typeFreeData &&
        typeIntroductionData == other.typeIntroductionData;
  }

  @override
  int get hashCode => const ListEquality().hash([
        indexInLocal,
        itemType,
        itemId,
        prompt,
        typeFixedData,
        typeScaleData,
        typeFreeData,
        typeIntroductionData
      ]);
}

AssessmentItemDataWrapperStruct createAssessmentItemDataWrapperStruct({
  int? indexInLocal,
  AssessmentItemType? itemType,
  String? itemId,
  String? prompt,
  AssessmentFixedStruct? typeFixedData,
  AssessmentScaleStruct? typeScaleData,
  AssessmentFreeStruct? typeFreeData,
  IntroductionDataStruct? typeIntroductionData,
}) =>
    AssessmentItemDataWrapperStruct(
      indexInLocal: indexInLocal,
      itemType: itemType,
      itemId: itemId,
      prompt: prompt,
      typeFixedData: typeFixedData ?? AssessmentFixedStruct(),
      typeScaleData: typeScaleData ?? AssessmentScaleStruct(),
      typeFreeData: typeFreeData ?? AssessmentFreeStruct(),
      typeIntroductionData: typeIntroductionData ?? IntroductionDataStruct(),
    );
