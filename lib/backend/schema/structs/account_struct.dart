// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountStruct extends BaseStruct {
  AccountStruct({
    String? email,
    String? firstName,
    String? lastName,
    String? token,
    UnitStruct? unit,
    DataFieldsSimpleStruct? deploymentStatus,
    DataFieldsSimpleStruct? currentRank,
    OnboardingDataStruct? onboardingData,
  })  : _email = email,
        _firstName = firstName,
        _lastName = lastName,
        _token = token,
        _unit = unit,
        _deploymentStatus = deploymentStatus,
        _currentRank = currentRank,
        _onboardingData = onboardingData;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

  // "unit" field.
  UnitStruct? _unit;
  UnitStruct get unit => _unit ?? UnitStruct();
  set unit(UnitStruct? val) => _unit = val;

  void updateUnit(Function(UnitStruct) updateFn) {
    updateFn(_unit ??= UnitStruct());
  }

  bool hasUnit() => _unit != null;

  // "deployment_status" field.
  DataFieldsSimpleStruct? _deploymentStatus;
  DataFieldsSimpleStruct get deploymentStatus =>
      _deploymentStatus ?? DataFieldsSimpleStruct();
  set deploymentStatus(DataFieldsSimpleStruct? val) => _deploymentStatus = val;

  void updateDeploymentStatus(Function(DataFieldsSimpleStruct) updateFn) {
    updateFn(_deploymentStatus ??= DataFieldsSimpleStruct());
  }

  bool hasDeploymentStatus() => _deploymentStatus != null;

  // "current_rank" field.
  DataFieldsSimpleStruct? _currentRank;
  DataFieldsSimpleStruct get currentRank =>
      _currentRank ?? DataFieldsSimpleStruct();
  set currentRank(DataFieldsSimpleStruct? val) => _currentRank = val;

  void updateCurrentRank(Function(DataFieldsSimpleStruct) updateFn) {
    updateFn(_currentRank ??= DataFieldsSimpleStruct());
  }

  bool hasCurrentRank() => _currentRank != null;

  // "onboarding_data" field.
  OnboardingDataStruct? _onboardingData;
  OnboardingDataStruct get onboardingData =>
      _onboardingData ?? OnboardingDataStruct();
  set onboardingData(OnboardingDataStruct? val) => _onboardingData = val;

  void updateOnboardingData(Function(OnboardingDataStruct) updateFn) {
    updateFn(_onboardingData ??= OnboardingDataStruct());
  }

  bool hasOnboardingData() => _onboardingData != null;

  static AccountStruct fromMap(Map<String, dynamic> data) => AccountStruct(
        email: data['email'] as String?,
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        token: data['token'] as String?,
        unit: data['unit'] is UnitStruct
            ? data['unit']
            : UnitStruct.maybeFromMap(data['unit']),
        deploymentStatus: data['deployment_status'] is DataFieldsSimpleStruct
            ? data['deployment_status']
            : DataFieldsSimpleStruct.maybeFromMap(data['deployment_status']),
        currentRank: data['current_rank'] is DataFieldsSimpleStruct
            ? data['current_rank']
            : DataFieldsSimpleStruct.maybeFromMap(data['current_rank']),
        onboardingData: data['onboarding_data'] is OnboardingDataStruct
            ? data['onboarding_data']
            : OnboardingDataStruct.maybeFromMap(data['onboarding_data']),
      );

  static AccountStruct? maybeFromMap(dynamic data) =>
      data is Map ? AccountStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'first_name': _firstName,
        'last_name': _lastName,
        'token': _token,
        'unit': _unit?.toMap(),
        'deployment_status': _deploymentStatus?.toMap(),
        'current_rank': _currentRank?.toMap(),
        'onboarding_data': _onboardingData?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.DataStruct,
        ),
        'deployment_status': serializeParam(
          _deploymentStatus,
          ParamType.DataStruct,
        ),
        'current_rank': serializeParam(
          _currentRank,
          ParamType.DataStruct,
        ),
        'onboarding_data': serializeParam(
          _onboardingData,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AccountStruct fromSerializableMap(Map<String, dynamic> data) =>
      AccountStruct(
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        unit: deserializeStructParam(
          data['unit'],
          ParamType.DataStruct,
          false,
          structBuilder: UnitStruct.fromSerializableMap,
        ),
        deploymentStatus: deserializeStructParam(
          data['deployment_status'],
          ParamType.DataStruct,
          false,
          structBuilder: DataFieldsSimpleStruct.fromSerializableMap,
        ),
        currentRank: deserializeStructParam(
          data['current_rank'],
          ParamType.DataStruct,
          false,
          structBuilder: DataFieldsSimpleStruct.fromSerializableMap,
        ),
        onboardingData: deserializeStructParam(
          data['onboarding_data'],
          ParamType.DataStruct,
          false,
          structBuilder: OnboardingDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AccountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccountStruct &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        token == other.token &&
        unit == other.unit &&
        deploymentStatus == other.deploymentStatus &&
        currentRank == other.currentRank &&
        onboardingData == other.onboardingData;
  }

  @override
  int get hashCode => const ListEquality().hash([
        email,
        firstName,
        lastName,
        token,
        unit,
        deploymentStatus,
        currentRank,
        onboardingData
      ]);
}

AccountStruct createAccountStruct({
  String? email,
  String? firstName,
  String? lastName,
  String? token,
  UnitStruct? unit,
  DataFieldsSimpleStruct? deploymentStatus,
  DataFieldsSimpleStruct? currentRank,
  OnboardingDataStruct? onboardingData,
}) =>
    AccountStruct(
      email: email,
      firstName: firstName,
      lastName: lastName,
      token: token,
      unit: unit ?? UnitStruct(),
      deploymentStatus: deploymentStatus ?? DataFieldsSimpleStruct(),
      currentRank: currentRank ?? DataFieldsSimpleStruct(),
      onboardingData: onboardingData ?? OnboardingDataStruct(),
    );
