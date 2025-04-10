import '/all_components/ui_components/indicator_new/indicator_new_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_recent_widget.dart' show ChatRecentWidget;
import 'package:flutter/material.dart';

class ChatRecentModel extends FlutterFlowModel<ChatRecentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for indicator_new component.
  late IndicatorNewModel indicatorNewModel;

  @override
  void initState(BuildContext context) {
    indicatorNewModel = createModel(context, () => IndicatorNewModel());
  }

  @override
  void dispose() {
    indicatorNewModel.dispose();
  }
}
