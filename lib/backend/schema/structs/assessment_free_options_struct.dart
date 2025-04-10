// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssessmentFreeOptionsStruct extends BaseStruct {
  AssessmentFreeOptionsStruct({
    AssessmentTextStruct? text,
    AssessmentAudioStruct? audio,
  })  : _text = text,
        _audio = audio;

  // "text" field.
  AssessmentTextStruct? _text;
  AssessmentTextStruct get text => _text ?? AssessmentTextStruct();
  set text(AssessmentTextStruct? val) => _text = val;

  void updateText(Function(AssessmentTextStruct) updateFn) {
    updateFn(_text ??= AssessmentTextStruct());
  }

  bool hasText() => _text != null;

  // "audio" field.
  AssessmentAudioStruct? _audio;
  AssessmentAudioStruct get audio => _audio ?? AssessmentAudioStruct();
  set audio(AssessmentAudioStruct? val) => _audio = val;

  void updateAudio(Function(AssessmentAudioStruct) updateFn) {
    updateFn(_audio ??= AssessmentAudioStruct());
  }

  bool hasAudio() => _audio != null;

  static AssessmentFreeOptionsStruct fromMap(Map<String, dynamic> data) =>
      AssessmentFreeOptionsStruct(
        text: data['text'] is AssessmentTextStruct
            ? data['text']
            : AssessmentTextStruct.maybeFromMap(data['text']),
        audio: data['audio'] is AssessmentAudioStruct
            ? data['audio']
            : AssessmentAudioStruct.maybeFromMap(data['audio']),
      );

  static AssessmentFreeOptionsStruct? maybeFromMap(dynamic data) => data is Map
      ? AssessmentFreeOptionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'text': _text?.toMap(),
        'audio': _audio?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'text': serializeParam(
          _text,
          ParamType.DataStruct,
        ),
        'audio': serializeParam(
          _audio,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AssessmentFreeOptionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AssessmentFreeOptionsStruct(
        text: deserializeStructParam(
          data['text'],
          ParamType.DataStruct,
          false,
          structBuilder: AssessmentTextStruct.fromSerializableMap,
        ),
        audio: deserializeStructParam(
          data['audio'],
          ParamType.DataStruct,
          false,
          structBuilder: AssessmentAudioStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AssessmentFreeOptionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssessmentFreeOptionsStruct &&
        text == other.text &&
        audio == other.audio;
  }

  @override
  int get hashCode => const ListEquality().hash([text, audio]);
}

AssessmentFreeOptionsStruct createAssessmentFreeOptionsStruct({
  AssessmentTextStruct? text,
  AssessmentAudioStruct? audio,
}) =>
    AssessmentFreeOptionsStruct(
      text: text ?? AssessmentTextStruct(),
      audio: audio ?? AssessmentAudioStruct(),
    );
