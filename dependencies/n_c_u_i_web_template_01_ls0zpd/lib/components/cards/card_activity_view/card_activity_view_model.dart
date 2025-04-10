import '/components/cards/card_activity/card_activity_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'card_activity_view_widget.dart' show CardActivityViewWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CardActivityViewModel extends FlutterFlowModel<CardActivityViewWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for card_activity component.
  late CardActivityModel cardActivityModel1;
  // Model for card_activity component.
  late CardActivityModel cardActivityModel2;
  // Model for card_activity component.
  late CardActivityModel cardActivityModel3;

  @override
  void initState(BuildContext context) {
    cardActivityModel1 = createModel(context, () => CardActivityModel());
    cardActivityModel2 = createModel(context, () => CardActivityModel());
    cardActivityModel3 = createModel(context, () => CardActivityModel());
  }

  @override
  void dispose() {
    cardActivityModel1.dispose();
    cardActivityModel2.dispose();
    cardActivityModel3.dispose();
  }
}
