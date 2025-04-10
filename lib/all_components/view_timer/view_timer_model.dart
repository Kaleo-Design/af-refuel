import '/all_components/ui_components/ui_play_toggle/ui_play_toggle_widget.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'view_timer_widget.dart' show ViewTimerWidget;
import 'package:flutter/material.dart';

class ViewTimerModel extends FlutterFlowModel<ViewTimerWidget> {
  ///  Local state fields for this component.

  int? fullTimerValue = 180000;

  bool timerPlaying = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for ui_play_toggle component.
  late UiPlayToggleModel uiPlayToggleModel;

  @override
  void initState(BuildContext context) {
    uiPlayToggleModel = createModel(context, () => UiPlayToggleModel());
  }

  @override
  void dispose() {
    timerController.dispose();
    uiPlayToggleModel.dispose();
  }
}
