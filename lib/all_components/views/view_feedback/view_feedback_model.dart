import '/all_components/ui_components/ui_message/ui_message_widget.dart';
import '/all_components/ui_components/ui_select_vertical/ui_select_vertical_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_feedback_widget.dart' show ViewFeedbackWidget;
import 'package:flutter/material.dart';

class ViewFeedbackModel extends FlutterFlowModel<ViewFeedbackWidget> {
  ///  Local state fields for this component.

  bool feedbackGiven = false;

  ContentFeedback? feedback;

  bool hideSurvey = false;

  ///  State fields for stateful widgets in this component.

  // Model for ui_select_vertical component.
  late UiSelectVerticalModel uiSelectVerticalModel1;
  // Model for ui_select_vertical component.
  late UiSelectVerticalModel uiSelectVerticalModel2;
  // Model for ui_select_vertical component.
  late UiSelectVerticalModel uiSelectVerticalModel3;
  // Model for ui_message component.
  late UiMessageModel uiMessageModel;

  @override
  void initState(BuildContext context) {
    uiSelectVerticalModel1 =
        createModel(context, () => UiSelectVerticalModel());
    uiSelectVerticalModel2 =
        createModel(context, () => UiSelectVerticalModel());
    uiSelectVerticalModel3 =
        createModel(context, () => UiSelectVerticalModel());
    uiMessageModel = createModel(context, () => UiMessageModel());
  }

  @override
  void dispose() {
    uiSelectVerticalModel1.dispose();
    uiSelectVerticalModel2.dispose();
    uiSelectVerticalModel3.dispose();
    uiMessageModel.dispose();
  }
}
