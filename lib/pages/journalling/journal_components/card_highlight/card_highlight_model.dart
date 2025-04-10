import '/all_components/ui_components/indicator_new/indicator_new_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'card_highlight_widget.dart' show CardHighlightWidget;
import 'package:flutter/material.dart';

class CardHighlightModel extends FlutterFlowModel<CardHighlightWidget> {
  ///  Local state fields for this component.

  bool isLoading = true;

  bool reWrite = false;

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
