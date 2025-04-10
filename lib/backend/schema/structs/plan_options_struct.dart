// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlanOptionsStruct extends BaseStruct {
  PlanOptionsStruct({
    String? name,
    String? description,
    DateTime? lastUsed,
    PillerStruct? pillar,
    bool? selected,
  })  : _name = name,
        _description = description,
        _lastUsed = lastUsed,
        _pillar = pillar,
        _selected = selected;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "last_used" field.
  DateTime? _lastUsed;
  DateTime? get lastUsed => _lastUsed;
  set lastUsed(DateTime? val) => _lastUsed = val;

  bool hasLastUsed() => _lastUsed != null;

  // "pillar" field.
  PillerStruct? _pillar;
  PillerStruct get pillar => _pillar ?? PillerStruct();
  set pillar(PillerStruct? val) => _pillar = val;

  void updatePillar(Function(PillerStruct) updateFn) {
    updateFn(_pillar ??= PillerStruct());
  }

  bool hasPillar() => _pillar != null;

  // "selected" field.
  bool? _selected;
  bool get selected => _selected ?? false;
  set selected(bool? val) => _selected = val;

  bool hasSelected() => _selected != null;

  static PlanOptionsStruct fromMap(Map<String, dynamic> data) =>
      PlanOptionsStruct(
        name: data['name'] as String?,
        description: data['description'] as String?,
        lastUsed: data['last_used'] as DateTime?,
        pillar: data['pillar'] is PillerStruct
            ? data['pillar']
            : PillerStruct.maybeFromMap(data['pillar']),
        selected: data['selected'] as bool?,
      );

  static PlanOptionsStruct? maybeFromMap(dynamic data) => data is Map
      ? PlanOptionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'description': _description,
        'last_used': _lastUsed,
        'pillar': _pillar?.toMap(),
        'selected': _selected,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'last_used': serializeParam(
          _lastUsed,
          ParamType.DateTime,
        ),
        'pillar': serializeParam(
          _pillar,
          ParamType.DataStruct,
        ),
        'selected': serializeParam(
          _selected,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PlanOptionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlanOptionsStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        lastUsed: deserializeParam(
          data['last_used'],
          ParamType.DateTime,
          false,
        ),
        pillar: deserializeStructParam(
          data['pillar'],
          ParamType.DataStruct,
          false,
          structBuilder: PillerStruct.fromSerializableMap,
        ),
        selected: deserializeParam(
          data['selected'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PlanOptionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlanOptionsStruct &&
        name == other.name &&
        description == other.description &&
        lastUsed == other.lastUsed &&
        pillar == other.pillar &&
        selected == other.selected;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, description, lastUsed, pillar, selected]);
}

PlanOptionsStruct createPlanOptionsStruct({
  String? name,
  String? description,
  DateTime? lastUsed,
  PillerStruct? pillar,
  bool? selected,
}) =>
    PlanOptionsStruct(
      name: name,
      description: description,
      lastUsed: lastUsed,
      pillar: pillar ?? PillerStruct(),
      selected: selected,
    );
