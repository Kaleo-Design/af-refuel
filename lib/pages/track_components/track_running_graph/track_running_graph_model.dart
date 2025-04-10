import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/workouts/card_stats/card_stats_widget.dart';
import 'track_running_graph_widget.dart' show TrackRunningGraphWidget;
import 'package:flutter/material.dart';

class TrackRunningGraphModel extends FlutterFlowModel<TrackRunningGraphWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel1;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel2;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel3;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel4;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel5;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel6;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel7;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel8;

  @override
  void initState(BuildContext context) {
    uiHeaderSubModel = createModel(context, () => UiHeaderSubModel());
    cardStatsModel1 = createModel(context, () => CardStatsModel());
    cardStatsModel2 = createModel(context, () => CardStatsModel());
    cardStatsModel3 = createModel(context, () => CardStatsModel());
    cardStatsModel4 = createModel(context, () => CardStatsModel());
    cardStatsModel5 = createModel(context, () => CardStatsModel());
    cardStatsModel6 = createModel(context, () => CardStatsModel());
    cardStatsModel7 = createModel(context, () => CardStatsModel());
    cardStatsModel8 = createModel(context, () => CardStatsModel());
  }

  @override
  void dispose() {
    uiHeaderSubModel.dispose();
    cardStatsModel1.dispose();
    cardStatsModel2.dispose();
    cardStatsModel3.dispose();
    cardStatsModel4.dispose();
    cardStatsModel5.dispose();
    cardStatsModel6.dispose();
    cardStatsModel7.dispose();
    cardStatsModel8.dispose();
  }
}
