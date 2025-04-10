// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// A simple data type to keep track of the onboarding data for each user.
class OnboardingDataStruct extends BaseStruct {
  OnboardingDataStruct({
    String? name,
    String? gender,
    double? age,
    String? location,
    String? squadron,
    DataFieldsSimpleStruct? militaryRank,
    DataFieldsSimpleStruct? deploymentStatus,
    String? userRace,
    GoalsStruct? fitnessGoal,
    GoalsStruct? spiritualGoal,
    int? currentStep,
  })  : _name = name,
        _gender = gender,
        _age = age,
        _location = location,
        _squadron = squadron,
        _militaryRank = militaryRank,
        _deploymentStatus = deploymentStatus,
        _userRace = userRace,
        _fitnessGoal = fitnessGoal,
        _spiritualGoal = spiritualGoal,
        _currentStep = currentStep;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "age" field.
  double? _age;
  double get age => _age ?? 18.0;
  set age(double? val) => _age = val;

  void incrementAge(double amount) => age = age + amount;

  bool hasAge() => _age != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;

  bool hasLocation() => _location != null;

  // "squadron" field.
  String? _squadron;
  String get squadron => _squadron ?? '';
  set squadron(String? val) => _squadron = val;

  bool hasSquadron() => _squadron != null;

  // "military_rank" field.
  DataFieldsSimpleStruct? _militaryRank;
  DataFieldsSimpleStruct get militaryRank =>
      _militaryRank ?? DataFieldsSimpleStruct();
  set militaryRank(DataFieldsSimpleStruct? val) => _militaryRank = val;

  void updateMilitaryRank(Function(DataFieldsSimpleStruct) updateFn) {
    updateFn(_militaryRank ??= DataFieldsSimpleStruct());
  }

  bool hasMilitaryRank() => _militaryRank != null;

  // "deployment_status" field.
  DataFieldsSimpleStruct? _deploymentStatus;
  DataFieldsSimpleStruct get deploymentStatus =>
      _deploymentStatus ?? DataFieldsSimpleStruct();
  set deploymentStatus(DataFieldsSimpleStruct? val) => _deploymentStatus = val;

  void updateDeploymentStatus(Function(DataFieldsSimpleStruct) updateFn) {
    updateFn(_deploymentStatus ??= DataFieldsSimpleStruct());
  }

  bool hasDeploymentStatus() => _deploymentStatus != null;

  // "user_race" field.
  String? _userRace;
  String get userRace => _userRace ?? '';
  set userRace(String? val) => _userRace = val;

  bool hasUserRace() => _userRace != null;

  // "fitness_goal" field.
  GoalsStruct? _fitnessGoal;
  GoalsStruct get fitnessGoal => _fitnessGoal ?? GoalsStruct();
  set fitnessGoal(GoalsStruct? val) => _fitnessGoal = val;

  void updateFitnessGoal(Function(GoalsStruct) updateFn) {
    updateFn(_fitnessGoal ??= GoalsStruct());
  }

  bool hasFitnessGoal() => _fitnessGoal != null;

  // "spiritual_goal" field.
  GoalsStruct? _spiritualGoal;
  GoalsStruct get spiritualGoal => _spiritualGoal ?? GoalsStruct();
  set spiritualGoal(GoalsStruct? val) => _spiritualGoal = val;

  void updateSpiritualGoal(Function(GoalsStruct) updateFn) {
    updateFn(_spiritualGoal ??= GoalsStruct());
  }

  bool hasSpiritualGoal() => _spiritualGoal != null;

  // "current_step" field.
  int? _currentStep;
  int get currentStep => _currentStep ?? 0;
  set currentStep(int? val) => _currentStep = val;

  void incrementCurrentStep(int amount) => currentStep = currentStep + amount;

  bool hasCurrentStep() => _currentStep != null;

  static OnboardingDataStruct fromMap(Map<String, dynamic> data) =>
      OnboardingDataStruct(
        name: data['name'] as String?,
        gender: data['gender'] as String?,
        age: castToType<double>(data['age']),
        location: data['location'] as String?,
        squadron: data['squadron'] as String?,
        militaryRank: data['military_rank'] is DataFieldsSimpleStruct
            ? data['military_rank']
            : DataFieldsSimpleStruct.maybeFromMap(data['military_rank']),
        deploymentStatus: data['deployment_status'] is DataFieldsSimpleStruct
            ? data['deployment_status']
            : DataFieldsSimpleStruct.maybeFromMap(data['deployment_status']),
        userRace: data['user_race'] as String?,
        fitnessGoal: data['fitness_goal'] is GoalsStruct
            ? data['fitness_goal']
            : GoalsStruct.maybeFromMap(data['fitness_goal']),
        spiritualGoal: data['spiritual_goal'] is GoalsStruct
            ? data['spiritual_goal']
            : GoalsStruct.maybeFromMap(data['spiritual_goal']),
        currentStep: castToType<int>(data['current_step']),
      );

  static OnboardingDataStruct? maybeFromMap(dynamic data) => data is Map
      ? OnboardingDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'gender': _gender,
        'age': _age,
        'location': _location,
        'squadron': _squadron,
        'military_rank': _militaryRank?.toMap(),
        'deployment_status': _deploymentStatus?.toMap(),
        'user_race': _userRace,
        'fitness_goal': _fitnessGoal?.toMap(),
        'spiritual_goal': _spiritualGoal?.toMap(),
        'current_step': _currentStep,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'age': serializeParam(
          _age,
          ParamType.double,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'squadron': serializeParam(
          _squadron,
          ParamType.String,
        ),
        'military_rank': serializeParam(
          _militaryRank,
          ParamType.DataStruct,
        ),
        'deployment_status': serializeParam(
          _deploymentStatus,
          ParamType.DataStruct,
        ),
        'user_race': serializeParam(
          _userRace,
          ParamType.String,
        ),
        'fitness_goal': serializeParam(
          _fitnessGoal,
          ParamType.DataStruct,
        ),
        'spiritual_goal': serializeParam(
          _spiritualGoal,
          ParamType.DataStruct,
        ),
        'current_step': serializeParam(
          _currentStep,
          ParamType.int,
        ),
      }.withoutNulls;

  static OnboardingDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      OnboardingDataStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        age: deserializeParam(
          data['age'],
          ParamType.double,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        squadron: deserializeParam(
          data['squadron'],
          ParamType.String,
          false,
        ),
        militaryRank: deserializeStructParam(
          data['military_rank'],
          ParamType.DataStruct,
          false,
          structBuilder: DataFieldsSimpleStruct.fromSerializableMap,
        ),
        deploymentStatus: deserializeStructParam(
          data['deployment_status'],
          ParamType.DataStruct,
          false,
          structBuilder: DataFieldsSimpleStruct.fromSerializableMap,
        ),
        userRace: deserializeParam(
          data['user_race'],
          ParamType.String,
          false,
        ),
        fitnessGoal: deserializeStructParam(
          data['fitness_goal'],
          ParamType.DataStruct,
          false,
          structBuilder: GoalsStruct.fromSerializableMap,
        ),
        spiritualGoal: deserializeStructParam(
          data['spiritual_goal'],
          ParamType.DataStruct,
          false,
          structBuilder: GoalsStruct.fromSerializableMap,
        ),
        currentStep: deserializeParam(
          data['current_step'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'OnboardingDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OnboardingDataStruct &&
        name == other.name &&
        gender == other.gender &&
        age == other.age &&
        location == other.location &&
        squadron == other.squadron &&
        militaryRank == other.militaryRank &&
        deploymentStatus == other.deploymentStatus &&
        userRace == other.userRace &&
        fitnessGoal == other.fitnessGoal &&
        spiritualGoal == other.spiritualGoal &&
        currentStep == other.currentStep;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        gender,
        age,
        location,
        squadron,
        militaryRank,
        deploymentStatus,
        userRace,
        fitnessGoal,
        spiritualGoal,
        currentStep
      ]);
}

OnboardingDataStruct createOnboardingDataStruct({
  String? name,
  String? gender,
  double? age,
  String? location,
  String? squadron,
  DataFieldsSimpleStruct? militaryRank,
  DataFieldsSimpleStruct? deploymentStatus,
  String? userRace,
  GoalsStruct? fitnessGoal,
  GoalsStruct? spiritualGoal,
  int? currentStep,
}) =>
    OnboardingDataStruct(
      name: name,
      gender: gender,
      age: age,
      location: location,
      squadron: squadron,
      militaryRank: militaryRank ?? DataFieldsSimpleStruct(),
      deploymentStatus: deploymentStatus ?? DataFieldsSimpleStruct(),
      userRace: userRace,
      fitnessGoal: fitnessGoal ?? GoalsStruct(),
      spiritualGoal: spiritualGoal ?? GoalsStruct(),
      currentStep: currentStep,
    );
