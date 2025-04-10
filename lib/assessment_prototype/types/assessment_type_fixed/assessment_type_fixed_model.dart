import '/flutter_flow/flutter_flow_util.dart';
import 'assessment_type_fixed_widget.dart' show AssessmentTypeFixedWidget;
import 'package:flutter/material.dart';

class AssessmentTypeFixedModel
    extends FlutterFlowModel<AssessmentTypeFixedWidget> {
  ///  Local state fields for this component.

  List<String> selectedValues = [];
  void addToSelectedValues(String item) => selectedValues.add(item);
  void removeFromSelectedValues(String item) => selectedValues.remove(item);
  void removeAtIndexFromSelectedValues(int index) =>
      selectedValues.removeAt(index);
  void insertAtIndexInSelectedValues(int index, String item) =>
      selectedValues.insert(index, item);
  void updateSelectedValuesAtIndex(int index, Function(String) updateFn) =>
      selectedValues[index] = updateFn(selectedValues[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
