// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssessmentAudioStruct extends BaseStruct {
  AssessmentAudioStruct({
    AssessmentTimeStruct? time,
  }) : _time = time;

  // "time" field.
  AssessmentTimeStruct? _time;
  AssessmentTimeStruct get time => _time ?? AssessmentTimeStruct();
  set time(AssessmentTimeStruct? val) => _time = val;

  void updateTime(Function(AssessmentTimeStruct) updateFn) {
    updateFn(_time ??= AssessmentTimeStruct());
  }

  bool hasTime() => _time != null;

  static AssessmentAudioStruct fromMap(Map<String, dynamic> data) =>
      AssessmentAudioStruct(
        time: data['time'] is AssessmentTimeStruct
            ? data['time']
            : AssessmentTimeStruct.maybeFromMap(data['time']),
      );

  static AssessmentAudioStruct? maybeFromMap(dynamic data) => data is Map
      ? AssessmentAudioStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'time': _time?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'time': serializeParam(
          _time,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AssessmentAudioStruct fromSerializableMap(Map<String, dynamic> data) =>
      AssessmentAudioStruct(
        time: deserializeStructParam(
          data['time'],
          ParamType.DataStruct,
          false,
          structBuilder: AssessmentTimeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AssessmentAudioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssessmentAudioStruct && time == other.time;
  }

  @override
  int get hashCode => const ListEquality().hash([time]);
}

AssessmentAudioStruct createAssessmentAudioStruct({
  AssessmentTimeStruct? time,
}) =>
    AssessmentAudioStruct(
      time: time ?? AssessmentTimeStruct(),
    );
