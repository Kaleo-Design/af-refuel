import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/all_components/ui_components/ui_select_option/ui_select_option_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ui_feedback_bar_widget.dart' show UiFeedbackBarWidget;
import 'package:flutter/material.dart';

class UiFeedbackBarModel extends FlutterFlowModel<UiFeedbackBarWidget> {
  ///  Local state fields for this component.
  /// Is this activity saved for the user?
  bool saved = false;

  /// Has the current user completed this activity?
  bool completed = false;

  bool showOptions = false;

  ///  State fields for stateful widgets in this component.

  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel;
  // Model for ui_select_option component.
  late UiSelectOptionModel uiSelectOptionModel1;
  // Model for ui_select_option component.
  late UiSelectOptionModel uiSelectOptionModel2;
  // Model for ui_select_option component.
  late UiSelectOptionModel uiSelectOptionModel3;
  // Model for ui_select_option component.
  late UiSelectOptionModel uiSelectOptionModel4;
  // Model for ui_select_option component.
  late UiSelectOptionModel uiSelectOptionModel5;

  @override
  void initState(BuildContext context) {
    uiHeaderSubModel = createModel(context, () => UiHeaderSubModel());
    uiSelectOptionModel1 = createModel(context, () => UiSelectOptionModel());
    uiSelectOptionModel2 = createModel(context, () => UiSelectOptionModel());
    uiSelectOptionModel3 = createModel(context, () => UiSelectOptionModel());
    uiSelectOptionModel4 = createModel(context, () => UiSelectOptionModel());
    uiSelectOptionModel5 = createModel(context, () => UiSelectOptionModel());
  }

  @override
  void dispose() {
    uiHeaderSubModel.dispose();
    uiSelectOptionModel1.dispose();
    uiSelectOptionModel2.dispose();
    uiSelectOptionModel3.dispose();
    uiSelectOptionModel4.dispose();
    uiSelectOptionModel5.dispose();
  }
}
