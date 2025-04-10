import 'package:flutter/material.dart';
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
      _navOpen = prefs.getBool('ff_navOpen') ?? _navOpen;
    });
    _safeInit(() {
      _navTestOpen = prefs.getBool('ff_navTestOpen') ?? _navTestOpen;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _navOpen = false;
  bool get navOpen => _navOpen;
  set navOpen(bool value) {
    _navOpen = value;
    prefs.setBool('ff_navOpen', value);
  }

  bool _navTestOpen = false;
  bool get navTestOpen => _navTestOpen;
  set navTestOpen(bool value) {
    _navTestOpen = value;
    prefs.setBool('ff_navTestOpen', value);
  }

  List<double> _months = [
    0.8,
    0.4,
    0.9,
    0.3,
    0.8,
    0.6,
    0.5,
    0.9,
    0.7,
    1.0,
    0.6,
    0.4,
    1.0,
    0.8
  ];
  List<double> get months => _months;
  set months(List<double> value) {
    _months = value;
  }

  void addToMonths(double value) {
    months.add(value);
  }

  void removeFromMonths(double value) {
    months.remove(value);
  }

  void removeAtIndexFromMonths(int index) {
    months.removeAt(index);
  }

  void updateMonthsAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    months[index] = updateFn(_months[index]);
  }

  void insertAtIndexInMonths(int index, double value) {
    months.insert(index, value);
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
