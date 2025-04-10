import '/flutter_flow/flutter_flow_util.dart';
import 'assessment_type_scale_widget.dart' show AssessmentTypeScaleWidget;
import 'package:flutter/material.dart';

class AssessmentTypeScaleModel
    extends FlutterFlowModel<AssessmentTypeScaleWidget> {
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

  ///  State fields for stateful widgets in this component.

  // State field(s) for scale_sllide widget.
  double? scaleSllideValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
