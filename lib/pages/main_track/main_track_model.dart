import '/all_components/backgrounds/background_image/background_image_widget.dart';
import '/all_components/nav/nav_custom/nav_custom_widget.dart';
import '/all_components/nav/nav_header/nav_header_widget.dart';
import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/all_components/ui_components/ui_legend_custom/ui_legend_custom_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/track_components/track_fitness_stat_table/track_fitness_stat_table_widget.dart';
import '/pages/track_components/track_overview_donut/track_overview_donut_widget.dart';
import '/pages/track_components/track_running_graph/track_running_graph_widget.dart';
import '/pages/track_components/track_sleep_stat_table/track_sleep_stat_table_widget.dart';
import '/pages/track_components/track_v_o2_max_graph/track_v_o2_max_graph_widget.dart';
import '/pages/workouts/card_stats/card_stats_widget.dart';
import '/index.dart';
import 'main_track_widget.dart' show MainTrackWidget;
import 'package:flutter/material.dart';

class MainTrackModel extends FlutterFlowModel<MainTrackWidget> {
  ///  Local state fields for this page.

  bool showContent = false;

  ///  State fields for stateful widgets in this page.

  // Model for background_image component.
  late BackgroundImageModel backgroundImageModel;
  // Model for nav_header component.
  late NavHeaderModel navHeaderModel;
  // Model for track_overview_donut component.
  late TrackOverviewDonutModel trackOverviewDonutModel;
  // Models for ui_legend_custom dynamic component.
  late FlutterFlowDynamicModels<UiLegendCustomModel> uiLegendCustomModels1;
  // Model for track_sleep_stat_table component.
  late TrackSleepStatTableModel trackSleepStatTableModel;
  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel1;
  // Model for ui_legend_custom component.
  late UiLegendCustomModel uiLegendCustomModel2;
  // Model for ui_legend_custom component.
  late UiLegendCustomModel uiLegendCustomModel3;
  // Model for ui_legend_custom component.
  late UiLegendCustomModel uiLegendCustomModel4;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel1;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel2;
  // Model for ui_legend_custom component.
  late UiLegendCustomModel uiLegendCustomModel5;
  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel2;
  // Model for track_running_graph component.
  late TrackRunningGraphModel trackRunningGraphModel;
  // Model for track_VO2_max_graph component.
  late TrackVO2MaxGraphModel trackVO2MaxGraphModel;
  // Model for track_fitness_stat_table component.
  late TrackFitnessStatTableModel trackFitnessStatTableModel;
  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel3;
  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel4;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel3;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel4;
  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel5;
  // Model for nav_custom component.
  late NavCustomModel navCustomModel;

  @override
  void initState(BuildContext context) {
    backgroundImageModel = createModel(context, () => BackgroundImageModel());
    navHeaderModel = createModel(context, () => NavHeaderModel());
    trackOverviewDonutModel =
        createModel(context, () => TrackOverviewDonutModel());
    uiLegendCustomModels1 =
        FlutterFlowDynamicModels(() => UiLegendCustomModel());
    trackSleepStatTableModel =
        createModel(context, () => TrackSleepStatTableModel());
    uiHeaderSubModel1 = createModel(context, () => UiHeaderSubModel());
    uiLegendCustomModel2 = createModel(context, () => UiLegendCustomModel());
    uiLegendCustomModel3 = createModel(context, () => UiLegendCustomModel());
    uiLegendCustomModel4 = createModel(context, () => UiLegendCustomModel());
    cardStatsModel1 = createModel(context, () => CardStatsModel());
    cardStatsModel2 = createModel(context, () => CardStatsModel());
    uiLegendCustomModel5 = createModel(context, () => UiLegendCustomModel());
    uiHeaderSubModel2 = createModel(context, () => UiHeaderSubModel());
    trackRunningGraphModel =
        createModel(context, () => TrackRunningGraphModel());
    trackVO2MaxGraphModel = createModel(context, () => TrackVO2MaxGraphModel());
    trackFitnessStatTableModel =
        createModel(context, () => TrackFitnessStatTableModel());
    uiHeaderSubModel3 = createModel(context, () => UiHeaderSubModel());
    uiHeaderSubModel4 = createModel(context, () => UiHeaderSubModel());
    cardStatsModel3 = createModel(context, () => CardStatsModel());
    cardStatsModel4 = createModel(context, () => CardStatsModel());
    uiHeaderSubModel5 = createModel(context, () => UiHeaderSubModel());
    navCustomModel = createModel(context, () => NavCustomModel());
  }

  @override
  void dispose() {
    backgroundImageModel.dispose();
    navHeaderModel.dispose();
    trackOverviewDonutModel.dispose();
    uiLegendCustomModels1.dispose();
    trackSleepStatTableModel.dispose();
    uiHeaderSubModel1.dispose();
    uiLegendCustomModel2.dispose();
    uiLegendCustomModel3.dispose();
    uiLegendCustomModel4.dispose();
    cardStatsModel1.dispose();
    cardStatsModel2.dispose();
    uiLegendCustomModel5.dispose();
    uiHeaderSubModel2.dispose();
    trackRunningGraphModel.dispose();
    trackVO2MaxGraphModel.dispose();
    trackFitnessStatTableModel.dispose();
    uiHeaderSubModel3.dispose();
    uiHeaderSubModel4.dispose();
    cardStatsModel3.dispose();
    cardStatsModel4.dispose();
    uiHeaderSubModel5.dispose();
    navCustomModel.dispose();
  }
}
