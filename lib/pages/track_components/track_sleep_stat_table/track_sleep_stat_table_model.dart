import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/all_components/ui_components/ui_legend_custom/ui_legend_custom_widget.dart';
import '/all_components/ui_components/ui_tag/ui_tag_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/workouts/card_stats/card_stats_widget.dart';
import 'track_sleep_stat_table_widget.dart' show TrackSleepStatTableWidget;
import 'package:flutter/material.dart';

class TrackSleepStatTableModel
    extends FlutterFlowModel<TrackSleepStatTableWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel;
  // Model for ui_tag component.
  late UiTagModel uiTagModel;
  // Model for ui_legend_custom component.
  late UiLegendCustomModel uiLegendCustomModel1;
  // Model for ui_legend_custom component.
  late UiLegendCustomModel uiLegendCustomModel2;
  // Model for ui_legend_custom component.
  late UiLegendCustomModel uiLegendCustomModel3;
  // Model for ui_legend_custom component.
  late UiLegendCustomModel uiLegendCustomModel4;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel;

  @override
  void initState(BuildContext context) {
    uiHeaderSubModel = createModel(context, () => UiHeaderSubModel());
    uiTagModel = createModel(context, () => UiTagModel());
    uiLegendCustomModel1 = createModel(context, () => UiLegendCustomModel());
    uiLegendCustomModel2 = createModel(context, () => UiLegendCustomModel());
    uiLegendCustomModel3 = createModel(context, () => UiLegendCustomModel());
    uiLegendCustomModel4 = createModel(context, () => UiLegendCustomModel());
    cardStatsModel = createModel(context, () => CardStatsModel());
  }

  @override
  void dispose() {
    uiHeaderSubModel.dispose();
    uiTagModel.dispose();
    uiLegendCustomModel1.dispose();
    uiLegendCustomModel2.dispose();
    uiLegendCustomModel3.dispose();
    uiLegendCustomModel4.dispose();
    cardStatsModel.dispose();
  }
}
