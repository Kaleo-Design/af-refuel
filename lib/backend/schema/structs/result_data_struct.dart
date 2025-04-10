// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultDataStruct extends BaseStruct {
  ResultDataStruct({
    List<JmlWrapperStruct>? heading,
    List<JmlWrapperStruct>? meaning,
    List<JmlWrapperStruct>? save,
    List<JmlWrapperStruct>? scoring,
  })  : _heading = heading,
        _meaning = meaning,
        _save = save,
        _scoring = scoring;

  // "heading" field.
  List<JmlWrapperStruct>? _heading;
  List<JmlWrapperStruct> get heading => _heading ?? const [];
  set heading(List<JmlWrapperStruct>? val) => _heading = val;

  void updateHeading(Function(List<JmlWrapperStruct>) updateFn) {
    updateFn(_heading ??= []);
  }

  bool hasHeading() => _heading != null;

  // "meaning" field.
  List<JmlWrapperStruct>? _meaning;
  List<JmlWrapperStruct> get meaning => _meaning ?? const [];
  set meaning(List<JmlWrapperStruct>? val) => _meaning = val;

  void updateMeaning(Function(List<JmlWrapperStruct>) updateFn) {
    updateFn(_meaning ??= []);
  }

  bool hasMeaning() => _meaning != null;

  // "save" field.
  List<JmlWrapperStruct>? _save;
  List<JmlWrapperStruct> get save => _save ?? const [];
  set save(List<JmlWrapperStruct>? val) => _save = val;

  void updateSave(Function(List<JmlWrapperStruct>) updateFn) {
    updateFn(_save ??= []);
  }

  bool hasSave() => _save != null;

  // "scoring" field.
  List<JmlWrapperStruct>? _scoring;
  List<JmlWrapperStruct> get scoring => _scoring ?? const [];
  set scoring(List<JmlWrapperStruct>? val) => _scoring = val;

  void updateScoring(Function(List<JmlWrapperStruct>) updateFn) {
    updateFn(_scoring ??= []);
  }

  bool hasScoring() => _scoring != null;

  static ResultDataStruct fromMap(Map<String, dynamic> data) =>
      ResultDataStruct(
        heading: getStructList(
          data['heading'],
          JmlWrapperStruct.fromMap,
        ),
        meaning: getStructList(
          data['meaning'],
          JmlWrapperStruct.fromMap,
        ),
        save: getStructList(
          data['save'],
          JmlWrapperStruct.fromMap,
        ),
        scoring: getStructList(
          data['scoring'],
          JmlWrapperStruct.fromMap,
        ),
      );

  static ResultDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ResultDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'heading': _heading?.map((e) => e.toMap()).toList(),
        'meaning': _meaning?.map((e) => e.toMap()).toList(),
        'save': _save?.map((e) => e.toMap()).toList(),
        'scoring': _scoring?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'heading': serializeParam(
          _heading,
          ParamType.DataStruct,
          isList: true,
        ),
        'meaning': serializeParam(
          _meaning,
          ParamType.DataStruct,
          isList: true,
        ),
        'save': serializeParam(
          _save,
          ParamType.DataStruct,
          isList: true,
        ),
        'scoring': serializeParam(
          _scoring,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ResultDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResultDataStruct(
        heading: deserializeStructParam<JmlWrapperStruct>(
          data['heading'],
          ParamType.DataStruct,
          true,
          structBuilder: JmlWrapperStruct.fromSerializableMap,
        ),
        meaning: deserializeStructParam<JmlWrapperStruct>(
          data['meaning'],
          ParamType.DataStruct,
          true,
          structBuilder: JmlWrapperStruct.fromSerializableMap,
        ),
        save: deserializeStructParam<JmlWrapperStruct>(
          data['save'],
          ParamType.DataStruct,
          true,
          structBuilder: JmlWrapperStruct.fromSerializableMap,
        ),
        scoring: deserializeStructParam<JmlWrapperStruct>(
          data['scoring'],
          ParamType.DataStruct,
          true,
          structBuilder: JmlWrapperStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ResultDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ResultDataStruct &&
        listEquality.equals(heading, other.heading) &&
        listEquality.equals(meaning, other.meaning) &&
        listEquality.equals(save, other.save) &&
        listEquality.equals(scoring, other.scoring);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([heading, meaning, save, scoring]);
}

ResultDataStruct createResultDataStruct() => ResultDataStruct();
