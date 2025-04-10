import '/all_components/cards/card_article/card_article_widget.dart';
import '/all_components/ui_components/ui_feedback_bar/ui_feedback_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/workouts/card_workout/card_workout_widget.dart';
import 'sub_wiki_two_widget.dart' show SubWikiTwoWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class SubWikiTwoModel extends FlutterFlowModel<SubWikiTwoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for description widget.
  late ExpandableController descriptionExpandableController;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for card_article component.
  late CardArticleModel cardArticleModel1;
  // Model for card_article component.
  late CardArticleModel cardArticleModel2;
  // Model for card_article component.
  late CardArticleModel cardArticleModel3;
  // Model for card_workout component.
  late CardWorkoutModel cardWorkoutModel;
  // Model for ui_feedback_bar component.
  late UiFeedbackBarModel uiFeedbackBarModel;

  @override
  void initState(BuildContext context) {
    cardArticleModel1 = createModel(context, () => CardArticleModel());
    cardArticleModel2 = createModel(context, () => CardArticleModel());
    cardArticleModel3 = createModel(context, () => CardArticleModel());
    cardWorkoutModel = createModel(context, () => CardWorkoutModel());
    uiFeedbackBarModel = createModel(context, () => UiFeedbackBarModel());
  }

  @override
  void dispose() {
    descriptionExpandableController.dispose();
    expandableExpandableController.dispose();
    cardArticleModel1.dispose();
    cardArticleModel2.dispose();
    cardArticleModel3.dispose();
    cardWorkoutModel.dispose();
    uiFeedbackBarModel.dispose();
  }
}
