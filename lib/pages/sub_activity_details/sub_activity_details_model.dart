import '/all_components/ui_components/ui_7_day_streak/ui7_day_streak_widget.dart';
import '/all_components/ui_components/ui_feedback_bar/ui_feedback_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:n_c_u_i_web_template_01_ls0zpd/components/ui_elements/tag_action/tag_action_widget.dart'
    as n_c_u_i_web_template_01_ls0zpd;
import 'package:n_c_u_i_web_template_01_ls0zpd/components/ui_elements/tag_generic/tag_generic_widget.dart'
    as n_c_u_i_web_template_01_ls0zpd;
import 'package:n_c_u_i_web_template_01_ls0zpd/flutter_flow/flutter_flow_util.dart'
    as n_c_u_i_web_template_01_ls0zpd_util
    show wrapWithModel, createModel, FlutterFlowDynamicModels;
import 'sub_activity_details_widget.dart' show SubActivityDetailsWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class SubActivityDetailsModel
    extends FlutterFlowModel<SubActivityDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for tag_generic component.
  late n_c_u_i_web_template_01_ls0zpd.TagGenericModel tagGenericModel1;
  // Model for tag_action component.
  late n_c_u_i_web_template_01_ls0zpd.TagActionModel tagActionModel;
  // Model for tag_generic component.
  late n_c_u_i_web_template_01_ls0zpd.TagGenericModel tagGenericModel2;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for ui_7_day_streak component.
  late Ui7DayStreakModel ui7DayStreakModel;
  // Model for ui_feedback_bar component.
  late UiFeedbackBarModel uiFeedbackBarModel;

  @override
  void initState(BuildContext context) {
    tagGenericModel1 = n_c_u_i_web_template_01_ls0zpd_util.createModel(
        context, () => n_c_u_i_web_template_01_ls0zpd.TagGenericModel());
    tagActionModel = n_c_u_i_web_template_01_ls0zpd_util.createModel(
        context, () => n_c_u_i_web_template_01_ls0zpd.TagActionModel());
    tagGenericModel2 = n_c_u_i_web_template_01_ls0zpd_util.createModel(
        context, () => n_c_u_i_web_template_01_ls0zpd.TagGenericModel());
    ui7DayStreakModel = createModel(context, () => Ui7DayStreakModel());
    uiFeedbackBarModel = createModel(context, () => UiFeedbackBarModel());
  }

  @override
  void dispose() {
    tagGenericModel1.dispose();
    tagActionModel.dispose();
    tagGenericModel2.dispose();
    expandableExpandableController.dispose();
    ui7DayStreakModel.dispose();
    uiFeedbackBarModel.dispose();
  }
}
