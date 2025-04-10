import '/all_components/cards/card_article/card_article_widget.dart';
import '/all_components/ui_components/ui_feedback_bar/ui_feedback_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/workouts/card_stats/card_stats_widget.dart';
import 'sub_topic_details_widget.dart' show SubTopicDetailsWidget;
import 'package:flutter/material.dart';

class SubTopicDetailsModel extends FlutterFlowModel<SubTopicDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for card_stats component.
  late CardStatsModel cardStatsModel;
  // Model for card_article component.
  late CardArticleModel cardArticleModel1;
  // Model for card_article component.
  late CardArticleModel cardArticleModel2;
  // Model for ui_feedback_bar component.
  late UiFeedbackBarModel uiFeedbackBarModel;

  @override
  void initState(BuildContext context) {
    cardStatsModel = createModel(context, () => CardStatsModel());
    cardArticleModel1 = createModel(context, () => CardArticleModel());
    cardArticleModel2 = createModel(context, () => CardArticleModel());
    uiFeedbackBarModel = createModel(context, () => UiFeedbackBarModel());
  }

  @override
  void dispose() {
    cardStatsModel.dispose();
    cardArticleModel1.dispose();
    cardArticleModel2.dispose();
    uiFeedbackBarModel.dispose();
  }
}
