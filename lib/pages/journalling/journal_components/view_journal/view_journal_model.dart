import '/all_components/ui_components/ui_icon_badge/ui_icon_badge_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/journalling/journal_components/card_instructions/card_instructions_widget.dart';
import '/pages/journalling/journal_components/ui_actions_analyze/ui_actions_analyze_widget.dart';
import 'view_journal_widget.dart' show ViewJournalWidget;
import 'package:flutter/material.dart';

class ViewJournalModel extends FlutterFlowModel<ViewJournalWidget> {
  ///  Local state fields for this component.

  JournalType? journalType = JournalType.text;

  bool showOptions = false;

  bool aiPromptUsed = false;

  ///  State fields for stateful widgets in this component.

  // Model for ui_icon_badge component.
  late UiIconBadgeModel uiIconBadgeModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for card_instructions component.
  late CardInstructionsModel cardInstructionsModel;
  // Model for ui_actions_analyze component.
  late UiActionsAnalyzeModel uiActionsAnalyzeModel;

  @override
  void initState(BuildContext context) {
    uiIconBadgeModel = createModel(context, () => UiIconBadgeModel());
    cardInstructionsModel = createModel(context, () => CardInstructionsModel());
    uiActionsAnalyzeModel = createModel(context, () => UiActionsAnalyzeModel());
  }

  @override
  void dispose() {
    uiIconBadgeModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    cardInstructionsModel.dispose();
    uiActionsAnalyzeModel.dispose();
  }
}
