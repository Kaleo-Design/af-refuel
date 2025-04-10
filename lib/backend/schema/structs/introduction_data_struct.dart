// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IntroductionDataStruct extends BaseStruct {
  IntroductionDataStruct({
    List<JmlWrapperStruct>? heading,
    List<JmlWrapperStruct>? process,
    List<JmlWrapperStruct>? purpose,
    List<JmlWrapperStruct>? privacy,
  })  : _heading = heading,
        _process = process,
        _purpose = purpose,
        _privacy = privacy;

  // "heading" field.
  List<JmlWrapperStruct>? _heading;
  List<JmlWrapperStruct> get heading => _heading ?? const [];
  set heading(List<JmlWrapperStruct>? val) => _heading = val;

  void updateHeading(Function(List<JmlWrapperStruct>) updateFn) {
    updateFn(_heading ??= []);
  }

  bool hasHeading() => _heading != null;

  // "process" field.
  List<JmlWrapperStruct>? _process;
  List<JmlWrapperStruct> get process => _process ?? const [];
  set process(List<JmlWrapperStruct>? val) => _process = val;

  void updateProcess(Function(List<JmlWrapperStruct>) updateFn) {
    updateFn(_process ??= []);
  }

  bool hasProcess() => _process != null;

  // "purpose" field.
  List<JmlWrapperStruct>? _purpose;
  List<JmlWrapperStruct> get purpose => _purpose ?? const [];
  set purpose(List<JmlWrapperStruct>? val) => _purpose = val;

  void updatePurpose(Function(List<JmlWrapperStruct>) updateFn) {
    updateFn(_purpose ??= []);
  }

  bool hasPurpose() => _purpose != null;

  // "privacy" field.
  List<JmlWrapperStruct>? _privacy;
  List<JmlWrapperStruct> get privacy => _privacy ?? const [];
  set privacy(List<JmlWrapperStruct>? val) => _privacy = val;

  void updatePrivacy(Function(List<JmlWrapperStruct>) updateFn) {
    updateFn(_privacy ??= []);
  }

  bool hasPrivacy() => _privacy != null;

  static IntroductionDataStruct fromMap(Map<String, dynamic> data) =>
      IntroductionDataStruct(
        heading: getStructList(
          data['heading'],
          JmlWrapperStruct.fromMap,
        ),
        process: getStructList(
          data['process'],
          JmlWrapperStruct.fromMap,
        ),
        purpose: getStructList(
          data['purpose'],
          JmlWrapperStruct.fromMap,
        ),
        privacy: getStructList(
          data['privacy'],
          JmlWrapperStruct.fromMap,
        ),
      );

  static IntroductionDataStruct? maybeFromMap(dynamic data) => data is Map
      ? IntroductionDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'heading': _heading?.map((e) => e.toMap()).toList(),
        'process': _process?.map((e) => e.toMap()).toList(),
        'purpose': _purpose?.map((e) => e.toMap()).toList(),
        'privacy': _privacy?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'heading': serializeParam(
          _heading,
          ParamType.DataStruct,
          isList: true,
        ),
        'process': serializeParam(
          _process,
          ParamType.DataStruct,
          isList: true,
        ),
        'purpose': serializeParam(
          _purpose,
          ParamType.DataStruct,
          isList: true,
        ),
        'privacy': serializeParam(
          _privacy,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static IntroductionDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      IntroductionDataStruct(
        heading: deserializeStructParam<JmlWrapperStruct>(
          data['heading'],
          ParamType.DataStruct,
          true,
          structBuilder: JmlWrapperStruct.fromSerializableMap,
        ),
        process: deserializeStructParam<JmlWrapperStruct>(
          data['process'],
          ParamType.DataStruct,
          true,
          structBuilder: JmlWrapperStruct.fromSerializableMap,
        ),
        purpose: deserializeStructParam<JmlWrapperStruct>(
          data['purpose'],
          ParamType.DataStruct,
          true,
          structBuilder: JmlWrapperStruct.fromSerializableMap,
        ),
        privacy: deserializeStructParam<JmlWrapperStruct>(
          data['privacy'],
          ParamType.DataStruct,
          true,
          structBuilder: JmlWrapperStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'IntroductionDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is IntroductionDataStruct &&
        listEquality.equals(heading, other.heading) &&
        listEquality.equals(process, other.process) &&
        listEquality.equals(purpose, other.purpose) &&
        listEquality.equals(privacy, other.privacy);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([heading, process, purpose, privacy]);
}

IntroductionDataStruct createIntroductionDataStruct() =>
    IntroductionDataStruct();
