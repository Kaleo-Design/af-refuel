// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PFTWorkoutStruct extends BaseStruct {
  PFTWorkoutStruct({
    DateTime? timeCreated,
    int? runTime,
    int? runScore,
    int? pushups,
    int? pushupScore,
    int? situps,
    int? situpScore,
  })  : _timeCreated = timeCreated,
        _runTime = runTime,
        _runScore = runScore,
        _pushups = pushups,
        _pushupScore = pushupScore,
        _situps = situps,
        _situpScore = situpScore;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  set timeCreated(DateTime? val) => _timeCreated = val;

  bool hasTimeCreated() => _timeCreated != null;

  // "run_time" field.
  int? _runTime;
  int get runTime => _runTime ?? 0;
  set runTime(int? val) => _runTime = val;

  void incrementRunTime(int amount) => runTime = runTime + amount;

  bool hasRunTime() => _runTime != null;

  // "run_score" field.
  int? _runScore;
  int get runScore => _runScore ?? 0;
  set runScore(int? val) => _runScore = val;

  void incrementRunScore(int amount) => runScore = runScore + amount;

  bool hasRunScore() => _runScore != null;

  // "pushups" field.
  int? _pushups;
  int get pushups => _pushups ?? 0;
  set pushups(int? val) => _pushups = val;

  void incrementPushups(int amount) => pushups = pushups + amount;

  bool hasPushups() => _pushups != null;

  // "pushup_score" field.
  int? _pushupScore;
  int get pushupScore => _pushupScore ?? 0;
  set pushupScore(int? val) => _pushupScore = val;

  void incrementPushupScore(int amount) => pushupScore = pushupScore + amount;

  bool hasPushupScore() => _pushupScore != null;

  // "situps" field.
  int? _situps;
  int get situps => _situps ?? 0;
  set situps(int? val) => _situps = val;

  void incrementSitups(int amount) => situps = situps + amount;

  bool hasSitups() => _situps != null;

  // "situp_score" field.
  int? _situpScore;
  int get situpScore => _situpScore ?? 0;
  set situpScore(int? val) => _situpScore = val;

  void incrementSitupScore(int amount) => situpScore = situpScore + amount;

  bool hasSitupScore() => _situpScore != null;

  static PFTWorkoutStruct fromMap(Map<String, dynamic> data) =>
      PFTWorkoutStruct(
        timeCreated: data['time_created'] as DateTime?,
        runTime: castToType<int>(data['run_time']),
        runScore: castToType<int>(data['run_score']),
        pushups: castToType<int>(data['pushups']),
        pushupScore: castToType<int>(data['pushup_score']),
        situps: castToType<int>(data['situps']),
        situpScore: castToType<int>(data['situp_score']),
      );

  static PFTWorkoutStruct? maybeFromMap(dynamic data) => data is Map
      ? PFTWorkoutStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'time_created': _timeCreated,
        'run_time': _runTime,
        'run_score': _runScore,
        'pushups': _pushups,
        'pushup_score': _pushupScore,
        'situps': _situps,
        'situp_score': _situpScore,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'time_created': serializeParam(
          _timeCreated,
          ParamType.DateTime,
        ),
        'run_time': serializeParam(
          _runTime,
          ParamType.int,
        ),
        'run_score': serializeParam(
          _runScore,
          ParamType.int,
        ),
        'pushups': serializeParam(
          _pushups,
          ParamType.int,
        ),
        'pushup_score': serializeParam(
          _pushupScore,
          ParamType.int,
        ),
        'situps': serializeParam(
          _situps,
          ParamType.int,
        ),
        'situp_score': serializeParam(
          _situpScore,
          ParamType.int,
        ),
      }.withoutNulls;

  static PFTWorkoutStruct fromSerializableMap(Map<String, dynamic> data) =>
      PFTWorkoutStruct(
        timeCreated: deserializeParam(
          data['time_created'],
          ParamType.DateTime,
          false,
        ),
        runTime: deserializeParam(
          data['run_time'],
          ParamType.int,
          false,
        ),
        runScore: deserializeParam(
          data['run_score'],
          ParamType.int,
          false,
        ),
        pushups: deserializeParam(
          data['pushups'],
          ParamType.int,
          false,
        ),
        pushupScore: deserializeParam(
          data['pushup_score'],
          ParamType.int,
          false,
        ),
        situps: deserializeParam(
          data['situps'],
          ParamType.int,
          false,
        ),
        situpScore: deserializeParam(
          data['situp_score'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PFTWorkoutStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PFTWorkoutStruct &&
        timeCreated == other.timeCreated &&
        runTime == other.runTime &&
        runScore == other.runScore &&
        pushups == other.pushups &&
        pushupScore == other.pushupScore &&
        situps == other.situps &&
        situpScore == other.situpScore;
  }

  @override
  int get hashCode => const ListEquality().hash([
        timeCreated,
        runTime,
        runScore,
        pushups,
        pushupScore,
        situps,
        situpScore
      ]);
}

PFTWorkoutStruct createPFTWorkoutStruct({
  DateTime? timeCreated,
  int? runTime,
  int? runScore,
  int? pushups,
  int? pushupScore,
  int? situps,
  int? situpScore,
}) =>
    PFTWorkoutStruct(
      timeCreated: timeCreated,
      runTime: runTime,
      runScore: runScore,
      pushups: pushups,
      pushupScore: pushupScore,
      situps: situps,
      situpScore: situpScore,
    );
