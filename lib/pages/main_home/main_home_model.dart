import '/all_components/backgrounds/background_image/background_image_widget.dart';
import '/all_components/cards/card_activity/card_activity_widget.dart';
import '/all_components/nav/nav_custom/nav_custom_widget.dart';
import '/all_components/nav/nav_header/nav_header_widget.dart';
import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/all_components/views/view_feedback/view_feedback_widget.dart';
import '/all_components/views/view_home_recommended/view_home_recommended_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'main_home_widget.dart' show MainHomeWidget;
import 'package:flutter/material.dart';

class MainHomeModel extends FlutterFlowModel<MainHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for background_image component.
  late BackgroundImageModel backgroundImageModel;
  // Model for nav_header component.
  late NavHeaderModel navHeaderModel;
  // Model for view_home_recommended component.
  late ViewHomeRecommendedModel viewHomeRecommendedModel;
  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel;
  // Model for card_activity component.
  late CardActivityModel cardActivityModel1;
  // Model for card_activity component.
  late CardActivityModel cardActivityModel2;
  // Model for card_activity component.
  late CardActivityModel cardActivityModel3;
  // Model for view_feedback component.
  late ViewFeedbackModel viewFeedbackModel;
  // Model for card_activity component.
  late CardActivityModel cardActivityModel4;
  // Model for card_activity component.
  late CardActivityModel cardActivityModel5;
  // Model for card_activity component.
  late CardActivityModel cardActivityModel6;
  // Model for nav_custom component.
  late NavCustomModel navCustomModel;

  @override
  void initState(BuildContext context) {
    backgroundImageModel = createModel(context, () => BackgroundImageModel());
    navHeaderModel = createModel(context, () => NavHeaderModel());
    viewHomeRecommendedModel =
        createModel(context, () => ViewHomeRecommendedModel());
    uiHeaderSubModel = createModel(context, () => UiHeaderSubModel());
    cardActivityModel1 = createModel(context, () => CardActivityModel());
    cardActivityModel2 = createModel(context, () => CardActivityModel());
    cardActivityModel3 = createModel(context, () => CardActivityModel());
    viewFeedbackModel = createModel(context, () => ViewFeedbackModel());
    cardActivityModel4 = createModel(context, () => CardActivityModel());
    cardActivityModel5 = createModel(context, () => CardActivityModel());
    cardActivityModel6 = createModel(context, () => CardActivityModel());
    navCustomModel = createModel(context, () => NavCustomModel());
  }

  @override
  void dispose() {
    backgroundImageModel.dispose();
    navHeaderModel.dispose();
    viewHomeRecommendedModel.dispose();
    uiHeaderSubModel.dispose();
    cardActivityModel1.dispose();
    cardActivityModel2.dispose();
    cardActivityModel3.dispose();
    viewFeedbackModel.dispose();
    cardActivityModel4.dispose();
    cardActivityModel5.dispose();
    cardActivityModel6.dispose();
    navCustomModel.dispose();
  }
}
