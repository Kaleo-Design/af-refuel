import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'track_fitness_week_activity_widget.dart'
    show TrackFitnessWeekActivityWidget;
import 'package:flutter/material.dart';

class TrackFitnessWeekActivityModel
    extends FlutterFlowModel<TrackFitnessWeekActivityWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel;

  @override
  void initState(BuildContext context) {
    uiHeaderSubModel = createModel(context, () => UiHeaderSubModel());
  }

  @override
  void dispose() {
    uiHeaderSubModel.dispose();
  }
}
