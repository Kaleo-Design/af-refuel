import '/assessment_prototype/jml/jml_custom_button_tile/jml_custom_button_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'jml_item_render_widget.dart' show JmlItemRenderWidget;
import 'package:flutter/material.dart';

class JmlItemRenderModel extends FlutterFlowModel<JmlItemRenderWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for jml_custom_button_tile component.
  late JmlCustomButtonTileModel jmlCustomButtonTileModel;

  @override
  void initState(BuildContext context) {
    jmlCustomButtonTileModel =
        createModel(context, () => JmlCustomButtonTileModel());
  }

  @override
  void dispose() {
    jmlCustomButtonTileModel.dispose();
  }
}
