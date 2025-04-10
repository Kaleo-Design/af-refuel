import '/all_components/ui_components/ui_select_option/ui_select_option_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/journalling/journal_components/card_highlight/card_highlight_widget.dart';
import 'assessment_question_widget.dart' show AssessmentQuestionWidget;
import 'package:flutter/material.dart';

class AssessmentQuestionModel
    extends FlutterFlowModel<AssessmentQuestionWidget> {
  ///  Local state fields for this component.

  String? selectedOption;

  List<String> selectedOptionsList = [];
  void addToSelectedOptionsList(String item) => selectedOptionsList.add(item);
  void removeFromSelectedOptionsList(String item) =>
      selectedOptionsList.remove(item);
  void removeAtIndexFromSelectedOptionsList(int index) =>
      selectedOptionsList.removeAt(index);
  void insertAtIndexInSelectedOptionsList(int index, String item) =>
      selectedOptionsList.insert(index, item);
  void updateSelectedOptionsListAtIndex(int index, Function(String) updateFn) =>
      selectedOptionsList[index] = updateFn(selectedOptionsList[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for scale_sllide widget.
  double? scaleSllideValue;
  // State field(s) for short_answer widget.
  FocusNode? shortAnswerFocusNode;
  TextEditingController? shortAnswerTextController;
  String? Function(BuildContext, String?)? shortAnswerTextControllerValidator;
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
    shortAnswerFocusNode?.dispose();
    shortAnswerTextController?.dispose();

    uiSelectOptionModel1.dispose();
    uiSelectOptionModel2.dispose();
    cardHighlightModel1.dispose();
    cardHighlightModel2.dispose();
  }
}
