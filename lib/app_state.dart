import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _selectedOptions = prefs
              .getStringList('ff_selectedOptions')
              ?.map((x) {
                try {
                  return PlanOptionsStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _selectedOptions;
    });
    _safeInit(() {
      _planOptions = prefs
              .getStringList('ff_planOptions')
              ?.map((x) {
                try {
                  return PlanOptionsStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _planOptions;
    });
    _safeInit(() {
      _currentMood = prefs.containsKey('ff_currentMood')
          ? deserializeEnum<CurrentMood>(prefs.getString('ff_currentMood'))
          : _currentMood;
    });
    _safeInit(() {
      _chartValue = prefs
              .getStringList('ff_chartValue')
              ?.map((x) {
                try {
                  return ChartActivityStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _chartValue;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_selectedPillar')) {
        try {
          final serializedData = prefs.getString('ff_selectedPillar') ?? '{}';
          _selectedPillar =
              PillerStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _pillars = prefs
              .getStringList('ff_pillars')
              ?.map((x) {
                try {
                  return PillerStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _pillars;
    });
    _safeInit(() {
      _demoMeditation = prefs
              .getStringList('ff_demoMeditation')
              ?.map((x) {
                try {
                  return MeditationDataStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _demoMeditation;
    });
    _safeInit(() {
      _airforceRanks = prefs
              .getStringList('ff_airforceRanks')
              ?.map((x) {
                try {
                  return DataFieldsSimpleStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _airforceRanks;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_selectedRank')) {
        try {
          final serializedData = prefs.getString('ff_selectedRank') ?? '{}';
          _selectedRank = DataFieldsSimpleStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_assessmentDataHolder')) {
        try {
          final serializedData =
              prefs.getString('ff_assessmentDataHolder') ?? '{}';
          _assessmentDataHolder =
              AssessmentInfoWrapperStruct.fromSerializableMap(
                  jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _deploymentOptions = prefs
              .getStringList('ff_deploymentOptions')
              ?.map((x) {
                try {
                  return DataFieldsSimpleStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _deploymentOptions;
    });
    _safeInit(() {
      _dummyRunningData = prefs
              .getStringList('ff_dummyRunningData')
              ?.map(double.parse)
              .toList() ??
          _dummyRunningData;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_onboardingData')) {
        try {
          final serializedData = prefs.getString('ff_onboardingData') ?? '{}';
          _onboardingData = OnboardingDataStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _workout = prefs.getStringList('ff_workout') ?? _workout;
    });
    _safeInit(() {
      _workoutAreas = prefs.getStringList('ff_workoutAreas') ?? _workoutAreas;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<PlanOptionsStruct> _selectedOptions = [];
  List<PlanOptionsStruct> get selectedOptions => _selectedOptions;
  set selectedOptions(List<PlanOptionsStruct> value) {
    _selectedOptions = value;
    prefs.setStringList(
        'ff_selectedOptions', value.map((x) => x.serialize()).toList());
  }

  void addToSelectedOptions(PlanOptionsStruct value) {
    selectedOptions.add(value);
    prefs.setStringList('ff_selectedOptions',
        _selectedOptions.map((x) => x.serialize()).toList());
  }

  void removeFromSelectedOptions(PlanOptionsStruct value) {
    selectedOptions.remove(value);
    prefs.setStringList('ff_selectedOptions',
        _selectedOptions.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSelectedOptions(int index) {
    selectedOptions.removeAt(index);
    prefs.setStringList('ff_selectedOptions',
        _selectedOptions.map((x) => x.serialize()).toList());
  }

  void updateSelectedOptionsAtIndex(
    int index,
    PlanOptionsStruct Function(PlanOptionsStruct) updateFn,
  ) {
    selectedOptions[index] = updateFn(_selectedOptions[index]);
    prefs.setStringList('ff_selectedOptions',
        _selectedOptions.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSelectedOptions(int index, PlanOptionsStruct value) {
    selectedOptions.insert(index, value);
    prefs.setStringList('ff_selectedOptions',
        _selectedOptions.map((x) => x.serialize()).toList());
  }

  List<PlanOptionsStruct> _planOptions = [
    PlanOptionsStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Self Care\",\"description\":\"Incorporates lighter, soothing tasks like mindfulness, journaling, or gratitude prompts.\",\"last_used\":\"1739217854528\",\"pillar\":\"{\\\"primary_color\\\":\\\"#007aff\\\",\\\"accent_1\\\":\\\"#007aff4c\\\",\\\"pillar\\\":\\\"Mental\\\"}\",\"selected\":\"false\"}')),
    PlanOptionsStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Simplify my tasks\",\"description\":\"Reduces complexity by surfacing smaller, quicker-to-complete actions\",\"last_used\":\"1739217898307\",\"pillar\":\"{\\\"primary_color\\\":\\\"#ff9501\\\",\\\"accent_1\\\":\\\"#ff95014d\\\",\\\"pillar\\\":\\\"General\\\"}\",\"selected\":\"false\"}')),
    PlanOptionsStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Boost my energy\",\"description\":\"Adds movement, exercise, or invigorating activities to the lineup\",\"last_used\":\"1739217935302\",\"pillar\":\"{\\\"primary_color\\\":\\\"#03ce9f\\\",\\\"accent_1\\\":\\\"#04c7be4d\\\",\\\"pillar\\\":\\\"Fitness\\\"}\",\"selected\":\"false\"}')),
    PlanOptionsStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Inspire me\",\"description\":\"Surfaces creative prompts, motivational quotes, or exploratory activities\",\"last_used\":\"1739217964220\",\"pillar\":\"{\\\"primary_color\\\":\\\"#007aff\\\",\\\"accent_1\\\":\\\"#007aff4c\\\",\\\"pillar\\\":\\\"Mental\\\"}\",\"selected\":\"false\"}')),
    PlanOptionsStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Focus on work\",\"description\":\"Emphasizes productivity-oriented tasks to help you tackle your to-dos\",\"last_used\":\"1739218004809\",\"pillar\":\"{\\\"primary_color\\\":\\\"#6a56b3\\\",\\\"accent_1\\\":\\\"#6a56b34d\\\",\\\"pillar\\\":\\\"Mental\\\"}\",\"selected\":\"false\"}'))
  ];
  List<PlanOptionsStruct> get planOptions => _planOptions;
  set planOptions(List<PlanOptionsStruct> value) {
    _planOptions = value;
    prefs.setStringList(
        'ff_planOptions', value.map((x) => x.serialize()).toList());
  }

  void addToPlanOptions(PlanOptionsStruct value) {
    planOptions.add(value);
    prefs.setStringList(
        'ff_planOptions', _planOptions.map((x) => x.serialize()).toList());
  }

  void removeFromPlanOptions(PlanOptionsStruct value) {
    planOptions.remove(value);
    prefs.setStringList(
        'ff_planOptions', _planOptions.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPlanOptions(int index) {
    planOptions.removeAt(index);
    prefs.setStringList(
        'ff_planOptions', _planOptions.map((x) => x.serialize()).toList());
  }

  void updatePlanOptionsAtIndex(
    int index,
    PlanOptionsStruct Function(PlanOptionsStruct) updateFn,
  ) {
    planOptions[index] = updateFn(_planOptions[index]);
    prefs.setStringList(
        'ff_planOptions', _planOptions.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPlanOptions(int index, PlanOptionsStruct value) {
    planOptions.insert(index, value);
    prefs.setStringList(
        'ff_planOptions', _planOptions.map((x) => x.serialize()).toList());
  }

  CurrentMood? _currentMood;
  CurrentMood? get currentMood => _currentMood;
  set currentMood(CurrentMood? value) {
    _currentMood = value;
    value != null
        ? prefs.setString('ff_currentMood', value.serialize())
        : prefs.remove('ff_currentMood');
  }

  List<ChartActivityStruct> _chartValue = [
    ChartActivityStruct.fromSerializableMap(
        jsonDecode('{\"index\":\"0\",\"value\":\"502.0\"}')),
    ChartActivityStruct.fromSerializableMap(
        jsonDecode('{\"index\":\"1\",\"value\":\"392.0\"}')),
    ChartActivityStruct.fromSerializableMap(
        jsonDecode('{\"index\":\"2\",\"value\":\"595.0\"}')),
    ChartActivityStruct.fromSerializableMap(
        jsonDecode('{\"index\":\"3\",\"value\":\"349.0\"}')),
    ChartActivityStruct.fromSerializableMap(
        jsonDecode('{\"index\":\"4\",\"value\":\"659.0\"}')),
    ChartActivityStruct.fromSerializableMap(
        jsonDecode('{\"index\":\"5\",\"value\":\"494.0\"}')),
    ChartActivityStruct.fromSerializableMap(
        jsonDecode('{\"index\":\"6\",\"value\":\"592.0\"}'))
  ];
  List<ChartActivityStruct> get chartValue => _chartValue;
  set chartValue(List<ChartActivityStruct> value) {
    _chartValue = value;
    prefs.setStringList(
        'ff_chartValue', value.map((x) => x.serialize()).toList());
  }

  void addToChartValue(ChartActivityStruct value) {
    chartValue.add(value);
    prefs.setStringList(
        'ff_chartValue', _chartValue.map((x) => x.serialize()).toList());
  }

  void removeFromChartValue(ChartActivityStruct value) {
    chartValue.remove(value);
    prefs.setStringList(
        'ff_chartValue', _chartValue.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromChartValue(int index) {
    chartValue.removeAt(index);
    prefs.setStringList(
        'ff_chartValue', _chartValue.map((x) => x.serialize()).toList());
  }

  void updateChartValueAtIndex(
    int index,
    ChartActivityStruct Function(ChartActivityStruct) updateFn,
  ) {
    chartValue[index] = updateFn(_chartValue[index]);
    prefs.setStringList(
        'ff_chartValue', _chartValue.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInChartValue(int index, ChartActivityStruct value) {
    chartValue.insert(index, value);
    prefs.setStringList(
        'ff_chartValue', _chartValue.map((x) => x.serialize()).toList());
  }

  PillerStruct _selectedPillar = PillerStruct.fromSerializableMap(jsonDecode(
      '{\"primary_color\":\"#6a56b3\",\"accent_1\":\"#6a56b34d\",\"pillar\":\"Physical\"}'));
  PillerStruct get selectedPillar => _selectedPillar;
  set selectedPillar(PillerStruct value) {
    _selectedPillar = value;
    prefs.setString('ff_selectedPillar', value.serialize());
  }

  void updateSelectedPillarStruct(Function(PillerStruct) updateFn) {
    updateFn(_selectedPillar);
    prefs.setString('ff_selectedPillar', _selectedPillar.serialize());
  }

  /// This state allows us to keep track of the 5 core pillars in the app.
  List<PillerStruct> _pillars = [
    PillerStruct.fromSerializableMap(jsonDecode(
        '{\"primary_color\":\"#007aff\",\"accent_1\":\"#007aff4c\",\"pillar\":\"Sleep\",\"piller_breakdown\":\"15.0\"}')),
    PillerStruct.fromSerializableMap(jsonDecode(
        '{\"primary_color\":\"#03ce9f\",\"accent_1\":\"#04c7be4d\",\"pillar\":\"Fitness\",\"piller_breakdown\":\"33.0\"}')),
    PillerStruct.fromSerializableMap(jsonDecode(
        '{\"primary_color\":\"#085dc5\",\"accent_1\":\"#085dc54c\",\"pillar\":\"Spiritual\",\"piller_breakdown\":\"42.0\"}')),
    PillerStruct.fromSerializableMap(jsonDecode(
        '{\"primary_color\":\"#10407c\",\"accent_1\":\"#10407c4d\",\"pillar\":\"Mental\",\"piller_breakdown\":\"46.0\"}')),
    PillerStruct.fromSerializableMap(jsonDecode(
        '{\"primary_color\":\"#039271\",\"accent_1\":\"#0392714d\",\"pillar\":\"Nutritional\",\"piller_breakdown\":\"36.0\"}'))
  ];
  List<PillerStruct> get pillars => _pillars;
  set pillars(List<PillerStruct> value) {
    _pillars = value;
    prefs.setStringList('ff_pillars', value.map((x) => x.serialize()).toList());
  }

  void addToPillars(PillerStruct value) {
    pillars.add(value);
    prefs.setStringList(
        'ff_pillars', _pillars.map((x) => x.serialize()).toList());
  }

  void removeFromPillars(PillerStruct value) {
    pillars.remove(value);
    prefs.setStringList(
        'ff_pillars', _pillars.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPillars(int index) {
    pillars.removeAt(index);
    prefs.setStringList(
        'ff_pillars', _pillars.map((x) => x.serialize()).toList());
  }

  void updatePillarsAtIndex(
    int index,
    PillerStruct Function(PillerStruct) updateFn,
  ) {
    pillars[index] = updateFn(_pillars[index]);
    prefs.setStringList(
        'ff_pillars', _pillars.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPillars(int index, PillerStruct value) {
    pillars.insert(index, value);
    prefs.setStringList(
        'ff_pillars', _pillars.map((x) => x.serialize()).toList());
  }

  DateTime? _selectedDay = DateTime.fromMillisecondsSinceEpoch(1739217660000);
  DateTime? get selectedDay => _selectedDay;
  set selectedDay(DateTime? value) {
    _selectedDay = value;
  }

  /// I am using this state to showcase an auto scroll / marquee text animation
  /// with a carousel widget.
  List<MeditationDataStruct> _demoMeditation = [
    MeditationDataStruct.fromSerializableMap(jsonDecode(
        '{\"content\":\"Welcome to your daily moment of stillness. \\n\\nIn the next five minutes, we will use breathwork to calm the body, focus the mind, and align with your goals for today. \\n\\nLet\'s begin. \",\"duration\":\"80000\",\"speed\":\"1.0\"}')),
    MeditationDataStruct.fromSerializableMap(jsonDecode(
        '{\"content\":\"Inhale deeply through your nose for 4 counts…\\n \\n(1…2…3…4) \\n\\nHold gently for 2 counts…\\n\\n(1…2) \",\"duration\":\"7000\",\"speed\":\"1.0\"}')),
    MeditationDataStruct.fromSerializableMap(jsonDecode(
        '{\"content\":\"Exhale slowly through your mouth for 6 counts… \\n\\n(1…2…3…4…5…6) \\n\\nInhale deeply through your nose for 4 counts… \\n\\n(1…2…3…4) \",\"duration\":\"6000\",\"speed\":\"1.0\"}')),
    MeditationDataStruct.fromSerializableMap(jsonDecode(
        '{\"content\":\"Hold gently for 2 counts… \\n\\n(1…2) \\n\\nExhale slowly through your mouth for 6 counts… \\n\\n(1…2…3…4…5…6) \",\"duration\":\"1200\",\"speed\":\"1.0\"}')),
    MeditationDataStruct.fromSerializableMap(jsonDecode(
        '{\"content\":\"Repeat this cycle on your own now a few times. Feel your body and mind becoming more centered with each breath. \",\"duration\":\"8000\",\"speed\":\"1.0\"}')),
    MeditationDataStruct.fromSerializableMap(jsonDecode(
        '{\"content\":\"Continue to breath slowly. You are creating space for focus and clarity with each breath. \\n\\nIf your mind wanders, gently return to the rhythm of your breath. \\n\\nRemember: Today, small actions bring meaningful progress. \",\"duration\":\"16000\",\"speed\":\"1.0\"}')),
    MeditationDataStruct.fromSerializableMap(jsonDecode(
        '{\"content\":\"Let\'s finish with one deep breath together—inhale… and exhale. \\n\\nCarry this sense of calm into your tasks. \\n\\nYou are ready. \\n\\nYou are capable. You are aligned. \",\"duration\":\"12000\",\"speed\":\"1.0\"}'))
  ];
  List<MeditationDataStruct> get demoMeditation => _demoMeditation;
  set demoMeditation(List<MeditationDataStruct> value) {
    _demoMeditation = value;
    prefs.setStringList(
        'ff_demoMeditation', value.map((x) => x.serialize()).toList());
  }

  void addToDemoMeditation(MeditationDataStruct value) {
    demoMeditation.add(value);
    prefs.setStringList('ff_demoMeditation',
        _demoMeditation.map((x) => x.serialize()).toList());
  }

  void removeFromDemoMeditation(MeditationDataStruct value) {
    demoMeditation.remove(value);
    prefs.setStringList('ff_demoMeditation',
        _demoMeditation.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDemoMeditation(int index) {
    demoMeditation.removeAt(index);
    prefs.setStringList('ff_demoMeditation',
        _demoMeditation.map((x) => x.serialize()).toList());
  }

  void updateDemoMeditationAtIndex(
    int index,
    MeditationDataStruct Function(MeditationDataStruct) updateFn,
  ) {
    demoMeditation[index] = updateFn(_demoMeditation[index]);
    prefs.setStringList('ff_demoMeditation',
        _demoMeditation.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDemoMeditation(int index, MeditationDataStruct value) {
    demoMeditation.insert(index, value);
    prefs.setStringList('ff_demoMeditation',
        _demoMeditation.map((x) => x.serialize()).toList());
  }

  List<DataFieldsSimpleStruct> _airforceRanks = [
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Airman Basic\",\"description\":\"E-1 (AB) \",\"index\":\"0\",\"type\":\"Enlisted\",\"rank_type\":\"Enlisted\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Airman\",\"description\":\"E-2 (Amn)\",\"index\":\"1\",\"type\":\"Enlisted\",\"rank_type\":\"Enlisted\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Airman First Class\",\"description\":\"E-3 (A1C) \",\"index\":\"2\",\"type\":\"Enlisted\",\"rank_type\":\"Enlisted\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Senior Airman\",\"description\":\"E-4 (SrA)\",\"index\":\"3\",\"type\":\"Enlisted\",\"rank_type\":\"Enlisted\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Staff Sergeant\",\"description\":\"E-5 (SSgt)\",\"index\":\"4\",\"type\":\"Enlisted\",\"rank_type\":\"Enlisted\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Technical Sergeant\",\"description\":\"E-6 (TSgt) \",\"index\":\"5\",\"type\":\"Enlisted\",\"rank_type\":\"Enlisted\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Master Sergeant\",\"description\":\"E-7 (MSgt) \",\"index\":\"6\",\"type\":\"Enlisted\",\"rank_type\":\"Enlisted\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"First Sergeant\",\"description\":\"E-7 (SMSgt) \",\"index\":\"7\",\"type\":\"Enlisted\",\"rank_type\":\"Enlisted\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Senior Master Sergeant\",\"description\":\"E-8 (SMSgt)\",\"index\":\"8\",\"type\":\"Enlisted\",\"rank_type\":\"Enlisted\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Chief Master Sergeant \",\"description\":\"E-9 (CMSgt)\",\"index\":\"9\",\"type\":\"Enlisted\",\"rank_type\":\"Enlisted\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Command Chief Master Sergeant \",\"description\":\"E-9 (CCM) \",\"index\":\"10\",\"type\":\"Enlisted\",\"rank_type\":\"Enlisted\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Second Lieutenant\",\"description\":\"O-1 (2D LT) \",\"index\":\"11\",\"date_active\":\"1740502980747\",\"type\":\"CO\",\"rank_type\":\"CO\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"First Lieutenant\",\"description\":\"O-2 (1ST LT)\",\"index\":\"12\",\"date_active\":\"1740503038571\",\"type\":\"CO\",\"rank_type\":\"CO\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Captain\",\"description\":\"O-3 (CAPT)\",\"index\":\"13\",\"type\":\"CO\",\"rank_type\":\"CO\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Major\",\"description\":\"O-4 (MAJ)\",\"index\":\"14\",\"type\":\"CO\",\"rank_type\":\"CO\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Lieutenant Colonel\",\"description\":\"O-5 (LT COL)\",\"index\":\"15\",\"type\":\"CO\",\"rank_type\":\"CO\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Colonel\",\"description\":\"O-6 (COL)\",\"index\":\"16\",\"type\":\"CO\",\"rank_type\":\"CO\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Brigadier General\",\"description\":\"O-7 (BRIG GEN)\",\"index\":\"17\",\"type\":\"CO\",\"rank_type\":\"CO\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Major General\",\"description\":\"O-8 (MAJ GEN)\",\"index\":\"18\",\"type\":\"CO\",\"rank_type\":\"CO\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Lieutenant General\",\"description\":\"O-9 (LT GEN)\",\"index\":\"19\",\"type\":\"CO\",\"rank_type\":\"CO\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"General\",\"description\":\"O-10 (GEN)\",\"index\":\"20\",\"type\":\"CO\",\"rank_type\":\"CO\"}'))
  ];
  List<DataFieldsSimpleStruct> get airforceRanks => _airforceRanks;
  set airforceRanks(List<DataFieldsSimpleStruct> value) {
    _airforceRanks = value;
    prefs.setStringList(
        'ff_airforceRanks', value.map((x) => x.serialize()).toList());
  }

  void addToAirforceRanks(DataFieldsSimpleStruct value) {
    airforceRanks.add(value);
    prefs.setStringList(
        'ff_airforceRanks', _airforceRanks.map((x) => x.serialize()).toList());
  }

  void removeFromAirforceRanks(DataFieldsSimpleStruct value) {
    airforceRanks.remove(value);
    prefs.setStringList(
        'ff_airforceRanks', _airforceRanks.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAirforceRanks(int index) {
    airforceRanks.removeAt(index);
    prefs.setStringList(
        'ff_airforceRanks', _airforceRanks.map((x) => x.serialize()).toList());
  }

  void updateAirforceRanksAtIndex(
    int index,
    DataFieldsSimpleStruct Function(DataFieldsSimpleStruct) updateFn,
  ) {
    airforceRanks[index] = updateFn(_airforceRanks[index]);
    prefs.setStringList(
        'ff_airforceRanks', _airforceRanks.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAirforceRanks(int index, DataFieldsSimpleStruct value) {
    airforceRanks.insert(index, value);
    prefs.setStringList(
        'ff_airforceRanks', _airforceRanks.map((x) => x.serialize()).toList());
  }

  /// This will be to store the current rank of the individual in local storage,
  /// we can switch this to the user table.
  DataFieldsSimpleStruct _selectedRank = DataFieldsSimpleStruct();
  DataFieldsSimpleStruct get selectedRank => _selectedRank;
  set selectedRank(DataFieldsSimpleStruct value) {
    _selectedRank = value;
    prefs.setString('ff_selectedRank', value.serialize());
  }

  void updateSelectedRankStruct(Function(DataFieldsSimpleStruct) updateFn) {
    updateFn(_selectedRank);
    prefs.setString('ff_selectedRank', _selectedRank.serialize());
  }

  /// A state for the most recent assessment data generated/mapped.
  ///
  /// Includes other utility fields for loop indexing and last cleared info as
  /// well.
  AssessmentInfoWrapperStruct _assessmentDataHolder =
      AssessmentInfoWrapperStruct();
  AssessmentInfoWrapperStruct get assessmentDataHolder => _assessmentDataHolder;
  set assessmentDataHolder(AssessmentInfoWrapperStruct value) {
    _assessmentDataHolder = value;
    prefs.setString('ff_assessmentDataHolder', value.serialize());
  }

  void updateAssessmentDataHolderStruct(
      Function(AssessmentInfoWrapperStruct) updateFn) {
    updateFn(_assessmentDataHolder);
    prefs.setString(
        'ff_assessmentDataHolder', _assessmentDataHolder.serialize());
  }

  /// These are the options a user can select for Deployment in the app.
  ///
  /// This lives in the profile.
  List<DataFieldsSimpleStruct> _deploymentOptions = [
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Active Deployment\",\"description\":\"Currently deployed to a mission or operation.\",\"index\":\"0\",\"type\":\"Active\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Pre-deployment\",\"description\":\"Preparing for an upcoming deployment. \",\"index\":\"1\",\"type\":\"Pre-Dep\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Post-deployment\",\"description\":\"Recently returned from a deployment. \",\"index\":\"2\",\"type\":\"Post-Dep\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Base / Garrison\",\"description\":\"Stationed at home base with no immediate deployment orders. \",\"index\":\"3\",\"type\":\"Base\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Temporary Duty (TDY)\",\"description\":\" Short-term assignment away from the permanent duty station. \",\"index\":\"4\",\"type\":\"Temp Duty\"}')),
    DataFieldsSimpleStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Non-deployable\",\"description\":\"Not eligible for deployment due to medical, personal, or administrative reasons. \",\"index\":\"5\",\"type\":\"Non Dep\"}'))
  ];
  List<DataFieldsSimpleStruct> get deploymentOptions => _deploymentOptions;
  set deploymentOptions(List<DataFieldsSimpleStruct> value) {
    _deploymentOptions = value;
    prefs.setStringList(
        'ff_deploymentOptions', value.map((x) => x.serialize()).toList());
  }

  void addToDeploymentOptions(DataFieldsSimpleStruct value) {
    deploymentOptions.add(value);
    prefs.setStringList('ff_deploymentOptions',
        _deploymentOptions.map((x) => x.serialize()).toList());
  }

  void removeFromDeploymentOptions(DataFieldsSimpleStruct value) {
    deploymentOptions.remove(value);
    prefs.setStringList('ff_deploymentOptions',
        _deploymentOptions.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDeploymentOptions(int index) {
    deploymentOptions.removeAt(index);
    prefs.setStringList('ff_deploymentOptions',
        _deploymentOptions.map((x) => x.serialize()).toList());
  }

  void updateDeploymentOptionsAtIndex(
    int index,
    DataFieldsSimpleStruct Function(DataFieldsSimpleStruct) updateFn,
  ) {
    deploymentOptions[index] = updateFn(_deploymentOptions[index]);
    prefs.setStringList('ff_deploymentOptions',
        _deploymentOptions.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDeploymentOptions(
      int index, DataFieldsSimpleStruct value) {
    deploymentOptions.insert(index, value);
    prefs.setStringList('ff_deploymentOptions',
        _deploymentOptions.map((x) => x.serialize()).toList());
  }

  /// We can remove this once we have actual data.
  List<double> _dummyRunningData = [10.5, 10.2, 9.4, 8.4, 9.6, 9.4, 10.3];
  List<double> get dummyRunningData => _dummyRunningData;
  set dummyRunningData(List<double> value) {
    _dummyRunningData = value;
    prefs.setStringList(
        'ff_dummyRunningData', value.map((x) => x.toString()).toList());
  }

  void addToDummyRunningData(double value) {
    dummyRunningData.add(value);
    prefs.setStringList('ff_dummyRunningData',
        _dummyRunningData.map((x) => x.toString()).toList());
  }

  void removeFromDummyRunningData(double value) {
    dummyRunningData.remove(value);
    prefs.setStringList('ff_dummyRunningData',
        _dummyRunningData.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromDummyRunningData(int index) {
    dummyRunningData.removeAt(index);
    prefs.setStringList('ff_dummyRunningData',
        _dummyRunningData.map((x) => x.toString()).toList());
  }

  void updateDummyRunningDataAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    dummyRunningData[index] = updateFn(_dummyRunningData[index]);
    prefs.setStringList('ff_dummyRunningData',
        _dummyRunningData.map((x) => x.toString()).toList());
  }

  void insertAtIndexInDummyRunningData(int index, double value) {
    dummyRunningData.insert(index, value);
    prefs.setStringList('ff_dummyRunningData',
        _dummyRunningData.map((x) => x.toString()).toList());
  }

  OnboardingDataStruct _onboardingData = OnboardingDataStruct();
  OnboardingDataStruct get onboardingData => _onboardingData;
  set onboardingData(OnboardingDataStruct value) {
    _onboardingData = value;
    prefs.setString('ff_onboardingData', value.serialize());
  }

  void updateOnboardingDataStruct(Function(OnboardingDataStruct) updateFn) {
    updateFn(_onboardingData);
    prefs.setString('ff_onboardingData', _onboardingData.serialize());
  }

  List<String> _workout = [
    'Strength & Resistent Trainings',
    'Cardio & Endurance',
    'Flexibility & Mobility',
    'High-Intensity',
    'Circuit Training',
    'Martial Arts & Combat Sports'
  ];
  List<String> get workout => _workout;
  set workout(List<String> value) {
    _workout = value;
    prefs.setStringList('ff_workout', value);
  }

  void addToWorkout(String value) {
    workout.add(value);
    prefs.setStringList('ff_workout', _workout);
  }

  void removeFromWorkout(String value) {
    workout.remove(value);
    prefs.setStringList('ff_workout', _workout);
  }

  void removeAtIndexFromWorkout(int index) {
    workout.removeAt(index);
    prefs.setStringList('ff_workout', _workout);
  }

  void updateWorkoutAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    workout[index] = updateFn(_workout[index]);
    prefs.setStringList('ff_workout', _workout);
  }

  void insertAtIndexInWorkout(int index, String value) {
    workout.insert(index, value);
    prefs.setStringList('ff_workout', _workout);
  }

  List<String> _workoutAreas = [
    'Bodybuilding',
    'Powerlifting',
    'Olymipic Weightlifting',
    'Calisthenics / Bodyweight Training',
    'CrossFit / Functional Fitness'
  ];
  List<String> get workoutAreas => _workoutAreas;
  set workoutAreas(List<String> value) {
    _workoutAreas = value;
    prefs.setStringList('ff_workoutAreas', value);
  }

  void addToWorkoutAreas(String value) {
    workoutAreas.add(value);
    prefs.setStringList('ff_workoutAreas', _workoutAreas);
  }

  void removeFromWorkoutAreas(String value) {
    workoutAreas.remove(value);
    prefs.setStringList('ff_workoutAreas', _workoutAreas);
  }

  void removeAtIndexFromWorkoutAreas(int index) {
    workoutAreas.removeAt(index);
    prefs.setStringList('ff_workoutAreas', _workoutAreas);
  }

  void updateWorkoutAreasAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    workoutAreas[index] = updateFn(_workoutAreas[index]);
    prefs.setStringList('ff_workoutAreas', _workoutAreas);
  }

  void insertAtIndexInWorkoutAreas(int index, String value) {
    workoutAreas.insert(index, value);
    prefs.setStringList('ff_workoutAreas', _workoutAreas);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
