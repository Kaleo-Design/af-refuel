import '/all_components/ui_components/ui_day_item/ui_day_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ui7_day_streak_widget.dart' show Ui7DayStreakWidget;
import 'package:flutter/material.dart';

class Ui7DayStreakModel extends FlutterFlowModel<Ui7DayStreakWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for ui_day_item dynamic component.
  late FlutterFlowDynamicModels<UiDayItemModel> uiDayItemModels;

  @override
  void initState(BuildContext context) {
    uiDayItemModels = FlutterFlowDynamicModels(() => UiDayItemModel());
  }

  @override
  void dispose() {
    uiDayItemModels.dispose();
  }
}
