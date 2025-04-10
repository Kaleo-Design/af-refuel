import '/components/ui_elements/ui_title/ui_title_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'card_basic_widget.dart' show CardBasicWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CardBasicModel extends FlutterFlowModel<CardBasicWidget> {
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
