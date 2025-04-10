import '/all_components/ui_components/ui_select_option/ui_select_option_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/journalling/journal_components/card_highlight/card_highlight_widget.dart';
import 'assessment_type_free_widget.dart' show AssessmentTypeFreeWidget;
import 'package:flutter/material.dart';

class AssessmentTypeFreeModel
    extends FlutterFlowModel<AssessmentTypeFreeWidget> {
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

  // State field(s) for free_response_input widget.
  FocusNode? freeResponseInputFocusNode;
  TextEditingController? freeResponseInputTextController;
  String? Function(BuildContext, String?)?
      freeResponseInputTextControllerValidator;
  // Model for ui_select_option component.
  late UiSelectOptionModel uiSelectOptionModel1;
  // Model for ui_select_option component.
  late UiSelectOptionModel uiSelectOptionModel2;
  // Model for card_highlight component.
  late CardHighlightModel cardHighlightModel1;
  // Model for card_highlight component.
  late CardHighlightModel cardHighlightModel2;

  @override
  void initState(BuildContext context) {
    uiSelectOptionModel1 = createModel(context, () => UiSelectOptionModel());
    uiSelectOptionModel2 = createModel(context, () => UiSelectOptionModel());
    cardHighlightModel1 = createModel(context, () => CardHighlightModel());
    cardHighlightModel2 = createModel(context, () => CardHighlightModel());
  }

  @override
  void dispose() {
    freeResponseInputFocusNode?.dispose();
    freeResponseInputTextController?.dispose();

    uiSelectOptionModel1.dispose();
    uiSelectOptionModel2.dispose();
    cardHighlightModel1.dispose();
    cardHighlightModel2.dispose();
  }
}
