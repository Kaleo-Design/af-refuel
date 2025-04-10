import '/all_components/ui_components/ui_message/ui_message_widget.dart';
import '/all_components/ui_components/ui_play_toggle/ui_play_toggle_widget.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/workouts/card_stats/card_stats_widget.dart';
import 'card_workout_pft_widget.dart' show CardWorkoutPftWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CardWorkoutPftModel extends FlutterFlowModel<CardWorkoutPftWidget> {
  ///  Local state fields for this component.

  bool? workoutComplete = false;

  int? repNumber;

  bool showSummary = false;

  List<int> presetWeights = [40, 45, 50, 55, 60, 65, 70];
  void addToPresetWeights(int item) => presetWeights.add(item);
  void removeFromPresetWeights(int item) => presetWeights.remove(item);
  void removeAtIndexFromPresetWeights(int index) =>
      presetWeights.removeAt(index);
  void insertAtIndexInPresetWeights(int index, int item) =>
      presetWeights.insert(index, item);
  void updatePresetWeightsAtIndex(int index, Function(int) updateFn) =>
      presetWeights[index] = updateFn(presetWeights[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  final textFieldMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel1;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel2;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel3;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel4;
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
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {
    cardStatsModel1 = createModel(context, () => CardStatsModel());
    cardStatsModel2 = createModel(context, () => CardStatsModel());
    cardStatsModel3 = createModel(context, () => CardStatsModel());
    cardStatsModel4 = createModel(context, () => CardStatsModel());
    uiPlayToggleModel = createModel(context, () => UiPlayToggleModel());
    uiMessageModel = createModel(context, () => UiMessageModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    cardStatsModel1.dispose();
    cardStatsModel2.dispose();
    cardStatsModel3.dispose();
    cardStatsModel4.dispose();
    timerController.dispose();
    uiPlayToggleModel.dispose();
    uiMessageModel.dispose();
  }
}
