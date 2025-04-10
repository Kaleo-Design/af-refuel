// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssessmentFixedStruct extends BaseStruct {
  AssessmentFixedStruct({
    int? selectMin,
    int? selectMax,
    List<AssessmentResponseStruct>? responsesOptions,
    List<String>? selectedResponseIds,
  })  : _selectMin = selectMin,
        _selectMax = selectMax,
        _responsesOptions = responsesOptions,
        _selectedResponseIds = selectedResponseIds;

  // "select_min" field.
  int? _selectMin;
  int get selectMin => _selectMin ?? 0;
  set selectMin(int? val) => _selectMin = val;

  void incrementSelectMin(int amount) => selectMin = selectMin + amount;

  bool hasSelectMin() => _selectMin != null;

  // "select_max" field.
  int? _selectMax;
  int get selectMax => _selectMax ?? 0;
  set selectMax(int? val) => _selectMax = val;

  void incrementSelectMax(int amount) => selectMax = selectMax + amount;

  bool hasSelectMax() => _selectMax != null;

  // "responses_options" field.
  List<AssessmentResponseStruct>? _responsesOptions;
  List<AssessmentResponseStruct> get responsesOptions =>
      _responsesOptions ?? const [];
  set responsesOptions(List<AssessmentResponseStruct>? val) =>
      _responsesOptions = val;

  void updateResponsesOptions(
      Function(List<AssessmentResponseStruct>) updateFn) {
    updateFn(_responsesOptions ??= []);
  }

  bool hasResponsesOptions() => _responsesOptions != null;

  // "selected_response_ids" field.
  List<String>? _selectedResponseIds;
  List<String> get selectedResponseIds => _selectedResponseIds ?? const [];
  set selectedResponseIds(List<String>? val) => _selectedResponseIds = val;

  void updateSelectedResponseIds(Function(List<String>) updateFn) {
    updateFn(_selectedResponseIds ??= []);
  }

  bool hasSelectedResponseIds() => _selectedResponseIds != null;

  static AssessmentFixedStruct fromMap(Map<String, dynamic> data) =>
      AssessmentFixedStruct(
        selectMin: castToType<int>(data['select_min']),
        selectMax: castToType<int>(data['select_max']),
        responsesOptions: getStructList(
          data['responses_options'],
          AssessmentResponseStruct.fromMap,
        ),
        selectedResponseIds: getDataList(data['selected_response_ids']),
      );

  static AssessmentFixedStruct? maybeFromMap(dynamic data) => data is Map
      ? AssessmentFixedStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'select_min': _selectMin,
        'select_max': _selectMax,
        'responses_options': _responsesOptions?.map((e) => e.toMap()).toList(),
        'selected_response_ids': _selectedResponseIds,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'select_min': serializeParam(
          _selectMin,
          ParamType.int,
        ),
        'select_max': serializeParam(
          _selectMax,
          ParamType.int,
        ),
        'responses_options': serializeParam(
          _responsesOptions,
          ParamType.DataStruct,
          isList: true,
        ),
        'selected_response_ids': serializeParam(
          _selectedResponseIds,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static AssessmentFixedStruct fromSerializableMap(Map<String, dynamic> data) =>
      AssessmentFixedStruct(
        selectMin: deserializeParam(
          data['select_min'],
          ParamType.int,
          false,
        ),
        selectMax: deserializeParam(
          data['select_max'],
          ParamType.int,
          false,
        ),
        responsesOptions: deserializeStructParam<AssessmentResponseStruct>(
          data['responses_options'],
          ParamType.DataStruct,
          true,
          structBuilder: AssessmentResponseStruct.fromSerializableMap,
        ),
        selectedResponseIds: deserializeParam<String>(
          data['selected_response_ids'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'AssessmentFixedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AssessmentFixedStruct &&
        selectMin == other.selectMin &&
        selectMax == other.selectMax &&
        listEquality.equals(responsesOptions, other.responsesOptions) &&
        listEquality.equals(selectedResponseIds, other.selectedResponseIds);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([selectMin, selectMax, responsesOptions, selectedResponseIds]);
}

AssessmentFixedStruct createAssessmentFixedStruct({
  int? selectMin,
  int? selectMax,
}) =>
    AssessmentFixedStruct(
      selectMin: selectMin,
      selectMax: selectMax,
    );
