import '/all_components/ui_components/ui_message/ui_message_widget.dart';
import '/all_components/ui_components/ui_play_toggle/ui_play_toggle_widget.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'card_workout_active_widget.dart' show CardWorkoutActiveWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class CardWorkoutActiveModel extends FlutterFlowModel<CardWorkoutActiveWidget> {
  ///  Local state fields for this component.

  bool? workoutComplete = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 60000;
  int timerMilliseconds = 60000;
  String timerValue = StopWatchTimer.getDisplayTime(
    60000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Model for ui_play_toggle component.
  late UiPlayToggleModel uiPlayToggleModel;
  // Model for ui_message component.
  late UiMessageModel uiMessageModel;

  @override
  void initState(BuildContext context) {
    uiPlayToggleModel = createModel(context, () => UiPlayToggleModel());
    uiMessageModel = createModel(context, () => UiMessageModel());
  }

  @override
  void dispose() {
    timerController.dispose();
    uiPlayToggleModel.dispose();
    uiMessageModel.dispose();
  }
}
