import '/all_components/ui_components/ui_icon_badge/ui_icon_badge_widget.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/journalling/journal_components/card_instructions/card_instructions_widget.dart';
import '/pages/journalling/journal_components/ui_actions_analyze/ui_actions_analyze_widget.dart';
import '/pages/journalling/journal_components/ui_prompt_suggestions/ui_prompt_suggestions_widget.dart';
import 'sub_journal_ai_response_widget.dart' show SubJournalAiResponseWidget;
import 'package:flutter/material.dart';

class SubJournalAiResponseModel
    extends FlutterFlowModel<SubJournalAiResponseWidget> {
  ///  Local state fields for this page.

  bool showAI = false;

  String? currentText =
      'Today I was able to accomplish a milestone, and I found a way I can train better & more routinely, I want to schedule my time in the morning for 30 mins, listened to a great podcast that helped me understand the importance of habit formation.';

  bool aiReflectionUsed = false;

  DataFieldsSimpleStruct? selectedPrompt;
  void updateSelectedPromptStruct(Function(DataFieldsSimpleStruct) updateFn) {
    updateFn(selectedPrompt ??= DataFieldsSimpleStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for ui_icon_badge component.
  late UiIconBadgeModel uiIconBadgeModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for card_instructions component.
  late CardInstructionsModel cardInstructionsModel;
  // Model for ui_prompt_suggestions component.
  late UiPromptSuggestionsModel uiPromptSuggestionsModel1;
  // Model for ui_prompt_suggestions component.
  late UiPromptSuggestionsModel uiPromptSuggestionsModel2;
  // Model for ui_prompt_suggestions component.
  late UiPromptSuggestionsModel uiPromptSuggestionsModel3;
  // Model for ui_actions_analyze component.
  late UiActionsAnalyzeModel uiActionsAnalyzeModel;

  @override
  void initState(BuildContext context) {
    uiIconBadgeModel = createModel(context, () => UiIconBadgeModel());
    cardInstructionsModel = createModel(context, () => CardInstructionsModel());
    uiPromptSuggestionsModel1 =
        createModel(context, () => UiPromptSuggestionsModel());
    uiPromptSuggestionsModel2 =
        createModel(context, () => UiPromptSuggestionsModel());
    uiPromptSuggestionsModel3 =
        createModel(context, () => UiPromptSuggestionsModel());
    uiActionsAnalyzeModel = createModel(context, () => UiActionsAnalyzeModel());
  }

  @override
  void dispose() {
    uiIconBadgeModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    cardInstructionsModel.dispose();
    uiPromptSuggestionsModel1.dispose();
    uiPromptSuggestionsModel2.dispose();
    uiPromptSuggestionsModel3.dispose();
    uiActionsAnalyzeModel.dispose();
  }
}
