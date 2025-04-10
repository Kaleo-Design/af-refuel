// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssessmentTextStruct extends BaseStruct {
  AssessmentTextStruct({
    AssessmentCharactersStruct? characters,
  }) : _characters = characters;

  // "characters" field.
  AssessmentCharactersStruct? _characters;
  AssessmentCharactersStruct get characters =>
      _characters ?? AssessmentCharactersStruct();
  set characters(AssessmentCharactersStruct? val) => _characters = val;

  void updateCharacters(Function(AssessmentCharactersStruct) updateFn) {
    updateFn(_characters ??= AssessmentCharactersStruct());
  }

  bool hasCharacters() => _characters != null;

  static AssessmentTextStruct fromMap(Map<String, dynamic> data) =>
      AssessmentTextStruct(
        characters: data['characters'] is AssessmentCharactersStruct
            ? data['characters']
            : AssessmentCharactersStruct.maybeFromMap(data['characters']),
      );

  static AssessmentTextStruct? maybeFromMap(dynamic data) => data is Map
      ? AssessmentTextStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'characters': _characters?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'characters': serializeParam(
          _characters,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AssessmentTextStruct fromSerializableMap(Map<String, dynamic> data) =>
      AssessmentTextStruct(
        characters: deserializeStructParam(
          data['characters'],
          ParamType.DataStruct,
          false,
          structBuilder: AssessmentCharactersStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AssessmentTextStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssessmentTextStruct && characters == other.characters;
  }

  @override
  int get hashCode => const ListEquality().hash([characters]);
}

AssessmentTextStruct createAssessmentTextStruct({
  AssessmentCharactersStruct? characters,
}) =>
    AssessmentTextStruct(
      characters: characters ?? AssessmentCharactersStruct(),
    );
