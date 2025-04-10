// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeditationDataStruct extends BaseStruct {
  MeditationDataStruct({
    String? content,
    int? duration,
    double? speed,
  })  : _content = content,
        _duration = duration,
        _speed = speed;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  set duration(int? val) => _duration = val;

  void incrementDuration(int amount) => duration = duration + amount;

  bool hasDuration() => _duration != null;

  // "speed" field.
  double? _speed;
  double get speed => _speed ?? 0.0;
  set speed(double? val) => _speed = val;

  void incrementSpeed(double amount) => speed = speed + amount;

  bool hasSpeed() => _speed != null;

  static MeditationDataStruct fromMap(Map<String, dynamic> data) =>
      MeditationDataStruct(
        content: data['content'] as String?,
        duration: castToType<int>(data['duration']),
        speed: castToType<double>(data['speed']),
      );

  static MeditationDataStruct? maybeFromMap(dynamic data) => data is Map
      ? MeditationDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'content': _content,
        'duration': _duration,
        'speed': _speed,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'duration': serializeParam(
          _duration,
          ParamType.int,
        ),
        'speed': serializeParam(
          _speed,
          ParamType.double,
        ),
      }.withoutNulls;

  static MeditationDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      MeditationDataStruct(
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        duration: deserializeParam(
          data['duration'],
          ParamType.int,
          false,
        ),
        speed: deserializeParam(
          data['speed'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'MeditationDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MeditationDataStruct &&
        content == other.content &&
        duration == other.duration &&
        speed == other.speed;
  }

  @override
  int get hashCode => const ListEquality().hash([content, duration, speed]);
}

MeditationDataStruct createMeditationDataStruct({
  String? content,
  int? duration,
  double? speed,
}) =>
    MeditationDataStruct(
      content: content,
      duration: duration,
      speed: speed,
    );
