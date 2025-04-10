// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssessmentInfoWrapperStruct extends BaseStruct {
  AssessmentInfoWrapperStruct({
    int? loopIndexMain,
    int? loopIndexSecondary,
    List<AssessmentItemDataWrapperStruct>? assessmentData,
    DateTime? dataLastCleared,
    int? indexResponseLastAnswered,
    String? assessmentId,
    bool? reminder,
    bool? skip,
  })  : _loopIndexMain = loopIndexMain,
        _loopIndexSecondary = loopIndexSecondary,
        _assessmentData = assessmentData,
        _dataLastCleared = dataLastCleared,
        _indexResponseLastAnswered = indexResponseLastAnswered,
        _assessmentId = assessmentId,
        _reminder = reminder,
        _skip = skip;

  // "loopIndexMain" field.
  int? _loopIndexMain;
  int get loopIndexMain => _loopIndexMain ?? 0;
  set loopIndexMain(int? val) => _loopIndexMain = val;

  void incrementLoopIndexMain(int amount) =>
      loopIndexMain = loopIndexMain + amount;

  bool hasLoopIndexMain() => _loopIndexMain != null;

  // "loopIndexSecondary" field.
  int? _loopIndexSecondary;
  int get loopIndexSecondary => _loopIndexSecondary ?? 0;
  set loopIndexSecondary(int? val) => _loopIndexSecondary = val;

  void incrementLoopIndexSecondary(int amount) =>
      loopIndexSecondary = loopIndexSecondary + amount;

  bool hasLoopIndexSecondary() => _loopIndexSecondary != null;

  // "assessment_data" field.
  List<AssessmentItemDataWrapperStruct>? _assessmentData;
  List<AssessmentItemDataWrapperStruct> get assessmentData =>
      _assessmentData ?? const [];
  set assessmentData(List<AssessmentItemDataWrapperStruct>? val) =>
      _assessmentData = val;

  void updateAssessmentData(
      Function(List<AssessmentItemDataWrapperStruct>) updateFn) {
    updateFn(_assessmentData ??= []);
  }

  bool hasAssessmentData() => _assessmentData != null;

  // "data_last_cleared" field.
  DateTime? _dataLastCleared;
  DateTime get dataLastCleared =>
      _dataLastCleared ?? DateTime.fromMicrosecondsSinceEpoch(1735113600000000);
  set dataLastCleared(DateTime? val) => _dataLastCleared = val;

  bool hasDataLastCleared() => _dataLastCleared != null;

  // "indexResponseLastAnswered" field.
  int? _indexResponseLastAnswered;
  int get indexResponseLastAnswered => _indexResponseLastAnswered ?? 0;
  set indexResponseLastAnswered(int? val) => _indexResponseLastAnswered = val;

  void incrementIndexResponseLastAnswered(int amount) =>
      indexResponseLastAnswered = indexResponseLastAnswered + amount;

  bool hasIndexResponseLastAnswered() => _indexResponseLastAnswered != null;

  // "assessmentId" field.
  String? _assessmentId;
  String get assessmentId => _assessmentId ?? '-1';
  set assessmentId(String? val) => _assessmentId = val;

  bool hasAssessmentId() => _assessmentId != null;

  // "reminder" field.
  bool? _reminder;
  bool get reminder => _reminder ?? false;
  set reminder(bool? val) => _reminder = val;

  bool hasReminder() => _reminder != null;

  // "skip" field.
  bool? _skip;
  bool get skip => _skip ?? false;
  set skip(bool? val) => _skip = val;

  bool hasSkip() => _skip != null;

  static AssessmentInfoWrapperStruct fromMap(Map<String, dynamic> data) =>
      AssessmentInfoWrapperStruct(
        loopIndexMain: castToType<int>(data['loopIndexMain']),
        loopIndexSecondary: castToType<int>(data['loopIndexSecondary']),
        assessmentData: getStructList(
          data['assessment_data'],
          AssessmentItemDataWrapperStruct.fromMap,
        ),
        dataLastCleared: data['data_last_cleared'] as DateTime?,
        indexResponseLastAnswered:
            castToType<int>(data['indexResponseLastAnswered']),
        assessmentId: data['assessmentId'] as String?,
        reminder: data['reminder'] as bool?,
        skip: data['skip'] as bool?,
      );

  static AssessmentInfoWrapperStruct? maybeFromMap(dynamic data) => data is Map
      ? AssessmentInfoWrapperStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'loopIndexMain': _loopIndexMain,
        'loopIndexSecondary': _loopIndexSecondary,
        'assessment_data': _assessmentData?.map((e) => e.toMap()).toList(),
        'data_last_cleared': _dataLastCleared,
        'indexResponseLastAnswered': _indexResponseLastAnswered,
        'assessmentId': _assessmentId,
        'reminder': _reminder,
        'skip': _skip,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'loopIndexMain': serializeParam(
          _loopIndexMain,
          ParamType.int,
        ),
        'loopIndexSecondary': serializeParam(
          _loopIndexSecondary,
          ParamType.int,
        ),
        'assessment_data': serializeParam(
          _assessmentData,
          ParamType.DataStruct,
          isList: true,
        ),
        'data_last_cleared': serializeParam(
          _dataLastCleared,
          ParamType.DateTime,
        ),
        'indexResponseLastAnswered': serializeParam(
          _indexResponseLastAnswered,
          ParamType.int,
        ),
        'assessmentId': serializeParam(
          _assessmentId,
          ParamType.String,
        ),
        'reminder': serializeParam(
          _reminder,
          ParamType.bool,
        ),
        'skip': serializeParam(
          _skip,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AssessmentInfoWrapperStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AssessmentInfoWrapperStruct(
        loopIndexMain: deserializeParam(
          data['loopIndexMain'],
          ParamType.int,
          false,
        ),
        loopIndexSecondary: deserializeParam(
          data['loopIndexSecondary'],
          ParamType.int,
          false,
        ),
        assessmentData: deserializeStructParam<AssessmentItemDataWrapperStruct>(
          data['assessment_data'],
          ParamType.DataStruct,
          true,
          structBuilder: AssessmentItemDataWrapperStruct.fromSerializableMap,
        ),
        dataLastCleared: deserializeParam(
          data['data_last_cleared'],
          ParamType.DateTime,
          false,
        ),
        indexResponseLastAnswered: deserializeParam(
          data['indexResponseLastAnswered'],
          ParamType.int,
          false,
        ),
        assessmentId: deserializeParam(
          data['assessmentId'],
          ParamType.String,
          false,
        ),
        reminder: deserializeParam(
          data['reminder'],
          ParamType.bool,
          false,
        ),
        skip: deserializeParam(
          data['skip'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AssessmentInfoWrapperStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AssessmentInfoWrapperStruct &&
        loopIndexMain == other.loopIndexMain &&
        loopIndexSecondary == other.loopIndexSecondary &&
        listEquality.equals(assessmentData, other.assessmentData) &&
        dataLastCleared == other.dataLastCleared &&
        indexResponseLastAnswered == other.indexResponseLastAnswered &&
        assessmentId == other.assessmentId &&
        reminder == other.reminder &&
        skip == other.skip;
  }

  @override
  int get hashCode => const ListEquality().hash([
        loopIndexMain,
        loopIndexSecondary,
        assessmentData,
        dataLastCleared,
        indexResponseLastAnswered,
        assessmentId,
        reminder,
        skip
      ]);
}

AssessmentInfoWrapperStruct createAssessmentInfoWrapperStruct({
  int? loopIndexMain,
  int? loopIndexSecondary,
  DateTime? dataLastCleared,
  int? indexResponseLastAnswered,
  String? assessmentId,
  bool? reminder,
  bool? skip,
}) =>
    AssessmentInfoWrapperStruct(
      loopIndexMain: loopIndexMain,
      loopIndexSecondary: loopIndexSecondary,
      dataLastCleared: dataLastCleared,
      indexResponseLastAnswered: indexResponseLastAnswered,
      assessmentId: assessmentId,
      reminder: reminder,
      skip: skip,
    );
