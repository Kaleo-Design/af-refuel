import '/flutter_flow/flutter_flow_util.dart';
import 'view_select_value_widget.dart' show ViewSelectValueWidget;
import 'package:flutter/material.dart';

class ViewSelectValueModel extends FlutterFlowModel<ViewSelectValueWidget> {
  ///  Local state fields for this component.

  List<String> selectedOptions = [];
  void addToSelectedOptions(String item) => selectedOptions.add(item);
  void removeFromSelectedOptions(String item) => selectedOptions.remove(item);
  void removeAtIndexFromSelectedOptions(int index) =>
      selectedOptions.removeAt(index);
  void insertAtIndexInSelectedOptions(int index, String item) =>
      selectedOptions.insert(index, item);
  void updateSelectedOptionsAtIndex(int index, Function(String) updateFn) =>
      selectedOptions[index] = updateFn(selectedOptions[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
