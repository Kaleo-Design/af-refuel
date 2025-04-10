import '/all_components/ui_components/ui_tag/ui_tag_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'track_v_o2_max_graph_widget.dart' show TrackVO2MaxGraphWidget;
import 'package:flutter/material.dart';

class TrackVO2MaxGraphModel extends FlutterFlowModel<TrackVO2MaxGraphWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ui_tag component.
  late UiTagModel uiTagModel1;
  // Model for ui_tag component.
  late UiTagModel uiTagModel2;

  @override
  void initState(BuildContext context) {
    uiTagModel1 = createModel(context, () => UiTagModel());
    uiTagModel2 = createModel(context, () => UiTagModel());
  }

  @override
  void dispose() {
    uiTagModel1.dispose();
    uiTagModel2.dispose();
  }
}
