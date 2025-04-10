import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_tweak_plan_widget.dart' show ModalTweakPlanWidget;
import 'package:flutter/material.dart';

class ModalTweakPlanModel extends FlutterFlowModel<ModalTweakPlanWidget> {
  ///  Local state fields for this component.

  List<PlanOptionsStruct> selectedOptions = [];
  void addToSelectedOptions(PlanOptionsStruct item) =>
      selectedOptions.add(item);
  void removeFromSelectedOptions(PlanOptionsStruct item) =>
      selectedOptions.remove(item);
  void removeAtIndexFromSelectedOptions(int index) =>
      selectedOptions.removeAt(index);
  void insertAtIndexInSelectedOptions(int index, PlanOptionsStruct item) =>
      selectedOptions.insert(index, item);
  void updateSelectedOptionsAtIndex(
          int index, Function(PlanOptionsStruct) updateFn) =>
      selectedOptions[index] = updateFn(selectedOptions[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
