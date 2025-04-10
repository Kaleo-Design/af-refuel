import '/components/trend_opacity_widget.dart';
import '/components/ui_elements/ui_title/ui_title_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'ui_card_heat_map_widget.dart' show UiCardHeatMapWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UiCardHeatMapModel extends FlutterFlowModel<UiCardHeatMapWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ui_title component.
  late UiTitleModel uiTitleModel;

  @override
  void initState(BuildContext context) {
    uiTitleModel = createModel(context, () => UiTitleModel());
  }

  @override
  void dispose() {
    uiTitleModel.dispose();
  }
}
