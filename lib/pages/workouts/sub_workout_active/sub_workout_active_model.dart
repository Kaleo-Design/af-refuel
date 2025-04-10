import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/workouts/card_stats/card_stats_widget.dart';
import '/pages/workouts/card_workout_pft/card_workout_pft_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'sub_workout_active_widget.dart' show SubWorkoutActiveWidget;
import 'package:flutter/material.dart';

class SubWorkoutActiveModel extends FlutterFlowModel<SubWorkoutActiveWidget> {
  ///  Local state fields for this page.

  int? currentWorkout = 0;

  PFTWorkoutStruct? pftWorkout;
  void updatePftWorkoutStruct(Function(PFTWorkoutStruct) updateFn) {
    updateFn(pftWorkout ??= PFTWorkoutStruct());
  }

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 0;

  // Model for pushups.
  late CardWorkoutPftModel pushupsModel;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel1;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel2;
  // Model for situps.
  late CardWorkoutPftModel situpsModel;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel3;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel4;
  // Model for running.
  late CardWorkoutPftModel runningModel;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel5;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel6;

  @override
  void initState(BuildContext context) {
    pushupsModel = createModel(context, () => CardWorkoutPftModel());
    cardStatsModel1 = createModel(context, () => CardStatsModel());
    cardStatsModel2 = createModel(context, () => CardStatsModel());
    situpsModel = createModel(context, () => CardWorkoutPftModel());
    cardStatsModel3 = createModel(context, () => CardStatsModel());
    cardStatsModel4 = createModel(context, () => CardStatsModel());
    runningModel = createModel(context, () => CardWorkoutPftModel());
    cardStatsModel5 = createModel(context, () => CardStatsModel());
    cardStatsModel6 = createModel(context, () => CardStatsModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    pushupsModel.dispose();
    cardStatsModel1.dispose();
    cardStatsModel2.dispose();
    situpsModel.dispose();
    cardStatsModel3.dispose();
    cardStatsModel4.dispose();
    runningModel.dispose();
    cardStatsModel5.dispose();
    cardStatsModel6.dispose();
  }
}
