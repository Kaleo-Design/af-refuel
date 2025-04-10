import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_goals_onboarding_widget.dart' show ViewGoalsOnboardingWidget;
import 'package:flutter/material.dart';

class ViewGoalsOnboardingModel
    extends FlutterFlowModel<ViewGoalsOnboardingWidget> {
  ///  Local state fields for this component.

  bool showWorkout = true;

  ///  State fields for stateful widgets in this component.

  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel;
  // Stores action output result for [Bottom Sheet - view_select_value] action in week widget.
  List<String>? updatedWeek;
  // Stores action output result for [Bottom Sheet - view_select_value] action in selectWorkout widget.
  List<String>? selectedWorkout;
  // Stores action output result for [Bottom Sheet - view_select_value] action in select_focus_area widget.
  List<String>? selectedArea;

  @override
  void initState(BuildContext context) {
    uiHeaderSubModel = createModel(context, () => UiHeaderSubModel());
  }

  @override
  void dispose() {
    uiHeaderSubModel.dispose();
  }
}
