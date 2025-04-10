// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GoalsStruct extends BaseStruct {
  GoalsStruct({
    String? name,
    int? currentProgressCount,
    int? goalNumber,
    TimeInterval? timeInterval,
    DateTime? createdAt,
    DateTime? lastTimeActive,
  })  : _name = name,
        _currentProgressCount = currentProgressCount,
        _goalNumber = goalNumber,
        _timeInterval = timeInterval,
        _createdAt = createdAt,
        _lastTimeActive = lastTimeActive;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "current_progress_count" field.
  int? _currentProgressCount;
  int get currentProgressCount => _currentProgressCount ?? 0;
  set currentProgressCount(int? val) => _currentProgressCount = val;

  void incrementCurrentProgressCount(int amount) =>
      currentProgressCount = currentProgressCount + amount;

  bool hasCurrentProgressCount() => _currentProgressCount != null;

  // "goal_number" field.
  int? _goalNumber;
  int get goalNumber => _goalNumber ?? 0;
  set goalNumber(int? val) => _goalNumber = val;

  void incrementGoalNumber(int amount) => goalNumber = goalNumber + amount;

  bool hasGoalNumber() => _goalNumber != null;

  // "time_interval" field.
  TimeInterval? _timeInterval;
  TimeInterval? get timeInterval => _timeInterval;
  set timeInterval(TimeInterval? val) => _timeInterval = val;

  bool hasTimeInterval() => _timeInterval != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "last_time_active" field.
  DateTime? _lastTimeActive;
  DateTime? get lastTimeActive => _lastTimeActive;
  set lastTimeActive(DateTime? val) => _lastTimeActive = val;

  bool hasLastTimeActive() => _lastTimeActive != null;

  static GoalsStruct fromMap(Map<String, dynamic> data) => GoalsStruct(
        name: data['name'] as String?,
        currentProgressCount: castToType<int>(data['current_progress_count']),
        goalNumber: castToType<int>(data['goal_number']),
        timeInterval: data['time_interval'] is TimeInterval
            ? data['time_interval']
            : deserializeEnum<TimeInterval>(data['time_interval']),
        createdAt: data['created_at'] as DateTime?,
        lastTimeActive: data['last_time_active'] as DateTime?,
      );

  static GoalsStruct? maybeFromMap(dynamic data) =>
      data is Map ? GoalsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'current_progress_count': _currentProgressCount,
        'goal_number': _goalNumber,
        'time_interval': _timeInterval?.serialize(),
        'created_at': _createdAt,
        'last_time_active': _lastTimeActive,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'current_progress_count': serializeParam(
          _currentProgressCount,
          ParamType.int,
        ),
        'goal_number': serializeParam(
          _goalNumber,
          ParamType.int,
        ),
        'time_interval': serializeParam(
          _timeInterval,
          ParamType.Enum,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'last_time_active': serializeParam(
          _lastTimeActive,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static GoalsStruct fromSerializableMap(Map<String, dynamic> data) =>
      GoalsStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        currentProgressCount: deserializeParam(
          data['current_progress_count'],
          ParamType.int,
          false,
        ),
        goalNumber: deserializeParam(
          data['goal_number'],
          ParamType.int,
          false,
        ),
        timeInterval: deserializeParam<TimeInterval>(
          data['time_interval'],
          ParamType.Enum,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
        lastTimeActive: deserializeParam(
          data['last_time_active'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'GoalsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GoalsStruct &&
        name == other.name &&
        currentProgressCount == other.currentProgressCount &&
        goalNumber == other.goalNumber &&
        timeInterval == other.timeInterval &&
        createdAt == other.createdAt &&
        lastTimeActive == other.lastTimeActive;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        currentProgressCount,
        goalNumber,
        timeInterval,
        createdAt,
        lastTimeActive
      ]);
}

GoalsStruct createGoalsStruct({
  String? name,
  int? currentProgressCount,
  int? goalNumber,
  TimeInterval? timeInterval,
  DateTime? createdAt,
  DateTime? lastTimeActive,
}) =>
    GoalsStruct(
      name: name,
      currentProgressCount: currentProgressCount,
      goalNumber: goalNumber,
      timeInterval: timeInterval,
      createdAt: createdAt,
      lastTimeActive: lastTimeActive,
    );
